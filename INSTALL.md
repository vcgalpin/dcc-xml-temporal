# Installation

First, install Links using *[opam](https://opam.ocaml.org)*. This requires the OCaml 4.08.0 compiler - see **[here](https://opam.ocaml.org/doc/Usage.html#opam-switch)** for more information on how to specifiy compiler version in opam.
Since the prototype requires a *[PostgreSQL](https://www.postgresql.org)*-supporting installation of Links, the following command is used.
```
$ opam install links-postgresql
```
For MacOS users, both opam and PostgreSQL can be installed via *[HomeBrew](https://brew.sh)*. For other installation instructions, see **[here](https://github.com/links-lang/links/blob/master/INSTALL.md)**

Second, a PostgreSQL database is created with the command
```
$ createdb anon_dcc 
$ psql -d anon_dcc -f setup_anon_dcc.sql 
```
Next, the file `config.0.9.7` is edited to replace `<username>` and `<password>` with the appropriate PostgreSQL username and password respectively. It may also be necessary to modify the PostgreSQL port from 5432, depending on the setup.
For more information about database setup, see **[points 4 to 6 here](https://github.com/links-lang/links/wiki/Database-setup)**.

Once these steps are completed, the application can be run using
```
$ linx --config=config.0.9.7 xmlMain.links
```
and should be accessible in a browser at http://localhost:8080/. This will display the sample DCC which has both insertions and modifications. For more information, please see [this paper](https://www.imeko.org/publications/tc6-2022/IMEKO-TC6-2022-024.pdf).

For information about [uploading a new XML document](https://github.com/vcgalpin/xml-dcc/edit/main/src/INSTALL.md#usage-uploading-a-document) to an empty database, and [modifying an existing document](https://github.com/vcgalpin/xml-dcc/edit/main/src/INSTALL.md#usage-uploading-a-document), see the usage notes below.

# Usage: web interface

#### Current

This shows the current version of the XML document. There are also buttons at the top to allow different levels of the document to be displayed. The document is listed as a table with indentations to show XML nesting. For each row, the button on the right-hand-side allows allows the user to show or hide all child nodes.

#### Previous

After a date and time is provided, this shows the version of the document at that date and time. The controls are similar to those for Current.

#### Compare

This allows for the selection of two points in time, after which a comparison of the two document versions is presented with differences hightlighted. The controls are similar to those for Current, and also provide an option just to see the changes.

#### Change analysis

This shows the document with all changes. As previously, the document is provided in a table, and any node for which there has been a change is highlighted. Choosing Show Details on the righ-hand-side will display information about all the changes.

#### Edit

This functionality is not yet implemented.

#### Validation

This functionality is not yet implemented.



# Usage: uploading a document

If you wish to upload your own XML document, you can do the following. First create a new database and set up the database tables without content.
```
$ createdb xml_doc 
$ psql -d xml_doc -f setupXml.sql 
```
Assuming you have the document in a text file called doc.xml, use the following Unix command to remove all spaces and add appropriate Links code
```
$ tr -d '\n' < doc.xml | tr -d '\r' | sed 's/\> *\</\>\</g' | sed '1s/^/var doc = /g; $s/$/;\n/' > doc.links
```
Next invoke the Links REPL from the command line using
```
$ linx --config=config.0.9.7
```
The following commands will load the appropriate Links code and store the XML document in the database.
```
links> @load "xmlDocument.links";
links> @load "doc.links";
links> xmlShred(doc,initialSeg,"",true)
```
Edit the file `nameOfDB.links` to set the database name to `xml_doc`.

# Usage: modifying a document

The prototype does not have editing functionality. There are two ways to modify an existing document. The first is to insert new XML into the existing XML document.

Similarly to uploading a new document and assuming the new XML in a text file called new.xml, use the following Unix command to remove all spaces and add appropriate Links code
```
$ tr -d '\n' < new.xml | tr -d '\r' | sed 's/\> *\</\>\</g' | sed '1s/^/var new = /g; $s/$/;\n/' > new.links
```
Then invoke the Links REPL from the command line using
```
$ linx --config=config.0.9.7
```
The following commands will load the appropriate Links code and store the XML document in the database.
```
links> @load "xmlDocument.links";
links> @load "new.links";
links> insertXml(new,dde,before)
```
The variable `dde` must be the string representation of an existing XML node (for example `"+001.+006.+005.+002"`) and the variable `before` is a Boolean variable indicating whether the new XML should be inserted before or after `dde`.

The document can also be modified directly using `psql`, however, this requires an understanding of the organisation of the temporal tables. Please submit an issue if you would like further information about this.

