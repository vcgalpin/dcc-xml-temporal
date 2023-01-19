-- Usage:
-- createdb <database-name> (if <database-name> does not exist)
-- psql -d <database-name> -f setupXml.sql

-- if there are no existing tables, these statements will 
-- return errors which can be ignored
DROP TABLE xml_attr;
DROP TABLE xml_node;
DROP TABLE xml_path;

-- statements to create tables
CREATE TABLE xml_node (
  "dde" TEXT NOT NULL,
  "tag" TEXT NOT NULL,
  "path" TEXT NOT NULL,
  "path_id" INT NOT NULL,
  "text" TEXT NOT NULL,
  "original" BOOLEAN NOT NULL,
  "tt_from" timestamp with time zone NOT NULL,
  "tt_to" timestamp with time zone NOT NULL,
  PRIMARY KEY (dde,tt_from,tt_to)
);

CREATE TABLE xml_attr (
  "attr" TEXT NOT NULL,
  "dde" TEXT NOT NULL,
  "value" TEXT NOT NULL,
  "original" BOOLEAN NOT NULL,
  "tt_from" timestamp with time zone NOT NULL,
  "tt_to" timestamp with time zone NOT NULL,
  PRIMARY KEY (attr,dde,tt_from,tt_to)
  -- FOREIGN KEY (dde) REFERENCES xml_node(dde)
);

-- not used yet

CREATE TABLE xml_path (
  "path_id" SERIAL PRIMARY KEY,
  "path" TEXT NOT NULL
);

