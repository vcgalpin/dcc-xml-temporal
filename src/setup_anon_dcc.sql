--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: xml_attr; Type: TABLE; Schema: public
--

CREATE TABLE public.xml_attr (
    attr text NOT NULL,
    dde text NOT NULL,
    value text NOT NULL,
    original boolean NOT NULL,
    tt_from timestamp with time zone NOT NULL,
    tt_to timestamp with time zone NOT NULL
);


--
-- Name: xml_node; Type: TABLE; Schema: public
--

CREATE TABLE public.xml_node (
    dde text NOT NULL,
    tag text NOT NULL,
    path text NOT NULL,
    path_id integer NOT NULL,
    text text NOT NULL,
    original boolean NOT NULL,
    tt_from timestamp with time zone NOT NULL,
    tt_to timestamp with time zone NOT NULL
);



--
-- Name: xml_path; Type: TABLE; Schema: public
--

CREATE TABLE public.xml_path (
    path_id integer NOT NULL,
    path text NOT NULL
);



--
-- Name: xml_path_path_id_seq; Type: SEQUENCE; Schema: public
--

CREATE SEQUENCE public.xml_path_path_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- Name: xml_path_path_id_seq; Type: SEQUENCE OWNED BY; Schema: public
--

ALTER SEQUENCE public.xml_path_path_id_seq OWNED BY public.xml_path.path_id;


--
-- Name: xml_path path_id; Type: DEFAULT; Schema: public
--

ALTER TABLE ONLY public.xml_path ALTER COLUMN path_id SET DEFAULT nextval('public.xml_path_path_id_seq'::regclass);


--
-- Data for Name: xml_attr; Type: TABLE DATA; Schema: public
--

COPY public.xml_attr (attr, dde, value, original, tt_from, tt_to) FROM stdin;
xsi:schemaLocation	+001	https://ptb.de/dcc dcc.xsd	t	2023-01-18 20:22:34.687221+00	infinity
xmlns:xsi	+001	http://www.w3.org/2001/XMLSchema-instance	t	2023-01-18 20:22:34.688531+00	infinity
xmlns:si	+001	https://ptb.de/si	t	2023-01-18 20:22:34.689065+00	infinity
xmlns:dcc	+001	https://ptb.de/dcc	t	2023-01-18 20:22:34.689467+00	infinity
schemaVersion	+001	3.1.2	t	2023-01-18 20:22:34.689835+00	infinity
refType	+001.+007.+001.+002.+001	gp_immersionDepth	t	2023-01-18 20:22:34.728363+00	infinity
refType	+001.+007.+001.+002.+002	basic_temperature	t	2023-01-18 20:22:34.730703+00	infinity
refType	+001.+007.+001.+002.+002.+003.+001	basic_temperatureMin	t	2023-01-18 20:22:34.731594+00	infinity
refType	+001.+007.+001.+002.+002.+003.+002	basic_temperatureMax	t	2023-01-18 20:22:34.733087+00	infinity
refType	+001.+007.+001.+003.+001.+002.+001	Results table	t	2023-01-18 20:22:34.735506+00	infinity
refType	+001.+007.+001.+003.+001.+002.+001.+002	basic_referenceValue	t	2023-01-18 20:22:34.735749+00	infinity
refType	+001.+007.+001.+003.+001.+002.+001.+003	basic_measuredValue	t	2023-01-18 20:22:34.737089+00	infinity
\.


--
-- Data for Name: xml_node; Type: TABLE DATA; Schema: public
--

COPY public.xml_node (dde, tag, path, path_id, text, original, tt_from, tt_to) FROM stdin;
+001	dcc:digitalCalibrationCertificate	/	-1		t	2023-01-18 20:22:34.684376+00	infinity
+001.+006	dcc:administrativeData	/dcc:digitalCalibrationCertificate/	-1		t	2023-01-18 20:22:34.690415+00	infinity
+001.+006.+001	dcc:dccSoftware	/dcc:digitalCalibrationCertificate/dcc:administrativeData/	-1		t	2023-01-18 20:22:34.690782+00	infinity
+001.+006.+001.+001	dcc:software	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/	-1		t	2023-01-18 20:22:34.691142+00	infinity
+001.+006.+001.+001.+001	dcc:name	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/	-1		t	2023-01-18 20:22:34.691502+00	infinity
+001.+006.+001.+001.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/dcc:name/	-1		t	2023-01-18 20:22:34.692343+00	infinity
+001.+006.+001.+001.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/dcc:name/dcc:content	-1	GenerateDCC_v1.py	t	2023-01-18 20:22:34.692547+00	infinity
+001.+006.+001.+001.+002	dcc:release	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/	-1		t	2023-01-18 20:22:34.692756+00	infinity
+001.+006.+001.+001.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/dcc:release	-1	v1.0	t	2023-01-18 20:22:34.692983+00	infinity
+001.+006.+001.+001.+003	dcc:description	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/	-1		t	2023-01-18 20:22:34.693167+00	infinity
+001.+006.+001.+001.+003.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/dcc:description/	-1		t	2023-01-18 20:22:34.69337+00	infinity
+001.+006.+001.+001.+003.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/dcc:description/dcc:content	-1	Python software to generate DCC	t	2023-01-18 20:22:34.693584+00	infinity
+001.+006.+001.+002	dcc:software	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/	-1		t	2023-01-18 20:22:34.693885+00	infinity
+001.+006.+001.+002.+001	dcc:name	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/	-1		t	2023-01-18 20:22:34.694071+00	infinity
+001.+006.+001.+002.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/dcc:name/	-1		t	2023-01-18 20:22:34.694247+00	infinity
+001.+006.+001.+002.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/dcc:name/dcc:content	-1	InformationAndResults_v1.xlsx	t	2023-01-18 20:22:34.694431+00	infinity
+001.+006.+001.+002.+002	dcc:release	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/	-1		t	2023-01-18 20:22:34.694619+00	infinity
+001.+006.+001.+002.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/dcc:release	-1	v1.0	t	2023-01-18 20:22:34.694779+00	infinity
+001.+006.+001.+002.+003	dcc:description	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/	-1		t	2023-01-18 20:22:34.694954+00	infinity
+001.+006.+001.+002.+003.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/dcc:description/	-1		t	2023-01-18 20:22:34.695198+00	infinity
+001.+006.+001.+002.+003.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:dccSoftware/dcc:software/dcc:description/dcc:content	-1	Microsoft Excel workbook containing administrative information and measurement results	t	2023-01-18 20:22:34.695367+00	infinity
+001.+006.+002	dcc:coreData	/dcc:digitalCalibrationCertificate/dcc:administrativeData/	-1		t	2023-01-18 20:22:34.695561+00	infinity
+001.+006.+002.+001	dcc:countryCodeISO3166_1	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/	-1		t	2023-01-18 20:22:34.695932+00	infinity
+001.+006.+002.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:countryCodeISO3166_1	-1	GB	t	2023-01-18 20:22:34.696389+00	infinity
+001.+006.+002.+002	dcc:usedLangCodeISO639_1	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/	-1		t	2023-01-18 20:22:34.696696+00	infinity
+001.+006.+002.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:usedLangCodeISO639_1	-1	en	t	2023-01-18 20:22:34.69696+00	infinity
+001.+006.+002.+003	dcc:mandatoryLangCodeISO639_1	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/	-1		t	2023-01-18 20:22:34.69732+00	infinity
+001.+006.+002.+003.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:mandatoryLangCodeISO639_1	-1	en	t	2023-01-18 20:22:34.697954+00	infinity
+001.+006.+002.+004	dcc:uniqueIdentifier	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/	-1		t	2023-01-18 20:22:34.698218+00	infinity
+001.+006.+002.+004.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:uniqueIdentifier	-1	xxxxxx	t	2023-01-18 20:22:34.698462+00	infinity
+001.+006.+002.+005	dcc:beginPerformanceDate	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/	-1		t	2023-01-18 20:22:34.698754+00	infinity
+001.+006.+002.+005.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:beginPerformanceDate	-1	2022-08-15	t	2023-01-18 20:22:34.699002+00	infinity
+001.+006.+002.+006	dcc:endPerformanceDate	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/	-1		t	2023-01-18 20:22:34.699264+00	infinity
+001.+006.+002.+006.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:endPerformanceDate	-1	2022-08-15	t	2023-01-18 20:22:34.699621+00	infinity
+001.+006.+002.+007	dcc:performanceLocation	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/	-1		t	2023-01-18 20:22:34.699905+00	infinity
+001.+006.+002.+007.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:coreData/dcc:performanceLocation	-1	laboratory	t	2023-01-18 20:22:34.700185+00	infinity
+001.+006.+003	dcc:items	/dcc:digitalCalibrationCertificate/dcc:administrativeData/	-1		t	2023-01-18 20:22:34.700478+00	infinity
+001.+006.+003.+001	dcc:item	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/	-1		t	2023-01-18 20:22:34.700786+00	infinity
+001.+006.+003.+001.+001	dcc:name	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/	-1		t	2023-01-18 20:22:34.701052+00	infinity
+001.+006.+003.+001.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:name/	-1		t	2023-01-18 20:22:34.701317+00	infinity
+001.+006.+003.+001.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:name/dcc:content	-1	Digital thermometer	t	2023-01-18 20:22:34.701714+00	infinity
+001.+006.+003.+001.+002	dcc:manufacturer	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/	-1		t	2023-01-18 20:22:34.701974+00	infinity
+001.+006.+003.+001.+002.+001	dcc:name	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:manufacturer/	-1		t	2023-01-18 20:22:34.702219+00	infinity
+001.+006.+003.+001.+002.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:manufacturer/dcc:name/	-1		t	2023-01-18 20:22:34.702459+00	infinity
+001.+006.+005.+002	dcc:respPerson	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/	-1		t	2023-01-18 20:22:34.713434+00	infinity
+001.+006.+003.+001.+002.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:manufacturer/dcc:name/dcc:content	-1	Manufacturer	t	2023-01-18 20:22:34.702713+00	infinity
+001.+006.+003.+001.+003	dcc:model	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/	-1		t	2023-01-18 20:22:34.703223+00	infinity
+001.+006.+003.+001.+003.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:model	-1	ABC 1234	t	2023-01-18 20:22:34.703487+00	infinity
+001.+006.+003.+001.+004	dcc:identifications	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/	-1		t	2023-01-18 20:22:34.703817+00	infinity
+001.+006.+003.+001.+004.+001	dcc:identification	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/	-1		t	2023-01-18 20:22:34.70405+00	infinity
+001.+006.+003.+001.+004.+001.+001	dcc:issuer	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/	-1		t	2023-01-18 20:22:34.704319+00	infinity
+001.+006.+003.+001.+004.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:issuer	-1	customer	t	2023-01-18 20:22:34.704553+00	infinity
+001.+006.+003.+001.+004.+001.+002	dcc:value	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/	-1		t	2023-01-18 20:22:34.704829+00	infinity
+001.+006.+003.+001.+004.+001.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:value	-1	000000	t	2023-01-18 20:22:34.705059+00	infinity
+001.+006.+003.+001.+004.+001.+003	dcc:name	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/	-1		t	2023-01-18 20:22:34.705316+00	infinity
+001.+006.+003.+001.+004.+001.+003.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:name/	-1		t	2023-01-18 20:22:34.705563+00	infinity
+001.+006.+003.+001.+004.+001.+003.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:items/dcc:item/dcc:identifications/dcc:identification/dcc:name/dcc:content	-1	Customer asset ID number	t	2023-01-18 20:22:34.705859+00	infinity
+001.+006.+004	dcc:calibrationLaboratory	/dcc:digitalCalibrationCertificate/dcc:administrativeData/	-1		t	2023-01-18 20:22:34.706159+00	infinity
+001.+006.+004.+001	dcc:contact	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/	-1		t	2023-01-18 20:22:34.706417+00	infinity
+001.+006.+004.+001.+001	dcc:name	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/	-1		t	2023-01-18 20:22:34.706692+00	infinity
+001.+006.+004.+001.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:name/	-1		t	2023-01-18 20:22:34.706931+00	infinity
+001.+006.+004.+001.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:name/dcc:content	-1	The Metrology Lab	t	2023-01-18 20:22:34.70716+00	infinity
+001.+006.+004.+001.+002	dcc:eMail	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/	-1		t	2023-01-18 20:22:34.707519+00	infinity
+001.+006.+004.+001.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:eMail	-1	metlab@example.org	t	2023-01-18 20:22:34.707733+00	infinity
+001.+006.+004.+001.+003	dcc:location	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/	-1		t	2023-01-18 20:22:34.707974+00	infinity
+001.+006.+004.+001.+003.+001	dcc:street	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/	-1		t	2023-01-18 20:22:34.70819+00	infinity
+001.+006.+004.+001.+003.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:street	-1	First Road	t	2023-01-18 20:22:34.708427+00	infinity
+001.+006.+004.+001.+003.+002	dcc:city	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/	-1		t	2023-01-18 20:22:34.708648+00	infinity
+001.+006.+004.+001.+003.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:city	-1	Bigtown	t	2023-01-18 20:22:34.708863+00	infinity
+001.+006.+004.+001.+003.+003	dcc:state	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/	-1		t	2023-01-18 20:22:34.709152+00	infinity
+001.+006.+004.+001.+003.+003.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:state	-1	Smallcounty	t	2023-01-18 20:22:34.709372+00	infinity
+001.+006.+004.+001.+003.+004	dcc:postCode	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/	-1		t	2023-01-18 20:22:34.709597+00	infinity
+001.+006.+004.+001.+003.+004.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:postCode	-1	BG5 6XZ	t	2023-01-18 20:22:34.7101+00	infinity
+001.+006.+004.+001.+003.+005	dcc:countryCode	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/	-1		t	2023-01-18 20:22:34.710351+00	infinity
+001.+006.+004.+001.+003.+005.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:calibrationLaboratory/dcc:contact/dcc:location/dcc:countryCode	-1	GB	t	2023-01-18 20:22:34.710591+00	infinity
+001.+006.+005	dcc:respPersons	/dcc:digitalCalibrationCertificate/dcc:administrativeData/	-1		t	2023-01-18 20:22:34.710859+00	infinity
+001.+006.+005.+001	dcc:respPerson	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/	-1		t	2023-01-18 20:22:34.711143+00	infinity
+001.+006.+005.+001.+001	dcc:person	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/	-1		t	2023-01-18 20:22:34.711362+00	infinity
+001.+006.+005.+001.+001.+001	dcc:name	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/dcc:person/	-1		t	2023-01-18 20:22:34.711606+00	infinity
+001.+006.+005.+001.+001.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/dcc:person/dcc:name/	-1		t	2023-01-18 20:22:34.711838+00	infinity
+001.+006.+005.+001.+001.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/dcc:person/dcc:name/dcc:content	-1	A. Person	t	2023-01-18 20:22:34.712091+00	infinity
+001.+006.+005.+001.+002	dcc:role	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/	-1		t	2023-01-18 20:22:34.712354+00	infinity
+001.+006.+005.+001.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/dcc:role	-1	Authorisation	t	2023-01-18 20:22:34.712609+00	infinity
+001.+006.+005.+001.+003	dcc:mainSigner	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/	-1		t	2023-01-18 20:22:34.712946+00	infinity
+001.+006.+005.+001.+003.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/dcc:mainSigner	-1	true	t	2023-01-18 20:22:34.713166+00	infinity
+001.+006.+005.+002.+001	dcc:person	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/	-1		t	2023-01-18 20:22:34.713668+00	infinity
+001.+006.+005.+002.+001.+001	dcc:name	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/dcc:person/	-1		t	2023-01-18 20:22:34.713975+00	infinity
+001.+006.+005.+002.+001.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/dcc:person/dcc:name/	-1		t	2023-01-18 20:22:34.714212+00	infinity
+001.+006.+005.+002.+001.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/dcc:person/dcc:name/dcc:content	-1	A.N. Employee	t	2023-01-18 20:22:34.714438+00	infinity
+001.+006.+005.+002.+002	dcc:role	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/	-1		t	2023-01-18 20:22:34.714733+00	infinity
+001.+006.+005.+002.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:respPersons/dcc:respPerson/dcc:role	-1	Measurement	t	2023-01-18 20:22:34.714953+00	infinity
+001.+006.+006	dcc:customer	/dcc:digitalCalibrationCertificate/dcc:administrativeData/	-1		t	2023-01-18 20:22:34.715219+00	infinity
+001.+006.+006.+001	dcc:name	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/	-1		t	2023-01-18 20:22:34.715467+00	infinity
+001.+006.+006.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:name/	-1		t	2023-01-18 20:22:34.71568+00	infinity
+001.+006.+006.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:name/dcc:content	-1	AB Production	t	2023-01-18 20:22:34.715875+00	infinity
+001.+006.+006.+002	dcc:eMail	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/	-1		t	2023-01-18 20:22:34.716114+00	infinity
+001.+006.+006.+003	dcc:location	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/	-1		t	2023-01-18 20:22:34.71659+00	infinity
+001.+006.+006.+003.+001	dcc:street	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/	-1		t	2023-01-18 20:22:34.716786+00	infinity
+001.+006.+006.+003.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:street	-1	Hardtofind Terrace	t	2023-01-18 20:22:34.716985+00	infinity
+001.+006.+006.+003.+002	dcc:city	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/	-1		t	2023-01-18 20:22:34.717208+00	infinity
+001.+006.+006.+003.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:city	-1	NiceTown	t	2023-01-18 20:22:34.717427+00	infinity
+001.+006.+006.+003.+003	dcc:postCode	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/	-1		t	2023-01-18 20:22:34.717645+00	infinity
+001.+006.+006.+003.+003.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:postCode	-1	NT7 8DP	t	2023-01-18 20:22:34.717859+00	infinity
+001.+006.+006.+003.+004	dcc:countryCode	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/	-1		t	2023-01-18 20:22:34.718141+00	infinity
+001.+006.+006.+003.+004.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:countryCode	-1	GB	t	2023-01-18 20:22:34.718341+00	infinity
+001.+006.+006.+003.+005	dcc:street	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/	-1		t	2023-01-18 20:22:34.718545+00	infinity
+001.+006.+006.+003.+005.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:location/dcc:street	-1	Second Avenue	t	2023-01-18 20:22:34.718758+00	infinity
+001.+006.+007	dcc:statements	/dcc:digitalCalibrationCertificate/dcc:administrativeData/	-1		t	2023-01-18 20:22:34.719001+00	infinity
+001.+006.+007.+001	dcc:statement	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/	-1		t	2023-01-18 20:22:34.719198+00	infinity
+001.+006.+007.+001.+001	dcc:declaration	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/	-1		t	2023-01-18 20:22:34.719398+00	infinity
+001.+006.+007.+001.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:declaration/	-1		t	2023-01-18 20:22:34.71964+00	infinity
+001.+006.+007.+001.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:declaration/dcc:content	-1	Date on or before which the item is to be recalibrated.	t	2023-01-18 20:22:34.719824+00	infinity
+001.+006.+007.+001.+002	dcc:date	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/	-1		t	2023-01-18 20:22:34.720024+00	infinity
+001.+006.+007.+001.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:date	-1	2023-07-01	t	2023-01-18 20:22:34.720233+00	infinity
+001.+006.+007.+002	dcc:statement	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/	-1		t	2023-01-18 20:22:34.720438+00	infinity
+001.+006.+007.+002.+001	dcc:declaration	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/	-1		t	2023-01-18 20:22:34.720629+00	infinity
+001.+006.+007.+002.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:declaration/	-1		t	2023-01-18 20:22:34.720948+00	infinity
+001.+006.+007.+002.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:declaration/dcc:content	-1	Measurement resolution.	t	2023-01-18 20:22:34.721181+00	infinity
+001.+006.+007.+002.+002	dcc:data	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/	-1		t	2023-01-18 20:22:34.721383+00	infinity
+001.+006.+007.+002.+002.+001	dcc:quantity	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/	-1		t	2023-01-18 20:22:34.721568+00	infinity
+001.+006.+007.+002.+002.+001.+001	si:real	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/	-1		t	2023-01-18 20:22:34.721769+00	infinity
+001.+006.+007.+002.+002.+001.+001.+001	si:value	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.721958+00	infinity
+001.+006.+007.+002.+002.+001.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/si:value	-1	0.1	t	2023-01-18 20:22:34.722144+00	infinity
+001.+006.+007.+002.+002.+001.+001.+002	si:unit	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.722333+00	infinity
+001.+006.+007.+002.+002.+001.+001.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/si:unit	-1	\\degreeCelsius	t	2023-01-18 20:22:34.722571+00	infinity
+001.+006.+007.+003	dcc:statement	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/	-1		t	2023-01-18 20:22:34.722834+00	infinity
+001.+006.+007.+003.+001	dcc:declaration	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/	-1		t	2023-01-18 20:22:34.723022+00	infinity
+001.+006.+007.+003.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:declaration/	-1		t	2023-01-18 20:22:34.723219+00	infinity
+001.+006.+007.+003.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:declaration/dcc:content	-1	The digital thermometer and associated probe were submitted for calibration over the specified temperature range in terms of the International Temperature Scale of 1990.	t	2023-01-18 20:22:34.723435+00	infinity
+001.+006.+007.+003.+002	dcc:data	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/	-1		t	2023-01-18 20:22:34.723644+00	infinity
+001.+006.+007.+003.+002.+001	dcc:quantity	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/	-1		t	2023-01-18 20:22:34.72385+00	infinity
+001.+006.+007.+003.+002.+001.+001	si:real	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/	-1		t	2023-01-18 20:22:34.724083+00	infinity
+001.+006.+007.+003.+002.+001.+001.+001	si:label	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.724294+00	infinity
+001.+006.+007.+003.+002.+001.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/si:label	-1	Lower limit	t	2023-01-18 20:22:34.724545+00	infinity
+001.+006.+007.+003.+002.+001.+001.+002	si:value	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.724814+00	infinity
+001.+006.+007.+003.+002.+001.+001.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/si:value	-1	0.0	t	2023-01-18 20:22:34.725098+00	infinity
+001.+006.+007.+003.+002.+001.+001.+003	si:unit	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.725289+00	infinity
+001.+006.+007.+003.+002.+001.+001.+003.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/si:unit	-1	\\degreeCelsius	t	2023-01-18 20:22:34.725469+00	infinity
+001.+006.+007.+003.+002.+002	dcc:quantity	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/	-1		t	2023-01-18 20:22:34.725738+00	infinity
+001.+006.+007.+003.+002.+002.+001	si:real	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/	-1		t	2023-01-18 20:22:34.725918+00	infinity
+001.+006.+007.+003.+002.+002.+001.+001	si:label	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.7261+00	infinity
+001.+006.+007.+003.+002.+002.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/si:label	-1	Upper limit	t	2023-01-18 20:22:34.726285+00	infinity
+001.+006.+007.+003.+002.+002.+001.+002	si:value	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.726501+00	infinity
+001.+006.+007.+003.+002.+002.+001.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/si:value	-1	150.0	t	2023-01-18 20:22:34.72669+00	infinity
+001.+006.+007.+003.+002.+002.+001.+003	si:unit	/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.726875+00	infinity
+001.+006.+007.+003.+002.+002.+001.+003.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:statements/dcc:statement/dcc:data/dcc:quantity/si:real/si:unit	-1	\\degreeCelsius	t	2023-01-18 20:22:34.727103+00	infinity
+001.+007	dcc:measurementResults	/dcc:digitalCalibrationCertificate/	-1		t	2023-01-18 20:22:34.727305+00	infinity
+001.+007.+001	dcc:measurementResult	/dcc:digitalCalibrationCertificate/dcc:measurementResults/	-1		t	2023-01-18 20:22:34.727444+00	infinity
+001.+007.+001.+001	dcc:name	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/	-1		t	2023-01-18 20:22:34.727605+00	infinity
+001.+007.+001.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:name/	-1		t	2023-01-18 20:22:34.727739+00	infinity
+001.+007.+001.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:name/dcc:content	-1	Measurement results	t	2023-01-18 20:22:34.727871+00	infinity
+001.+007.+001.+002	dcc:influenceConditions	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/	-1		t	2023-01-18 20:22:34.728021+00	infinity
+001.+007.+001.+002.+001	dcc:influenceCondition	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/	-1		t	2023-01-18 20:22:34.728202+00	infinity
+001.+007.+001.+002.+001.+002	dcc:name	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/	-1		t	2023-01-18 20:22:34.728499+00	infinity
+001.+007.+001.+002.+001.+002.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:name/	-1		t	2023-01-18 20:22:34.728648+00	infinity
+001.+007.+001.+002.+001.+002.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:name/dcc:content	-1	Immersion depth in dry block calibrator	t	2023-01-18 20:22:34.728896+00	infinity
+001.+007.+001.+002.+001.+003	dcc:data	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/	-1		t	2023-01-18 20:22:34.729044+00	infinity
+001.+007.+001.+002.+001.+003.+001	dcc:quantity	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/	-1		t	2023-01-18 20:22:34.72918+00	infinity
+001.+007.+001.+002.+001.+003.+001.+001	dcc:name	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/	-1		t	2023-01-18 20:22:34.729349+00	infinity
+001.+007.+001.+002.+001.+003.+001.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/dcc:name/	-1		t	2023-01-18 20:22:34.729484+00	infinity
+001.+007.+001.+002.+001.+003.+001.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/dcc:name/dcc:content	-1	Immersion depth	t	2023-01-18 20:22:34.729618+00	infinity
+001.+007.+001.+002.+001.+003.+001.+002	si:real	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/	-1		t	2023-01-18 20:22:34.729783+00	infinity
+001.+007.+001.+002.+001.+003.+001.+002.+001	si:value	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.729917+00	infinity
+001.+007.+001.+002.+001.+003.+001.+002.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/si:real/si:value	-1	0.1	t	2023-01-18 20:22:34.730046+00	infinity
+001.+007.+001.+002.+001.+003.+001.+002.+002	si:unit	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.730213+00	infinity
+001.+007.+001.+002.+001.+003.+001.+002.+002.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/si:real/si:unit	-1	\\metre	t	2023-01-18 20:22:34.730389+00	infinity
+001.+007.+001.+002.+002	dcc:influenceCondition	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/	-1		t	2023-01-18 20:22:34.730559+00	infinity
+001.+007.+001.+002.+002.+002	dcc:name	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/	-1		t	2023-01-18 20:22:34.730855+00	infinity
+001.+007.+001.+002.+002.+002.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:name/	-1		t	2023-01-18 20:22:34.731005+00	infinity
+001.+007.+001.+002.+002.+002.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:name/dcc:content	-1	Ambient temperature	t	2023-01-18 20:22:34.731133+00	infinity
+001.+007.+001.+002.+002.+003	dcc:data	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/	-1		t	2023-01-18 20:22:34.731278+00	infinity
+001.+007.+001.+002.+002.+003.+001	dcc:quantity	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/	-1		t	2023-01-18 20:22:34.731445+00	infinity
+001.+007.+001.+002.+002.+003.+001.+002	dcc:name	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/	-1		t	2023-01-18 20:22:34.731727+00	infinity
+001.+007.+001.+002.+002.+003.+001.+002.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/dcc:name/	-1		t	2023-01-18 20:22:34.731885+00	infinity
+001.+007.+001.+002.+002.+003.+001.+002.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/dcc:name/dcc:content	-1	Lower limit	t	2023-01-18 20:22:34.732027+00	infinity
+001.+007.+001.+002.+002.+003.+001.+003	si:real	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/	-1		t	2023-01-18 20:22:34.732175+00	infinity
+001.+007.+001.+002.+002.+003.+001.+003.+001	si:value	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.732307+00	infinity
+001.+007.+001.+002.+002.+003.+001.+003.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/si:real/si:value	-1	20.0	t	2023-01-18 20:22:34.732478+00	infinity
+001.+007.+001.+002.+002.+003.+001.+003.+002	si:unit	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.732619+00	infinity
+001.+007.+001.+002.+002.+003.+001.+003.+002.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/si:real/si:unit	-1	\\degreeCelsius	t	2023-01-18 20:22:34.732749+00	infinity
+001.+007.+001.+002.+002.+003.+002	dcc:quantity	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/	-1		t	2023-01-18 20:22:34.732917+00	infinity
+001.+007.+001.+002.+002.+003.+002.+002	dcc:name	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/	-1		t	2023-01-18 20:22:34.733228+00	infinity
+001.+007.+001.+002.+002.+003.+002.+002.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/dcc:name/	-1		t	2023-01-18 20:22:34.733363+00	infinity
+001.+007.+001.+002.+002.+003.+002.+002.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/dcc:name/dcc:content	-1	Upper limit	t	2023-01-18 20:22:34.733525+00	infinity
+001.+007.+001.+002.+002.+003.+002.+003	si:real	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/	-1		t	2023-01-18 20:22:34.733669+00	infinity
+001.+007.+001.+002.+002.+003.+002.+003.+001	si:value	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.733804+00	infinity
+001.+007.+001.+002.+002.+003.+002.+003.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/si:real/si:value	-1	24.0	t	2023-01-18 20:22:34.733952+00	infinity
+001.+007.+001.+002.+002.+003.+002.+003.+002	si:unit	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/si:real/	-1		t	2023-01-18 20:22:34.734091+00	infinity
+001.+007.+001.+002.+002.+003.+002.+003.+002.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:influenceConditions/dcc:influenceCondition/dcc:data/dcc:quantity/si:real/si:unit	-1	\\degreeCelsius	t	2023-01-18 20:22:34.734223+00	infinity
+001.+007.+001.+003	dcc:results	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/	-1		t	2023-01-18 20:22:34.734558+00	infinity
+001.+007.+001.+003.+001	dcc:result	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/	-1		t	2023-01-18 20:22:34.734688+00	infinity
+001.+007.+001.+003.+001.+001	dcc:name	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/	-1		t	2023-01-18 20:22:34.734817+00	infinity
+001.+007.+001.+003.+001.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:name/	-1		t	2023-01-18 20:22:34.734941+00	infinity
+001.+007.+001.+003.+001.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:name/dcc:content	-1	Results	t	2023-01-18 20:22:34.73507+00	infinity
+001.+007.+001.+003.+001.+002	dcc:data	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/	-1		t	2023-01-18 20:22:34.735206+00	infinity
+001.+007.+001.+003.+001.+002.+001	dcc:list	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/	-1		t	2023-01-18 20:22:34.735328+00	infinity
+001.+007.+001.+003.+001.+002.+001.+002	dcc:quantity	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/	-1		t	2023-01-18 20:22:34.735622+00	infinity
+001.+007.+001.+003.+001.+002.+001.+002.+002	dcc:name	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/	-1		t	2023-01-18 20:22:34.735874+00	infinity
+001.+007.+001.+003.+001.+002.+001.+002.+002.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/dcc:name/	-1		t	2023-01-18 20:22:34.736011+00	infinity
+001.+007.+001.+003.+001.+002.+001.+002.+002.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/dcc:name/dcc:content	-1	ITS-90 temperature	t	2023-01-18 20:22:34.736125+00	infinity
+001.+007.+001.+003.+001.+002.+001.+002.+003	si:realListXMLList	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/	-1		t	2023-01-18 20:22:34.736259+00	infinity
+001.+007.+001.+003.+001.+002.+001.+002.+003.+001	si:valueXMLList	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/	-1		t	2023-01-18 20:22:34.736374+00	infinity
+001.+007.+001.+003.+001.+002.+001.+002.+003.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/si:valueXMLList	-1	0.00 49.99 100.01 149.99 0.0	t	2023-01-18 20:22:34.736543+00	infinity
+001.+007.+001.+003.+001.+002.+001.+002.+003.+002	si:unitXMLList	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/	-1		t	2023-01-18 20:22:34.73667+00	infinity
+001.+007.+001.+003.+001.+002.+001.+002.+003.+002.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/si:unitXMLList	-1	\\degreeCelsius	t	2023-01-18 20:22:34.7368+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003	dcc:quantity	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/	-1		t	2023-01-18 20:22:34.736961+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+002	dcc:name	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/	-1		t	2023-01-18 20:22:34.737219+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+002.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/dcc:name/	-1		t	2023-01-18 20:22:34.737379+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+002.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/dcc:name/dcc:content	-1	Measured temperature	t	2023-01-18 20:22:34.737559+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+003	si:realListXMLList	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/	-1		t	2023-01-18 20:22:34.737711+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+003.+001	si:valueXMLList	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/	-1		t	2023-01-18 20:22:34.737856+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+003.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/si:valueXMLList	-1	0.0 49.9 100.0 149.9 0.0	t	2023-01-18 20:22:34.737996+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+003.+002	si:unitXMLList	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/	-1		t	2023-01-18 20:22:34.738122+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+003.+002.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/si:unitXMLList	-1	\\degreeCelsius	t	2023-01-18 20:22:34.738237+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+003.+003	si:expandedUncXMLList	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/	-1		t	2023-01-18 20:22:34.738373+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+003.+003.+001	si:uncertaintyXMLList	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/si:expandedUncXMLList/	-1		t	2023-01-18 20:22:34.738589+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+003.+003.+001.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/si:expandedUncXMLList/si:uncertaintyXMLList	-1	0.2	t	2023-01-18 20:22:34.738704+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+003.+003.+002	si:coverageFactorXMLList	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/si:expandedUncXMLList/	-1		t	2023-01-18 20:22:34.738847+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+003.+003.+002.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/si:expandedUncXMLList/si:coverageFactorXMLList	-1	2.0	t	2023-01-18 20:22:34.738979+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+003.+003.+003	si:coverageProbabilityXMLList	/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/si:expandedUncXMLList/	-1		t	2023-01-18 20:22:34.739101+00	infinity
+001.+007.+001.+003.+001.+002.+001.+003.+003.+003.+003.+001		/dcc:digitalCalibrationCertificate/dcc:measurementResults/dcc:measurementResult/dcc:results/dcc:result/dcc:data/dcc:list/dcc:quantity/si:realListXMLList/si:expandedUncXMLList/si:coverageProbabilityXMLList	-1	0.95	t	2023-01-18 20:22:34.739219+00	infinity
+002.+012.+010.+003	dcc:respPerson	/dcc:digitalCalibrationCertificate/dcc:administrativeData//	-1		f	2023-01-18 20:22:54.816893+00	infinity
+002.+012.+010.+003.+001	dcc:person	/dcc:digitalCalibrationCertificate/dcc:administrativeData//dcc:respPerson/	-1		f	2023-01-18 20:22:54.817775+00	infinity
+002.+012.+010.+003.+001.+001	dcc:name	/dcc:digitalCalibrationCertificate/dcc:administrativeData//dcc:respPerson/dcc:person/	-1		f	2023-01-18 20:22:54.818388+00	infinity
+002.+012.+010.+003.+001.+001.+001	dcc:content	/dcc:digitalCalibrationCertificate/dcc:administrativeData//dcc:respPerson/dcc:person/dcc:name/	-1		f	2023-01-18 20:22:54.818651+00	infinity
+002.+012.+010.+003.+001.+001.+001.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData//dcc:respPerson/dcc:person/dcc:name/dcc:content	-1	A. Salesperson	f	2023-01-18 20:22:54.818886+00	infinity
+002.+012.+010.+003.+002	dcc:role	/dcc:digitalCalibrationCertificate/dcc:administrativeData//dcc:respPerson/	-1		f	2023-01-18 20:22:54.819309+00	infinity
+002.+012.+010.+003.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData//dcc:respPerson/dcc:role	-1	Account management	f	2023-01-18 20:22:54.819541+00	infinity
+001.+006.+006.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:eMail	-1	a_prod@example.com	f	2023-01-18 20:22:34.716114+00	2023-01-19 09:07:27+00
+001.+006.+006.+002.+001		/dcc:digitalCalibrationCertificate/dcc:administrativeData/dcc:customer/dcc:eMail	-1	ab_prod@example.com	f	2023-01-19 09:07:27+00	infinity
\.


--
-- Data for Name: xml_path; Type: TABLE DATA; Schema: public
--

COPY public.xml_path (path_id, path) FROM stdin;
\.


--
-- Name: xml_path_path_id_seq; Type: SEQUENCE SET; Schema: public
--

SELECT pg_catalog.setval('public.xml_path_path_id_seq', 1, false);


--
-- Name: xml_attr xml_attr_pkey; Type: CONSTRAINT; Schema: public
--

ALTER TABLE ONLY public.xml_attr
    ADD CONSTRAINT xml_attr_pkey PRIMARY KEY (attr, dde, tt_from, tt_to);


--
-- Name: xml_node xml_node_pkey; Type: CONSTRAINT; Schema: public
--

ALTER TABLE ONLY public.xml_node
    ADD CONSTRAINT xml_node_pkey PRIMARY KEY (dde, tt_from, tt_to);


--
-- Name: xml_path xml_path_pkey; Type: CONSTRAINT; Schema: public
--

ALTER TABLE ONLY public.xml_path
    ADD CONSTRAINT xml_path_pkey PRIMARY KEY (path_id);


--
-- PostgreSQL database dump complete
--

