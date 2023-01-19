# Update provenance of digital calibration certificates using Links and temporal databases

This [Links](https://links-lang.org) prototype provides an interface to display a Digital Calibration Certificate (DCC) in XML, to compare two versions of the document, and to see all changes that have occurred in the document. The prototype works for DCCs structured according to the DCC and D-SI XML schemas. It can also be applied more generally to any XML document.

(Note that this is a prototype, hence some functionality has not
been implemented and not all menu items in the interface will respond, in particular the edit functionality has not been fully implemented yet.
Furthermore, there is no checking for the input of date formats and a string that cannot be parsed as a date by Links will cause an error.)

### Temporal database usage

This prototype uses Links temporal database features which work with a standard PostgreSQL database as the backend, and a database containing a sample DCC with modifications is provided.

A DCC (or other XML document) can be loaded and mapped to a relational database structure using the Extended Dewey labelling scheme. This labels each node in the XML document with a unique key in dot-decimal notation, and provides an ordering that captures the tree structure of the XML document. 

Currently, the editing of the document is not supported. However, it is possible to insert new nodes into the XML document using the REPL, and also to edit the document using psql and SQL commands. INSTALL.md describes these how these can be achieved.

### User interface

The interface is built using the [Links MVU library](https://github.com/links-lang/links/wiki/Model-View-Update-(Elm-Architecture)) which utilises
*[Bootstrap](https://getbootstrap.com)* and which is based on the Model-Update-View
paradigm. This separates the code for rendering
webpages into two functions: a view function which describes how
to render the current model information as HTML, and which returns
a message when there is interaction with the page. The update
function receives these messages, and makes modifications to the
model depending on the message. After this, the page is refreshed.
Typically, the database interactions occur when the initial model
is defined, and when the update function calls the functions it
needs for modifying the model, leading to a separation of concerns.

![Screenshot](https://github.com/XAZKQV26IL/covid-curation/blob/99ee55569e20d009042b5197523927ec8e7fb6e9/src/images/screenshot1.png)
