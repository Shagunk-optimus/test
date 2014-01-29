--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.servicestatusproperty DROP CONSTRAINT servicestatusproperty_ibfk_2;
ALTER TABLE ONLY public.servicestatusproperty DROP CONSTRAINT servicestatusproperty_ibfk_1;
ALTER TABLE ONLY public.servicestatus DROP CONSTRAINT servicestatus_ibfk_6;
ALTER TABLE ONLY public.servicestatus DROP CONSTRAINT servicestatus_ibfk_5;
ALTER TABLE ONLY public.servicestatus DROP CONSTRAINT servicestatus_ibfk_4;
ALTER TABLE ONLY public.servicestatus DROP CONSTRAINT servicestatus_ibfk_3;
ALTER TABLE ONLY public.servicestatus DROP CONSTRAINT servicestatus_ibfk_2;
ALTER TABLE ONLY public.servicestatus DROP CONSTRAINT servicestatus_ibfk_1;
ALTER TABLE ONLY public.plugin DROP CONSTRAINT plugin_ibfk_1;
ALTER TABLE ONLY public.monitorlist DROP CONSTRAINT monitorlist_ibfk_2;
ALTER TABLE ONLY public.monitorlist DROP CONSTRAINT monitorlist_ibfk_1;
ALTER TABLE ONLY public.logperformancedata DROP CONSTRAINT logperformancedata_ibfk_2;
ALTER TABLE ONLY public.logperformancedata DROP CONSTRAINT logperformancedata_ibfk_1;
ALTER TABLE ONLY public.logmessageproperty DROP CONSTRAINT logmessageproperty_ibfk_2;
ALTER TABLE ONLY public.logmessageproperty DROP CONSTRAINT logmessageproperty_ibfk_1;
ALTER TABLE ONLY public.logmessage DROP CONSTRAINT logmessage_ibfk_9;
ALTER TABLE ONLY public.logmessage DROP CONSTRAINT logmessage_ibfk_8;
ALTER TABLE ONLY public.logmessage DROP CONSTRAINT logmessage_ibfk_7;
ALTER TABLE ONLY public.logmessage DROP CONSTRAINT logmessage_ibfk_6;
ALTER TABLE ONLY public.logmessage DROP CONSTRAINT logmessage_ibfk_5;
ALTER TABLE ONLY public.logmessage DROP CONSTRAINT logmessage_ibfk_4;
ALTER TABLE ONLY public.logmessage DROP CONSTRAINT logmessage_ibfk_3;
ALTER TABLE ONLY public.logmessage DROP CONSTRAINT logmessage_ibfk_2;
ALTER TABLE ONLY public.logmessage DROP CONSTRAINT logmessage_ibfk_1;
ALTER TABLE ONLY public.hoststatusproperty DROP CONSTRAINT hoststatusproperty_ibfk_2;
ALTER TABLE ONLY public.hoststatusproperty DROP CONSTRAINT hoststatusproperty_ibfk_1;
ALTER TABLE ONLY public.hoststatus DROP CONSTRAINT hoststatus_ibfk_4;
ALTER TABLE ONLY public.hoststatus DROP CONSTRAINT hoststatus_ibfk_3;
ALTER TABLE ONLY public.hoststatus DROP CONSTRAINT hoststatus_ibfk_2;
ALTER TABLE ONLY public.hoststatus DROP CONSTRAINT hoststatus_ibfk_1;
ALTER TABLE ONLY public.hostgroupcollection DROP CONSTRAINT hostgroupcollection_ibfk_2;
ALTER TABLE ONLY public.hostgroupcollection DROP CONSTRAINT hostgroupcollection_ibfk_1;
ALTER TABLE ONLY public.hostgroup DROP CONSTRAINT hostgroup_ibfk_1;
ALTER TABLE ONLY public.host DROP CONSTRAINT host_ibfk_2;
ALTER TABLE ONLY public.host DROP CONSTRAINT host_ibfk_1;
ALTER TABLE ONLY public.logmessage DROP CONSTRAINT fk_logmessage_servicestatusid;
ALTER TABLE ONLY public.logmessage DROP CONSTRAINT fk_logmessage_hoststatusid;
ALTER TABLE ONLY public.category DROP CONSTRAINT entitytypeid_ibfk1_1;
ALTER TABLE ONLY public.entityproperty DROP CONSTRAINT entityproperty_ibfk_2;
ALTER TABLE ONLY public.entityproperty DROP CONSTRAINT entityproperty_ibfk_1;
ALTER TABLE ONLY public.deviceparent DROP CONSTRAINT deviceparent_ibfk_2;
ALTER TABLE ONLY public.deviceparent DROP CONSTRAINT deviceparent_ibfk_1;
ALTER TABLE ONLY public.categoryhierarchy DROP CONSTRAINT categoryhierarchy_ibfk_2;
ALTER TABLE ONLY public.categoryhierarchy DROP CONSTRAINT categoryhierarchy_ibfk_1;
ALTER TABLE ONLY public.categoryentity DROP CONSTRAINT categoryentity_ibfk_2;
ALTER TABLE ONLY public.categoryentity DROP CONSTRAINT categoryentity_ibfk_1;
ALTER TABLE ONLY public.entity DROP CONSTRAINT applicationtypeid_ibfk1_1;
ALTER TABLE ONLY public.applicationentityproperty DROP CONSTRAINT applicationentityproperty_ibfk_3;
ALTER TABLE ONLY public.applicationentityproperty DROP CONSTRAINT applicationentityproperty_ibfk_2;
ALTER TABLE ONLY public.applicationentityproperty DROP CONSTRAINT applicationentityproperty_ibfk_1;
ALTER TABLE ONLY public.applicationaction DROP CONSTRAINT applicationaction_ibfk_2;
ALTER TABLE ONLY public.applicationaction DROP CONSTRAINT applicationaction_ibfk_1;
ALTER TABLE ONLY public.actionproperty DROP CONSTRAINT actionproperty_ibfk_1;
ALTER TABLE ONLY public.actionparameter DROP CONSTRAINT actionparameter_ibfk_1;
ALTER TABLE ONLY public.action DROP CONSTRAINT action_ibfk_1;
DROP INDEX public.servicestatusproperty_propertytypeid;
DROP INDEX public.servicestatus_statetypeid;
DROP INDEX public.servicestatus_monitorstatusid;
DROP INDEX public.servicestatus_lasthardstateid;
DROP INDEX public.servicestatus_checktypeid;
DROP INDEX public.servicestatus_applicationtypeid;
DROP INDEX public.monitorlist_deviceid;
DROP INDEX public.logperformancedata_servicestatusid;
DROP INDEX public.logperformancedata_performancedatalabelid;
DROP INDEX public.logmessageproperty_propertytypeid;
DROP INDEX public.logmessage_typeruleid;
DROP INDEX public.logmessage_severityid;
DROP INDEX public.logmessage_priorityid;
DROP INDEX public.logmessage_operationstatusid;
DROP INDEX public.logmessage_monitorstatusid;
DROP INDEX public.logmessage_idx_logmessage_statetransitionhash;
DROP INDEX public.logmessage_idx_logmessage_statelesshash;
DROP INDEX public.logmessage_idx_logmessage_reportdate;
DROP INDEX public.logmessage_idx_logmessage_lastinsertdate;
DROP INDEX public.logmessage_idx_logmessage_firstinsertdate;
DROP INDEX public.logmessage_idx_logmessage_consolidationhash;
DROP INDEX public.logmessage_fk_logmessage_servicestatusid;
DROP INDEX public.logmessage_fk_logmessage_hoststatusid;
DROP INDEX public.logmessage_deviceid;
DROP INDEX public.logmessage_componentid;
DROP INDEX public.logmessage_applicationtypeid;
DROP INDEX public.logmessage_applicationseverityid;
DROP INDEX public.hoststatusproperty_propertytypeid;
DROP INDEX public.hoststatus_statetypeid;
DROP INDEX public.hoststatus_monitorstatusid;
DROP INDEX public.hoststatus_checktypeid;
DROP INDEX public.hostgroupcollection_hostgroupid;
DROP INDEX public.hostgroup_applicationtypeid;
DROP INDEX public.host_deviceid;
DROP INDEX public.host_applicationtypeid;
DROP INDEX public.entityproperty_propertytypeid;
DROP INDEX public.entity_applicationtypeid_ibfk1_1;
DROP INDEX public.deviceparent_parentid;
DROP INDEX public.categoryhierarchy_parentid;
DROP INDEX public.categoryentity_entitytypeid;
DROP INDEX public.categoryentity_categoryid;
DROP INDEX public.category_entitytypeid_ibfk1_1;
DROP INDEX public.applicationentityproperty_propertytypeid;
DROP INDEX public.applicationentityproperty_entitytypeid;
DROP INDEX public.applicationaction_actionid;
DROP INDEX public.action_idx_action_name;
DROP INDEX public.action_actiontypeid;
ALTER TABLE ONLY public.typerule DROP CONSTRAINT typerule_pkey;
ALTER TABLE ONLY public.typerule DROP CONSTRAINT typerule_name_key;
ALTER TABLE ONLY public.statetype DROP CONSTRAINT statetype_pkey;
ALTER TABLE ONLY public.statetype DROP CONSTRAINT statetype_name_key;
ALTER TABLE ONLY public.severity DROP CONSTRAINT severity_pkey;
ALTER TABLE ONLY public.severity DROP CONSTRAINT severity_name_key;
ALTER TABLE ONLY public.servicestatusproperty DROP CONSTRAINT servicestatusproperty_pkey;
ALTER TABLE ONLY public.servicestatus DROP CONSTRAINT servicestatus_pkey;
ALTER TABLE ONLY public.servicestatus DROP CONSTRAINT servicestatus_hostid_servicedescription_key;
ALTER TABLE ONLY public.propertytype DROP CONSTRAINT propertytype_pkey;
ALTER TABLE ONLY public.propertytype DROP CONSTRAINT propertytype_name_key;
ALTER TABLE ONLY public.priority DROP CONSTRAINT priority_pkey;
ALTER TABLE ONLY public.priority DROP CONSTRAINT priority_name_key;
ALTER TABLE ONLY public.pluginplatform DROP CONSTRAINT pluginplatform_pkey;
ALTER TABLE ONLY public.pluginplatform DROP CONSTRAINT pluginplatform_name_arch_key;
ALTER TABLE ONLY public.plugin DROP CONSTRAINT plugin_platformid_name_key;
ALTER TABLE ONLY public.plugin DROP CONSTRAINT plugin_pkey;
ALTER TABLE ONLY public.performancedatalabel DROP CONSTRAINT performancedatalabel_pkey;
ALTER TABLE ONLY public.performancedatalabel DROP CONSTRAINT performancedatalabel_performancename_key;
ALTER TABLE ONLY public.operationstatus DROP CONSTRAINT operationstatus_pkey;
ALTER TABLE ONLY public.operationstatus DROP CONSTRAINT operationstatus_name_key;
ALTER TABLE ONLY public.network_service_status DROP CONSTRAINT network_service_status_pkey;
ALTER TABLE ONLY public.network_service_short_news DROP CONSTRAINT network_service_short_news_pkey;
ALTER TABLE ONLY public.network_service_notifications DROP CONSTRAINT network_service_notifications_pkey;
ALTER TABLE ONLY public.monitorstatus DROP CONSTRAINT monitorstatus_pkey;
ALTER TABLE ONLY public.monitorstatus DROP CONSTRAINT monitorstatus_name_key;
ALTER TABLE ONLY public.monitorserver DROP CONSTRAINT monitorserver_pkey;
ALTER TABLE ONLY public.monitorlist DROP CONSTRAINT monitorlist_pkey;
ALTER TABLE ONLY public.messagefilter DROP CONSTRAINT messagefilter_pkey;
ALTER TABLE ONLY public.messagefilter DROP CONSTRAINT messagefilter_name_key;
ALTER TABLE ONLY public.logperformancedata DROP CONSTRAINT logperformancedata_pkey;
ALTER TABLE ONLY public.logmessageproperty DROP CONSTRAINT logmessageproperty_pkey;
ALTER TABLE ONLY public.logmessage DROP CONSTRAINT logmessage_pkey;
ALTER TABLE ONLY public.hoststatusproperty DROP CONSTRAINT hoststatusproperty_pkey;
ALTER TABLE ONLY public.hoststatus DROP CONSTRAINT hoststatus_pkey;
ALTER TABLE ONLY public.hostgroupcollection DROP CONSTRAINT hostgroupcollection_pkey;
ALTER TABLE ONLY public.hostgroup DROP CONSTRAINT hostgroup_pkey;
ALTER TABLE ONLY public.hostgroup DROP CONSTRAINT hostgroup_name_key;
ALTER TABLE ONLY public.host DROP CONSTRAINT host_pkey;
ALTER TABLE ONLY public.host DROP CONSTRAINT host_hostname_key;
ALTER TABLE ONLY public.entitytype DROP CONSTRAINT entitytype_pkey;
ALTER TABLE ONLY public.entitytype DROP CONSTRAINT entitytype_name_key;
ALTER TABLE ONLY public.entityproperty DROP CONSTRAINT entityproperty_pkey;
ALTER TABLE ONLY public.entity DROP CONSTRAINT entity_pkey;
ALTER TABLE ONLY public.deviceparent DROP CONSTRAINT deviceparent_pkey;
ALTER TABLE ONLY public.device DROP CONSTRAINT device_pkey;
ALTER TABLE ONLY public.device DROP CONSTRAINT device_identification_key;
ALTER TABLE ONLY public.consolidationcriteria DROP CONSTRAINT consolidationcriteria_pkey;
ALTER TABLE ONLY public.consolidationcriteria DROP CONSTRAINT consolidationcriteria_name_key;
ALTER TABLE ONLY public.component DROP CONSTRAINT component_pkey;
ALTER TABLE ONLY public.component DROP CONSTRAINT component_name_key;
ALTER TABLE ONLY public.checktype DROP CONSTRAINT checktype_pkey;
ALTER TABLE ONLY public.checktype DROP CONSTRAINT checktype_name_key;
ALTER TABLE ONLY public.categoryhierarchy DROP CONSTRAINT categoryhierarchy_pkey;
ALTER TABLE ONLY public.categoryentity DROP CONSTRAINT categoryentity_pkey;
ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
ALTER TABLE ONLY public.category DROP CONSTRAINT category_name_key;
ALTER TABLE ONLY public.applicationtype DROP CONSTRAINT applicationtype_pkey;
ALTER TABLE ONLY public.applicationtype DROP CONSTRAINT applicationtype_name_key;
ALTER TABLE ONLY public.applicationentityproperty DROP CONSTRAINT applicationentityproperty_pkey;
ALTER TABLE ONLY public.applicationentityproperty DROP CONSTRAINT applicationentityproperty_applicationtypeid_entitytypeid_pr_key;
ALTER TABLE ONLY public.applicationaction DROP CONSTRAINT applicationaction_pkey;
ALTER TABLE ONLY public.actiontype DROP CONSTRAINT actiontype_pkey;
ALTER TABLE ONLY public.actiontype DROP CONSTRAINT actiontype_name_key;
ALTER TABLE ONLY public.actionproperty DROP CONSTRAINT actionproperty_pkey;
ALTER TABLE ONLY public.actionproperty DROP CONSTRAINT actionproperty_actionid_name_key;
ALTER TABLE ONLY public.actionparameter DROP CONSTRAINT actionparameter_pkey;
ALTER TABLE ONLY public.actionparameter DROP CONSTRAINT actionparameter_actionid_name_key;
ALTER TABLE ONLY public.action DROP CONSTRAINT action_pkey;
ALTER TABLE ONLY public.action DROP CONSTRAINT action_name_key;
ALTER TABLE public.typerule ALTER COLUMN typeruleid DROP DEFAULT;
ALTER TABLE public.statetype ALTER COLUMN statetypeid DROP DEFAULT;
ALTER TABLE public.severity ALTER COLUMN severityid DROP DEFAULT;
ALTER TABLE public.servicestatus ALTER COLUMN servicestatusid DROP DEFAULT;
ALTER TABLE public.propertytype ALTER COLUMN propertytypeid DROP DEFAULT;
ALTER TABLE public.priority ALTER COLUMN priorityid DROP DEFAULT;
ALTER TABLE public.pluginplatform ALTER COLUMN platformid DROP DEFAULT;
ALTER TABLE public.plugin ALTER COLUMN pluginid DROP DEFAULT;
ALTER TABLE public.performancedatalabel ALTER COLUMN performancedatalabelid DROP DEFAULT;
ALTER TABLE public.operationstatus ALTER COLUMN operationstatusid DROP DEFAULT;
ALTER TABLE public.network_service_status ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.network_service_short_news ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.network_service_notifications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.monitorstatus ALTER COLUMN monitorstatusid DROP DEFAULT;
ALTER TABLE public.monitorserver ALTER COLUMN monitorserverid DROP DEFAULT;
ALTER TABLE public.messagefilter ALTER COLUMN messagefilterid DROP DEFAULT;
ALTER TABLE public.logperformancedata ALTER COLUMN logperformancedataid DROP DEFAULT;
ALTER TABLE public.logmessage ALTER COLUMN logmessageid DROP DEFAULT;
ALTER TABLE public.hostgroup ALTER COLUMN hostgroupid DROP DEFAULT;
ALTER TABLE public.host ALTER COLUMN hostid DROP DEFAULT;
ALTER TABLE public.entitytype ALTER COLUMN entitytypeid DROP DEFAULT;
ALTER TABLE public.entity ALTER COLUMN entityid DROP DEFAULT;
ALTER TABLE public.device ALTER COLUMN deviceid DROP DEFAULT;
ALTER TABLE public.consolidationcriteria ALTER COLUMN consolidationcriteriaid DROP DEFAULT;
ALTER TABLE public.component ALTER COLUMN componentid DROP DEFAULT;
ALTER TABLE public.checktype ALTER COLUMN checktypeid DROP DEFAULT;
ALTER TABLE public.categoryentity ALTER COLUMN categoryentityid DROP DEFAULT;
ALTER TABLE public.category ALTER COLUMN categoryid DROP DEFAULT;
ALTER TABLE public.applicationtype ALTER COLUMN applicationtypeid DROP DEFAULT;
ALTER TABLE public.applicationentityproperty ALTER COLUMN applicationentitypropertyid DROP DEFAULT;
ALTER TABLE public.actiontype ALTER COLUMN actiontypeid DROP DEFAULT;
ALTER TABLE public.actionproperty ALTER COLUMN actionpropertyid DROP DEFAULT;
ALTER TABLE public.actionparameter ALTER COLUMN actionparameterid DROP DEFAULT;
ALTER TABLE public.action ALTER COLUMN actionid DROP DEFAULT;
DROP SEQUENCE public.typerule_typeruleid_seq;
DROP TABLE public.typerule;
DROP SEQUENCE public.statetype_statetypeid_seq;
DROP TABLE public.statetype;
DROP SEQUENCE public.severity_severityid_seq;
DROP TABLE public.severity;
DROP TABLE public.servicestatusproperty;
DROP SEQUENCE public.servicestatus_servicestatusid_seq;
DROP TABLE public.servicestatus;
DROP TABLE public.schemainfo;
DROP SEQUENCE public.propertytype_propertytypeid_seq;
DROP TABLE public.propertytype;
DROP SEQUENCE public.priority_priorityid_seq;
DROP TABLE public.priority;
DROP SEQUENCE public.pluginplatform_platformid_seq;
DROP TABLE public.pluginplatform;
DROP SEQUENCE public.plugin_pluginid_seq;
DROP TABLE public.plugin;
DROP SEQUENCE public.performancedatalabel_performancedatalabelid_seq;
DROP TABLE public.performancedatalabel;
DROP SEQUENCE public.operationstatus_operationstatusid_seq;
DROP TABLE public.operationstatus;
DROP SEQUENCE public.network_service_status_id_seq;
DROP TABLE public.network_service_status;
DROP SEQUENCE public.network_service_short_news_id_seq;
DROP TABLE public.network_service_short_news;
DROP SEQUENCE public.network_service_notifications_id_seq;
DROP TABLE public.network_service_notifications;
DROP SEQUENCE public.monitorstatus_monitorstatusid_seq;
DROP TABLE public.monitorstatus;
DROP SEQUENCE public.monitorserver_monitorserverid_seq;
DROP TABLE public.monitorserver;
DROP TABLE public.monitorlist;
DROP SEQUENCE public.messagefilter_messagefilterid_seq;
DROP TABLE public.messagefilter;
DROP SEQUENCE public.logperformancedata_logperformancedataid_seq;
DROP TABLE public.logperformancedata;
DROP TABLE public.logmessageproperty;
DROP SEQUENCE public.logmessage_logmessageid_seq;
DROP TABLE public.logmessage;
DROP TABLE public.hoststatusproperty;
DROP TABLE public.hoststatus;
DROP TABLE public.hostgroupcollection;
DROP SEQUENCE public.hostgroup_hostgroupid_seq;
DROP TABLE public.hostgroup;
DROP SEQUENCE public.host_hostid_seq;
DROP TABLE public.host;
DROP SEQUENCE public.hibernate_sequence;
DROP SEQUENCE public.entitytype_entitytypeid_seq;
DROP TABLE public.entitytype;
DROP TABLE public.entityproperty;
DROP SEQUENCE public.entity_entityid_seq;
DROP TABLE public.entity;
DROP TABLE public.deviceparent;
DROP SEQUENCE public.device_deviceid_seq;
DROP TABLE public.device;
DROP SEQUENCE public.consolidationcriteria_consolidationcriteriaid_seq;
DROP TABLE public.consolidationcriteria;
DROP SEQUENCE public.component_componentid_seq;
DROP TABLE public.component;
DROP SEQUENCE public.checktype_checktypeid_seq;
DROP TABLE public.checktype;
DROP TABLE public.categoryhierarchy;
DROP SEQUENCE public.categoryentity_categoryentityid_seq;
DROP TABLE public.categoryentity;
DROP SEQUENCE public.category_categoryid_seq;
DROP TABLE public.category;
DROP SEQUENCE public.applicationtype_applicationtypeid_seq;
DROP TABLE public.applicationtype;
DROP SEQUENCE public.applicationentityproperty_applicationentitypropertyid_seq;
DROP TABLE public.applicationentityproperty;
DROP TABLE public.applicationaction;
DROP SEQUENCE public.actiontype_actiontypeid_seq;
DROP TABLE public.actiontype;
DROP SEQUENCE public.actionproperty_actionpropertyid_seq;
DROP TABLE public.actionproperty;
DROP SEQUENCE public.actionparameter_actionparameterid_seq;
DROP TABLE public.actionparameter;
DROP SEQUENCE public.action_actionid_seq;
DROP TABLE public.action;
DROP FUNCTION public.substring_index(str text, delim text, count integer);
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: substring_index(text, text, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION substring_index(str text, delim text, count integer) RETURNS text
    LANGUAGE sql
    AS $_$
SELECT CASE WHEN $3 > 0
THEN array_to_string((string_to_array($1, $2))[1:$3], $2)
ELSE array_to_string(ARRAY(SELECT unnest(string_to_array($1,$2))
                            OFFSET array_upper(string_to_array($1,$2),1) + $3), $2)
END
$_$;


ALTER FUNCTION public.substring_index(str text, delim text, count integer) OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: action; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE action (
    actionid integer NOT NULL,
    actiontypeid integer NOT NULL,
    name character varying(256) NOT NULL,
    description character varying(512)
);


ALTER TABLE public.action OWNER TO collage;

--
-- Name: action_actionid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE action_actionid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_actionid_seq OWNER TO collage;

--
-- Name: action_actionid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE action_actionid_seq OWNED BY action.actionid;


--
-- Name: action_actionid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('action_actionid_seq', 10, true);


--
-- Name: actionparameter; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE actionparameter (
    actionparameterid integer NOT NULL,
    actionid integer NOT NULL,
    name character varying(128) NOT NULL,
    value text
);


ALTER TABLE public.actionparameter OWNER TO collage;

--
-- Name: actionparameter_actionparameterid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE actionparameter_actionparameterid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actionparameter_actionparameterid_seq OWNER TO collage;

--
-- Name: actionparameter_actionparameterid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE actionparameter_actionparameterid_seq OWNED BY actionparameter.actionparameterid;


--
-- Name: actionparameter_actionparameterid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('actionparameter_actionparameterid_seq', 73, true);


--
-- Name: actionproperty; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE actionproperty (
    actionpropertyid integer NOT NULL,
    actionid integer NOT NULL,
    name character varying(128) NOT NULL,
    value text
);


ALTER TABLE public.actionproperty OWNER TO collage;

--
-- Name: actionproperty_actionpropertyid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE actionproperty_actionpropertyid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actionproperty_actionpropertyid_seq OWNER TO collage;

--
-- Name: actionproperty_actionpropertyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE actionproperty_actionpropertyid_seq OWNED BY actionproperty.actionpropertyid;


--
-- Name: actionproperty_actionpropertyid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('actionproperty_actionpropertyid_seq', 10, true);


--
-- Name: actiontype; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE actiontype (
    actiontypeid integer NOT NULL,
    name character varying(256) NOT NULL,
    classname character varying(256) NOT NULL
);


ALTER TABLE public.actiontype OWNER TO collage;

--
-- Name: actiontype_actiontypeid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE actiontype_actiontypeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actiontype_actiontypeid_seq OWNER TO collage;

--
-- Name: actiontype_actiontypeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE actiontype_actiontypeid_seq OWNED BY actiontype.actiontypeid;


--
-- Name: actiontype_actiontypeid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('actiontype_actiontypeid_seq', 5, true);


--
-- Name: applicationaction; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE applicationaction (
    applicationtypeid integer NOT NULL,
    actionid integer NOT NULL
);


ALTER TABLE public.applicationaction OWNER TO collage;

--
-- Name: applicationentityproperty; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE applicationentityproperty (
    applicationentitypropertyid integer NOT NULL,
    applicationtypeid integer NOT NULL,
    entitytypeid integer NOT NULL,
    propertytypeid integer NOT NULL,
    sortorder integer DEFAULT (999)::numeric NOT NULL
);


ALTER TABLE public.applicationentityproperty OWNER TO collage;

--
-- Name: applicationentityproperty_applicationentitypropertyid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE applicationentityproperty_applicationentitypropertyid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicationentityproperty_applicationentitypropertyid_seq OWNER TO collage;

--
-- Name: applicationentityproperty_applicationentitypropertyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE applicationentityproperty_applicationentitypropertyid_seq OWNED BY applicationentityproperty.applicationentitypropertyid;


--
-- Name: applicationentityproperty_applicationentitypropertyid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('applicationentityproperty_applicationentitypropertyid_seq', 91, true);


--
-- Name: applicationtype; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE applicationtype (
    applicationtypeid integer NOT NULL,
    name character varying(128) NOT NULL,
    description character varying(254),
    statetransitioncriteria character varying(512)
);


ALTER TABLE public.applicationtype OWNER TO collage;

--
-- Name: applicationtype_applicationtypeid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE applicationtype_applicationtypeid_seq
    START WITH 101
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applicationtype_applicationtypeid_seq OWNER TO collage;

--
-- Name: applicationtype_applicationtypeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE applicationtype_applicationtypeid_seq OWNED BY applicationtype.applicationtypeid;


--
-- Name: applicationtype_applicationtypeid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('applicationtype_applicationtypeid_seq', 104, true);


--
-- Name: category; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE category (
    categoryid integer NOT NULL,
    name character varying(254) NOT NULL,
    description character varying(4096),
    entitytypeid integer NOT NULL
);


ALTER TABLE public.category OWNER TO collage;

--
-- Name: category_categoryid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE category_categoryid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_categoryid_seq OWNER TO collage;

--
-- Name: category_categoryid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE category_categoryid_seq OWNED BY category.categoryid;


--
-- Name: category_categoryid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('category_categoryid_seq', 6, true);


--
-- Name: categoryentity; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE categoryentity (
    categoryentityid integer NOT NULL,
    objectid integer DEFAULT 0 NOT NULL,
    categoryid integer DEFAULT 0 NOT NULL,
    entitytypeid integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.categoryentity OWNER TO collage;

--
-- Name: categoryentity_categoryentityid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE categoryentity_categoryentityid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoryentity_categoryentityid_seq OWNER TO collage;

--
-- Name: categoryentity_categoryentityid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE categoryentity_categoryentityid_seq OWNED BY categoryentity.categoryentityid;


--
-- Name: categoryentity_categoryentityid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('categoryentity_categoryentityid_seq', 20, true);


--
-- Name: categoryhierarchy; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE categoryhierarchy (
    categoryid integer DEFAULT 0 NOT NULL,
    parentid integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.categoryhierarchy OWNER TO collage;

--
-- Name: checktype; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE checktype (
    checktypeid integer NOT NULL,
    name character varying(254) NOT NULL,
    description character varying(254)
);


ALTER TABLE public.checktype OWNER TO collage;

--
-- Name: checktype_checktypeid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE checktype_checktypeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.checktype_checktypeid_seq OWNER TO collage;

--
-- Name: checktype_checktypeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE checktype_checktypeid_seq OWNED BY checktype.checktypeid;


--
-- Name: checktype_checktypeid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('checktype_checktypeid_seq', 2, true);


--
-- Name: component; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE component (
    componentid integer NOT NULL,
    name character varying(128) NOT NULL,
    description character varying(254)
);


ALTER TABLE public.component OWNER TO collage;

--
-- Name: component_componentid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE component_componentid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.component_componentid_seq OWNER TO collage;

--
-- Name: component_componentid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE component_componentid_seq OWNED BY component.componentid;


--
-- Name: component_componentid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('component_componentid_seq', 4, true);


--
-- Name: consolidationcriteria; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE consolidationcriteria (
    consolidationcriteriaid integer NOT NULL,
    name character varying(254) NOT NULL,
    criteria character varying(512) NOT NULL
);


ALTER TABLE public.consolidationcriteria OWNER TO collage;

--
-- Name: consolidationcriteria_consolidationcriteriaid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE consolidationcriteria_consolidationcriteriaid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consolidationcriteria_consolidationcriteriaid_seq OWNER TO collage;

--
-- Name: consolidationcriteria_consolidationcriteriaid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE consolidationcriteria_consolidationcriteriaid_seq OWNED BY consolidationcriteria.consolidationcriteriaid;


--
-- Name: consolidationcriteria_consolidationcriteriaid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('consolidationcriteria_consolidationcriteriaid_seq', 4, true);


--
-- Name: device; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE device (
    deviceid integer NOT NULL,
    displayname character varying(254),
    identification character varying(128) NOT NULL,
    description character varying(254)
);


ALTER TABLE public.device OWNER TO collage;

--
-- Name: device_deviceid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE device_deviceid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.device_deviceid_seq OWNER TO collage;

--
-- Name: device_deviceid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE device_deviceid_seq OWNED BY device.deviceid;


--
-- Name: device_deviceid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('device_deviceid_seq', 11, true);


--
-- Name: deviceparent; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE deviceparent (
    deviceid integer NOT NULL,
    parentid integer NOT NULL
);


ALTER TABLE public.deviceparent OWNER TO collage;

--
-- Name: entity; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE entity (
    entityid integer NOT NULL,
    name character varying(254) NOT NULL,
    description character varying(254) NOT NULL,
    class character varying(254) NOT NULL,
    applicationtypeid integer NOT NULL
);


ALTER TABLE public.entity OWNER TO collage;

--
-- Name: entity_entityid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE entity_entityid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entity_entityid_seq OWNER TO collage;

--
-- Name: entity_entityid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE entity_entityid_seq OWNED BY entity.entityid;


--
-- Name: entity_entityid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('entity_entityid_seq', 1, false);


--
-- Name: entityproperty; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE entityproperty (
    entitytypeid integer NOT NULL,
    objectid integer NOT NULL,
    propertytypeid integer NOT NULL,
    valuestring character varying(4096),
    valuedate timestamp without time zone,
    valueboolean boolean,
    valueinteger integer,
    valuelong bigint,
    valuedouble double precision,
    lasteditedon timestamp without time zone DEFAULT now() NOT NULL,
    createdon timestamp without time zone NOT NULL
);


ALTER TABLE public.entityproperty OWNER TO collage;

--
-- Name: entitytype; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE entitytype (
    entitytypeid integer NOT NULL,
    name character varying(128) NOT NULL,
    description character varying(254),
    islogicalentity boolean DEFAULT false NOT NULL,
    isapplicationtypesupported boolean DEFAULT false NOT NULL
);


ALTER TABLE public.entitytype OWNER TO collage;

--
-- Name: entitytype_entitytypeid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE entitytype_entitytypeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entitytype_entitytypeid_seq OWNER TO collage;

--
-- Name: entitytype_entitytypeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE entitytype_entitytypeid_seq OWNED BY entitytype.entitytypeid;


--
-- Name: entitytype_entitytypeid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('entitytype_entitytypeid_seq', 1, false);


--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1000
    INCREMENT BY 1
    MINVALUE 1000
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('hibernate_sequence', 1000, false);


--
-- Name: host; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE host (
    hostid integer NOT NULL,
    deviceid integer NOT NULL,
    hostname character varying(254) NOT NULL,
    description character varying(4096),
    applicationtypeid integer
);


ALTER TABLE public.host OWNER TO collage;

--
-- Name: host_hostid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE host_hostid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.host_hostid_seq OWNER TO collage;

--
-- Name: host_hostid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE host_hostid_seq OWNED BY host.hostid;


--
-- Name: host_hostid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('host_hostid_seq', 11, true);


--
-- Name: hostgroup; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE hostgroup (
    hostgroupid integer NOT NULL,
    name character varying(254) NOT NULL,
    description character varying(4096),
    applicationtypeid integer,
    alias character varying(254)
);


ALTER TABLE public.hostgroup OWNER TO collage;

--
-- Name: hostgroup_hostgroupid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE hostgroup_hostgroupid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hostgroup_hostgroupid_seq OWNER TO collage;

--
-- Name: hostgroup_hostgroupid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE hostgroup_hostgroupid_seq OWNED BY hostgroup.hostgroupid;


--
-- Name: hostgroup_hostgroupid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('hostgroup_hostgroupid_seq', 9, true);


--
-- Name: hostgroupcollection; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE hostgroupcollection (
    hostid integer NOT NULL,
    hostgroupid integer NOT NULL
);


ALTER TABLE public.hostgroupcollection OWNER TO collage;

--
-- Name: hoststatus; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE hoststatus (
    hoststatusid integer NOT NULL,
    applicationtypeid integer NOT NULL,
    monitorstatusid integer NOT NULL,
    lastchecktime timestamp without time zone,
    checktypeid integer,
    statetypeid integer,
    nextchecktime timestamp without time zone
);


ALTER TABLE public.hoststatus OWNER TO collage;

--
-- Name: hoststatusproperty; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE hoststatusproperty (
    hoststatusid integer NOT NULL,
    propertytypeid integer NOT NULL,
    valuestring character varying(32768),
    valuedate timestamp without time zone,
    valueboolean boolean,
    valueinteger integer,
    valuelong bigint,
    valuedouble double precision,
    lasteditedon timestamp without time zone DEFAULT now() NOT NULL,
    createdon timestamp without time zone NOT NULL
);


ALTER TABLE public.hoststatusproperty OWNER TO collage;

--
-- Name: logmessage; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE logmessage (
    logmessageid integer NOT NULL,
    applicationtypeid integer NOT NULL,
    deviceid integer NOT NULL,
    hoststatusid integer,
    servicestatusid integer,
    textmessage character varying(4096) NOT NULL,
    msgcount integer DEFAULT (1)::numeric NOT NULL,
    firstinsertdate timestamp without time zone NOT NULL,
    lastinsertdate timestamp without time zone NOT NULL,
    reportdate timestamp without time zone NOT NULL,
    monitorstatusid integer,
    severityid integer NOT NULL,
    applicationseverityid integer NOT NULL,
    priorityid integer NOT NULL,
    typeruleid integer NOT NULL,
    componentid integer NOT NULL,
    operationstatusid integer NOT NULL,
    isstatechanged boolean DEFAULT false NOT NULL,
    consolidationhash integer DEFAULT 0 NOT NULL,
    statelesshash integer DEFAULT 0 NOT NULL,
    statetransitionhash integer
);


ALTER TABLE public.logmessage OWNER TO collage;

--
-- Name: logmessage_logmessageid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE logmessage_logmessageid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logmessage_logmessageid_seq OWNER TO collage;

--
-- Name: logmessage_logmessageid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE logmessage_logmessageid_seq OWNED BY logmessage.logmessageid;


--
-- Name: logmessage_logmessageid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('logmessage_logmessageid_seq', 39, true);


--
-- Name: logmessageproperty; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE logmessageproperty (
    logmessageid integer NOT NULL,
    propertytypeid integer NOT NULL,
    valuestring character varying(4096),
    valuedate timestamp without time zone,
    valueboolean boolean,
    valueinteger integer,
    valuelong bigint,
    valuedouble double precision,
    lasteditedon timestamp without time zone DEFAULT now() NOT NULL,
    createdon timestamp without time zone NOT NULL
);


ALTER TABLE public.logmessageproperty OWNER TO collage;

--
-- Name: logperformancedata; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE logperformancedata (
    logperformancedataid integer NOT NULL,
    servicestatusid integer NOT NULL,
    lastchecktime timestamp without time zone NOT NULL,
    maximum double precision DEFAULT 0,
    minimum double precision DEFAULT 0,
    average double precision DEFAULT 0,
    measurementpoints integer DEFAULT 0,
    performancedatalabelid integer
);


ALTER TABLE public.logperformancedata OWNER TO collage;

--
-- Name: logperformancedata_logperformancedataid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE logperformancedata_logperformancedataid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logperformancedata_logperformancedataid_seq OWNER TO collage;

--
-- Name: logperformancedata_logperformancedataid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE logperformancedata_logperformancedataid_seq OWNED BY logperformancedata.logperformancedataid;


--
-- Name: logperformancedata_logperformancedataid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('logperformancedata_logperformancedataid_seq', 1, false);


--
-- Name: messagefilter; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE messagefilter (
    messagefilterid integer NOT NULL,
    name character varying(254) NOT NULL,
    regexpresion character varying(512) NOT NULL,
    ischangeseveritytostatistic boolean DEFAULT false
);


ALTER TABLE public.messagefilter OWNER TO collage;

--
-- Name: messagefilter_messagefilterid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE messagefilter_messagefilterid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messagefilter_messagefilterid_seq OWNER TO collage;

--
-- Name: messagefilter_messagefilterid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE messagefilter_messagefilterid_seq OWNED BY messagefilter.messagefilterid;


--
-- Name: messagefilter_messagefilterid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('messagefilter_messagefilterid_seq', 1, false);


--
-- Name: monitorlist; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE monitorlist (
    monitorserverid integer NOT NULL,
    deviceid integer NOT NULL
);


ALTER TABLE public.monitorlist OWNER TO collage;

--
-- Name: monitorserver; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE monitorserver (
    monitorserverid integer NOT NULL,
    monitorservername character varying(254) NOT NULL,
    ip character varying(128) NOT NULL,
    description character varying(254)
);


ALTER TABLE public.monitorserver OWNER TO collage;

--
-- Name: monitorserver_monitorserverid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE monitorserver_monitorserverid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.monitorserver_monitorserverid_seq OWNER TO collage;

--
-- Name: monitorserver_monitorserverid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE monitorserver_monitorserverid_seq OWNED BY monitorserver.monitorserverid;


--
-- Name: monitorserver_monitorserverid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('monitorserver_monitorserverid_seq', 1, true);


--
-- Name: monitorstatus; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE monitorstatus (
    monitorstatusid integer NOT NULL,
    name character varying(254) NOT NULL,
    description character varying(254)
);


ALTER TABLE public.monitorstatus OWNER TO collage;

--
-- Name: monitorstatus_monitorstatusid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE monitorstatus_monitorstatusid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.monitorstatus_monitorstatusid_seq OWNER TO collage;

--
-- Name: monitorstatus_monitorstatusid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE monitorstatus_monitorstatusid_seq OWNED BY monitorstatus.monitorstatusid;


--
-- Name: monitorstatus_monitorstatusid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('monitorstatus_monitorstatusid_seq', 23, true);


--
-- Name: network_service_notifications; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE network_service_notifications (
    id integer NOT NULL,
    created_at timestamp without time zone DEFAULT ('now'::text)::timestamp(0) with time zone,
    guid integer,
    type character varying(20),
    title character varying(255) DEFAULT ''::character varying,
    critical integer,
    description text DEFAULT ''::text,
    webpage_url text DEFAULT ''::text,
    webpage_url_description text DEFAULT ''::text,
    update_md5 character varying(255) DEFAULT ''::character varying,
    update_url character varying(255) DEFAULT ''::character varying,
    update_cmd_switch character varying(255) DEFAULT ''::character varying,
    update_instruction text DEFAULT ''::text,
    update_size integer,
    update_type character varying(255) DEFAULT ''::character varying,
    update_os character varying(255) DEFAULT ''::character varying,
    is_read integer DEFAULT 0,
    is_archived integer DEFAULT 0
);


ALTER TABLE public.network_service_notifications OWNER TO collage;

--
-- Name: network_service_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE network_service_notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.network_service_notifications_id_seq OWNER TO collage;

--
-- Name: network_service_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE network_service_notifications_id_seq OWNED BY network_service_notifications.id;


--
-- Name: network_service_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('network_service_notifications_id_seq', 1, false);


--
-- Name: network_service_short_news; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE network_service_short_news (
    id integer NOT NULL,
    status integer,
    title character varying(255) DEFAULT ''::character varying,
    message text DEFAULT ''::text,
    url character varying(255) DEFAULT ''::character varying,
    url_description text DEFAULT ''::text,
    is_archived integer DEFAULT 0
);


ALTER TABLE public.network_service_short_news OWNER TO collage;

--
-- Name: network_service_short_news_id_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE network_service_short_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.network_service_short_news_id_seq OWNER TO collage;

--
-- Name: network_service_short_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE network_service_short_news_id_seq OWNED BY network_service_short_news.id;


--
-- Name: network_service_short_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('network_service_short_news_id_seq', 1, false);


--
-- Name: network_service_status; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE network_service_status (
    id integer NOT NULL,
    last_checked timestamp without time zone
);


ALTER TABLE public.network_service_status OWNER TO collage;

--
-- Name: network_service_status_id_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE network_service_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.network_service_status_id_seq OWNER TO collage;

--
-- Name: network_service_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE network_service_status_id_seq OWNED BY network_service_status.id;


--
-- Name: network_service_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('network_service_status_id_seq', 1, false);


--
-- Name: operationstatus; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE operationstatus (
    operationstatusid integer NOT NULL,
    name character varying(128) NOT NULL,
    description character varying(254)
);


ALTER TABLE public.operationstatus OWNER TO collage;

--
-- Name: operationstatus_operationstatusid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE operationstatus_operationstatusid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.operationstatus_operationstatusid_seq OWNER TO collage;

--
-- Name: operationstatus_operationstatusid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE operationstatus_operationstatusid_seq OWNED BY operationstatus.operationstatusid;


--
-- Name: operationstatus_operationstatusid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('operationstatus_operationstatusid_seq', 4, true);


--
-- Name: performancedatalabel; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE performancedatalabel (
    performancedatalabelid integer NOT NULL,
    performancename character varying(254),
    servicedisplayname character varying(128),
    metriclabel character varying(128),
    unit character varying(64)
);


ALTER TABLE public.performancedatalabel OWNER TO collage;

--
-- Name: performancedatalabel_performancedatalabelid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE performancedatalabel_performancedatalabelid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.performancedatalabel_performancedatalabelid_seq OWNER TO collage;

--
-- Name: performancedatalabel_performancedatalabelid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE performancedatalabel_performancedatalabelid_seq OWNED BY performancedatalabel.performancedatalabelid;


--
-- Name: performancedatalabel_performancedatalabelid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('performancedatalabel_performancedatalabelid_seq', 9, true);


--
-- Name: plugin; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE plugin (
    pluginid integer NOT NULL,
    name character varying(128) NOT NULL,
    url character varying(254),
    platformid integer NOT NULL,
    dependencies character varying(254),
    lastupdatetimestamp timestamp without time zone DEFAULT now() NOT NULL,
    checksum character varying(254) NOT NULL,
    lastupdatedby character varying(254)
);


ALTER TABLE public.plugin OWNER TO collage;

--
-- Name: plugin_pluginid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE plugin_pluginid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plugin_pluginid_seq OWNER TO collage;

--
-- Name: plugin_pluginid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE plugin_pluginid_seq OWNED BY plugin.pluginid;


--
-- Name: plugin_pluginid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('plugin_pluginid_seq', 1, false);


--
-- Name: pluginplatform; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE pluginplatform (
    platformid integer NOT NULL,
    name character varying(128) NOT NULL,
    arch integer NOT NULL,
    description character varying(254)
);


ALTER TABLE public.pluginplatform OWNER TO collage;

--
-- Name: pluginplatform_platformid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE pluginplatform_platformid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pluginplatform_platformid_seq OWNER TO collage;

--
-- Name: pluginplatform_platformid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE pluginplatform_platformid_seq OWNED BY pluginplatform.platformid;


--
-- Name: pluginplatform_platformid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('pluginplatform_platformid_seq', 12, true);


--
-- Name: priority; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE priority (
    priorityid integer NOT NULL,
    name character varying(128) NOT NULL,
    description character varying(254)
);


ALTER TABLE public.priority OWNER TO collage;

--
-- Name: priority_priorityid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE priority_priorityid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.priority_priorityid_seq OWNER TO collage;

--
-- Name: priority_priorityid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE priority_priorityid_seq OWNED BY priority.priorityid;


--
-- Name: priority_priorityid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('priority_priorityid_seq', 10, true);


--
-- Name: propertytype; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE propertytype (
    propertytypeid integer NOT NULL,
    name character varying(128) NOT NULL,
    description character varying(254),
    isdate boolean DEFAULT false,
    isboolean boolean DEFAULT false,
    isstring boolean DEFAULT false,
    isinteger boolean DEFAULT false,
    islong boolean DEFAULT false,
    isdouble boolean DEFAULT false,
    isvisible boolean DEFAULT true
);


ALTER TABLE public.propertytype OWNER TO collage;

--
-- Name: propertytype_propertytypeid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE propertytype_propertytypeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.propertytype_propertytypeid_seq OWNER TO collage;

--
-- Name: propertytype_propertytypeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE propertytype_propertytypeid_seq OWNED BY propertytype.propertytypeid;


--
-- Name: propertytype_propertytypeid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('propertytype_propertytypeid_seq', 63, true);


--
-- Name: schemainfo; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE schemainfo (
    name character varying(254),
    value character varying(254)
);


ALTER TABLE public.schemainfo OWNER TO collage;

--
-- Name: servicestatus; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE servicestatus (
    servicestatusid integer NOT NULL,
    applicationtypeid integer NOT NULL,
    servicedescription character varying(254) NOT NULL,
    hostid integer NOT NULL,
    monitorstatusid integer NOT NULL,
    lastchecktime timestamp without time zone,
    nextchecktime timestamp without time zone,
    laststatechange timestamp without time zone,
    lasthardstateid integer NOT NULL,
    statetypeid integer NOT NULL,
    checktypeid integer NOT NULL,
    metrictype character varying(254),
    domain character varying(254)
);


ALTER TABLE public.servicestatus OWNER TO collage;

--
-- Name: servicestatus_servicestatusid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE servicestatus_servicestatusid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.servicestatus_servicestatusid_seq OWNER TO collage;

--
-- Name: servicestatus_servicestatusid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE servicestatus_servicestatusid_seq OWNED BY servicestatus.servicestatusid;


--
-- Name: servicestatus_servicestatusid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('servicestatus_servicestatusid_seq', 31, true);


--
-- Name: servicestatusproperty; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE servicestatusproperty (
    servicestatusid integer NOT NULL,
    propertytypeid integer NOT NULL,
    valuestring character varying(16384),
    valuedate timestamp without time zone,
    valueboolean boolean,
    valueinteger integer,
    valuelong bigint,
    valuedouble double precision,
    lasteditedon timestamp without time zone DEFAULT now() NOT NULL,
    createdon timestamp without time zone NOT NULL
);


ALTER TABLE public.servicestatusproperty OWNER TO collage;

--
-- Name: severity; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE severity (
    severityid integer NOT NULL,
    name character varying(128) NOT NULL,
    description character varying(254)
);


ALTER TABLE public.severity OWNER TO collage;

--
-- Name: severity_severityid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE severity_severityid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.severity_severityid_seq OWNER TO collage;

--
-- Name: severity_severityid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE severity_severityid_seq OWNED BY severity.severityid;


--
-- Name: severity_severityid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('severity_severityid_seq', 26, true);


--
-- Name: statetype; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE statetype (
    statetypeid integer NOT NULL,
    name character varying(254) NOT NULL,
    description character varying(254)
);


ALTER TABLE public.statetype OWNER TO collage;

--
-- Name: statetype_statetypeid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE statetype_statetypeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statetype_statetypeid_seq OWNER TO collage;

--
-- Name: statetype_statetypeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE statetype_statetypeid_seq OWNED BY statetype.statetypeid;


--
-- Name: statetype_statetypeid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('statetype_statetypeid_seq', 3, true);


--
-- Name: typerule; Type: TABLE; Schema: public; Owner: collage; Tablespace: 
--

CREATE TABLE typerule (
    typeruleid integer NOT NULL,
    name character varying(128) NOT NULL,
    description character varying(254)
);


ALTER TABLE public.typerule OWNER TO collage;

--
-- Name: typerule_typeruleid_seq; Type: SEQUENCE; Schema: public; Owner: collage
--

CREATE SEQUENCE typerule_typeruleid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.typerule_typeruleid_seq OWNER TO collage;

--
-- Name: typerule_typeruleid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: collage
--

ALTER SEQUENCE typerule_typeruleid_seq OWNED BY typerule.typeruleid;


--
-- Name: typerule_typeruleid_seq; Type: SEQUENCE SET; Schema: public; Owner: collage
--

SELECT pg_catalog.setval('typerule_typeruleid_seq', 9, true);


--
-- Name: actionid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE action ALTER COLUMN actionid SET DEFAULT nextval('action_actionid_seq'::regclass);


--
-- Name: actionparameterid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE actionparameter ALTER COLUMN actionparameterid SET DEFAULT nextval('actionparameter_actionparameterid_seq'::regclass);


--
-- Name: actionpropertyid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE actionproperty ALTER COLUMN actionpropertyid SET DEFAULT nextval('actionproperty_actionpropertyid_seq'::regclass);


--
-- Name: actiontypeid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE actiontype ALTER COLUMN actiontypeid SET DEFAULT nextval('actiontype_actiontypeid_seq'::regclass);


--
-- Name: applicationentitypropertyid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE applicationentityproperty ALTER COLUMN applicationentitypropertyid SET DEFAULT nextval('applicationentityproperty_applicationentitypropertyid_seq'::regclass);


--
-- Name: applicationtypeid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE applicationtype ALTER COLUMN applicationtypeid SET DEFAULT nextval('applicationtype_applicationtypeid_seq'::regclass);


--
-- Name: categoryid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE category ALTER COLUMN categoryid SET DEFAULT nextval('category_categoryid_seq'::regclass);


--
-- Name: categoryentityid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE categoryentity ALTER COLUMN categoryentityid SET DEFAULT nextval('categoryentity_categoryentityid_seq'::regclass);


--
-- Name: checktypeid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE checktype ALTER COLUMN checktypeid SET DEFAULT nextval('checktype_checktypeid_seq'::regclass);


--
-- Name: componentid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE component ALTER COLUMN componentid SET DEFAULT nextval('component_componentid_seq'::regclass);


--
-- Name: consolidationcriteriaid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE consolidationcriteria ALTER COLUMN consolidationcriteriaid SET DEFAULT nextval('consolidationcriteria_consolidationcriteriaid_seq'::regclass);


--
-- Name: deviceid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE device ALTER COLUMN deviceid SET DEFAULT nextval('device_deviceid_seq'::regclass);


--
-- Name: entityid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE entity ALTER COLUMN entityid SET DEFAULT nextval('entity_entityid_seq'::regclass);


--
-- Name: entitytypeid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE entitytype ALTER COLUMN entitytypeid SET DEFAULT nextval('entitytype_entitytypeid_seq'::regclass);


--
-- Name: hostid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE host ALTER COLUMN hostid SET DEFAULT nextval('host_hostid_seq'::regclass);


--
-- Name: hostgroupid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE hostgroup ALTER COLUMN hostgroupid SET DEFAULT nextval('hostgroup_hostgroupid_seq'::regclass);


--
-- Name: logmessageid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE logmessage ALTER COLUMN logmessageid SET DEFAULT nextval('logmessage_logmessageid_seq'::regclass);


--
-- Name: logperformancedataid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE logperformancedata ALTER COLUMN logperformancedataid SET DEFAULT nextval('logperformancedata_logperformancedataid_seq'::regclass);


--
-- Name: messagefilterid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE messagefilter ALTER COLUMN messagefilterid SET DEFAULT nextval('messagefilter_messagefilterid_seq'::regclass);


--
-- Name: monitorserverid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE monitorserver ALTER COLUMN monitorserverid SET DEFAULT nextval('monitorserver_monitorserverid_seq'::regclass);


--
-- Name: monitorstatusid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE monitorstatus ALTER COLUMN monitorstatusid SET DEFAULT nextval('monitorstatus_monitorstatusid_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE network_service_notifications ALTER COLUMN id SET DEFAULT nextval('network_service_notifications_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE network_service_short_news ALTER COLUMN id SET DEFAULT nextval('network_service_short_news_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE network_service_status ALTER COLUMN id SET DEFAULT nextval('network_service_status_id_seq'::regclass);


--
-- Name: operationstatusid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE operationstatus ALTER COLUMN operationstatusid SET DEFAULT nextval('operationstatus_operationstatusid_seq'::regclass);


--
-- Name: performancedatalabelid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE performancedatalabel ALTER COLUMN performancedatalabelid SET DEFAULT nextval('performancedatalabel_performancedatalabelid_seq'::regclass);


--
-- Name: pluginid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE plugin ALTER COLUMN pluginid SET DEFAULT nextval('plugin_pluginid_seq'::regclass);


--
-- Name: platformid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE pluginplatform ALTER COLUMN platformid SET DEFAULT nextval('pluginplatform_platformid_seq'::regclass);


--
-- Name: priorityid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE priority ALTER COLUMN priorityid SET DEFAULT nextval('priority_priorityid_seq'::regclass);


--
-- Name: propertytypeid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE propertytype ALTER COLUMN propertytypeid SET DEFAULT nextval('propertytype_propertytypeid_seq'::regclass);


--
-- Name: servicestatusid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE servicestatus ALTER COLUMN servicestatusid SET DEFAULT nextval('servicestatus_servicestatusid_seq'::regclass);


--
-- Name: severityid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE severity ALTER COLUMN severityid SET DEFAULT nextval('severity_severityid_seq'::regclass);


--
-- Name: statetypeid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE statetype ALTER COLUMN statetypeid SET DEFAULT nextval('statetype_statetypeid_seq'::regclass);


--
-- Name: typeruleid; Type: DEFAULT; Schema: public; Owner: collage
--

ALTER TABLE typerule ALTER COLUMN typeruleid SET DEFAULT nextval('typerule_typeruleid_seq'::regclass);


--
-- Data for Name: action; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY action (actionid, actiontypeid, name, description) FROM stdin;
1	4	Nagios Acknowledge	Acknowledge Nagios Log Message
2	1	Accept Log Message	Update Log Message Operation Status To Accepted
3	1	Close Log Message	Update Log Message Operation Status To Closed
4	1	Notify Log Message	Update Log Message Operation Status To Notified
5	1	Open Log Message	Update Log Message Operation Status To Open
6	2	Register Agent	Invoke a script for the selected message
7	2	Register Agent by Profile	Invoke a script for the selected message
8	2	Noma Notify For Host	Invoke a script for the selected message
9	2	Noma Notify For Service	Invoke a script for the selected message
10	5	Submit Passive Check	Submit a passive check for this service
\.


--
-- Data for Name: actionparameter; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY actionparameter (actionparameterid, actionid, name, value) FROM stdin;
1	6	agent-type	agent-type
2	6	host-name	host-name
3	6	host-ip	host-ip
4	6	host-mac	host-mac
5	6	operating-system	operating-system
6	6	host-characteristic	host-characteristic
7	7	agent-type	agent-type
8	7	host-name	host-name
9	7	host-ip	host-ip
10	7	host-mac	host-mac
11	7	operating-system	operating-system
12	7	host-profile-name	host-profile-name
13	7	service-profile-name	service-profile-name
14	8	-c	-c
15	8	notifyType	notifyType
16	8	-s	-s
17	8	hoststate	hoststate
18	8	-H	-H
19	8	hostname	hostname
20	8	-G	-G
21	8	hostgroupnames	hostgroupnames
22	8	-n	-n
23	8	notificationtype	notificationtype
24	8	-i	-i
25	8	hostaddress	hostaddress
26	8	-o	-o
27	8	hostoutput	hostoutput
28	8	-t	-t
29	8	shortdatetime	shortdatetime
30	8	-u	-u
31	8	hostnotificationid	hostnotificationid
32	8	-A	-A
33	8	notificationauthoralias	notificationauthoralias
34	8	-C	-C
35	8	notificationcomment	notificationcomment
36	8	-R	-R
37	8	notificationrecipients	notificationrecipients
38	9	-c	-c
39	9	notifyType	notifyType
40	9	-s	-s
41	9	servicestate	servicestate
42	9	-H	-H
43	9	hostname	hostname
44	9	-G	-G
45	9	hostgroupnames	hostgroupnames
46	9	-E	-E
47	9	servicegroupnames	servicegroupnames
48	9	-S	-S
49	9	servicedescription	servicedescription
50	9	-o	-o
51	9	serviceoutput	serviceoutput
52	9	-n	-n
53	9	notificationtype	notificationtype
54	9	-a	-a
55	9	hostalias	hostalias
56	9	-i	-i
57	9	hostaddress	hostaddress
58	9	-t	-t
59	9	shortdatetime	shortdatetime
60	9	-u	-u
61	9	servicenotificationid	servicenotificationid
62	9	-A	-A
63	9	notificationauthoralias	notificationauthoralias
64	9	-C	-C
65	9	notificationcomment	notificationcomment
66	9	-R	-R
67	9	notificationrecipients	notificationrecipients
68	10	nsca_host	nsca_host
69	10	user	user
70	10	comment	comment
71	10	host	host
72	10	service	service
73	10	state	state
\.


--
-- Data for Name: actionproperty; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY actionproperty (actionpropertyid, actionid, name, value) FROM stdin;
1	1	NagiosCommandFile	/usr/local/groundwork/nagios/var/spool/nagios.cmd
2	2	OperationStatus	ACCEPTED
3	3	OperationStatus	CLOSED
4	4	OperationStatus	NOTIFIED
5	5	OperationStatus	OPEN
6	6	Script	/usr/local/groundwork/foundation/scripts/registerAgent.pl
7	7	Script	/usr/local/groundwork/foundation/scripts/registerAgentByProfile.pl
8	8	Script	/usr/local/groundwork/noma/notifier/alert_via_noma.pl
9	9	Script	/usr/local/groundwork/noma/notifier/alert_via_noma.pl
10	10	Script	/usr/local/groundwork/foundation/scripts/reset_passive_check.sh
\.


--
-- Data for Name: actiontype; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY actiontype (actiontypeid, name, classname) FROM stdin;
1	LOG_MESSAGE_OPERATION_STATUS	org.groundwork.foundation.bs.actions.UpdateOperationStatusAction
2	SCRIPT_ACTION	org.groundwork.foundation.bs.actions.ShellScriptAction
3	HTTP_REQUEST_ACTION	org.groundwork.foundation.bs.actions.HttpRequestAction
4	NAGIOS_ACKNOWLEDGE_ACTION	org.groundwork.foundation.bs.actions.NagiosAcknowledgeAction
5	PASSIVE_CHECK_ACTION	org.groundwork.foundation.bs.actions.ShellScriptAction
\.


--
-- Data for Name: applicationaction; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY applicationaction (applicationtypeid, actionid) FROM stdin;
1	2
1	3
1	4
1	5
100	1
101	6
101	7
102	8
102	9
103	10
104	10
\.


--
-- Data for Name: applicationentityproperty; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY applicationentityproperty (applicationentitypropertyid, applicationtypeid, entitytypeid, propertytypeid, sortorder) FROM stdin;
1	100	1	1	1
2	100	1	2	4
3	100	1	3	5
4	100	1	4	6
5	100	1	5	7
6	100	1	6	8
7	100	1	7	9
8	100	1	8	10
9	100	1	9	11
10	100	1	10	12
11	100	1	11	13
12	100	1	12	14
13	100	1	13	15
14	100	1	14	16
15	100	1	15	17
16	100	1	16	18
17	100	1	17	19
18	100	1	34	20
19	100	1	25	20
20	100	1	26	21
21	100	1	35	22
22	100	1	38	23
23	100	1	39	24
24	100	1	40	25
25	100	1	43	26
26	100	1	44	27
27	100	1	47	28
28	100	1	48	29
29	100	1	51	72
30	100	1	52	74
31	100	1	53	75
32	100	2	1	30
33	100	2	18	31
34	100	2	10	33
35	100	2	19	34
36	100	2	11	35
37	100	2	20	37
38	100	2	21	39
39	100	2	22	40
40	100	2	23	41
41	100	2	24	42
42	100	2	7	43
43	100	2	8	44
44	100	2	9	45
45	100	2	25	46
46	100	2	26	47
47	100	2	12	48
48	100	2	27	49
49	100	2	14	50
50	100	2	15	51
51	100	2	16	52
52	100	2	17	53
53	100	2	28	54
54	100	2	34	55
55	100	2	40	56
56	100	2	43	57
57	100	2	44	58
58	100	2	47	67
59	100	2	48	68
60	100	2	41	69
61	100	2	42	70
62	100	2	50	71
63	100	2	51	73
64	100	2	53	76
65	100	3	29	59
66	100	3	30	60
67	100	3	31	61
68	100	3	32	62
69	100	3	33	63
70	100	3	36	65
71	100	3	37	66
72	200	1	1	80
73	200	2	1	81
74	200	1	3	82
75	200	2	53	83
76	1	4	54	1
77	1	4	55	2
78	1	4	56	3
79	103	3	57	1
80	103	3	58	2
81	103	3	59	3
82	103	3	60	4
83	103	3	61	5
84	103	3	62	6
85	103	3	63	7
86	103	3	48	8
87	104	3	57	1
88	104	3	31	2
89	104	3	33	3
90	104	3	63	4
91	104	3	48	5
\.


--
-- Data for Name: applicationtype; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY applicationtype (applicationtypeid, name, description, statetransitioncriteria) FROM stdin;
1	SYSTEM	Properties that exist regardless of the Application being monitored	Device
100	NAGIOS	System monitored by Nagios	Device;Host;ServiceDescription
200	VEMA	Virtual Environment Monitor Agent	Device;Host;ServiceDescription
101	GDMA	System monitored by GDMA	Device;Host;ServiceDescription
102	NOMA	NoMa Notification	Device;Host;ServiceDescription
103	SNMPTRAP	SNMP Trap application	Device;Event_OID_numeric
104	SYSLOG	SYSLOG application	Device
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY category (categoryid, name, description, entitytypeid) FROM stdin;
1	group-warning	\N	23
2	group-ok	\N	23
3	group-critical	\N	23
4	group-pending	\N	23
5	group-all	\N	23
6	group-unknown	\N	23
\.


--
-- Data for Name: categoryentity; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY categoryentity (categoryentityid, objectid, categoryid, entitytypeid) FROM stdin;
1	22	1	2
2	26	1	2
3	28	2	2
4	31	2	2
5	27	3	2
6	29	3	2
7	25	4	2
8	24	4	2
9	22	5	2
10	23	5	2
12	23	6	2
11	24	5	2
14	30	6	2
13	25	5	2
15	26	5	2
16	27	5	2
17	28	5	2
18	29	5	2
19	30	5	2
20	31	5	2
\.


--
-- Data for Name: categoryhierarchy; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY categoryhierarchy (categoryid, parentid) FROM stdin;
\.


--
-- Data for Name: checktype; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY checktype (checktypeid, name, description) FROM stdin;
1	ACTIVE	Active Check
2	PASSIVE	Passive Check
\.


--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY component (componentid, name, description) FROM stdin;
1	SNMP	SNMP Component
2	MQ	MessageQueue component
3	JMSLISTENER	JMSListener component
4	UNDEFINED	Undefined component
\.


--
-- Data for Name: consolidationcriteria; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY consolidationcriteria (consolidationcriteriaid, name, criteria) FROM stdin;
1	NAGIOSEVENT	Device;MonitorStatus;OperationStatus;SubComponent;ErrorType
2	SYSTEM	OperationStatus;Device;MonitorStatus;ApplicationType;TextMessage
3	SNMPTRAP	OperationStatus;Device;ipaddress;MonitorStatus;Event_OID_numeric;Event_Name;Category;Variable_Bindings
4	SYSLOG	OperationStatus;Device;MonitorStatus;ipaddress;ErrorType;SubComponent
\.


--
-- Data for Name: device; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY device (deviceid, displayname, identification, description) FROM stdin;
1	127.0.0.1	127.0.0.1	Device localhost
2	host-up-warning	127.0.1.1	\N
3	host-up-unknown	127.0.1.3	\N
4	host-down-pending	240.0.1.4	\N
5	host-up-pending	127.0.1.4	\N
6	host-down-warning	240.0.1.1	\N
7	host-down-critical	240.0.1.2	\N
8	host-up-ok	127.0.1.0	\N
9	host-up-critical	127.0.1.2	\N
10	host-down-unknown	240.0.1.3	\N
11	host-down-ok	240.0.1.0	\N
\.


--
-- Data for Name: deviceparent; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY deviceparent (deviceid, parentid) FROM stdin;
\.


--
-- Data for Name: entity; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY entity (entityid, name, description, class, applicationtypeid) FROM stdin;
\.


--
-- Data for Name: entityproperty; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY entityproperty (entitytypeid, objectid, propertytypeid, valuestring, valuedate, valueboolean, valueinteger, valuelong, valuedouble, lasteditedon, createdon) FROM stdin;
\.


--
-- Data for Name: entitytype; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY entitytype (entitytypeid, name, description, islogicalentity, isapplicationtypesupported) FROM stdin;
1	HOST_STATUS	com.groundwork.collage.model.impl.HostStatus	f	f
2	SERVICE_STATUS	com.groundwork.collage.model.impl.ServiceStatus	f	f
3	LOG_MESSAGE	com.groundwork.collage.model.impl.LogMessage	f	f
4	DEVICE	com.groundwork.collage.model.impl.Device	f	f
5	HOST	com.groundwork.collage.model.impl.Host	f	f
6	HOSTGROUP	com.groundwork.collage.model.impl.HostGroup	f	f
7	APPLICATION_TYPE	com.groundwork.collage.model.impl.ApplicationType	f	f
8	CATEGORY	com.groundwork.collage.model.impl.Category	f	f
9	CHECK_TYPE	com.groundwork.collage.model.impl.CheckType	f	f
10	COMPONENT	com.groundwork.collage.model.impl.Component	f	f
11	MONITOR_STATUS	com.groundwork.collage.model.impl.MonitorStatus	f	f
12	OPERATION_STATUS	com.groundwork.collage.model.impl.OperationStatus	f	f
13	PRIORITY	com.groundwork.collage.model.impl.Priority	f	f
14	SEVERITY	com.groundwork.collage.model.impl.Severity	f	f
15	STATE_TYPE	com.groundwork.collage.model.impl.StateType	f	f
16	TYPE_RULE	com.groundwork.collage.model.impl.TypeRule	f	f
17	MONITOR_SERVER	com.groundwork.collage.model.impl.MonitorServer	f	f
18	LOG_MESSAGE_STATISTICS	com.groundwork.collage.model.impl.LogMessageStatistic	t	f
19	HOST_STATISTICS	com.groundwork.collage.model.impl.HostStatistic	t	f
20	SERVICE_STATISTICS	com.groundwork.collage.model.impl.ServiceStatistic	t	f
21	HOST_STATE_TRANSITIONS	com.groundwork.collage.model.impl.HostStateTransition	t	f
22	SERVICE_STATE_TRANSITIONS	com.groundwork.collage.model.impl.ServiceStateTransition	t	f
23	SERVICE_GROUP	com.groundwork.collage.model.impl.ServiceGroup	t	f
\.


--
-- Data for Name: host; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY host (hostid, deviceid, hostname, description, applicationtypeid) FROM stdin;
2	2	host-up-warning	host-up-warning	100
3	3	host-up-unknown	host-up-unknown	100
4	4	host-down-pending	host-down-pending	100
5	5	host-up-pending	host-up-pending	100
6	6	host-down-warning	host-down-warning	100
7	7	host-down-critical	host-down-critical	100
8	8	host-up-ok	host-up-ok	100
9	9	host-up-critical	host-up-critical	100
10	10	host-down-unknown	host-down-unknown	100
11	11	host-down-ok	host-down-ok	100
1	1	localhost	localhost	100
\.


--
-- Data for Name: hostgroup; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY hostgroup (hostgroupid, name, description, applicationtypeid, alias) FROM stdin;
2	hosts down	\N	100	hosts down
3	hosts ok	\N	100	hosts ok
4	hosts critical	\N	100	hosts critical
5	hosts unknown	\N	100	hosts unknown
6	hosts pending	\N	100	hosts pending
7	hosts all	\N	100	all-hosts
8	hosts up	\N	100	hosts up
9	hosts warning	\N	100	hosts warning
1	Linux Servers	 	100	Linux Servers
\.


--
-- Data for Name: hostgroupcollection; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY hostgroupcollection (hostid, hostgroupid) FROM stdin;
1	1
11	2
10	2
7	2
4	2
6	2
11	3
8	3
7	4
9	4
10	5
3	5
5	6
4	6
11	7
10	7
8	7
7	7
5	7
2	7
4	7
3	7
9	7
6	7
8	8
5	8
2	8
3	8
9	8
2	9
6	9
\.


--
-- Data for Name: hoststatus; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY hoststatus (hoststatusid, applicationtypeid, monitorstatusid, lastchecktime, checktypeid, statetypeid, nextchecktime) FROM stdin;
1	100	1	2013-01-03 11:46:38	1	2	2013-01-03 11:46:38
4	100	5	\N	\N	2	\N
5	100	5	\N	\N	2	\N
3	100	1	2013-01-03 13:40:42	\N	2	2013-01-03 13:40:42
7	100	8	2013-01-03 13:42:32	\N	2	2013-01-03 13:42:42
6	100	8	2013-01-03 13:42:42	\N	2	2013-01-03 13:42:52
9	100	1	2013-01-03 13:43:52	\N	2	2013-01-03 13:43:52
2	100	1	2013-01-03 13:44:12	\N	2	2013-01-03 13:44:12
8	100	1	2013-01-03 13:47:22	\N	2	2013-01-03 13:47:22
10	100	8	2013-01-03 13:49:22	\N	2	2013-01-03 13:49:32
11	100	8	2013-01-03 14:03:32	\N	2	2013-01-03 14:03:32
\.


--
-- Data for Name: hoststatusproperty; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY hoststatusproperty (hoststatusid, propertytypeid, valuestring, valuedate, valueboolean, valueinteger, valuelong, valuedouble, lasteditedon, createdon) FROM stdin;
1	35	\N	\N	t	\N	\N	\N	2013-01-03 11:46:43.817	2013-01-03 11:46:43.817
1	25	\N	\N	\N	\N	\N	0	2013-01-03 11:46:43.773	2013-01-03 11:46:43.773
1	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:43.831	2013-01-03 11:46:43.831
1	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:43.832	2013-01-03 11:46:43.832
1	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:43.832	2013-01-03 11:46:43.832
1	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:43.831	2013-01-03 11:46:43.831
1	44	\N	\N	\N	\N	10	\N	2013-01-03 11:46:43.83	2013-01-03 11:46:43.83
1	3	\N	\N	f	\N	\N	\N	2013-01-03 11:46:43.83	2013-01-03 11:46:43.83
1	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:43.831	2013-01-03 11:46:43.831
1	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:43.831	2013-01-03 11:46:43.831
1	2	\N	2013-01-03 11:46:06	\N	\N	\N	\N	2013-01-03 11:46:43.831	2013-01-03 11:46:43.831
1	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:43.832	2013-01-03 11:46:43.832
1	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:43.832	2013-01-03 11:46:43.832
1	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:43.831	2013-01-03 11:46:43.831
1	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:43.832	2013-01-03 11:46:43.832
1	1	OK - 127.0.0.1: rta 0.044ms, lost 0%	\N	\N	\N	\N	\N	2013-01-03 11:46:43.83	2013-01-03 11:46:43.83
1	26	\N	\N	\N	\N	\N	11	2013-01-03 11:46:43.83	2013-01-03 11:46:43.83
1	53	rta=0.044ms;3000.000;5000.000;0; pl=0%;80;100;; rtmax=0.044ms;;;; rtmin=0.044ms;;;;	\N	\N	\N	\N	\N	2013-01-03 11:46:43.831	2013-01-03 11:46:43.831
1	49	Load Average;;http://localhost:80/nms-cacti/graph_image.php?local_graph_id=2&rra_id=0&view_type=tree&gwuid=guest!!Logged in Users;;http://localhost:80/nms-cacti/graph_image.php?local_graph_id=3&rra_id=0&view_type=tree&gwuid=guest!!Memory Usage;;http://localhost:80/nms-cacti/graph_image.php?local_graph_id=1&rra_id=0&view_type=tree&gwuid=guest!!Processes;;http://localhost:80/nms-cacti/graph_image.php?local_graph_id=4&rra_id=0&view_type=tree&gwuid=guest	\N	\N	\N	\N	\N	2013-01-03 12:10:01.658	2013-01-03 12:10:01.658
2	39	host-up-warning	\N	\N	\N	\N	\N	2013-01-03 13:36:34.673	2013-01-03 13:36:34.673
3	39	host-up-unknown	\N	\N	\N	\N	\N	2013-01-03 13:36:34.686	2013-01-03 13:36:34.686
4	39	host-down-pending	\N	\N	\N	\N	\N	2013-01-03 13:36:34.709	2013-01-03 13:36:34.709
5	39	host-up-pending	\N	\N	\N	\N	\N	2013-01-03 13:36:34.717	2013-01-03 13:36:34.717
6	39	host-down-warning	\N	\N	\N	\N	\N	2013-01-03 13:36:34.736	2013-01-03 13:36:34.736
7	39	host-down-critical	\N	\N	\N	\N	\N	2013-01-03 13:36:34.748	2013-01-03 13:36:34.748
8	39	host-up-ok	\N	\N	\N	\N	\N	2013-01-03 13:36:34.763	2013-01-03 13:36:34.763
9	39	host-up-critical	\N	\N	\N	\N	\N	2013-01-03 13:36:34.771	2013-01-03 13:36:34.771
10	39	host-down-unknown	\N	\N	\N	\N	\N	2013-01-03 13:36:34.781	2013-01-03 13:36:34.781
11	39	host-down-ok	\N	\N	\N	\N	\N	2013-01-03 13:36:34.79	2013-01-03 13:36:34.79
1	39	Linux Server #1	\N	\N	\N	\N	\N	2013-01-03 13:36:43.695	2013-01-03 13:36:43.695
2	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.293	2013-01-03 13:36:48.293
2	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.292	2013-01-03 13:36:48.292
2	43	\N	\N	\N	\N	1	\N	2013-01-03 13:36:48.293	2013-01-03 13:36:48.293
2	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.293	2013-01-03 13:36:48.293
2	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.292	2013-01-03 13:36:48.292
2	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.293	2013-01-03 13:36:48.293
2	25	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.292	2013-01-03 13:36:48.292
2	35	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.292	2013-01-03 13:36:48.292
2	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.292	2013-01-03 13:36:48.292
2	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.292	2013-01-03 13:36:48.292
2	14	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.293	2013-01-03 13:36:48.293
2	3	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.292	2013-01-03 13:36:48.292
2	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.292	2013-01-03 13:36:48.292
2	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.292	2013-01-03 13:36:48.292
2	26	\N	\N	\N	\N	\N	5	2013-01-03 13:36:48.292	2013-01-03 13:36:48.292
3	14	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.313	2013-01-03 13:36:48.313
3	35	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.312	2013-01-03 13:36:48.312
3	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.313	2013-01-03 13:36:48.313
3	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.313	2013-01-03 13:36:48.313
3	43	\N	\N	\N	\N	1	\N	2013-01-03 13:36:48.313	2013-01-03 13:36:48.313
3	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.312	2013-01-03 13:36:48.312
3	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.312	2013-01-03 13:36:48.312
3	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.313	2013-01-03 13:36:48.313
3	25	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.312	2013-01-03 13:36:48.312
3	3	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.312	2013-01-03 13:36:48.312
3	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.312	2013-01-03 13:36:48.312
3	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.312	2013-01-03 13:36:48.312
3	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.312	2013-01-03 13:36:48.312
3	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.312	2013-01-03 13:36:48.312
7	14	\N	\N	\N	\N	\N	5.86000000000000032	2013-01-03 13:36:48.365	2013-01-03 13:36:48.365
4	14	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.329	2013-01-03 13:36:48.329
4	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.329	2013-01-03 13:36:48.329
4	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.329	2013-01-03 13:36:48.329
4	35	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.328	2013-01-03 13:36:48.328
4	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.328	2013-01-03 13:36:48.328
4	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.328	2013-01-03 13:36:48.328
4	26	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.328	2013-01-03 13:36:48.328
4	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.328	2013-01-03 13:36:48.328
4	3	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.328	2013-01-03 13:36:48.328
4	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.328	2013-01-03 13:36:48.328
4	43	\N	\N	\N	\N	1	\N	2013-01-03 13:36:48.329	2013-01-03 13:36:48.329
4	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.328	2013-01-03 13:36:48.328
4	25	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.328	2013-01-03 13:36:48.328
4	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.328	2013-01-03 13:36:48.328
4	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.329	2013-01-03 13:36:48.329
3	26	\N	\N	\N	\N	\N	4	2013-01-03 13:36:48.312	2013-01-03 13:36:48.312
5	14	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.347	2013-01-03 13:36:48.347
5	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.346	2013-01-03 13:36:48.346
5	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.346	2013-01-03 13:36:48.346
5	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.347	2013-01-03 13:36:48.347
5	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.347	2013-01-03 13:36:48.347
5	26	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.346	2013-01-03 13:36:48.346
5	35	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.345	2013-01-03 13:36:48.345
5	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.346	2013-01-03 13:36:48.346
5	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.347	2013-01-03 13:36:48.347
5	25	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.345	2013-01-03 13:36:48.345
5	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.346	2013-01-03 13:36:48.346
5	43	\N	\N	\N	\N	1	\N	2013-01-03 13:36:48.347	2013-01-03 13:36:48.347
5	3	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.346	2013-01-03 13:36:48.346
5	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.346	2013-01-03 13:36:48.346
5	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.346	2013-01-03 13:36:48.346
3	2	\N	2013-01-03 13:40:40	\N	\N	\N	\N	2013-01-03 13:36:34.686	2013-01-03 13:36:34.686
7	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.365	2013-01-03 13:36:48.365
7	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.365	2013-01-03 13:36:48.365
7	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.365	2013-01-03 13:36:48.365
7	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.365	2013-01-03 13:36:48.365
7	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.365	2013-01-03 13:36:48.365
7	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.365	2013-01-03 13:36:48.365
7	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.365	2013-01-03 13:36:48.365
6	2	\N	2013-01-03 13:42:52	\N	\N	\N	\N	2013-01-03 13:36:34.735	2013-01-03 13:36:34.735
7	25	\N	\N	\N	\N	\N	403	2013-01-03 13:36:48.364	2013-01-03 13:36:48.364
2	2	\N	2013-01-03 13:44:07	\N	\N	\N	\N	2013-01-03 13:36:34.672	2013-01-03 13:36:34.672
10	2	\N	2013-01-03 13:49:32	\N	\N	\N	\N	2013-01-03 13:36:34.78	2013-01-03 13:36:34.78
11	2	\N	2013-01-03 13:46:02	\N	\N	\N	\N	2013-01-03 13:36:34.789	2013-01-03 13:36:34.789
4	2	\N	2013-01-03 14:08:50	\N	\N	\N	\N	2013-01-03 13:36:34.708	2013-01-03 13:36:34.708
5	2	\N	2013-01-03 14:08:50	\N	\N	\N	\N	2013-01-03 13:36:34.717	2013-01-03 13:36:34.717
8	2	\N	2013-01-03 13:47:13	\N	\N	\N	\N	2013-01-03 13:36:34.762	2013-01-03 13:36:34.762
7	3	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.364	2013-01-03 13:36:48.364
7	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.365	2013-01-03 13:36:48.365
7	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.365	2013-01-03 13:36:48.365
7	35	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.364	2013-01-03 13:36:48.364
6	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.38	2013-01-03 13:36:48.38
6	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.38	2013-01-03 13:36:48.38
6	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.381	2013-01-03 13:36:48.381
6	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.38	2013-01-03 13:36:48.38
6	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.381	2013-01-03 13:36:48.381
6	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.38	2013-01-03 13:36:48.38
6	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.38	2013-01-03 13:36:48.38
6	3	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.38	2013-01-03 13:36:48.38
6	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.381	2013-01-03 13:36:48.381
6	35	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.38	2013-01-03 13:36:48.38
6	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.38	2013-01-03 13:36:48.38
8	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.396	2013-01-03 13:36:48.396
8	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.396	2013-01-03 13:36:48.396
8	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.396	2013-01-03 13:36:48.396
8	3	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.395	2013-01-03 13:36:48.395
8	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.395	2013-01-03 13:36:48.395
8	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.395	2013-01-03 13:36:48.395
8	14	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.396	2013-01-03 13:36:48.396
8	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.395	2013-01-03 13:36:48.395
8	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.395	2013-01-03 13:36:48.395
8	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.395	2013-01-03 13:36:48.395
8	35	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.395	2013-01-03 13:36:48.395
8	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.395	2013-01-03 13:36:48.395
8	25	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.395	2013-01-03 13:36:48.395
8	43	\N	\N	\N	\N	1	\N	2013-01-03 13:36:48.396	2013-01-03 13:36:48.396
10	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
10	3	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
10	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
10	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
10	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
10	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
10	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
10	35	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
10	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
10	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
10	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
9	25	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
9	3	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
9	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
9	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
9	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
9	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.427	2013-01-03 13:36:48.427
9	35	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
9	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
9	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
9	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
9	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
9	14	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
9	43	\N	\N	\N	\N	1	\N	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
9	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
11	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.44	2013-01-03 13:36:48.44
11	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.44	2013-01-03 13:36:48.44
11	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.44	2013-01-03 13:36:48.44
11	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.441	2013-01-03 13:36:48.441
11	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.441	2013-01-03 13:36:48.441
11	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.44	2013-01-03 13:36:48.44
11	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.441	2013-01-03 13:36:48.441
11	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.44	2013-01-03 13:36:48.44
11	35	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.44	2013-01-03 13:36:48.44
11	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.44	2013-01-03 13:36:48.44
11	3	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.44	2013-01-03 13:36:48.44
9	26	\N	\N	\N	\N	\N	4	2013-01-03 13:36:48.426	2013-01-03 13:36:48.426
7	53	rta=0.000ms;3000.000;5000.000;0; pl=100%;80;100;; rtmax=0.000ms;;;; rtmin=0.000ms;;;;	\N	\N	\N	\N	\N	2013-01-03 13:40:33.594	2013-01-03 13:40:33.594
7	1	CRITICAL - 240.0.1.2: rta nan, lost 100%	\N	\N	\N	\N	\N	2013-01-03 13:40:33.594	2013-01-03 13:40:33.594
2	1	OK - 127.0.1.1: rta 0.061ms, lost 0%	\N	\N	\N	\N	\N	2013-01-03 13:44:33.813	2013-01-03 13:44:33.813
2	53	rta=0.061ms;3000.000;5000.000;0; pl=0%;80;100;; rtmax=0.061ms;;;; rtmin=0.061ms;;;;	\N	\N	\N	\N	\N	2013-01-03 13:44:33.813	2013-01-03 13:44:33.813
6	53	rta=0.000ms;3000.000;5000.000;0; pl=100%;80;100;; rtmax=0.000ms;;;; rtmin=0.000ms;;;;	\N	\N	\N	\N	\N	2013-01-03 13:40:48.586	2013-01-03 13:40:48.586
6	1	CRITICAL - 240.0.1.1: rta nan, lost 100%	\N	\N	\N	\N	\N	2013-01-03 13:40:48.586	2013-01-03 13:40:48.586
10	1	CRITICAL - 240.0.1.3: rta nan, lost 100%	\N	\N	\N	\N	\N	2013-01-03 13:47:18.973	2013-01-03 13:47:18.973
11	53	rta=0.000ms;3000.000;5000.000;0; pl=100%;80;100;; rtmax=0.000ms;;;; rtmin=0.000ms;;;;	\N	\N	\N	\N	\N	2013-01-03 13:43:48.777	2013-01-03 13:43:48.777
11	1	CRITICAL - 240.0.1.0: rta nan, lost 100%	\N	\N	\N	\N	\N	2013-01-03 13:43:48.777	2013-01-03 13:43:48.777
3	53	rta=0.052ms;3000.000;5000.000;0; pl=0%;80;100;; rtmax=0.052ms;;;; rtmin=0.052ms;;;;	\N	\N	\N	\N	\N	2013-01-03 13:41:03.569	2013-01-03 13:41:03.569
3	1	OK - 127.0.1.3: rta 0.052ms, lost 0%	\N	\N	\N	\N	\N	2013-01-03 13:41:03.569	2013-01-03 13:41:03.569
6	14	\N	\N	\N	\N	\N	5.86000000000000032	2013-01-03 13:36:48.38	2013-01-03 13:36:48.38
7	43	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.365	2013-01-03 13:36:48.365
11	14	\N	\N	\N	\N	\N	5.71999999999999975	2013-01-03 13:36:48.44	2013-01-03 13:36:48.44
9	2	\N	2013-01-03 13:43:46	\N	\N	\N	\N	2013-01-03 13:36:34.771	2013-01-03 13:36:34.771
7	26	\N	\N	\N	\N	\N	10004	2013-01-03 13:36:48.365	2013-01-03 13:36:48.365
9	1	OK - 127.0.1.2: rta 0.232ms, lost 0%	\N	\N	\N	\N	\N	2013-01-03 13:44:18.835	2013-01-03 13:44:18.835
9	53	rta=0.232ms;3000.000;5000.000;0; pl=0%;80;100;; rtmax=0.232ms;;;; rtmin=0.232ms;;;;	\N	\N	\N	\N	\N	2013-01-03 13:44:18.835	2013-01-03 13:44:18.835
10	53	rta=0.000ms;3000.000;5000.000;0; pl=100%;80;100;; rtmax=0.000ms;;;; rtmin=0.000ms;;;;	\N	\N	\N	\N	\N	2013-01-03 13:47:18.973	2013-01-03 13:47:18.973
10	25	\N	\N	\N	\N	\N	742	2013-01-03 13:36:48.41	2013-01-03 13:36:48.41
7	2	\N	2013-01-03 13:42:42	\N	\N	\N	\N	2013-01-03 13:36:34.747	2013-01-03 13:36:34.747
10	26	\N	\N	\N	\N	\N	10004	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
11	26	\N	\N	\N	\N	\N	10005	2013-01-03 13:36:48.44	2013-01-03 13:36:48.44
6	25	\N	\N	\N	\N	\N	412	2013-01-03 13:36:48.38	2013-01-03 13:36:48.38
6	43	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.38	2013-01-03 13:36:48.38
6	26	\N	\N	\N	\N	\N	10004	2013-01-03 13:36:48.38	2013-01-03 13:36:48.38
8	53	rta=0.065ms;3000.000;5000.000;0; pl=0%;80;100;; rtmax=0.065ms;;;; rtmin=0.065ms;;;;	\N	\N	\N	\N	\N	2013-01-03 13:47:48.988	2013-01-03 13:47:48.988
8	1	OK - 127.0.1.0: rta 0.065ms, lost 0%	\N	\N	\N	\N	\N	2013-01-03 13:47:48.988	2013-01-03 13:47:48.988
8	26	\N	\N	\N	\N	\N	4	2013-01-03 13:36:48.395	2013-01-03 13:36:48.395
11	43	\N	\N	\N	\N	1	\N	2013-01-03 13:36:48.44	2013-01-03 13:36:48.44
11	25	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.44	2013-01-03 13:36:48.44
10	43	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
10	14	\N	\N	\N	\N	\N	5.99000000000000021	2013-01-03 13:36:48.411	2013-01-03 13:36:48.411
\.


--
-- Data for Name: logmessage; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY logmessage (logmessageid, applicationtypeid, deviceid, hoststatusid, servicestatusid, textmessage, msgcount, firstinsertdate, lastinsertdate, reportdate, monitorstatusid, severityid, applicationseverityid, priorityid, typeruleid, componentid, operationstatusid, isstatechanged, consolidationhash, statelesshash, statetransitionhash) FROM stdin;
1	1	1	\N	\N	JMS Queue is initialized and all incoming messages are routed through the persistence store.	1	2013-01-03 11:46:39	2013-01-03 11:46:39	2013-01-03 11:46:40.185	2	9	9	1	6	4	1	f	1898696635	1978529951	1505998205
4	100	1	1	3	OK - total %CPU for process nagios : 0.0	1	2013-01-03 11:47:03	2013-01-03 11:47:03	2013-01-03 11:47:28.55	2	9	9	1	6	4	1	f	0	0	1440976122
5	100	1	1	4	OK - total %CPU for process perl : 4.1	1	2013-01-03 11:47:32	2013-01-03 11:47:32	2013-01-03 11:47:58.562	2	9	9	1	6	4	1	f	0	0	-1245362768
6	100	1	1	5	OK - total %CPU for process syslog-ng : 0.0	1	2013-01-03 11:48:00	2013-01-03 11:48:00	2013-01-03 11:48:28.566	2	9	9	1	6	4	1	f	0	0	497650638
7	100	1	1	7	DISK OK - free space: / 11940 MB (80% inode=93%):	1	2013-01-03 11:48:29	2013-01-03 11:48:29	2013-01-03 11:48:58.589	2	9	9	1	6	4	1	f	0	0	1774429434
8	100	1	1	8	OK - load average: 0.24, 0.40, 0.38	1	2013-01-03 11:48:58	2013-01-03 11:48:58	2013-01-03 11:49:28.604	2	9	9	1	6	4	1	f	0	0	-794399632
9	100	1	1	10	OK - total %MEM for process httpd : 1.4	1	2013-01-03 11:49:26	2013-01-03 11:49:26	2013-01-03 11:49:43.613	2	9	9	1	6	4	1	f	0	0	-1354294104
10	100	1	1	11	OK - total %MEM for process java : 33.4	1	2013-01-03 11:49:55	2013-01-03 11:49:55	2013-01-03 11:50:13.643	2	9	9	1	6	4	1	f	0	0	1896017110
11	100	1	1	12	OK - total %MEM for process nagios : 0.0	1	2013-01-03 11:50:23	2013-01-03 11:50:23	2013-01-03 11:50:43.692	2	9	9	1	6	4	1	f	0	0	1120390189
12	100	1	1	13	OK - total %MEM for process perl : 16.1	1	2013-01-03 11:50:52	2013-01-03 11:50:52	2013-01-03 11:51:13.654	2	9	9	1	6	4	1	f	0	0	1896199587
13	100	1	1	14	OK - total %MEM for process syslog-ng : 0.1	1	2013-01-03 11:51:20	2013-01-03 11:51:20	2013-01-03 11:51:43.759	2	9	9	1	6	4	1	f	0	0	1929386939
14	100	1	1	9	Memory OK - 58.2% (1193180 kB) used	1	2013-01-03 11:51:49	2013-01-03 11:51:49	2013-01-03 11:52:13.692	2	9	9	1	6	4	1	f	0	0	1105897995
15	100	1	1	15	OK: Nagios latency: Min=0.000, Max=0.931, Avg=0.348	1	2013-01-03 11:52:18	2013-01-03 11:52:18	2013-01-03 11:52:43.754	2	9	9	1	6	4	1	f	0	0	942609474
16	100	1	1	16	PROCS OK: 1 process with args &apos;groundwork/foundation/container/lib/jboss&apos;	1	2013-01-03 11:52:46	2013-01-03 11:52:46	2013-01-03 11:52:58.77	2	9	9	1	6	4	1	f	0	0	165730441
17	100	1	1	17	NAGIOS OK: 2 processes, status log updated 8 seconds ago	1	2013-01-03 11:53:15	2013-01-03 11:53:15	2013-01-03 11:53:28.811	2	9	9	1	6	4	1	f	0	0	-1963246253
18	100	1	1	18	SWAP OK - 100% free (4018 MB out of 4031 MB)	1	2013-01-03 11:53:43	2013-01-03 11:53:43	2013-01-03 11:53:58.849	2	9	9	1	6	4	1	f	0	0	-794183395
19	100	1	1	6	USERS OK - 1 users currently logged in	1	2013-01-03 11:54:12	2013-01-03 11:54:12	2013-01-03 11:54:28.821	2	9	9	1	6	4	1	f	0	0	1151850430
20	100	1	1	19	TCP OK - 0.000 second response time on port 4913	1	2013-01-03 11:54:40	2013-01-03 11:54:40	2013-01-03 11:54:58.83	2	9	9	1	6	4	1	f	0	0	-33523121
21	100	1	1	20	HTTP OK: HTTP/1.1 200 OK - 1268 bytes in 0.782 second response time	1	2013-01-03 11:55:09	2013-01-03 11:55:09	2013-01-03 11:55:28.858	2	9	9	1	6	4	1	f	0	0	-709099812
22	100	1	1	21	TCP OK - 0.001 second response time on port 5667	1	2013-01-03 11:55:38	2013-01-03 11:55:38	2013-01-03 11:55:58.815	2	9	9	1	6	4	1	f	0	0	-708922569
23	1	1	\N	\N	Foundation-Monarch synch process completed. It might take up to 30 sec. for changes to show up in the status pages.	1	2013-01-03 13:36:43	2013-01-03 13:36:43	2013-01-03 13:36:43.797	2	9	9	1	6	4	1	f	818390582	-1585726254	\N
3	1	1	\N	\N	Foundation-Nagios status check process started.	2	2013-01-03 11:46:43	2013-01-03 13:36:48	2013-01-03 13:36:48.07	2	9	9	1	6	4	1	f	-399862680	-197314300	\N
2	1	1	\N	\N	Foundation-Nagios log check process started.	3	2013-01-03 11:46:43	2013-01-03 13:36:53	2013-01-03 13:36:53.163	2	9	9	1	6	4	1	f	956809038	-985874382	\N
25	100	3	3	\N	OK - 127.0.1.3: rta 0.052ms, lost 0%	1	2013-01-03 13:40:42	2013-01-03 13:40:42	2013-01-03 13:41:03.562	1	9	9	1	6	4	1	f	0	0	1218596637
27	100	3	3	23	UNKNOWN	1	2013-01-03 13:42:42	2013-01-03 13:42:42	2013-01-03 13:42:43.277	3	10	10	1	6	4	1	f	1645025201	-892810981	835693996
24	100	7	7	27	CRITICAL	1	2013-01-03 13:41:02	2013-01-03 13:41:02	2013-01-03 13:41:03.33	20	8	8	1	6	4	4	f	-1898659796	181457643	1564996478
28	100	7	7	\N	CRITICAL - 240.0.1.2: rta nan, lost 100%	1	2013-01-03 13:42:42	2013-01-03 13:42:42	2013-01-03 13:42:43.324	21	8	8	1	6	4	1	f	235033388	-1925074422	-1265143684
26	100	6	6	26	WARNING	1	2013-01-03 13:41:22	2013-01-03 13:41:22	2013-01-03 13:41:23.306	9	4	4	1	6	4	4	f	-1091749284	1376891052	300640865
29	100	6	6	\N	CRITICAL - 240.0.1.1: rta nan, lost 100%	1	2013-01-03 13:42:52	2013-01-03 13:42:52	2013-01-03 13:42:53.257	21	8	8	1	6	4	1	f	-530275752	-1904351174	-1030306560
31	100	9	9	\N	OK - 127.0.1.2: rta 0.232ms, lost 0%	1	2013-01-03 13:43:52	2013-01-03 13:43:52	2013-01-03 13:44:18.809	1	9	9	1	6	4	1	f	0	0	-39235285
32	100	2	2	\N	OK - 127.0.1.1: rta 0.061ms, lost 0%	1	2013-01-03 13:44:12	2013-01-03 13:44:12	2013-01-03 13:44:33.814	1	9	9	1	6	4	1	f	0	0	-646015311
33	100	9	9	29	CRITICAL	1	2013-01-03 13:45:52	2013-01-03 13:45:52	2013-01-03 13:45:53.465	20	8	8	1	6	4	1	f	1821013981	-1471764900	-1897994449
30	100	11	11	31	OK	1	2013-01-03 13:43:25	2013-01-03 13:43:25	2013-01-03 13:43:48.755	2	9	9	1	6	4	4	f	0	0	1476372896
34	100	11	11	\N	CRITICAL - 240.0.1.0: rta nan, lost 100%	1	2013-01-03 13:46:02	2013-01-03 13:46:02	2013-01-03 13:46:03.403	21	8	8	1	6	4	1	f	1091996519	917854149	-630905993
35	100	2	2	22	WARNING	1	2013-01-03 13:46:12	2013-01-03 13:46:12	2013-01-03 13:46:13.42	9	4	4	1	6	4	1	f	69009757	426426525	-415679854
36	100	8	8	28	OK	1	2013-01-03 13:47:13	2013-01-03 13:47:13	2013-01-03 13:47:33.971	2	9	9	1	6	4	4	f	0	0	2001323857
37	100	8	8	\N	OK - 127.0.1.0: rta 0.065ms, lost 0%	1	2013-01-03 13:47:22	2013-01-03 13:47:22	2013-01-03 13:47:49.006	1	9	9	1	6	4	1	f	0	0	2132384486
38	100	10	10	30	UNKNOWN	1	2013-01-03 13:48:02	2013-01-03 13:48:02	2013-01-03 13:48:03.389	3	10	10	1	6	4	4	f	1094146992	68542890	2084120059
39	100	10	10	\N	CRITICAL - 240.0.1.3: rta nan, lost 100%	1	2013-01-03 13:49:32	2013-01-03 13:49:32	2013-01-03 13:49:33.441	21	8	8	1	6	4	1	f	361336388	-343612634	-138770964
\.


--
-- Data for Name: logmessageproperty; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY logmessageproperty (logmessageid, propertytypeid, valuestring, valuedate, valueboolean, valueinteger, valuelong, valuedouble, lasteditedon, createdon) FROM stdin;
4	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:47:28.55	2013-01-03 11:47:28.55
4	31	localhost:local_cpu_nagios	\N	\N	\N	\N	\N	2013-01-03 11:47:28.55	2013-01-03 11:47:28.55
5	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:47:58.562	2013-01-03 11:47:58.562
5	31	localhost:local_cpu_perl	\N	\N	\N	\N	\N	2013-01-03 11:47:58.562	2013-01-03 11:47:58.562
6	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:48:28.566	2013-01-03 11:48:28.566
6	31	localhost:local_cpu_syslog-ng	\N	\N	\N	\N	\N	2013-01-03 11:48:28.566	2013-01-03 11:48:28.566
7	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:48:58.589	2013-01-03 11:48:58.589
7	31	localhost:local_disk_root	\N	\N	\N	\N	\N	2013-01-03 11:48:58.589	2013-01-03 11:48:58.589
8	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:49:28.604	2013-01-03 11:49:28.604
8	31	localhost:local_load	\N	\N	\N	\N	\N	2013-01-03 11:49:28.605	2013-01-03 11:49:28.605
9	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:49:43.613	2013-01-03 11:49:43.613
9	31	localhost:local_mem_httpd	\N	\N	\N	\N	\N	2013-01-03 11:49:43.613	2013-01-03 11:49:43.613
10	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:50:13.643	2013-01-03 11:50:13.643
10	31	localhost:local_mem_java	\N	\N	\N	\N	\N	2013-01-03 11:50:13.643	2013-01-03 11:50:13.643
11	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:50:43.692	2013-01-03 11:50:43.692
11	31	localhost:local_mem_nagios	\N	\N	\N	\N	\N	2013-01-03 11:50:43.692	2013-01-03 11:50:43.692
12	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:51:13.654	2013-01-03 11:51:13.654
12	31	localhost:local_mem_perl	\N	\N	\N	\N	\N	2013-01-03 11:51:13.654	2013-01-03 11:51:13.654
13	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:51:43.759	2013-01-03 11:51:43.759
13	31	localhost:local_mem_syslog-ng	\N	\N	\N	\N	\N	2013-01-03 11:51:43.759	2013-01-03 11:51:43.759
14	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:52:13.692	2013-01-03 11:52:13.692
14	31	localhost:local_memory	\N	\N	\N	\N	\N	2013-01-03 11:52:13.692	2013-01-03 11:52:13.692
15	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:52:43.754	2013-01-03 11:52:43.754
15	31	localhost:local_nagios_latency	\N	\N	\N	\N	\N	2013-01-03 11:52:43.754	2013-01-03 11:52:43.754
16	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:52:58.771	2013-01-03 11:52:58.771
16	31	localhost:local_process_gw_listener	\N	\N	\N	\N	\N	2013-01-03 11:52:58.771	2013-01-03 11:52:58.771
17	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:53:28.811	2013-01-03 11:53:28.811
17	31	localhost:local_process_nagios	\N	\N	\N	\N	\N	2013-01-03 11:53:28.811	2013-01-03 11:53:28.811
18	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:53:58.849	2013-01-03 11:53:58.849
18	31	localhost:local_swap	\N	\N	\N	\N	\N	2013-01-03 11:53:58.849	2013-01-03 11:53:58.849
19	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:54:28.821	2013-01-03 11:54:28.821
19	31	localhost:local_users	\N	\N	\N	\N	\N	2013-01-03 11:54:28.821	2013-01-03 11:54:28.821
20	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:54:58.831	2013-01-03 11:54:58.831
20	31	localhost:tcp_gw_listener	\N	\N	\N	\N	\N	2013-01-03 11:54:58.831	2013-01-03 11:54:58.831
21	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:55:28.858	2013-01-03 11:55:28.858
21	31	localhost:tcp_http	\N	\N	\N	\N	\N	2013-01-03 11:55:28.858	2013-01-03 11:55:28.858
22	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 11:55:58.815	2013-01-03 11:55:58.815
22	31	localhost:tcp_nsca	\N	\N	\N	\N	\N	2013-01-03 11:55:58.815	2013-01-03 11:55:58.815
24	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 13:41:03.33	2013-01-03 13:41:03.33
24	31	host-down-critical:test-critical	\N	\N	\N	\N	\N	2013-01-03 13:41:03.33	2013-01-03 13:41:03.33
25	33	HOST ALERT	\N	\N	\N	\N	\N	2013-01-03 13:41:03.562	2013-01-03 13:41:03.562
25	31	host-up-unknown	\N	\N	\N	\N	\N	2013-01-03 13:41:03.563	2013-01-03 13:41:03.563
26	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 13:41:23.306	2013-01-03 13:41:23.306
26	31	host-down-warning:test-warning	\N	\N	\N	\N	\N	2013-01-03 13:41:23.306	2013-01-03 13:41:23.306
27	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 13:42:43.277	2013-01-03 13:42:43.277
27	31	host-up-unknown:test-unknown	\N	\N	\N	\N	\N	2013-01-03 13:42:43.277	2013-01-03 13:42:43.277
28	33	HOST ALERT	\N	\N	\N	\N	\N	2013-01-03 13:42:43.324	2013-01-03 13:42:43.324
28	31	host-down-critical	\N	\N	\N	\N	\N	2013-01-03 13:42:43.324	2013-01-03 13:42:43.324
29	33	HOST ALERT	\N	\N	\N	\N	\N	2013-01-03 13:42:53.257	2013-01-03 13:42:53.257
29	31	host-down-warning	\N	\N	\N	\N	\N	2013-01-03 13:42:53.257	2013-01-03 13:42:53.257
30	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 13:43:48.755	2013-01-03 13:43:48.755
30	31	host-down-ok:test-ok	\N	\N	\N	\N	\N	2013-01-03 13:43:48.755	2013-01-03 13:43:48.755
31	33	HOST ALERT	\N	\N	\N	\N	\N	2013-01-03 13:44:18.809	2013-01-03 13:44:18.809
31	31	host-up-critical	\N	\N	\N	\N	\N	2013-01-03 13:44:18.809	2013-01-03 13:44:18.809
32	33	HOST ALERT	\N	\N	\N	\N	\N	2013-01-03 13:44:33.814	2013-01-03 13:44:33.814
32	31	host-up-warning	\N	\N	\N	\N	\N	2013-01-03 13:44:33.814	2013-01-03 13:44:33.814
33	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 13:45:53.465	2013-01-03 13:45:53.465
33	31	host-up-critical:test-critical	\N	\N	\N	\N	\N	2013-01-03 13:45:53.465	2013-01-03 13:45:53.465
34	33	HOST ALERT	\N	\N	\N	\N	\N	2013-01-03 13:46:03.404	2013-01-03 13:46:03.404
34	31	host-down-ok	\N	\N	\N	\N	\N	2013-01-03 13:46:03.404	2013-01-03 13:46:03.404
35	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 13:46:13.42	2013-01-03 13:46:13.42
35	31	host-up-warning:test-warning	\N	\N	\N	\N	\N	2013-01-03 13:46:13.42	2013-01-03 13:46:13.42
36	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 13:47:33.972	2013-01-03 13:47:33.972
36	31	host-up-ok:test-ok	\N	\N	\N	\N	\N	2013-01-03 13:47:33.972	2013-01-03 13:47:33.972
37	33	HOST ALERT	\N	\N	\N	\N	\N	2013-01-03 13:47:49.006	2013-01-03 13:47:49.006
37	31	host-up-ok	\N	\N	\N	\N	\N	2013-01-03 13:47:49.006	2013-01-03 13:47:49.006
38	33	SERVICE ALERT	\N	\N	\N	\N	\N	2013-01-03 13:48:03.389	2013-01-03 13:48:03.389
38	31	host-down-unknown:test-unknown	\N	\N	\N	\N	\N	2013-01-03 13:48:03.389	2013-01-03 13:48:03.389
39	33	HOST ALERT	\N	\N	\N	\N	\N	2013-01-03 13:49:33.441	2013-01-03 13:49:33.441
39	31	host-down-unknown	\N	\N	\N	\N	\N	2013-01-03 13:49:33.441	2013-01-03 13:49:33.441
\.


--
-- Data for Name: logperformancedata; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY logperformancedata (logperformancedataid, servicestatusid, lastchecktime, maximum, minimum, average, measurementpoints, performancedatalabelid) FROM stdin;
\.


--
-- Data for Name: messagefilter; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY messagefilter (messagefilterid, name, regexpresion, ischangeseveritytostatistic) FROM stdin;
\.


--
-- Data for Name: monitorlist; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY monitorlist (monitorserverid, deviceid) FROM stdin;
1	1
1	2
1	3
1	4
1	5
1	6
1	7
1	8
1	9
1	10
1	11
\.


--
-- Data for Name: monitorserver; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY monitorserver (monitorserverid, monitorservername, ip, description) FROM stdin;
1	localhost	127.0.0.1	Default Monitor Server
\.


--
-- Data for Name: monitorstatus; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY monitorstatus (monitorstatusid, name, description) FROM stdin;
1	UP	UP
2	OK	OK
3	UNKNOWN	UNKNOWN
4	SCHEDULED CRITICAL	SCHEDULED CRITICAL
5	PENDING	PENDING
6	SCHEDULED DOWN	SCHEDULED DOWN
7	UNREACHABLE	UNREACHABLE
8	UNSCHEDULED DOWN	UNSCHEDULED DOWN
9	WARNING	WARNING
10	UNSCHEDULED CRITICAL	UNSCHEDULED CRITICAL
11	ACKNOWLEDGEMENT (WARNING)	ACKNOWLEDGEMENT (WARNING)
12	ACKNOWLEDGEMENT (CRITICAL)	ACKNOWLEDGEMENT (CRITICAL)
13	ACKNOWLEDGEMENT (DOWN)	ACKNOWLEDGEMENT (DOWN)
14	ACKNOWLEDGEMENT (UP)	ACKNOWLEDGEMENT (UP)
15	ACKNOWLEDGEMENT (OK)	ACKNOWLEDGEMENT (OK)
16	ACKNOWLEDGEMENT (UNREACHABLE)	ACKNOWLEDGEMENT (UNREACHABLE)
17	ACKNOWLEDGEMENT (UNKNOWN)	ACKNOWLEDGEMENT (UNKNOWN)
18	ACKNOWLEDGEMENT (PENDING)	ACKNOWLEDGEMENT (PENDING)
19	ACKNOWLEDGEMENT (MAINTENANCE)	ACKNOWLEDGEMENT (MAINTENANCE)
20	CRITICAL	CRITICAL
21	DOWN	DOWN
22	MAINTENANCE	MAINTENANCE
23	SUSPENDED	Virtual Environment specific Host status
\.


--
-- Data for Name: network_service_notifications; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY network_service_notifications (id, created_at, guid, type, title, critical, description, webpage_url, webpage_url_description, update_md5, update_url, update_cmd_switch, update_instruction, update_size, update_type, update_os, is_read, is_archived) FROM stdin;
\.


--
-- Data for Name: network_service_short_news; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY network_service_short_news (id, status, title, message, url, url_description, is_archived) FROM stdin;
\.


--
-- Data for Name: network_service_status; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY network_service_status (id, last_checked) FROM stdin;
1	2013-01-03 11:47:05
\.


--
-- Data for Name: operationstatus; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY operationstatus (operationstatusid, name, description) FROM stdin;
1	OPEN	Status OPEN
2	CLOSED	Status CLOSED
3	NOTIFIED	Status NOTIFIED
4	ACCEPTED	Status accepted
\.


--
-- Data for Name: performancedatalabel; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY performancedatalabel (performancedatalabelid, performancename, servicedisplayname, metriclabel, unit) FROM stdin;
1	Current Load_load1	Load average last minute	Load factor	load
2	Current Load_load5	Load average last 5 minutes	Load factor	load
3	Current Load_load15	Load average last 15 minutes	Load factor	load
4	Current Users_users	Users on System	users	users
5	Root Partition_/	Used space on Root partition	Percentage used	%
6	icmp_ping_alive_rta	Ping round trip average	rta	ms
7	icmp_ping_alive_pl	Process load	pl	%
8	http_alive_time	Web Server time	time	sec
9	http_alive_size	Web Server size	size	kb
\.


--
-- Data for Name: plugin; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY plugin (pluginid, name, url, platformid, dependencies, lastupdatetimestamp, checksum, lastupdatedby) FROM stdin;
\.


--
-- Data for Name: pluginplatform; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY pluginplatform (platformid, name, arch, description) FROM stdin;
1	Multiplatform	32	Multiplatform 32 bit
2	Multiplatform	64	Multiplatform 64 bit
3	AIX-PowerPC	32	AIX PowerPC 32 bit
4	AIX-PowerPC	64	AIX PowerPC 64 bit
5	Linux-Intel	32	Linux Intel 32 bit
6	Linux-Intel	64	Linux Intel 64 bit
7	Solaris-Intel	32	Solaris Intel 32 bit
8	Solaris-Intel	64	Solaris Intel 64 bit
9	Solaris-SPARC	32	Solaris SPARC 32 bit
10	Solaris-SPARC	64	Solaris SPARC 64 bit
11	Windows-Intel	32	Windows Intel 32 bit
12	Windows-Intel	64	Windows Intel 64 bit
\.


--
-- Data for Name: priority; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY priority (priorityid, name, description) FROM stdin;
1	1	Lowest Priority in a scale from 1 -10
2	2	Low priority in a scale from 1 -10
3	3	Low priority in a scale from 1 -10
4	4	Low priority in a scale from 1 -10
5	5	Medium priority in a scale from 1 -10
6	6	Medium priority in a scale from 1 -10
7	7	Medium-High priority in a scale from 1 -10
8	8	Medium-High priority in a scale from 1 -10
9	9	High priority in a scale from 1 -10
10	10	Highest priority in a scale from 1 -10
\.


--
-- Data for Name: propertytype; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY propertytype (propertytypeid, name, description, isdate, isboolean, isstring, isinteger, islong, isdouble, isvisible) FROM stdin;
1	LastPluginOutput	Last output received	f	f	t	f	f	f	t
2	LastStateChange	The time of the last change of state	t	f	f	f	f	f	t
3	isAcknowledged	Has the current state been acknowledged?	f	t	f	f	f	f	t
4	TimeUp	The amount of time that the host has been UP	f	f	f	f	t	f	t
5	TimeDown	The amount of time that the host has been DOWN	f	f	f	f	t	f	t
6	TimeUnreachable	The amount of time that the host has been UNREACHABLE	f	f	f	f	t	f	t
7	LastNotificationTime	The time of the last notification	t	f	f	f	f	f	t
8	CurrentNotificationNumber	The count of notifications	f	f	f	t	f	f	t
9	isNotificationsEnabled		f	t	f	f	f	f	t
10	isChecksEnabled		f	t	f	f	f	f	t
11	isEventHandlersEnabled		f	t	f	f	f	f	t
12	isFlapDetectionEnabled		f	t	f	f	f	f	t
13	isHostFlapping		f	t	f	f	f	f	t
14	PercentStateChange		f	f	f	f	f	t	t
15	ScheduledDowntimeDepth		f	f	f	t	f	f	t
16	isFailurePredictionEnabled		f	t	f	f	f	f	t
17	isProcessPerformanceData		f	t	f	f	f	f	t
18	RetryNumber	The number of times an attempt has been made to contact the service	f	f	f	t	f	f	t
19	isAcceptPassiveChecks		f	t	f	f	f	f	t
20	isProblemAcknowledged		f	t	f	f	f	f	t
21	TimeOK	The amount of time that the entity has had a status of OK	f	f	f	f	t	f	t
22	TimeUnknown	The amount of time that the entity has had a status of UNKNOWN	f	f	f	f	t	f	t
23	TimeWarning	The amount of time that the entity has had a status of WARNING	f	f	f	f	t	f	t
24	TimeCritical	The amount of time that the entity has had a status of CRITICAL	f	f	f	f	t	f	t
25	Latency		f	f	f	f	f	t	t
26	ExecutionTime		f	f	f	f	f	t	t
27	isServiceFlapping		f	t	f	f	f	f	t
28	isObsessOverService		f	t	f	f	f	f	t
29	ApplicationName		f	f	t	f	f	f	t
30	ApplicationCode		f	f	t	f	f	f	t
31	SubComponent		f	f	t	f	f	f	t
32	LoggerName		f	f	t	f	f	f	t
33	ErrorType		f	f	t	f	f	f	t
34	30DayMovingAvg		f	f	f	f	f	t	t
35	isPassiveChecksEnabled	Nagios 2.0	f	t	f	f	f	f	t
36	AcknowledgedBy		f	f	t	f	f	f	t
37	AcknowledgeComment		f	f	t	f	f	f	t
38	Parent	List of parent hosts separated by commas	f	f	t	f	f	f	t
39	Alias	Host Alias information	f	f	t	f	f	f	t
40	RRDPath	fully qualified path to RRD image	f	f	t	f	f	f	t
41	RRDLabel	Label for Graph	f	f	t	f	f	f	t
42	RRDCommand	Custom RRD command	f	f	t	f	f	f	t
43	CurrentAttempt	Current attempt running check	f	f	f	f	t	f	t
44	MaxAttempts	Max attempts configured	f	f	f	f	t	f	t
45	isObsessOverHost		f	f	f	t	f	f	t
46	ServiceDependencies		f	f	t	f	f	f	t
47	ExtendedInfo		f	f	t	f	f	f	t
48	Comments	Host or Service Comments in XML format	f	f	t	f	f	f	t
49	CactiRRDCommand	Cacti RRD Command	f	f	t	f	f	f	t
50	RemoteRRDCommand	Remote RRD Command	f	f	t	f	f	f	t
51	Notes	Configuration Notes field	f	f	t	f	f	f	t
52	DeactivationTime	The time when the host was deactivated	f	f	t	f	f	f	t
53	PerformanceData	The last Nagios performance data	f	f	t	f	f	f	t
54	Location	Last output received	f	f	t	f	f	f	t
55	ContactPerson	Last output received	f	f	t	f	f	f	t
56	ContactNumber	Last output received	f	f	t	f	f	f	t
57	ipaddress	ipdddress of snmp device	f	f	t	f	f	f	t
58	Event_OID_numeric	Event_OID_numeric	f	f	t	f	f	f	t
59	Event_OID_symbolic	Event_OID_symbolic of snmp device	f	f	t	f	f	f	t
60	Event_Name	Event_Name	f	f	t	f	f	f	t
61	Category	Category of snmp device	f	f	t	f	f	f	t
62	Variable_Bindings	Variable_Bindings	f	f	t	f	f	f	t
63	UpdatedBy	UpdatedBy	f	f	t	f	f	f	t
\.


--
-- Data for Name: schemainfo; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY schemainfo (name, value) FROM stdin;
Schema Version	6.7.0
Schema created	2
CurrentSchemaVersion	6.7.0
AvailabilityUpdateInterval	60
AvailabilityDataPoints	720
\.


--
-- Data for Name: servicestatus; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY servicestatus (servicestatusid, applicationtypeid, servicedescription, hostid, monitorstatusid, lastchecktime, nextchecktime, laststatechange, lasthardstateid, statetypeid, checktypeid, metrictype, domain) FROM stdin;
16	100	local_process_gw_listener	1	2	2013-01-03 14:02:46	2013-01-03 14:12:46	2013-01-03 11:52:46	5	2	1	\N	\N
17	100	local_process_nagios	1	2	2013-01-03 14:03:15	2013-01-03 14:13:15	2013-01-03 11:53:15	5	2	1	\N	\N
15	100	local_nagios_latency	1	2	2013-01-03 14:02:18	2013-01-03 14:12:18	2013-01-03 11:52:18	5	2	1	\N	\N
10	100	local_mem_httpd	1	2	2013-01-03 13:59:26	2013-01-03 14:09:26	2013-01-03 11:49:26	5	2	1	\N	\N
11	100	local_mem_java	1	2	2013-01-03 13:59:55	2013-01-03 14:09:55	2013-01-03 11:49:55	5	2	1	\N	\N
8	100	local_load	1	2	2013-01-03 13:58:58	2013-01-03 14:08:58	2013-01-03 11:48:58	5	2	1	\N	\N
3	100	local_cpu_nagios	1	2	2013-01-03 14:07:03	2013-01-03 14:17:03	2013-01-03 11:47:03	5	2	1	\N	\N
4	100	local_cpu_perl	1	2	2013-01-03 14:07:32	2013-01-03 14:17:32	2013-01-03 11:47:32	5	2	1	\N	\N
28	100	test-ok	8	2	2013-01-03 14:07:13	2013-01-03 14:17:13	2013-01-03 13:47:13	5	2	1	\N	\N
6	100	local_users	1	2	2013-01-03 14:04:12	2013-01-03 14:14:12	2013-01-03 11:54:12	5	2	1	\N	\N
18	100	local_swap	1	2	2013-01-03 14:03:43	2013-01-03 14:13:43	2013-01-03 11:53:43	5	2	1	\N	\N
19	100	tcp_gw_listener	1	2	2013-01-03 14:04:40	2013-01-03 14:14:40	2013-01-03 11:54:40	5	2	1	\N	\N
24	100	test-pending	4	5	\N	\N	2013-01-03 14:08:50	5	2	1	\N	\N
25	100	test-pending	5	5	\N	\N	2013-01-03 14:08:50	5	2	1	\N	\N
31	100	test-ok	11	2	2013-01-03 14:03:25	2013-01-03 14:13:25	2013-01-03 13:43:25	5	2	1	\N	\N
14	100	local_mem_syslog-ng	1	2	2013-01-03 14:01:20	2013-01-03 14:11:20	2013-01-03 11:51:20	5	2	1	\N	\N
12	100	local_mem_nagios	1	2	2013-01-03 14:00:23	2013-01-03 14:10:23	2013-01-03 11:50:23	5	2	1	\N	\N
13	100	local_mem_perl	1	2	2013-01-03 14:00:52	2013-01-03 14:10:52	2013-01-03 11:50:52	5	2	1	\N	\N
9	100	local_memory	1	2	2013-01-03 14:01:49	2013-01-03 14:11:49	2013-01-03 11:51:49	5	2	1	\N	\N
27	100	test-critical	7	10	2013-01-03 14:00:58	2013-01-03 14:10:58	2013-01-03 13:40:58	5	2	1	\N	\N
26	100	test-warning	6	9	2013-01-03 14:01:19	2013-01-03 14:11:19	2013-01-03 13:41:19	5	2	1	\N	\N
2	100	local_cpu_java	1	2	2013-01-03 13:58:35	2013-01-03 14:08:35	2013-01-03 11:48:35	5	2	1	\N	\N
5	100	local_cpu_syslog-ng	1	2	2013-01-03 13:58:00	2013-01-03 14:08:00	2013-01-03 11:48:00	5	2	1	\N	\N
7	100	local_disk_root	1	2	2013-01-03 13:58:29	2013-01-03 14:08:29	2013-01-03 11:48:29	5	2	1	\N	\N
22	100	test-warning	2	9	2013-01-03 14:06:07	2013-01-03 14:16:07	2013-01-03 13:44:07	5	2	1	\N	\N
20	100	tcp_http	1	2	2013-01-03 14:05:09	2013-01-03 14:15:09	2013-01-03 11:55:09	5	2	1	\N	\N
30	100	test-unknown	10	3	2013-01-03 13:57:52	2013-01-03 14:07:52	2013-01-03 13:47:52	5	2	1	\N	\N
1	100	local_cpu_httpd	1	2	2013-01-03 14:06:06	2013-01-03 14:16:06	2013-01-03 11:46:06	5	2	1	\N	\N
21	100	tcp_nsca	1	2	2013-01-03 14:05:38	2013-01-03 14:15:38	2013-01-03 11:55:38	5	2	1	\N	\N
29	100	test-critical	9	10	2013-01-03 14:05:46	2013-01-03 14:15:46	2013-01-03 13:43:46	5	2	1	\N	\N
23	100	test-unknown	3	3	2013-01-03 14:02:40	2013-01-03 14:12:40	2013-01-03 13:40:40	5	2	1	\N	\N
\.


--
-- Data for Name: servicestatusproperty; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY servicestatusproperty (servicestatusid, propertytypeid, valuestring, valuedate, valueboolean, valueinteger, valuelong, valuedouble, lasteditedon, createdon) FROM stdin;
6	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.034	2013-01-03 11:46:44.034
6	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.034	2013-01-03 11:46:44.034
6	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.034	2013-01-03 11:46:44.034
6	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.034	2013-01-03 11:46:44.034
6	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.033	2013-01-03 11:46:44.033
6	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.034	2013-01-03 11:46:44.034
6	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.034	2013-01-03 11:46:44.034
6	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.034	2013-01-03 11:46:44.034
6	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.033	2013-01-03 11:46:44.033
6	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.034	2013-01-03 11:46:44.034
6	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.034	2013-01-03 11:46:44.034
6	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.034	2013-01-03 11:46:44.034
6	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.034	2013-01-03 11:46:44.034
16	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.057	2013-01-03 11:46:44.057
16	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.057	2013-01-03 11:46:44.057
16	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.058	2013-01-03 11:46:44.058
16	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.058	2013-01-03 11:46:44.058
16	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.057	2013-01-03 11:46:44.057
16	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.057	2013-01-03 11:46:44.057
16	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.057	2013-01-03 11:46:44.057
16	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.058	2013-01-03 11:46:44.058
16	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.058	2013-01-03 11:46:44.058
16	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.057	2013-01-03 11:46:44.057
16	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.057	2013-01-03 11:46:44.057
16	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.057	2013-01-03 11:46:44.057
16	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.058	2013-01-03 11:46:44.058
20	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
20	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
20	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
20	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.087	2013-01-03 11:46:44.087
20	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
20	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
20	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
20	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
20	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
20	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
20	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
20	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
20	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
10	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.117	2013-01-03 11:46:44.117
10	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.117	2013-01-03 11:46:44.117
10	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.118	2013-01-03 11:46:44.118
10	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.117	2013-01-03 11:46:44.117
10	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.117	2013-01-03 11:46:44.117
10	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.118	2013-01-03 11:46:44.118
10	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.117	2013-01-03 11:46:44.117
10	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.117	2013-01-03 11:46:44.117
10	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.118	2013-01-03 11:46:44.118
10	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.118	2013-01-03 11:46:44.118
10	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.117	2013-01-03 11:46:44.117
10	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.118	2013-01-03 11:46:44.118
10	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.118	2013-01-03 11:46:44.118
14	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.152	2013-01-03 11:46:44.152
14	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.151	2013-01-03 11:46:44.151
14	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.151	2013-01-03 11:46:44.151
14	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.151	2013-01-03 11:46:44.151
14	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.151	2013-01-03 11:46:44.151
14	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.152	2013-01-03 11:46:44.152
14	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.151	2013-01-03 11:46:44.151
14	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.151	2013-01-03 11:46:44.151
14	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.152	2013-01-03 11:46:44.152
14	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.152	2013-01-03 11:46:44.152
14	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.151	2013-01-03 11:46:44.151
14	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.151	2013-01-03 11:46:44.151
14	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.152	2013-01-03 11:46:44.152
2	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.19	2013-01-03 11:46:44.19
2	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.191	2013-01-03 11:46:44.191
2	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.19	2013-01-03 11:46:44.19
2	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.191	2013-01-03 11:46:44.191
2	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.19	2013-01-03 11:46:44.19
2	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.191	2013-01-03 11:46:44.191
2	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.19	2013-01-03 11:46:44.19
2	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.191	2013-01-03 11:46:44.191
2	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.19	2013-01-03 11:46:44.19
2	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.191	2013-01-03 11:46:44.191
2	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.19	2013-01-03 11:46:44.19
2	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.191	2013-01-03 11:46:44.191
3	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.222	2013-01-03 11:46:44.222
3	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.222	2013-01-03 11:46:44.222
3	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.222	2013-01-03 11:46:44.222
3	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.221	2013-01-03 11:46:44.221
3	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.222	2013-01-03 11:46:44.222
3	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.221	2013-01-03 11:46:44.221
3	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.221	2013-01-03 11:46:44.221
3	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.222	2013-01-03 11:46:44.222
3	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.221	2013-01-03 11:46:44.221
3	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.221	2013-01-03 11:46:44.221
3	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.221	2013-01-03 11:46:44.221
3	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.221	2013-01-03 11:46:44.221
3	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.221	2013-01-03 11:46:44.221
1	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
1	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
1	1	OK - total %CPU for process httpd : 0.0	\N	\N	\N	\N	\N	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
1	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.251	2013-01-03 11:46:44.251
1	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
1	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
1	53	%CPU=0.0;40;50	\N	\N	\N	\N	\N	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
1	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
1	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
1	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
1	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
1	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.251	2013-01-03 11:46:44.251
1	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
16	26	\N	\N	\N	\N	\N	13	2013-01-03 11:46:44.057	2013-01-03 11:46:44.057
20	25	\N	\N	\N	\N	\N	513	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
1	25	\N	\N	\N	\N	\N	551	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
2	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.191	2013-01-03 11:46:44.191
14	25	\N	\N	\N	\N	\N	297	2013-01-03 11:46:44.151	2013-01-03 11:46:44.151
14	26	\N	\N	\N	\N	\N	71	2013-01-03 11:46:44.151	2013-01-03 11:46:44.151
6	25	\N	\N	\N	\N	\N	458	2013-01-03 11:46:44.033	2013-01-03 11:46:44.033
10	25	\N	\N	\N	\N	\N	212	2013-01-03 11:46:44.117	2013-01-03 11:46:44.117
1	26	\N	\N	\N	\N	\N	161	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
10	26	\N	\N	\N	\N	\N	163	2013-01-03 11:46:44.117	2013-01-03 11:46:44.117
20	26	\N	\N	\N	\N	\N	6	2013-01-03 11:46:44.086	2013-01-03 11:46:44.086
3	25	\N	\N	\N	\N	\N	611	2013-01-03 11:46:44.221	2013-01-03 11:46:44.221
3	26	\N	\N	\N	\N	\N	75	2013-01-03 11:46:44.221	2013-01-03 11:46:44.221
6	26	\N	\N	\N	\N	\N	4	2013-01-03 11:46:44.034	2013-01-03 11:46:44.034
1	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.25	2013-01-03 11:46:44.25
1	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.251	2013-01-03 11:46:44.251
5	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.307	2013-01-03 11:46:44.307
5	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.306	2013-01-03 11:46:44.306
5	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.306	2013-01-03 11:46:44.306
5	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.307	2013-01-03 11:46:44.307
5	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.307	2013-01-03 11:46:44.307
5	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.306	2013-01-03 11:46:44.306
5	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.306	2013-01-03 11:46:44.306
5	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.307	2013-01-03 11:46:44.307
5	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.306	2013-01-03 11:46:44.306
5	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.306	2013-01-03 11:46:44.306
5	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.307	2013-01-03 11:46:44.307
5	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.306	2013-01-03 11:46:44.306
5	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.306	2013-01-03 11:46:44.306
17	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.367	2013-01-03 11:46:44.367
17	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.366	2013-01-03 11:46:44.366
17	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.366	2013-01-03 11:46:44.366
17	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.367	2013-01-03 11:46:44.367
17	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.367	2013-01-03 11:46:44.367
17	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.366	2013-01-03 11:46:44.366
17	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.366	2013-01-03 11:46:44.366
17	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.366	2013-01-03 11:46:44.366
17	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.367	2013-01-03 11:46:44.367
17	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.367	2013-01-03 11:46:44.367
17	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.366	2013-01-03 11:46:44.366
17	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.366	2013-01-03 11:46:44.366
17	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.366	2013-01-03 11:46:44.366
18	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.411	2013-01-03 11:46:44.411
18	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.41	2013-01-03 11:46:44.41
18	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.41	2013-01-03 11:46:44.41
18	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.41	2013-01-03 11:46:44.41
18	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.411	2013-01-03 11:46:44.411
18	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.41	2013-01-03 11:46:44.41
18	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.41	2013-01-03 11:46:44.41
18	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.41	2013-01-03 11:46:44.41
18	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.411	2013-01-03 11:46:44.411
18	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.41	2013-01-03 11:46:44.41
18	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.411	2013-01-03 11:46:44.411
18	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.41	2013-01-03 11:46:44.41
18	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.411	2013-01-03 11:46:44.411
12	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.448	2013-01-03 11:46:44.448
12	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.448	2013-01-03 11:46:44.448
12	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.449	2013-01-03 11:46:44.449
12	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.448	2013-01-03 11:46:44.448
12	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.449	2013-01-03 11:46:44.449
12	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.449	2013-01-03 11:46:44.449
12	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.448	2013-01-03 11:46:44.448
12	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.449	2013-01-03 11:46:44.449
12	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.448	2013-01-03 11:46:44.448
12	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.448	2013-01-03 11:46:44.448
12	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.448	2013-01-03 11:46:44.448
12	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.449	2013-01-03 11:46:44.449
12	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.449	2013-01-03 11:46:44.449
21	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.503	2013-01-03 11:46:44.503
21	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.502	2013-01-03 11:46:44.502
21	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.503	2013-01-03 11:46:44.503
21	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.503	2013-01-03 11:46:44.503
21	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.502	2013-01-03 11:46:44.502
21	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.502	2013-01-03 11:46:44.502
21	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.503	2013-01-03 11:46:44.503
21	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.502	2013-01-03 11:46:44.502
21	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.503	2013-01-03 11:46:44.503
21	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.502	2013-01-03 11:46:44.502
21	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.502	2013-01-03 11:46:44.502
21	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.503	2013-01-03 11:46:44.503
21	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.502	2013-01-03 11:46:44.502
4	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
4	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
4	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
4	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
4	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
4	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
4	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
4	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
4	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
4	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
4	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
4	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
4	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
19	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.584	2013-01-03 11:46:44.584
19	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.583	2013-01-03 11:46:44.583
19	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.584	2013-01-03 11:46:44.584
19	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.584	2013-01-03 11:46:44.584
19	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.584	2013-01-03 11:46:44.584
19	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.584	2013-01-03 11:46:44.584
19	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.584	2013-01-03 11:46:44.584
19	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.584	2013-01-03 11:46:44.584
19	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.584	2013-01-03 11:46:44.584
19	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.584	2013-01-03 11:46:44.584
19	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.584	2013-01-03 11:46:44.584
19	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.584	2013-01-03 11:46:44.584
19	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.584	2013-01-03 11:46:44.584
7	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.61	2013-01-03 11:46:44.61
7	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.61	2013-01-03 11:46:44.61
7	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.61	2013-01-03 11:46:44.61
7	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.61	2013-01-03 11:46:44.61
7	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.609	2013-01-03 11:46:44.609
7	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.61	2013-01-03 11:46:44.61
7	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.61	2013-01-03 11:46:44.61
7	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.61	2013-01-03 11:46:44.61
7	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.61	2013-01-03 11:46:44.61
7	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.61	2013-01-03 11:46:44.61
7	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.61	2013-01-03 11:46:44.61
7	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.61	2013-01-03 11:46:44.61
17	26	\N	\N	\N	\N	\N	16	2013-01-03 11:46:44.366	2013-01-03 11:46:44.366
21	25	\N	\N	\N	\N	\N	531	2013-01-03 11:46:44.502	2013-01-03 11:46:44.502
12	26	\N	\N	\N	\N	\N	76	2013-01-03 11:46:44.448	2013-01-03 11:46:44.448
7	25	\N	\N	\N	\N	\N	170	2013-01-03 11:46:44.609	2013-01-03 11:46:44.609
18	26	\N	\N	\N	\N	\N	4	2013-01-03 11:46:44.41	2013-01-03 11:46:44.41
21	26	\N	\N	\N	\N	\N	5	2013-01-03 11:46:44.502	2013-01-03 11:46:44.502
18	25	\N	\N	\N	\N	\N	434	2013-01-03 11:46:44.41	2013-01-03 11:46:44.41
19	26	\N	\N	\N	\N	\N	6	2013-01-03 11:46:44.584	2013-01-03 11:46:44.584
7	26	\N	\N	\N	\N	\N	4	2013-01-03 11:46:44.609	2013-01-03 11:46:44.609
5	26	\N	\N	\N	\N	\N	69	2013-01-03 11:46:44.306	2013-01-03 11:46:44.306
17	25	\N	\N	\N	\N	\N	409	2013-01-03 11:46:44.366	2013-01-03 11:46:44.366
19	25	\N	\N	\N	\N	\N	485	2013-01-03 11:46:44.583	2013-01-03 11:46:44.583
12	25	\N	\N	\N	\N	\N	253	2013-01-03 11:46:44.448	2013-01-03 11:46:44.448
7	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.609	2013-01-03 11:46:44.609
11	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.632	2013-01-03 11:46:44.632
11	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.631	2013-01-03 11:46:44.631
11	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.631	2013-01-03 11:46:44.631
11	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.632	2013-01-03 11:46:44.632
11	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.632	2013-01-03 11:46:44.632
11	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.631	2013-01-03 11:46:44.631
11	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.631	2013-01-03 11:46:44.631
11	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.632	2013-01-03 11:46:44.632
11	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.631	2013-01-03 11:46:44.631
11	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.632	2013-01-03 11:46:44.632
11	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.632	2013-01-03 11:46:44.632
11	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.631	2013-01-03 11:46:44.631
11	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.631	2013-01-03 11:46:44.631
9	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
9	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
9	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
9	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
9	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
9	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.69	2013-01-03 11:46:44.69
9	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
9	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
9	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
9	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
9	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
9	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
9	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
8	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
8	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
8	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
8	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
8	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
8	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
8	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
8	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
8	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
8	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
8	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
8	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
8	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
15	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.732	2013-01-03 11:46:44.732
15	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.733	2013-01-03 11:46:44.733
15	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.733	2013-01-03 11:46:44.733
15	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.733	2013-01-03 11:46:44.733
15	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.732	2013-01-03 11:46:44.732
15	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.732	2013-01-03 11:46:44.732
15	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.732	2013-01-03 11:46:44.732
15	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.732	2013-01-03 11:46:44.732
15	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.732	2013-01-03 11:46:44.732
15	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.732	2013-01-03 11:46:44.732
15	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.732	2013-01-03 11:46:44.732
15	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.732	2013-01-03 11:46:44.732
15	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.732	2013-01-03 11:46:44.732
11	26	\N	\N	\N	\N	\N	60	2013-01-03 11:46:44.631	2013-01-03 11:46:44.631
2	1	OK - total %CPU for process java : 1.4	\N	\N	\N	\N	\N	2013-01-03 11:46:58.874	2013-01-03 11:46:58.874
2	53	%CPU=1.4;40;50	\N	\N	\N	\N	\N	2013-01-03 11:46:58.874	2013-01-03 11:46:58.874
2	25	\N	\N	\N	\N	\N	175	2013-01-03 11:46:44.19	2013-01-03 11:46:44.19
2	26	\N	\N	\N	\N	\N	58	2013-01-03 11:46:44.19	2013-01-03 11:46:44.19
8	26	\N	\N	\N	\N	\N	4	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
11	25	\N	\N	\N	\N	\N	232	2013-01-03 11:46:44.631	2013-01-03 11:46:44.631
8	25	\N	\N	\N	\N	\N	189	2013-01-03 11:46:44.713	2013-01-03 11:46:44.713
9	25	\N	\N	\N	\N	\N	332	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
9	26	\N	\N	\N	\N	\N	13	2013-01-03 11:46:44.689	2013-01-03 11:46:44.689
15	25	\N	\N	\N	\N	\N	354	2013-01-03 11:46:44.732	2013-01-03 11:46:44.732
15	26	\N	\N	\N	\N	\N	26	2013-01-03 11:46:44.732	2013-01-03 11:46:44.732
13	11	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
13	43	\N	\N	\N	\N	1	\N	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
13	14	\N	\N	\N	\N	\N	0	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
13	10	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
13	8	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
13	9	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
13	15	\N	\N	\N	0	\N	\N	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
13	7	\N	\N	\N	\N	\N	\N	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
13	19	\N	\N	t	\N	\N	\N	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
13	12	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
13	20	\N	\N	f	\N	\N	\N	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
13	48	 	\N	\N	\N	\N	\N	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
13	44	\N	\N	\N	\N	3	\N	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
3	53	%CPU=0.0;40;50	\N	\N	\N	\N	\N	2013-01-03 11:47:28.612	2013-01-03 11:47:28.612
3	1	OK - total %CPU for process nagios : 0.0	\N	\N	\N	\N	\N	2013-01-03 11:47:28.612	2013-01-03 11:47:28.612
5	1	OK - total %CPU for process syslog-ng : 0.0	\N	\N	\N	\N	\N	2013-01-03 11:48:28.635	2013-01-03 11:48:28.635
5	53	%CPU=0.0;40;50	\N	\N	\N	\N	\N	2013-01-03 11:48:28.635	2013-01-03 11:48:28.635
1	40	/usr/local/groundwork/rrd/localhost_local_cpu_httpd.rrd	\N	\N	\N	\N	\N	2013-01-03 11:50:39.24	2013-01-03 11:50:39.24
1	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_cpu_httpd.rrd":CPU:AVERAGE   DEF:w="/usr/local/groundwork/rrd/localhost_local_cpu_httpd.rrd":CPU_wn:AVERAGE   DEF:c="/usr/local/groundwork/rrd/localhost_local_cpu_httpd.rrd":CPU_cr:AVERAGE   CDEF:cdefa=a   CDEF:cdefb=a,0.99,*   AREA:cdefa#7D1B7E:"Process CPU Utilization"   GPRINT:cdefa:LAST:Current=%.2lf   GPRINT:cdefa:MIN:min=%.2lf   GPRINT:cdefa:AVERAGE:avg=%.2lf   GPRINT:cdefa:MAX:max="%.2lf\\l"   AREA:cdefb#571B7E:   CDEF:cdefw=w  CDEF:cdefc=c   CDEF:cdefm=cdefc,1.01,*   LINE2:cdefw#FFFF00:"Warning Threshold\\:"   GPRINT:cdefw:LAST:"%.2lf"   LINE2:cdefc#FF0033:"Critical Threshold\\:"   GPRINT:cdefc:LAST:"%.2lf\\l"   COMMENT:"Service\\: local_cpu_httpd"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  CDEF:cdefwt=a,cdefw,GT,cdefw,0,IF LINE:cdefwt#000000 CDEF:cdefct=a,cdefc,GT,cdefc,0,IF LINE:cdefct#000000  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y --height 120 --rigid -u 100 -l 0	\N	\N	\N	\N	\N	2013-01-03 11:50:39.24	2013-01-03 11:50:39.24
1	41	CPU Utilization	\N	\N	\N	\N	\N	2013-01-03 11:50:39.24	2013-01-03 11:50:39.24
1	50	 	\N	\N	\N	\N	\N	2013-01-03 11:50:39.24	2013-01-03 11:50:39.24
2	41	CPU Utilization	\N	\N	\N	\N	\N	2013-01-03 11:50:39.253	2013-01-03 11:50:39.253
2	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_cpu_java.rrd":CPU:AVERAGE   DEF:w="/usr/local/groundwork/rrd/localhost_local_cpu_java.rrd":CPU_wn:AVERAGE   DEF:c="/usr/local/groundwork/rrd/localhost_local_cpu_java.rrd":CPU_cr:AVERAGE   CDEF:cdefa=a   CDEF:cdefb=a,0.99,*   AREA:cdefa#7D1B7E:"Process CPU Utilization"   GPRINT:cdefa:LAST:Current=%.2lf   GPRINT:cdefa:MIN:min=%.2lf   GPRINT:cdefa:AVERAGE:avg=%.2lf   GPRINT:cdefa:MAX:max="%.2lf\\l"   AREA:cdefb#571B7E:   CDEF:cdefw=w  CDEF:cdefc=c   CDEF:cdefm=cdefc,1.01,*   LINE2:cdefw#FFFF00:"Warning Threshold\\:"   GPRINT:cdefw:LAST:"%.2lf"   LINE2:cdefc#FF0033:"Critical Threshold\\:"   GPRINT:cdefc:LAST:"%.2lf\\l"   COMMENT:"Service\\: local_cpu_java"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  CDEF:cdefwt=a,cdefw,GT,cdefw,0,IF LINE:cdefwt#000000 CDEF:cdefct=a,cdefc,GT,cdefc,0,IF LINE:cdefct#000000  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y --height 120 --rigid -u 100 -l 0	\N	\N	\N	\N	\N	2013-01-03 11:50:39.253	2013-01-03 11:50:39.253
2	40	/usr/local/groundwork/rrd/localhost_local_cpu_java.rrd	\N	\N	\N	\N	\N	2013-01-03 11:50:39.254	2013-01-03 11:50:39.254
2	50	 	\N	\N	\N	\N	\N	2013-01-03 11:50:39.254	2013-01-03 11:50:39.254
3	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_cpu_nagios.rrd":CPU:AVERAGE   DEF:w="/usr/local/groundwork/rrd/localhost_local_cpu_nagios.rrd":CPU_wn:AVERAGE   DEF:c="/usr/local/groundwork/rrd/localhost_local_cpu_nagios.rrd":CPU_cr:AVERAGE   CDEF:cdefa=a   CDEF:cdefb=a,0.99,*   AREA:cdefa#7D1B7E:"Process CPU Utilization"   GPRINT:cdefa:LAST:Current=%.2lf   GPRINT:cdefa:MIN:min=%.2lf   GPRINT:cdefa:AVERAGE:avg=%.2lf   GPRINT:cdefa:MAX:max="%.2lf\\l"   AREA:cdefb#571B7E:   CDEF:cdefw=w  CDEF:cdefc=c   CDEF:cdefm=cdefc,1.01,*   LINE2:cdefw#FFFF00:"Warning Threshold\\:"   GPRINT:cdefw:LAST:"%.2lf"   LINE2:cdefc#FF0033:"Critical Threshold\\:"   GPRINT:cdefc:LAST:"%.2lf\\l"   COMMENT:"Service\\: local_cpu_nagios"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  CDEF:cdefwt=a,cdefw,GT,cdefw,0,IF LINE:cdefwt#000000 CDEF:cdefct=a,cdefc,GT,cdefc,0,IF LINE:cdefct#000000  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y --height 120 --rigid -u 100 -l 0	\N	\N	\N	\N	\N	2013-01-03 11:50:39.267	2013-01-03 11:50:39.267
3	41	CPU Utilization	\N	\N	\N	\N	\N	2013-01-03 11:50:39.267	2013-01-03 11:50:39.267
3	50	 	\N	\N	\N	\N	\N	2013-01-03 11:50:39.267	2013-01-03 11:50:39.267
3	40	/usr/local/groundwork/rrd/localhost_local_cpu_nagios.rrd	\N	\N	\N	\N	\N	2013-01-03 11:50:39.267	2013-01-03 11:50:39.267
4	50	 	\N	\N	\N	\N	\N	2013-01-03 11:50:39.277	2013-01-03 11:50:39.277
4	41	CPU Utilization	\N	\N	\N	\N	\N	2013-01-03 11:50:39.277	2013-01-03 11:50:39.277
4	40	/usr/local/groundwork/rrd/localhost_local_cpu_perl.rrd	\N	\N	\N	\N	\N	2013-01-03 11:50:39.277	2013-01-03 11:50:39.277
4	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_cpu_perl.rrd":CPU:AVERAGE   DEF:w="/usr/local/groundwork/rrd/localhost_local_cpu_perl.rrd":CPU_wn:AVERAGE   DEF:c="/usr/local/groundwork/rrd/localhost_local_cpu_perl.rrd":CPU_cr:AVERAGE   CDEF:cdefa=a   CDEF:cdefb=a,0.99,*   AREA:cdefa#7D1B7E:"Process CPU Utilization"   GPRINT:cdefa:LAST:Current=%.2lf   GPRINT:cdefa:MIN:min=%.2lf   GPRINT:cdefa:AVERAGE:avg=%.2lf   GPRINT:cdefa:MAX:max="%.2lf\\l"   AREA:cdefb#571B7E:   CDEF:cdefw=w  CDEF:cdefc=c   CDEF:cdefm=cdefc,1.01,*   LINE2:cdefw#FFFF00:"Warning Threshold\\:"   GPRINT:cdefw:LAST:"%.2lf"   LINE2:cdefc#FF0033:"Critical Threshold\\:"   GPRINT:cdefc:LAST:"%.2lf\\l"   COMMENT:"Service\\: local_cpu_perl"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  CDEF:cdefwt=a,cdefw,GT,cdefw,0,IF LINE:cdefwt#000000 CDEF:cdefct=a,cdefc,GT,cdefc,0,IF LINE:cdefct#000000  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y --height 120 --rigid -u 100 -l 0	\N	\N	\N	\N	\N	2013-01-03 11:50:39.277	2013-01-03 11:50:39.277
12	53	%MEM=0.0;20;30	\N	\N	\N	\N	\N	2013-01-03 11:50:43.743	2013-01-03 11:50:43.743
5	25	\N	\N	\N	\N	\N	149	2013-01-03 11:46:44.306	2013-01-03 11:46:44.306
11	53	%MEM=32.0;40;50	\N	\N	\N	\N	\N	2013-01-03 11:50:13.738	2013-01-03 11:50:13.738
7	53	/=2967MB;13339;14123;0;15693	\N	\N	\N	\N	\N	2013-01-03 11:48:58.681	2013-01-03 11:48:58.681
4	1	OK - total %CPU for process perl : 0.2	\N	\N	\N	\N	\N	2013-01-03 11:47:58.737	2013-01-03 11:47:58.737
8	53	load1=0.070;5.000;10.000;0; load5=0.020;4.000;8.000;0; load15=0.000;3.000;6.000;0;	\N	\N	\N	\N	\N	2013-01-03 11:49:28.818	2013-01-03 11:49:28.818
10	1	OK - total %MEM for process httpd : 3.4	\N	\N	\N	\N	\N	2013-01-03 11:49:43.647	2013-01-03 11:49:43.647
7	1	DISK OK - free space: / 11928 MB (80% inode=93%):	\N	\N	\N	\N	\N	2013-01-03 11:48:58.681	2013-01-03 11:48:58.681
10	53	%MEM=3.4;20;30	\N	\N	\N	\N	\N	2013-01-03 11:49:43.648	2013-01-03 11:49:43.648
11	1	OK - total %MEM for process java : 32.0	\N	\N	\N	\N	\N	2013-01-03 11:50:13.737	2013-01-03 11:50:13.737
8	1	OK - load average: 0.07, 0.02, 0.00	\N	\N	\N	\N	\N	2013-01-03 11:49:28.818	2013-01-03 11:49:28.818
5	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_cpu_syslog-ng.rrd":CPU:AVERAGE   DEF:w="/usr/local/groundwork/rrd/localhost_local_cpu_syslog-ng.rrd":CPU_wn:AVERAGE   DEF:c="/usr/local/groundwork/rrd/localhost_local_cpu_syslog-ng.rrd":CPU_cr:AVERAGE   CDEF:cdefa=a   CDEF:cdefb=a,0.99,*   AREA:cdefa#7D1B7E:"Process CPU Utilization"   GPRINT:cdefa:LAST:Current=%.2lf   GPRINT:cdefa:MIN:min=%.2lf   GPRINT:cdefa:AVERAGE:avg=%.2lf   GPRINT:cdefa:MAX:max="%.2lf\\l"   AREA:cdefb#571B7E:   CDEF:cdefw=w  CDEF:cdefc=c   CDEF:cdefm=cdefc,1.01,*   LINE2:cdefw#FFFF00:"Warning Threshold\\:"   GPRINT:cdefw:LAST:"%.2lf"   LINE2:cdefc#FF0033:"Critical Threshold\\:"   GPRINT:cdefc:LAST:"%.2lf\\l"   COMMENT:"Service\\: local_cpu_syslog-ng"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  CDEF:cdefwt=a,cdefw,GT,cdefw,0,IF LINE:cdefwt#000000 CDEF:cdefct=a,cdefc,GT,cdefc,0,IF LINE:cdefct#000000  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y --height 120 --rigid -u 100 -l 0	\N	\N	\N	\N	\N	2013-01-03 11:50:39.287	2013-01-03 11:50:39.287
5	41	CPU Utilization	\N	\N	\N	\N	\N	2013-01-03 11:50:39.287	2013-01-03 11:50:39.287
5	50	 	\N	\N	\N	\N	\N	2013-01-03 11:50:39.287	2013-01-03 11:50:39.287
5	40	/usr/local/groundwork/rrd/localhost_local_cpu_syslog-ng.rrd	\N	\N	\N	\N	\N	2013-01-03 11:50:39.288	2013-01-03 11:50:39.288
7	40	/usr/local/groundwork/rrd/localhost_local_disk_root.rrd	\N	\N	\N	\N	\N	2013-01-03 11:50:39.299	2013-01-03 11:50:39.299
7	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_disk_root.rrd":root:AVERAGE   DEF:w="/usr/local/groundwork/rrd/localhost_local_disk_root.rrd":root_wn:AVERAGE  DEF:c="/usr/local/groundwork/rrd/localhost_local_disk_root.rrd":root_cr:AVERAGE  DEF:m="/usr/local/groundwork/rrd/localhost_local_disk_root.rrd":root_mx:AVERAGE  CDEF:cdefa=a,m,/,100,*   CDEF:cdefb=a,0.99,*  CDEF:cdefw=w  CDEF:cdefc=c  CDEF:cdefm=m    AREA:a#C35617:"Space Used\\: "  LINE:cdefa#FFCC00:  GPRINT:a:LAST:"%.2lf MB\\l"  LINE2:cdefw#FFFF00:"Warning Threshold\\:"  GPRINT:cdefw:AVERAGE:"%.2lf"   LINE2:cdefc#FF0033:"Critical Threshold\\:"   GPRINT:cdefc:AVERAGE:"%.2lf\\l"   GPRINT:cdefa:AVERAGE:"Percentage Space Used"=%.2lf  GPRINT:cdefm:AVERAGE:"Maximum Capacity"=%.2lf  CDEF:cdefws=a,cdefw,GT,a,0,IF  AREA:cdefws#FFFF00  CDEF:cdefcs=a,cdefc,GT,a,0,IF  AREA:cdefcs#FF0033  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y  -l 0	\N	\N	\N	\N	\N	2013-01-03 11:50:39.299	2013-01-03 11:50:39.299
7	41	Disk Utilization	\N	\N	\N	\N	\N	2013-01-03 11:50:39.299	2013-01-03 11:50:39.299
7	50	 	\N	\N	\N	\N	\N	2013-01-03 11:50:39.299	2013-01-03 11:50:39.299
8	40	/usr/local/groundwork/rrd/localhost_local_load.rrd	\N	\N	\N	\N	\N	2013-01-03 11:50:39.311	2013-01-03 11:50:39.311
8	50	 	\N	\N	\N	\N	\N	2013-01-03 11:50:39.31	2013-01-03 11:50:39.31
8	42	rrdtool graph - --imgformat=PNG --slope-mode   DEF:a=/usr/local/groundwork/rrd/localhost_local_load.rrd:load1:AVERAGE   DEF:aw="/usr/local/groundwork/rrd/localhost_local_load.rrd":load1_wn:AVERAGE  DEF:ac="/usr/local/groundwork/rrd/localhost_local_load.rrd":load1_cr:AVERAGE  DEF:b=/usr/local/groundwork/rrd/localhost_local_load.rrd:load5:AVERAGE   DEF:bw="/usr/local/groundwork/rrd/localhost_local_load.rrd":load5_wn:AVERAGE  DEF:bc="/usr/local/groundwork/rrd/localhost_local_load.rrd":load5_cr:AVERAGE  DEF:c=/usr/local/groundwork/rrd/localhost_local_load.rrd:load15:AVERAGE  DEF:cw="/usr/local/groundwork/rrd/localhost_local_load.rrd":load15_wn:AVERAGE  DEF:cc="/usr/local/groundwork/rrd/localhost_local_load.rrd":load15_cr:AVERAGE  CDEF:cdefa=a   CDEF:cdefb=b   CDEF:cdefc=c   AREA:cdefa#FF6600:"One Minute Load Average" GPRINT:cdefa:MIN:min=%.2lf  GPRINT:cdefa:AVERAGE:avg=%.2lf    GPRINT:cdefa:MAX:"max=%.2lf\\l"  LINE:aw#FFCC33:"1 min avg Warning Threshold"   GPRINT:aw:LAST:"%.1lf"  LINE:ac#FF0000:"1 min avg Critical Threshold"  GPRINT:ac:LAST:"%.1lf\\l"  LINE2:cdefb#3300FF:"Five Minute Load Average"  GPRINT:cdefb:MIN:min=%.2lf  GPRINT:cdefb:AVERAGE:avg=%.2lf  GPRINT:cdefb:MAX:"max=%.2lf\\l"   LINE:bw#6666CC:"5 min avg Warning Threshold"  GPRINT:bw:LAST:"%.1lf"  LINE:bc#CC0000:"5 min avg Critical Threshold"  GPRINT:bc:LAST:"%.1lf\\l"  LINE3:cdefc#999999:"Fifteen Minute Load Average"     GPRINT:cdefc:MIN:min=%.2lf  GPRINT:cdefc:AVERAGE:avg=%.2lf   GPRINT:cdefc:MAX:"max=%.2lf\\l"   LINE:cw#CCCC99:"15 min avg Warning Threshold"  GPRINT:cw:LAST:"%.1lf"  LINE:cc#990000:"15 min avg Critical Threshold"  GPRINT:cc:LAST:"%.1lf\\l"  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF-Y --height 120	\N	\N	\N	\N	\N	2013-01-03 11:50:39.31	2013-01-03 11:50:39.31
8	41	Load Averages	\N	\N	\N	\N	\N	2013-01-03 11:50:39.31	2013-01-03 11:50:39.31
10	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_mem_httpd.rrd":MEM:AVERAGE   DEF:w="/usr/local/groundwork/rrd/localhost_local_mem_httpd.rrd":MEM_wn:AVERAGE   DEF:c="/usr/local/groundwork/rrd/localhost_local_mem_httpd.rrd":MEM_cr:AVERAGE   CDEF:cdefa=a  CDEF:cdefb=a,0.99,*   CDEF:cdefw=w   CDEF:cdefc=c   CDEF:cdefm=c,1.05,*  AREA:a#33FFFF   AREA:cdefb#3399FF:"Memory Utilized\\:"   GPRINT:a:LAST:"%.2lf Percent"  GPRINT:cdefa:MIN:min=%.2lf  GPRINT:cdefa:AVERAGE:avg=%.2lf  GPRINT:cdefa:MAX:max="%.2lf\\l"   LINE2:cdefw#FFFF00:"Warning Threshold\\:"   GPRINT:cdefw:LAST:"%.2lf"   LINE2:cdefc#FF0033:"Critical Threshold\\:"   GPRINT:cdefc:LAST:"%.2lf\\l"    COMMENT:"Service\\: local_mem_httpd"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  CDEF:cdefwt=a,cdefw,GT,cdefw,0,IF LINE:cdefwt#000000 CDEF:cdefct=a,cdefc,GT,cdefc,0,IF LINE:cdefct#000000  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -u 100 -l 0 --rigid	\N	\N	\N	\N	\N	2013-01-03 11:50:39.321	2013-01-03 11:50:39.321
10	50	 	\N	\N	\N	\N	\N	2013-01-03 11:50:39.321	2013-01-03 11:50:39.321
10	41	Memory Utilization	\N	\N	\N	\N	\N	2013-01-03 11:50:39.32	2013-01-03 11:50:39.32
10	40	/usr/local/groundwork/rrd/localhost_local_mem_httpd.rrd	\N	\N	\N	\N	\N	2013-01-03 11:50:39.321	2013-01-03 11:50:39.321
11	41	Memory Utilization	\N	\N	\N	\N	\N	2013-01-03 11:50:39.331	2013-01-03 11:50:39.331
11	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_mem_java.rrd":MEM:AVERAGE   DEF:w="/usr/local/groundwork/rrd/localhost_local_mem_java.rrd":MEM_wn:AVERAGE   DEF:c="/usr/local/groundwork/rrd/localhost_local_mem_java.rrd":MEM_cr:AVERAGE   CDEF:cdefa=a  CDEF:cdefb=a,0.99,*   CDEF:cdefw=w   CDEF:cdefc=c   CDEF:cdefm=c,1.05,*  AREA:a#33FFFF   AREA:cdefb#3399FF:"Memory Utilized\\:"   GPRINT:a:LAST:"%.2lf Percent"  GPRINT:cdefa:MIN:min=%.2lf  GPRINT:cdefa:AVERAGE:avg=%.2lf  GPRINT:cdefa:MAX:max="%.2lf\\l"   LINE2:cdefw#FFFF00:"Warning Threshold\\:"   GPRINT:cdefw:LAST:"%.2lf"   LINE2:cdefc#FF0033:"Critical Threshold\\:"   GPRINT:cdefc:LAST:"%.2lf\\l"    COMMENT:"Service\\: local_mem_java"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  CDEF:cdefwt=a,cdefw,GT,cdefw,0,IF LINE:cdefwt#000000 CDEF:cdefct=a,cdefc,GT,cdefc,0,IF LINE:cdefct#000000  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -u 100 -l 0 --rigid	\N	\N	\N	\N	\N	2013-01-03 11:50:39.331	2013-01-03 11:50:39.331
11	40	/usr/local/groundwork/rrd/localhost_local_mem_java.rrd	\N	\N	\N	\N	\N	2013-01-03 11:50:39.331	2013-01-03 11:50:39.331
11	50	 	\N	\N	\N	\N	\N	2013-01-03 11:50:39.331	2013-01-03 11:50:39.331
12	41	Memory Utilization	\N	\N	\N	\N	\N	2013-01-03 11:50:39.341	2013-01-03 11:50:39.341
12	1	OK - total %MEM for process nagios : 0.0	\N	\N	\N	\N	\N	2013-01-03 11:50:43.743	2013-01-03 11:50:43.743
25	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.521	2013-01-03 13:36:48.521
25	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.521	2013-01-03 13:36:48.521
25	26	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.521	2013-01-03 13:36:48.521
25	10	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.521	2013-01-03 13:36:48.521
25	19	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.521	2013-01-03 13:36:48.521
25	43	\N	\N	\N	\N	1	\N	2013-01-03 13:36:48.521	2013-01-03 13:36:48.521
25	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.522	2013-01-03 13:36:48.522
25	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.521	2013-01-03 13:36:48.521
12	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_mem_nagios.rrd":MEM:AVERAGE   DEF:w="/usr/local/groundwork/rrd/localhost_local_mem_nagios.rrd":MEM_wn:AVERAGE   DEF:c="/usr/local/groundwork/rrd/localhost_local_mem_nagios.rrd":MEM_cr:AVERAGE   CDEF:cdefa=a  CDEF:cdefb=a,0.99,*   CDEF:cdefw=w   CDEF:cdefc=c   CDEF:cdefm=c,1.05,*  AREA:a#33FFFF   AREA:cdefb#3399FF:"Memory Utilized\\:"   GPRINT:a:LAST:"%.2lf Percent"  GPRINT:cdefa:MIN:min=%.2lf  GPRINT:cdefa:AVERAGE:avg=%.2lf  GPRINT:cdefa:MAX:max="%.2lf\\l"   LINE2:cdefw#FFFF00:"Warning Threshold\\:"   GPRINT:cdefw:LAST:"%.2lf"   LINE2:cdefc#FF0033:"Critical Threshold\\:"   GPRINT:cdefc:LAST:"%.2lf\\l"    COMMENT:"Service\\: local_mem_nagios"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  CDEF:cdefwt=a,cdefw,GT,cdefw,0,IF LINE:cdefwt#000000 CDEF:cdefct=a,cdefc,GT,cdefc,0,IF LINE:cdefct#000000  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -u 100 -l 0 --rigid	\N	\N	\N	\N	\N	2013-01-03 11:50:39.342	2013-01-03 11:50:39.342
12	40	/usr/local/groundwork/rrd/localhost_local_mem_nagios.rrd	\N	\N	\N	\N	\N	2013-01-03 11:50:39.342	2013-01-03 11:50:39.342
12	50	 	\N	\N	\N	\N	\N	2013-01-03 11:50:39.342	2013-01-03 11:50:39.342
14	1	OK - total %MEM for process syslog-ng : 0.1	\N	\N	\N	\N	\N	2013-01-03 11:51:43.799	2013-01-03 11:51:43.799
14	53	%MEM=0.1;20;30	\N	\N	\N	\N	\N	2013-01-03 11:51:43.799	2013-01-03 11:51:43.799
16	1	PROCS OK: 1 process with args 'groundwork/foundation/container/lib/jboss'	\N	\N	\N	\N	\N	2013-01-03 11:52:58.778	2013-01-03 11:52:58.778
6	53	users=1;5;20;0	\N	\N	\N	\N	\N	2013-01-03 11:54:28.812	2013-01-03 11:54:28.812
6	1	USERS OK - 1 users currently logged in	\N	\N	\N	\N	\N	2013-01-03 11:54:28.811	2013-01-03 11:54:28.811
13	41	Memory Utilization	\N	\N	\N	\N	\N	2013-01-03 11:55:39.456	2013-01-03 11:55:39.456
13	40	/usr/local/groundwork/rrd/localhost_local_mem_perl.rrd	\N	\N	\N	\N	\N	2013-01-03 11:55:39.456	2013-01-03 11:55:39.456
13	50	 	\N	\N	\N	\N	\N	2013-01-03 11:55:39.456	2013-01-03 11:55:39.456
13	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_mem_perl.rrd":MEM:AVERAGE   DEF:w="/usr/local/groundwork/rrd/localhost_local_mem_perl.rrd":MEM_wn:AVERAGE   DEF:c="/usr/local/groundwork/rrd/localhost_local_mem_perl.rrd":MEM_cr:AVERAGE   CDEF:cdefa=a  CDEF:cdefb=a,0.99,*   CDEF:cdefw=w   CDEF:cdefc=c   CDEF:cdefm=c,1.05,*  AREA:a#33FFFF   AREA:cdefb#3399FF:"Memory Utilized\\:"   GPRINT:a:LAST:"%.2lf Percent"  GPRINT:cdefa:MIN:min=%.2lf  GPRINT:cdefa:AVERAGE:avg=%.2lf  GPRINT:cdefa:MAX:max="%.2lf\\l"   LINE2:cdefw#FFFF00:"Warning Threshold\\:"   GPRINT:cdefw:LAST:"%.2lf"   LINE2:cdefc#FF0033:"Critical Threshold\\:"   GPRINT:cdefc:LAST:"%.2lf\\l"    COMMENT:"Service\\: local_mem_perl"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  CDEF:cdefwt=a,cdefw,GT,cdefw,0,IF LINE:cdefwt#000000 CDEF:cdefct=a,cdefc,GT,cdefc,0,IF LINE:cdefct#000000  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -u 100 -l 0 --rigid	\N	\N	\N	\N	\N	2013-01-03 11:55:39.456	2013-01-03 11:55:39.456
14	41	Memory Utilization	\N	\N	\N	\N	\N	2013-01-03 11:55:39.466	2013-01-03 11:55:39.466
14	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_mem_syslog-ng.rrd":MEM:AVERAGE   DEF:w="/usr/local/groundwork/rrd/localhost_local_mem_syslog-ng.rrd":MEM_wn:AVERAGE   DEF:c="/usr/local/groundwork/rrd/localhost_local_mem_syslog-ng.rrd":MEM_cr:AVERAGE   CDEF:cdefa=a  CDEF:cdefb=a,0.99,*   CDEF:cdefw=w   CDEF:cdefc=c   CDEF:cdefm=c,1.05,*  AREA:a#33FFFF   AREA:cdefb#3399FF:"Memory Utilized\\:"   GPRINT:a:LAST:"%.2lf Percent"  GPRINT:cdefa:MIN:min=%.2lf  GPRINT:cdefa:AVERAGE:avg=%.2lf  GPRINT:cdefa:MAX:max="%.2lf\\l"   LINE2:cdefw#FFFF00:"Warning Threshold\\:"   GPRINT:cdefw:LAST:"%.2lf"   LINE2:cdefc#FF0033:"Critical Threshold\\:"   GPRINT:cdefc:LAST:"%.2lf\\l"    COMMENT:"Service\\: local_mem_syslog-ng"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  CDEF:cdefwt=a,cdefw,GT,cdefw,0,IF LINE:cdefwt#000000 CDEF:cdefct=a,cdefc,GT,cdefc,0,IF LINE:cdefct#000000  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -u 100 -l 0 --rigid	\N	\N	\N	\N	\N	2013-01-03 11:55:39.466	2013-01-03 11:55:39.466
14	40	/usr/local/groundwork/rrd/localhost_local_mem_syslog-ng.rrd	\N	\N	\N	\N	\N	2013-01-03 11:55:39.466	2013-01-03 11:55:39.466
14	50	 	\N	\N	\N	\N	\N	2013-01-03 11:55:39.466	2013-01-03 11:55:39.466
9	40	/usr/local/groundwork/rrd/localhost_local_memory.rrd	\N	\N	\N	\N	\N	2013-01-03 11:55:39.475	2013-01-03 11:55:39.475
9	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_memory.rrd":pct:AVERAGE   DEF:w="/usr/local/groundwork/rrd/localhost_local_memory.rrd":pct_wn:AVERAGE   DEF:c="/usr/local/groundwork/rrd/localhost_local_memory.rrd":pct_cr:AVERAGE   CDEF:cdefa=a  CDEF:cdefb=a,0.99,*   CDEF:cdefw=w   CDEF:cdefc=c   CDEF:cdefm=c,1.05,*  AREA:a#33FFFF   AREA:cdefb#3399FF:"Memory Utilized\\:"   GPRINT:a:LAST:"%.2lf Percent"  GPRINT:cdefa:MIN:min=%.2lf  GPRINT:cdefa:AVERAGE:avg=%.2lf  GPRINT:cdefa:MAX:max="%.2lf\\l"   LINE2:cdefw#FFFF00:"Warning Threshold\\:"   GPRINT:cdefw:LAST:"%.2lf"   LINE2:cdefc#FF0033:"Critical Threshold\\:"   GPRINT:cdefc:LAST:"%.2lf\\l"    COMMENT:"Service\\: local_memory"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  CDEF:cdefwt=a,cdefw,GT,cdefw,0,IF LINE:cdefwt#000000 CDEF:cdefct=a,cdefc,GT,cdefc,0,IF LINE:cdefct#000000  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -u 100 -l 0 --rigid	\N	\N	\N	\N	\N	2013-01-03 11:55:39.475	2013-01-03 11:55:39.475
9	41	Memory Utilization	\N	\N	\N	\N	\N	2013-01-03 11:55:39.475	2013-01-03 11:55:39.475
9	50	 	\N	\N	\N	\N	\N	2013-01-03 11:55:39.475	2013-01-03 11:55:39.475
15	50	 	\N	\N	\N	\N	\N	2013-01-03 11:55:39.485	2013-01-03 11:55:39.485
15	41	Nagios Service Check Latency in Seconds	\N	\N	\N	\N	\N	2013-01-03 11:55:39.485	2013-01-03 11:55:39.485
15	40	/usr/local/groundwork/rrd/localhost_local_nagios_latency.rrd	\N	\N	\N	\N	\N	2013-01-03 11:55:39.485	2013-01-03 11:55:39.485
20	40	/usr/local/groundwork/rrd/localhost_tcp_http.rrd	\N	\N	\N	\N	\N	2013-01-03 11:55:39.545	2013-01-03 11:55:39.545
25	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.521	2013-01-03 13:36:48.521
20	53	time=0.001047s;3.000000;5.000000;0.000000 size=1268B;;;0	\N	\N	\N	\N	\N	2013-01-03 11:55:28.865	2013-01-03 11:55:28.865
16	25	\N	\N	\N	\N	\N	379	2013-01-03 11:46:44.057	2013-01-03 11:46:44.057
19	53	time=0.000648s;5.000000;9.000000;0.000000;10.000000	\N	\N	\N	\N	\N	2013-01-03 11:54:58.858	2013-01-03 11:54:58.858
17	1	NAGIOS OK: 2 processes, status log updated 13 seconds ago	\N	\N	\N	\N	\N	2013-01-03 11:53:28.846	2013-01-03 11:53:28.846
15	1	OK: Nagios latency: Min=0.000, Max=0.979, Avg=0.350	\N	\N	\N	\N	\N	2013-01-03 11:52:43.844	2013-01-03 11:52:43.844
15	53	Min=0.000;;;; Max=0.979;;;; Avg=0.350;300;900;;	\N	\N	\N	\N	\N	2013-01-03 11:52:43.844	2013-01-03 11:52:43.844
20	1	HTTP OK: HTTP/1.1 200 OK - 1268 bytes in 0.001 second response time	\N	\N	\N	\N	\N	2013-01-03 11:55:28.865	2013-01-03 11:55:28.865
18	1	SWAP OK - 100% free (4019 MB out of 4031 MB)	\N	\N	\N	\N	\N	2013-01-03 11:53:58.907	2013-01-03 11:53:58.907
18	53	swap=4019MB;806;403;0;4031	\N	\N	\N	\N	\N	2013-01-03 11:53:58.907	2013-01-03 11:53:58.907
9	1	Memory OK - 59.5% (1220816 kB) used	\N	\N	\N	\N	\N	2013-01-03 11:52:13.75	2013-01-03 11:52:13.75
19	1	TCP OK - 0.001 second response time on port 4913	\N	\N	\N	\N	\N	2013-01-03 11:54:58.858	2013-01-03 11:54:58.858
9	53	pct=59.5;95;99;0;100	\N	\N	\N	\N	\N	2013-01-03 11:52:13.75	2013-01-03 11:52:13.75
25	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.522	2013-01-03 13:36:48.522
25	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.521	2013-01-03 13:36:48.521
25	14	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.521	2013-01-03 13:36:48.521
15	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_nagios_latency.rrd":min:AVERAGE   DEF:b="/usr/local/groundwork/rrd/localhost_local_nagios_latency.rrd":max:AVERAGE   DEF:c="/usr/local/groundwork/rrd/localhost_local_nagios_latency.rrd":avg:AVERAGE   CDEF:cdefa=a  CDEF:cdefb=b    CDEF:cdefc=c   AREA:cdefb#66FFFF:"Maximum Latency\\: "  GPRINT:cdefb:LAST:"%.2lf sec"  GPRINT:cdefb:MIN:min=%.2lf   GPRINT:cdefb:AVERAGE:avg=%.2lf     GPRINT:cdefb:MAX:max="%.2lf\\l"   LINE:cdefb#999999  AREA:cdefc#006699:"Average Latency\\: "   GPRINT:c:LAST:"%.2lf sec"  GPRINT:cdefc:MIN:min=%.2lf   GPRINT:cdefc:AVERAGE:avg=%.2lf     GPRINT:cdefc:MAX:max="%.2lf\\l"    LINE:cdefc#999999  AREA:a#333366:"Minimum Latency\\: "   GPRINT:a:LAST:"%.2lf sec"  GPRINT:cdefa:MIN:min=%.2lf   GPRINT:cdefa:AVERAGE:avg=%.2lf     GPRINT:cdefa:MAX:max="%.2lf\\l"   LINE:cdefa#999999   -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -l 0	\N	\N	\N	\N	\N	2013-01-03 11:55:39.485	2013-01-03 11:55:39.485
16	42	rrdtool graph - DEF:a="/usr/local/groundwork/rrd/localhost_local_process_gw_listener.rrd":number:AVERAGE CDEF:cdefa=a AREA:cdefa#0000FF:"Number of Processes" GPRINT:cdefa:MIN:min=%.2lf GPRINT:cdefa:AVERAGE:avg=%.2lf GPRINT:cdefa:MAX:max=%.2lf  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y --height 120 -l 0	\N	\N	\N	\N	\N	2013-01-03 11:55:39.496	2013-01-03 11:55:39.496
16	40	/usr/local/groundwork/rrd/localhost_local_process_gw_listener.rrd	\N	\N	\N	\N	\N	2013-01-03 11:55:39.496	2013-01-03 11:55:39.496
16	50	 	\N	\N	\N	\N	\N	2013-01-03 11:55:39.496	2013-01-03 11:55:39.496
16	41	Process Count	\N	\N	\N	\N	\N	2013-01-03 11:55:39.496	2013-01-03 11:55:39.496
17	50	 	\N	\N	\N	\N	\N	2013-01-03 11:55:39.504	2013-01-03 11:55:39.504
17	40	/usr/local/groundwork/rrd/localhost_local_process_nagios.rrd	\N	\N	\N	\N	\N	2013-01-03 11:55:39.504	2013-01-03 11:55:39.504
17	41	Process Count	\N	\N	\N	\N	\N	2013-01-03 11:55:39.504	2013-01-03 11:55:39.504
17	42	rrdtool graph - DEF:a="/usr/local/groundwork/rrd/localhost_local_process_nagios.rrd":number:AVERAGE CDEF:cdefa=a AREA:cdefa#0000FF:"Number of Processes" GPRINT:cdefa:MIN:min=%.2lf GPRINT:cdefa:AVERAGE:avg=%.2lf GPRINT:cdefa:MAX:max=%.2lf  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y --height 120 -l 0	\N	\N	\N	\N	\N	2013-01-03 11:55:39.504	2013-01-03 11:55:39.504
18	40	/usr/local/groundwork/rrd/localhost_local_swap.rrd	\N	\N	\N	\N	\N	2013-01-03 11:55:39.514	2013-01-03 11:55:39.514
18	41	Swap Utilization	\N	\N	\N	\N	\N	2013-01-03 11:55:39.514	2013-01-03 11:55:39.514
18	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_local_swap.rrd":swap:AVERAGE   DEF:w="/usr/local/groundwork/rrd/localhost_local_swap.rrd":swap_wn:AVERAGE   DEF:c="/usr/local/groundwork/rrd/localhost_local_swap.rrd":swap_cr:AVERAGE   DEF:m="/usr/local/groundwork/rrd/localhost_local_swap.rrd":swap_mx:AVERAGE   CDEF:cdefa=a,m,/,100,*   CDEF:cdefw=w  CDEF:cdefc=c  CDEF:cdefm=m   AREA:a#9900FF:"Swap Free\\: "   LINE2:a#6600FF:   GPRINT:a:LAST:"%.2lf MB\\l"   CDEF:cdefws=a,cdefw,LT,a,0,IF  AREA:cdefws#FFFF00  CDEF:cdefcs=a,cdefc,LT,a,0,IF  AREA:cdefcs#FF0033   LINE2:cdefw#FFFF00:"Warning Threshold\\:"   GPRINT:cdefw:AVERAGE:"%.2lf"   LINE2:cdefc#FF0033:"Critical Threshold\\:"   GPRINT:cdefc:AVERAGE:"%.2lf\\l"   GPRINT:cdefa:AVERAGE:"Percentage Swap Free"=%.2lf   GPRINT:cdefm:AVERAGE:"Total Swap Space=%.2lf"   -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -l 0	\N	\N	\N	\N	\N	2013-01-03 11:55:39.514	2013-01-03 11:55:39.514
18	50	 	\N	\N	\N	\N	\N	2013-01-03 11:55:39.514	2013-01-03 11:55:39.514
6	40	/usr/local/groundwork/rrd/localhost_local_users.rrd	\N	\N	\N	\N	\N	2013-01-03 11:55:39.523	2013-01-03 11:55:39.523
6	50	 	\N	\N	\N	\N	\N	2013-01-03 11:55:39.523	2013-01-03 11:55:39.523
6	41	Current Users	\N	\N	\N	\N	\N	2013-01-03 11:55:39.523	2013-01-03 11:55:39.523
6	42	rrdtool graph - --imgformat=PNG --slope-mode DEF:a=/usr/local/groundwork/rrd/localhost_local_users.rrd:users:AVERAGE  CDEF:cdefa=a  AREA:cdefa#0033CC:"Number of logged in users" -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF-Y --height 120	\N	\N	\N	\N	\N	2013-01-03 11:55:39.523	2013-01-03 11:55:39.523
19	41	Foundation Listener Response Time	\N	\N	\N	\N	\N	2013-01-03 11:55:39.534	2013-01-03 11:55:39.534
19	50	 	\N	\N	\N	\N	\N	2013-01-03 11:55:39.534	2013-01-03 11:55:39.534
19	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_tcp_gw_listener.rrd":time:AVERAGE  DEF:w="/usr/local/groundwork/rrd/localhost_tcp_gw_listener.rrd":time_wn:AVERAGE  DEF:c="/usr/local/groundwork/rrd/localhost_tcp_gw_listener.rrd":time_cr:AVERAGE  CDEF:cdefa=a CDEF:cdefb=a,0.99,*  CDEF:cdefw=w  CDEF:cdefc=c   AREA:a#33FFFF  AREA:cdefb#00CF00:"Response Time\\:"  GPRINT:a:LAST:"%.4lf Seconds"    GPRINT:a:MIN:min=%.2lf  GPRINT:a:AVERAGE:avg=%.2lf  GPRINT:a:MAX:max="%.2lf\\l"  LINE2:cdefw#FFFF00:"Warning Threshold\\:"  GPRINT:cdefw:LAST:"%.2lf"  LINE2:cdefc#FF0033:"Critical Threshold\\:"  GPRINT:cdefc:LAST:"%.2lf\\l"    COMMENT:"Host\\: localhost\\l" COMMENT:"Service\\: tcp_gw_listener"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -l 0	\N	\N	\N	\N	\N	2013-01-03 11:55:39.534	2013-01-03 11:55:39.534
19	40	/usr/local/groundwork/rrd/localhost_tcp_gw_listener.rrd	\N	\N	\N	\N	\N	2013-01-03 11:55:39.534	2013-01-03 11:55:39.534
20	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_tcp_http.rrd":time:AVERAGE  DEF:w="/usr/local/groundwork/rrd/localhost_tcp_http.rrd":time_wn:AVERAGE  DEF:c="/usr/local/groundwork/rrd/localhost_tcp_http.rrd":time_cr:AVERAGE  CDEF:cdefa=a CDEF:cdefb=a,0.99,*  CDEF:cdefw=w  CDEF:cdefc=c   AREA:a#33FFFF  AREA:cdefb#00CF00:"Response Time\\:"  GPRINT:a:LAST:"%.4lf Seconds"    GPRINT:a:MIN:min=%.2lf  GPRINT:a:AVERAGE:avg=%.2lf  GPRINT:a:MAX:max="%.2lf\\l"  LINE2:cdefw#FFFF00:"Warning Threshold\\:"  GPRINT:cdefw:LAST:"%.2lf"  LINE2:cdefc#FF0033:"Critical Threshold\\:"  GPRINT:cdefc:LAST:"%.2lf\\l"    COMMENT:"Host\\: localhost\\l" COMMENT:"Service\\: tcp_http"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -l 0	\N	\N	\N	\N	\N	2013-01-03 11:55:39.545	2013-01-03 11:55:39.545
20	50	 	\N	\N	\N	\N	\N	2013-01-03 11:55:39.545	2013-01-03 11:55:39.545
20	41	HTTP Response Time	\N	\N	\N	\N	\N	2013-01-03 11:55:39.545	2013-01-03 11:55:39.545
21	1	TCP OK - 0.001 second response time on port 5667	\N	\N	\N	\N	\N	2013-01-03 11:55:58.814	2013-01-03 11:55:58.814
21	41	NSCA Response Time	\N	\N	\N	\N	\N	2013-01-03 12:00:39.521	2013-01-03 12:00:39.521
21	50	 	\N	\N	\N	\N	\N	2013-01-03 12:00:39.521	2013-01-03 12:00:39.521
21	42	rrdtool graph -   DEF:a="/usr/local/groundwork/rrd/localhost_tcp_nsca.rrd":time:AVERAGE  DEF:w="/usr/local/groundwork/rrd/localhost_tcp_nsca.rrd":time_wn:AVERAGE  DEF:c="/usr/local/groundwork/rrd/localhost_tcp_nsca.rrd":time_cr:AVERAGE  CDEF:cdefa=a CDEF:cdefb=a,0.99,*  CDEF:cdefw=w CDEF:cdefc=c  AREA:a#33FFFF AREA:cdefb#00CF00:"Response Time\\:"  GPRINT:a:LAST:"%.4lf Seconds"    GPRINT:a:MIN:min=%.4lf  GPRINT:a:AVERAGE:avg=%.4lf  GPRINT:a:MAX:max="%.4lf\\l"  LINE2:cdefw#FFFF00:"Warning Threshold\\:"  GPRINT:cdefw:LAST:"%.2lf"  LINE2:cdefc#FF0033:"Critical Threshold\\:"  GPRINT:cdefc:LAST:"%.2lf\\l"    COMMENT:"Host\\: localhost\\l" COMMENT:"Service\\: tcp_nsca"  CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -l 0	\N	\N	\N	\N	\N	2013-01-03 12:00:39.521	2013-01-03 12:00:39.521
21	40	/usr/local/groundwork/rrd/localhost_tcp_nsca.rrd	\N	\N	\N	\N	\N	2013-01-03 12:00:39.521	2013-01-03 12:00:39.521
4	53	%CPU=0.5;40;50	\N	\N	\N	\N	\N	2013-01-03 11:47:58.737	2013-01-03 11:47:58.737
23	26	\N	\N	\N	\N	\N	4	2013-01-03 13:36:48.488	2013-01-03 13:36:48.488
23	25	\N	\N	\N	\N	\N	374	2013-01-03 13:36:48.488	2013-01-03 13:36:48.488
23	14	\N	\N	\N	\N	\N	5.99000000000000021	2013-01-03 13:36:48.489	2013-01-03 13:36:48.489
23	43	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.489	2013-01-03 13:36:48.489
22	25	\N	\N	\N	\N	\N	553	2013-01-03 13:36:48.469	2013-01-03 13:36:48.469
22	14	\N	\N	\N	\N	\N	5.99000000000000021	2013-01-03 13:36:48.47	2013-01-03 13:36:48.47
21	53	time=0.000738s;5.000000;9.000000;0.000000;10.000000	\N	\N	\N	\N	\N	2013-01-03 11:55:58.814	2013-01-03 11:55:58.814
4	26	\N	\N	\N	\N	\N	254	2013-01-03 11:46:44.553	2013-01-03 11:46:44.553
22	26	\N	\N	\N	\N	\N	4	2013-01-03 13:36:48.469	2013-01-03 13:36:48.469
22	43	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.47	2013-01-03 13:36:48.47
4	25	\N	\N	\N	\N	\N	636	2013-01-03 11:46:44.552	2013-01-03 11:46:44.552
22	20	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.469	2013-01-03 13:36:48.469
22	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.47	2013-01-03 13:36:48.47
22	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.469	2013-01-03 13:36:48.469
22	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.47	2013-01-03 13:36:48.47
22	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.47	2013-01-03 13:36:48.47
22	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.47	2013-01-03 13:36:48.47
22	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.47	2013-01-03 13:36:48.47
22	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.469	2013-01-03 13:36:48.469
22	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.47	2013-01-03 13:36:48.47
22	19	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.469	2013-01-03 13:36:48.469
22	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.47	2013-01-03 13:36:48.47
23	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.488	2013-01-03 13:36:48.488
23	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.489	2013-01-03 13:36:48.489
23	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.488	2013-01-03 13:36:48.488
23	19	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.488	2013-01-03 13:36:48.488
23	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.489	2013-01-03 13:36:48.489
23	20	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.488	2013-01-03 13:36:48.488
23	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.488	2013-01-03 13:36:48.488
23	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.488	2013-01-03 13:36:48.488
23	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.488	2013-01-03 13:36:48.488
23	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.488	2013-01-03 13:36:48.488
23	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.489	2013-01-03 13:36:48.489
24	26	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	10	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	25	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	20	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	19	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	14	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	43	\N	\N	\N	\N	1	\N	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
24	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.505	2013-01-03 13:36:48.505
25	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.521	2013-01-03 13:36:48.521
25	20	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.521	2013-01-03 13:36:48.521
25	25	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.521	2013-01-03 13:36:48.521
27	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.538	2013-01-03 13:36:48.538
27	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.538	2013-01-03 13:36:48.538
27	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.537	2013-01-03 13:36:48.537
27	19	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.537	2013-01-03 13:36:48.537
27	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.537	2013-01-03 13:36:48.537
27	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.538	2013-01-03 13:36:48.538
27	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.538	2013-01-03 13:36:48.538
27	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.537	2013-01-03 13:36:48.537
27	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.537	2013-01-03 13:36:48.537
27	20	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.537	2013-01-03 13:36:48.537
27	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.537	2013-01-03 13:36:48.537
26	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
26	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
26	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
26	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
26	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
26	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
26	19	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
26	20	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
26	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
26	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.555	2013-01-03 13:36:48.555
26	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
28	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.57	2013-01-03 13:36:48.57
28	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.57	2013-01-03 13:36:48.57
28	19	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.57	2013-01-03 13:36:48.57
28	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.571	2013-01-03 13:36:48.571
28	20	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.57	2013-01-03 13:36:48.57
28	14	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.571	2013-01-03 13:36:48.571
28	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.57	2013-01-03 13:36:48.57
28	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.57	2013-01-03 13:36:48.57
28	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.571	2013-01-03 13:36:48.571
28	43	\N	\N	\N	\N	1	\N	2013-01-03 13:36:48.571	2013-01-03 13:36:48.571
28	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.571	2013-01-03 13:36:48.571
28	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.57	2013-01-03 13:36:48.57
28	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.571	2013-01-03 13:36:48.571
30	19	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
30	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
30	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
30	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
30	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
30	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
30	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.588	2013-01-03 13:36:48.588
30	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
30	20	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
30	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
30	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
29	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.609	2013-01-03 13:36:48.609
29	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
29	19	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
29	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
29	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
29	20	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
29	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
29	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
29	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
29	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
29	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
31	20	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.624	2013-01-03 13:36:48.624
31	10	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.624	2013-01-03 13:36:48.624
31	43	\N	\N	\N	\N	1	\N	2013-01-03 13:36:48.624	2013-01-03 13:36:48.624
31	9	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.624	2013-01-03 13:36:48.624
31	8	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.625	2013-01-03 13:36:48.625
31	7	\N	\N	\N	\N	\N	\N	2013-01-03 13:36:48.625	2013-01-03 13:36:48.625
31	44	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.624	2013-01-03 13:36:48.624
31	48	 	\N	\N	\N	\N	\N	2013-01-03 13:36:48.624	2013-01-03 13:36:48.624
31	12	\N	\N	f	\N	\N	\N	2013-01-03 13:36:48.624	2013-01-03 13:36:48.624
31	14	\N	\N	\N	\N	\N	0	2013-01-03 13:36:48.624	2013-01-03 13:36:48.624
31	11	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.625	2013-01-03 13:36:48.625
31	19	\N	\N	t	\N	\N	\N	2013-01-03 13:36:48.624	2013-01-03 13:36:48.624
31	15	\N	\N	\N	0	\N	\N	2013-01-03 13:36:48.624	2013-01-03 13:36:48.624
27	1	CRITICAL	\N	\N	\N	\N	\N	2013-01-03 13:40:18.645	2013-01-03 13:40:18.645
31	1	OK	\N	\N	\N	\N	\N	2013-01-03 13:43:48.854	2013-01-03 13:43:48.854
31	25	\N	\N	\N	\N	\N	418	2013-01-03 13:36:48.624	2013-01-03 13:36:48.624
26	1	WARNING	\N	\N	\N	\N	\N	2013-01-03 13:40:33.68	2013-01-03 13:40:33.68
28	25	\N	\N	\N	\N	\N	622	2013-01-03 13:36:48.57	2013-01-03 13:36:48.57
29	14	\N	\N	\N	\N	\N	5.99000000000000021	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
23	1	UNKNOWN	\N	\N	\N	\N	\N	2013-01-03 13:40:48.624	2013-01-03 13:40:48.624
29	25	\N	\N	\N	\N	\N	535	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
27	43	\N	\N	\N	\N	2	\N	2013-01-03 13:36:48.538	2013-01-03 13:36:48.538
26	43	\N	\N	\N	\N	2	\N	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
13	53	%MEM=15.3;20;30	\N	\N	\N	\N	\N	2013-01-03 11:51:13.71	2013-01-03 11:51:13.71
31	26	\N	\N	\N	\N	\N	4	2013-01-03 13:36:48.624	2013-01-03 13:36:48.624
29	1	CRITICAL	\N	\N	\N	\N	\N	2013-01-03 13:44:03.925	2013-01-03 13:44:03.925
29	43	\N	\N	\N	\N	3	\N	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
30	1	UNKNOWN	\N	\N	\N	\N	\N	2013-01-03 13:47:19.006	2013-01-03 13:47:19.006
22	1	WARNING	\N	\N	\N	\N	\N	2013-01-03 13:44:18.847	2013-01-03 13:44:18.847
29	26	\N	\N	\N	\N	\N	4	2013-01-03 13:36:48.608	2013-01-03 13:36:48.608
30	26	\N	\N	\N	\N	\N	4	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
28	1	OK	\N	\N	\N	\N	\N	2013-01-03 13:47:34.005	2013-01-03 13:47:34.005
30	14	\N	\N	\N	\N	\N	6.12000000000000011	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
30	25	\N	\N	\N	\N	\N	143	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
13	1	OK - total %MEM for process perl : 16.1	\N	\N	\N	\N	\N	2013-01-03 11:51:13.71	2013-01-03 11:51:13.71
13	25	\N	\N	\N	\N	\N	274	2013-01-03 11:46:44.659	2013-01-03 11:46:44.659
28	26	\N	\N	\N	\N	\N	4	2013-01-03 13:36:48.57	2013-01-03 13:36:48.57
13	26	\N	\N	\N	\N	\N	269	2013-01-03 11:46:44.66	2013-01-03 11:46:44.66
30	43	\N	\N	\N	\N	2	\N	2013-01-03 13:36:48.587	2013-01-03 13:36:48.587
27	14	\N	\N	\N	\N	\N	5.99000000000000021	2013-01-03 13:36:48.538	2013-01-03 13:36:48.538
27	25	\N	\N	\N	\N	\N	277	2013-01-03 13:36:48.537	2013-01-03 13:36:48.537
27	26	\N	\N	\N	\N	\N	4	2013-01-03 13:36:48.537	2013-01-03 13:36:48.537
26	14	\N	\N	\N	\N	\N	5.99000000000000021	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
26	25	\N	\N	\N	\N	\N	296	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
26	26	\N	\N	\N	\N	\N	5	2013-01-03 13:36:48.554	2013-01-03 13:36:48.554
\.


--
-- Data for Name: severity; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY severity (severityid, name, description) FROM stdin;
1	FATAL	Severity FATAL
2	HIGH	Severity HIGH
3	LOW	Severity LOW
4	WARNING	Severity WARNING
5	PERFORMANCE	Severity PERFORMANCE
6	STATISTIC	Severity STATISTIC
7	SERIOUS	Severity SERIOUS
8	CRITICAL	GroundWork Severity CRITICAL. Also MIB standard
9	OK	GroundWork Severity OK
10	UNKNOWN	GroundWork Severity UNKNOWN
11	NORMAL	Standard MIB type for Severity
12	MAJOR	Standard MIB type for MonitorStatus
13	MINOR	Standard MIB type for MonitorStatus
14	INFORMATIONAL	Standard MIB type
15	UP	Severity UP
16	DOWN	Severity DOWN
17	UNREACHABLE	Severity unreachable
18	ACKNOWLEDGEMENT (WARNING)	ACKNOWLEDGEMENT (WARNING)
19	ACKNOWLEDGEMENT (CRITICAL)	ACKNOWLEDGEMENT (CRITICAL)
20	ACKNOWLEDGEMENT (DOWN)	ACKNOWLEDGEMENT (DOWN)
21	ACKNOWLEDGEMENT (UP)	ACKNOWLEDGEMENT (UP)
22	ACKNOWLEDGEMENT (OK)	ACKNOWLEDGEMENT (OK)
23	ACKNOWLEDGEMENT (UNREACHABLE)	ACKNOWLEDGEMENT (UNREACHABLE)
24	ACKNOWLEDGEMENT (UNKNOWN)	ACKNOWLEDGEMENT (UNKNOWN)
25	ACKNOWLEDGEMENT (PENDING)	ACKNOWLEDGEMENT (PENDING)
26	ACKNOWLEDGEMENT (MAINTENANCE)	ACKNOWLEDGEMENT (MAINTENANCE)
\.


--
-- Data for Name: statetype; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY statetype (statetypeid, name, description) FROM stdin;
1	SOFT	State Soft
2	HARD	State Hard
3	UNKNOWN	State UNKNOWN
\.


--
-- Data for Name: typerule; Type: TABLE DATA; Schema: public; Owner: collage
--

COPY typerule (typeruleid, name, description) FROM stdin;
1	NETWORK	Network
2	HARDWARE	Hardware
3	SERVICE	Service
4	APPLICATION	Application
5	FILTERED	Message filtered by GroundWork-Bridge
6	UNDEFINED	Undefined type
7	NAGIOS_LOG	NAGIOS_LOG type
8	ACKNOWLEDGE	ACKNOWLEDGE type
9	UNACKNOWLEDGE	UNACKNOWLEDGE type
\.


--
-- Name: action_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY action
    ADD CONSTRAINT action_name_key UNIQUE (name);


--
-- Name: action_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY action
    ADD CONSTRAINT action_pkey PRIMARY KEY (actionid);


--
-- Name: actionparameter_actionid_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY actionparameter
    ADD CONSTRAINT actionparameter_actionid_name_key UNIQUE (actionid, name);


--
-- Name: actionparameter_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY actionparameter
    ADD CONSTRAINT actionparameter_pkey PRIMARY KEY (actionparameterid);


--
-- Name: actionproperty_actionid_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY actionproperty
    ADD CONSTRAINT actionproperty_actionid_name_key UNIQUE (actionid, name);


--
-- Name: actionproperty_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY actionproperty
    ADD CONSTRAINT actionproperty_pkey PRIMARY KEY (actionpropertyid);


--
-- Name: actiontype_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY actiontype
    ADD CONSTRAINT actiontype_name_key UNIQUE (name);


--
-- Name: actiontype_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY actiontype
    ADD CONSTRAINT actiontype_pkey PRIMARY KEY (actiontypeid);


--
-- Name: applicationaction_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY applicationaction
    ADD CONSTRAINT applicationaction_pkey PRIMARY KEY (applicationtypeid, actionid);


--
-- Name: applicationentityproperty_applicationtypeid_entitytypeid_pr_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY applicationentityproperty
    ADD CONSTRAINT applicationentityproperty_applicationtypeid_entitytypeid_pr_key UNIQUE (applicationtypeid, entitytypeid, propertytypeid);


--
-- Name: applicationentityproperty_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY applicationentityproperty
    ADD CONSTRAINT applicationentityproperty_pkey PRIMARY KEY (applicationentitypropertyid);


--
-- Name: applicationtype_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY applicationtype
    ADD CONSTRAINT applicationtype_name_key UNIQUE (name);


--
-- Name: applicationtype_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY applicationtype
    ADD CONSTRAINT applicationtype_pkey PRIMARY KEY (applicationtypeid);


--
-- Name: category_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY category
    ADD CONSTRAINT category_name_key UNIQUE (name);


--
-- Name: category_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY category
    ADD CONSTRAINT category_pkey PRIMARY KEY (categoryid);


--
-- Name: categoryentity_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY categoryentity
    ADD CONSTRAINT categoryentity_pkey PRIMARY KEY (categoryentityid);


--
-- Name: categoryhierarchy_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY categoryhierarchy
    ADD CONSTRAINT categoryhierarchy_pkey PRIMARY KEY (categoryid, parentid);


--
-- Name: checktype_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY checktype
    ADD CONSTRAINT checktype_name_key UNIQUE (name);


--
-- Name: checktype_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY checktype
    ADD CONSTRAINT checktype_pkey PRIMARY KEY (checktypeid);


--
-- Name: component_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY component
    ADD CONSTRAINT component_name_key UNIQUE (name);


--
-- Name: component_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY component
    ADD CONSTRAINT component_pkey PRIMARY KEY (componentid);


--
-- Name: consolidationcriteria_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY consolidationcriteria
    ADD CONSTRAINT consolidationcriteria_name_key UNIQUE (name);


--
-- Name: consolidationcriteria_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY consolidationcriteria
    ADD CONSTRAINT consolidationcriteria_pkey PRIMARY KEY (consolidationcriteriaid);


--
-- Name: device_identification_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY device
    ADD CONSTRAINT device_identification_key UNIQUE (identification);


--
-- Name: device_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY device
    ADD CONSTRAINT device_pkey PRIMARY KEY (deviceid);


--
-- Name: deviceparent_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY deviceparent
    ADD CONSTRAINT deviceparent_pkey PRIMARY KEY (deviceid, parentid);


--
-- Name: entity_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY entity
    ADD CONSTRAINT entity_pkey PRIMARY KEY (entityid);


--
-- Name: entityproperty_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY entityproperty
    ADD CONSTRAINT entityproperty_pkey PRIMARY KEY (entitytypeid, objectid, propertytypeid);


--
-- Name: entitytype_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY entitytype
    ADD CONSTRAINT entitytype_name_key UNIQUE (name);


--
-- Name: entitytype_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY entitytype
    ADD CONSTRAINT entitytype_pkey PRIMARY KEY (entitytypeid);


--
-- Name: host_hostname_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY host
    ADD CONSTRAINT host_hostname_key UNIQUE (hostname);


--
-- Name: host_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY host
    ADD CONSTRAINT host_pkey PRIMARY KEY (hostid);


--
-- Name: hostgroup_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY hostgroup
    ADD CONSTRAINT hostgroup_name_key UNIQUE (name);


--
-- Name: hostgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY hostgroup
    ADD CONSTRAINT hostgroup_pkey PRIMARY KEY (hostgroupid);


--
-- Name: hostgroupcollection_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY hostgroupcollection
    ADD CONSTRAINT hostgroupcollection_pkey PRIMARY KEY (hostid, hostgroupid);


--
-- Name: hoststatus_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY hoststatus
    ADD CONSTRAINT hoststatus_pkey PRIMARY KEY (hoststatusid);


--
-- Name: hoststatusproperty_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY hoststatusproperty
    ADD CONSTRAINT hoststatusproperty_pkey PRIMARY KEY (hoststatusid, propertytypeid);


--
-- Name: logmessage_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY logmessage
    ADD CONSTRAINT logmessage_pkey PRIMARY KEY (logmessageid);


--
-- Name: logmessageproperty_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY logmessageproperty
    ADD CONSTRAINT logmessageproperty_pkey PRIMARY KEY (logmessageid, propertytypeid);


--
-- Name: logperformancedata_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY logperformancedata
    ADD CONSTRAINT logperformancedata_pkey PRIMARY KEY (logperformancedataid);


--
-- Name: messagefilter_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY messagefilter
    ADD CONSTRAINT messagefilter_name_key UNIQUE (name);


--
-- Name: messagefilter_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY messagefilter
    ADD CONSTRAINT messagefilter_pkey PRIMARY KEY (messagefilterid);


--
-- Name: monitorlist_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY monitorlist
    ADD CONSTRAINT monitorlist_pkey PRIMARY KEY (monitorserverid, deviceid);


--
-- Name: monitorserver_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY monitorserver
    ADD CONSTRAINT monitorserver_pkey PRIMARY KEY (monitorserverid);


--
-- Name: monitorstatus_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY monitorstatus
    ADD CONSTRAINT monitorstatus_name_key UNIQUE (name);


--
-- Name: monitorstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY monitorstatus
    ADD CONSTRAINT monitorstatus_pkey PRIMARY KEY (monitorstatusid);


--
-- Name: network_service_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY network_service_notifications
    ADD CONSTRAINT network_service_notifications_pkey PRIMARY KEY (id);


--
-- Name: network_service_short_news_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY network_service_short_news
    ADD CONSTRAINT network_service_short_news_pkey PRIMARY KEY (id);


--
-- Name: network_service_status_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY network_service_status
    ADD CONSTRAINT network_service_status_pkey PRIMARY KEY (id);


--
-- Name: operationstatus_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY operationstatus
    ADD CONSTRAINT operationstatus_name_key UNIQUE (name);


--
-- Name: operationstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY operationstatus
    ADD CONSTRAINT operationstatus_pkey PRIMARY KEY (operationstatusid);


--
-- Name: performancedatalabel_performancename_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY performancedatalabel
    ADD CONSTRAINT performancedatalabel_performancename_key UNIQUE (performancename);


--
-- Name: performancedatalabel_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY performancedatalabel
    ADD CONSTRAINT performancedatalabel_pkey PRIMARY KEY (performancedatalabelid);


--
-- Name: plugin_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY plugin
    ADD CONSTRAINT plugin_pkey PRIMARY KEY (pluginid);


--
-- Name: plugin_platformid_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY plugin
    ADD CONSTRAINT plugin_platformid_name_key UNIQUE (platformid, name);


--
-- Name: pluginplatform_name_arch_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY pluginplatform
    ADD CONSTRAINT pluginplatform_name_arch_key UNIQUE (name, arch);


--
-- Name: pluginplatform_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY pluginplatform
    ADD CONSTRAINT pluginplatform_pkey PRIMARY KEY (platformid);


--
-- Name: priority_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY priority
    ADD CONSTRAINT priority_name_key UNIQUE (name);


--
-- Name: priority_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY priority
    ADD CONSTRAINT priority_pkey PRIMARY KEY (priorityid);


--
-- Name: propertytype_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY propertytype
    ADD CONSTRAINT propertytype_name_key UNIQUE (name);


--
-- Name: propertytype_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY propertytype
    ADD CONSTRAINT propertytype_pkey PRIMARY KEY (propertytypeid);


--
-- Name: servicestatus_hostid_servicedescription_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY servicestatus
    ADD CONSTRAINT servicestatus_hostid_servicedescription_key UNIQUE (hostid, servicedescription);


--
-- Name: servicestatus_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY servicestatus
    ADD CONSTRAINT servicestatus_pkey PRIMARY KEY (servicestatusid);


--
-- Name: servicestatusproperty_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY servicestatusproperty
    ADD CONSTRAINT servicestatusproperty_pkey PRIMARY KEY (servicestatusid, propertytypeid);


--
-- Name: severity_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY severity
    ADD CONSTRAINT severity_name_key UNIQUE (name);


--
-- Name: severity_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY severity
    ADD CONSTRAINT severity_pkey PRIMARY KEY (severityid);


--
-- Name: statetype_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY statetype
    ADD CONSTRAINT statetype_name_key UNIQUE (name);


--
-- Name: statetype_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY statetype
    ADD CONSTRAINT statetype_pkey PRIMARY KEY (statetypeid);


--
-- Name: typerule_name_key; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY typerule
    ADD CONSTRAINT typerule_name_key UNIQUE (name);


--
-- Name: typerule_pkey; Type: CONSTRAINT; Schema: public; Owner: collage; Tablespace: 
--

ALTER TABLE ONLY typerule
    ADD CONSTRAINT typerule_pkey PRIMARY KEY (typeruleid);


--
-- Name: action_actiontypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX action_actiontypeid ON action USING btree (actiontypeid);


--
-- Name: action_idx_action_name; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX action_idx_action_name ON action USING btree (name);


--
-- Name: applicationaction_actionid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX applicationaction_actionid ON applicationaction USING btree (actionid);


--
-- Name: applicationentityproperty_entitytypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX applicationentityproperty_entitytypeid ON applicationentityproperty USING btree (entitytypeid);


--
-- Name: applicationentityproperty_propertytypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX applicationentityproperty_propertytypeid ON applicationentityproperty USING btree (propertytypeid);


--
-- Name: category_entitytypeid_ibfk1_1; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX category_entitytypeid_ibfk1_1 ON category USING btree (entitytypeid);


--
-- Name: categoryentity_categoryid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX categoryentity_categoryid ON categoryentity USING btree (categoryid);


--
-- Name: categoryentity_entitytypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX categoryentity_entitytypeid ON categoryentity USING btree (entitytypeid);


--
-- Name: categoryhierarchy_parentid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX categoryhierarchy_parentid ON categoryhierarchy USING btree (parentid);


--
-- Name: deviceparent_parentid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX deviceparent_parentid ON deviceparent USING btree (parentid);


--
-- Name: entity_applicationtypeid_ibfk1_1; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX entity_applicationtypeid_ibfk1_1 ON entity USING btree (applicationtypeid);


--
-- Name: entityproperty_propertytypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX entityproperty_propertytypeid ON entityproperty USING btree (propertytypeid);


--
-- Name: host_applicationtypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX host_applicationtypeid ON host USING btree (applicationtypeid);


--
-- Name: host_deviceid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX host_deviceid ON host USING btree (deviceid);


--
-- Name: hostgroup_applicationtypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX hostgroup_applicationtypeid ON hostgroup USING btree (applicationtypeid);


--
-- Name: hostgroupcollection_hostgroupid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX hostgroupcollection_hostgroupid ON hostgroupcollection USING btree (hostgroupid);


--
-- Name: hoststatus_checktypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX hoststatus_checktypeid ON hoststatus USING btree (checktypeid);


--
-- Name: hoststatus_monitorstatusid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX hoststatus_monitorstatusid ON hoststatus USING btree (monitorstatusid);


--
-- Name: hoststatus_statetypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX hoststatus_statetypeid ON hoststatus USING btree (statetypeid);


--
-- Name: hoststatusproperty_propertytypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX hoststatusproperty_propertytypeid ON hoststatusproperty USING btree (propertytypeid);


--
-- Name: logmessage_applicationseverityid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_applicationseverityid ON logmessage USING btree (applicationseverityid);


--
-- Name: logmessage_applicationtypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_applicationtypeid ON logmessage USING btree (applicationtypeid);


--
-- Name: logmessage_componentid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_componentid ON logmessage USING btree (componentid);


--
-- Name: logmessage_deviceid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_deviceid ON logmessage USING btree (deviceid);


--
-- Name: logmessage_fk_logmessage_hoststatusid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_fk_logmessage_hoststatusid ON logmessage USING btree (hoststatusid);


--
-- Name: logmessage_fk_logmessage_servicestatusid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_fk_logmessage_servicestatusid ON logmessage USING btree (servicestatusid);


--
-- Name: logmessage_idx_logmessage_consolidationhash; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_idx_logmessage_consolidationhash ON logmessage USING btree (consolidationhash);


--
-- Name: logmessage_idx_logmessage_firstinsertdate; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_idx_logmessage_firstinsertdate ON logmessage USING btree (firstinsertdate);


--
-- Name: logmessage_idx_logmessage_lastinsertdate; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_idx_logmessage_lastinsertdate ON logmessage USING btree (lastinsertdate);


--
-- Name: logmessage_idx_logmessage_reportdate; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_idx_logmessage_reportdate ON logmessage USING btree (reportdate);


--
-- Name: logmessage_idx_logmessage_statelesshash; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_idx_logmessage_statelesshash ON logmessage USING btree (statelesshash);


--
-- Name: logmessage_idx_logmessage_statetransitionhash; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_idx_logmessage_statetransitionhash ON logmessage USING btree (statetransitionhash);


--
-- Name: logmessage_monitorstatusid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_monitorstatusid ON logmessage USING btree (monitorstatusid);


--
-- Name: logmessage_operationstatusid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_operationstatusid ON logmessage USING btree (operationstatusid);


--
-- Name: logmessage_priorityid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_priorityid ON logmessage USING btree (priorityid);


--
-- Name: logmessage_severityid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_severityid ON logmessage USING btree (severityid);


--
-- Name: logmessage_typeruleid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessage_typeruleid ON logmessage USING btree (typeruleid);


--
-- Name: logmessageproperty_propertytypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logmessageproperty_propertytypeid ON logmessageproperty USING btree (propertytypeid);


--
-- Name: logperformancedata_performancedatalabelid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logperformancedata_performancedatalabelid ON logperformancedata USING btree (performancedatalabelid);


--
-- Name: logperformancedata_servicestatusid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX logperformancedata_servicestatusid ON logperformancedata USING btree (servicestatusid);


--
-- Name: monitorlist_deviceid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX monitorlist_deviceid ON monitorlist USING btree (deviceid);


--
-- Name: servicestatus_applicationtypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX servicestatus_applicationtypeid ON servicestatus USING btree (applicationtypeid);


--
-- Name: servicestatus_checktypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX servicestatus_checktypeid ON servicestatus USING btree (checktypeid);


--
-- Name: servicestatus_lasthardstateid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX servicestatus_lasthardstateid ON servicestatus USING btree (lasthardstateid);


--
-- Name: servicestatus_monitorstatusid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX servicestatus_monitorstatusid ON servicestatus USING btree (monitorstatusid);


--
-- Name: servicestatus_statetypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX servicestatus_statetypeid ON servicestatus USING btree (statetypeid);


--
-- Name: servicestatusproperty_propertytypeid; Type: INDEX; Schema: public; Owner: collage; Tablespace: 
--

CREATE INDEX servicestatusproperty_propertytypeid ON servicestatusproperty USING btree (propertytypeid);


--
-- Name: action_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY action
    ADD CONSTRAINT action_ibfk_1 FOREIGN KEY (actiontypeid) REFERENCES actiontype(actiontypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: actionparameter_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY actionparameter
    ADD CONSTRAINT actionparameter_ibfk_1 FOREIGN KEY (actionid) REFERENCES action(actionid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: actionproperty_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY actionproperty
    ADD CONSTRAINT actionproperty_ibfk_1 FOREIGN KEY (actionid) REFERENCES action(actionid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: applicationaction_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY applicationaction
    ADD CONSTRAINT applicationaction_ibfk_1 FOREIGN KEY (applicationtypeid) REFERENCES applicationtype(applicationtypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: applicationaction_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY applicationaction
    ADD CONSTRAINT applicationaction_ibfk_2 FOREIGN KEY (actionid) REFERENCES action(actionid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: applicationentityproperty_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY applicationentityproperty
    ADD CONSTRAINT applicationentityproperty_ibfk_1 FOREIGN KEY (applicationtypeid) REFERENCES applicationtype(applicationtypeid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: applicationentityproperty_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY applicationentityproperty
    ADD CONSTRAINT applicationentityproperty_ibfk_2 FOREIGN KEY (entitytypeid) REFERENCES entitytype(entitytypeid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: applicationentityproperty_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY applicationentityproperty
    ADD CONSTRAINT applicationentityproperty_ibfk_3 FOREIGN KEY (propertytypeid) REFERENCES propertytype(propertytypeid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: applicationtypeid_ibfk1_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY entity
    ADD CONSTRAINT applicationtypeid_ibfk1_1 FOREIGN KEY (applicationtypeid) REFERENCES applicationtype(applicationtypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: categoryentity_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY categoryentity
    ADD CONSTRAINT categoryentity_ibfk_1 FOREIGN KEY (categoryid) REFERENCES category(categoryid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: categoryentity_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY categoryentity
    ADD CONSTRAINT categoryentity_ibfk_2 FOREIGN KEY (entitytypeid) REFERENCES entitytype(entitytypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: categoryhierarchy_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY categoryhierarchy
    ADD CONSTRAINT categoryhierarchy_ibfk_1 FOREIGN KEY (parentid) REFERENCES category(categoryid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: categoryhierarchy_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY categoryhierarchy
    ADD CONSTRAINT categoryhierarchy_ibfk_2 FOREIGN KEY (categoryid) REFERENCES category(categoryid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: deviceparent_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY deviceparent
    ADD CONSTRAINT deviceparent_ibfk_1 FOREIGN KEY (deviceid) REFERENCES device(deviceid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: deviceparent_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY deviceparent
    ADD CONSTRAINT deviceparent_ibfk_2 FOREIGN KEY (parentid) REFERENCES device(deviceid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: entityproperty_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY entityproperty
    ADD CONSTRAINT entityproperty_ibfk_1 FOREIGN KEY (entitytypeid) REFERENCES entitytype(entitytypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: entityproperty_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY entityproperty
    ADD CONSTRAINT entityproperty_ibfk_2 FOREIGN KEY (propertytypeid) REFERENCES propertytype(propertytypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: entitytypeid_ibfk1_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY category
    ADD CONSTRAINT entitytypeid_ibfk1_1 FOREIGN KEY (entitytypeid) REFERENCES entitytype(entitytypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: fk_logmessage_hoststatusid; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logmessage
    ADD CONSTRAINT fk_logmessage_hoststatusid FOREIGN KEY (hoststatusid) REFERENCES hoststatus(hoststatusid) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: fk_logmessage_servicestatusid; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logmessage
    ADD CONSTRAINT fk_logmessage_servicestatusid FOREIGN KEY (servicestatusid) REFERENCES servicestatus(servicestatusid) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: host_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY host
    ADD CONSTRAINT host_ibfk_1 FOREIGN KEY (deviceid) REFERENCES device(deviceid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: host_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY host
    ADD CONSTRAINT host_ibfk_2 FOREIGN KEY (applicationtypeid) REFERENCES applicationtype(applicationtypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: hostgroup_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY hostgroup
    ADD CONSTRAINT hostgroup_ibfk_1 FOREIGN KEY (applicationtypeid) REFERENCES applicationtype(applicationtypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: hostgroupcollection_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY hostgroupcollection
    ADD CONSTRAINT hostgroupcollection_ibfk_1 FOREIGN KEY (hostid) REFERENCES host(hostid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: hostgroupcollection_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY hostgroupcollection
    ADD CONSTRAINT hostgroupcollection_ibfk_2 FOREIGN KEY (hostgroupid) REFERENCES hostgroup(hostgroupid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: hoststatus_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY hoststatus
    ADD CONSTRAINT hoststatus_ibfk_1 FOREIGN KEY (hoststatusid) REFERENCES host(hostid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: hoststatus_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY hoststatus
    ADD CONSTRAINT hoststatus_ibfk_2 FOREIGN KEY (monitorstatusid) REFERENCES monitorstatus(monitorstatusid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: hoststatus_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY hoststatus
    ADD CONSTRAINT hoststatus_ibfk_3 FOREIGN KEY (checktypeid) REFERENCES checktype(checktypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: hoststatus_ibfk_4; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY hoststatus
    ADD CONSTRAINT hoststatus_ibfk_4 FOREIGN KEY (statetypeid) REFERENCES statetype(statetypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: hoststatusproperty_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY hoststatusproperty
    ADD CONSTRAINT hoststatusproperty_ibfk_1 FOREIGN KEY (hoststatusid) REFERENCES hoststatus(hoststatusid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: hoststatusproperty_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY hoststatusproperty
    ADD CONSTRAINT hoststatusproperty_ibfk_2 FOREIGN KEY (propertytypeid) REFERENCES propertytype(propertytypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: logmessage_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logmessage
    ADD CONSTRAINT logmessage_ibfk_1 FOREIGN KEY (applicationtypeid) REFERENCES applicationtype(applicationtypeid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: logmessage_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logmessage
    ADD CONSTRAINT logmessage_ibfk_2 FOREIGN KEY (deviceid) REFERENCES device(deviceid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: logmessage_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logmessage
    ADD CONSTRAINT logmessage_ibfk_3 FOREIGN KEY (monitorstatusid) REFERENCES monitorstatus(monitorstatusid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: logmessage_ibfk_4; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logmessage
    ADD CONSTRAINT logmessage_ibfk_4 FOREIGN KEY (severityid) REFERENCES severity(severityid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: logmessage_ibfk_5; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logmessage
    ADD CONSTRAINT logmessage_ibfk_5 FOREIGN KEY (applicationseverityid) REFERENCES severity(severityid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: logmessage_ibfk_6; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logmessage
    ADD CONSTRAINT logmessage_ibfk_6 FOREIGN KEY (priorityid) REFERENCES priority(priorityid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: logmessage_ibfk_7; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logmessage
    ADD CONSTRAINT logmessage_ibfk_7 FOREIGN KEY (typeruleid) REFERENCES typerule(typeruleid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: logmessage_ibfk_8; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logmessage
    ADD CONSTRAINT logmessage_ibfk_8 FOREIGN KEY (componentid) REFERENCES component(componentid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: logmessage_ibfk_9; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logmessage
    ADD CONSTRAINT logmessage_ibfk_9 FOREIGN KEY (operationstatusid) REFERENCES operationstatus(operationstatusid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: logmessageproperty_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logmessageproperty
    ADD CONSTRAINT logmessageproperty_ibfk_1 FOREIGN KEY (logmessageid) REFERENCES logmessage(logmessageid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: logmessageproperty_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logmessageproperty
    ADD CONSTRAINT logmessageproperty_ibfk_2 FOREIGN KEY (propertytypeid) REFERENCES propertytype(propertytypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: logperformancedata_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logperformancedata
    ADD CONSTRAINT logperformancedata_ibfk_1 FOREIGN KEY (servicestatusid) REFERENCES servicestatus(servicestatusid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: logperformancedata_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY logperformancedata
    ADD CONSTRAINT logperformancedata_ibfk_2 FOREIGN KEY (performancedatalabelid) REFERENCES performancedatalabel(performancedatalabelid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: monitorlist_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY monitorlist
    ADD CONSTRAINT monitorlist_ibfk_1 FOREIGN KEY (monitorserverid) REFERENCES monitorserver(monitorserverid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: monitorlist_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY monitorlist
    ADD CONSTRAINT monitorlist_ibfk_2 FOREIGN KEY (deviceid) REFERENCES device(deviceid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: plugin_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY plugin
    ADD CONSTRAINT plugin_ibfk_1 FOREIGN KEY (platformid) REFERENCES pluginplatform(platformid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: servicestatus_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY servicestatus
    ADD CONSTRAINT servicestatus_ibfk_1 FOREIGN KEY (applicationtypeid) REFERENCES applicationtype(applicationtypeid) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: servicestatus_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY servicestatus
    ADD CONSTRAINT servicestatus_ibfk_2 FOREIGN KEY (hostid) REFERENCES host(hostid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: servicestatus_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY servicestatus
    ADD CONSTRAINT servicestatus_ibfk_3 FOREIGN KEY (statetypeid) REFERENCES statetype(statetypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: servicestatus_ibfk_4; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY servicestatus
    ADD CONSTRAINT servicestatus_ibfk_4 FOREIGN KEY (checktypeid) REFERENCES checktype(checktypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: servicestatus_ibfk_5; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY servicestatus
    ADD CONSTRAINT servicestatus_ibfk_5 FOREIGN KEY (lasthardstateid) REFERENCES monitorstatus(monitorstatusid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: servicestatus_ibfk_6; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY servicestatus
    ADD CONSTRAINT servicestatus_ibfk_6 FOREIGN KEY (monitorstatusid) REFERENCES monitorstatus(monitorstatusid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: servicestatusproperty_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY servicestatusproperty
    ADD CONSTRAINT servicestatusproperty_ibfk_1 FOREIGN KEY (servicestatusid) REFERENCES servicestatus(servicestatusid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: servicestatusproperty_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: collage
--

ALTER TABLE ONLY servicestatusproperty
    ADD CONSTRAINT servicestatusproperty_ibfk_2 FOREIGN KEY (propertytypeid) REFERENCES propertytype(propertytypeid) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO collage;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: network_service_notifications; Type: ACL; Schema: public; Owner: collage
--

REVOKE ALL ON TABLE network_service_notifications FROM PUBLIC;
REVOKE ALL ON TABLE network_service_notifications FROM collage;
GRANT ALL ON TABLE network_service_notifications TO collage;


--
-- Name: network_service_short_news; Type: ACL; Schema: public; Owner: collage
--

REVOKE ALL ON TABLE network_service_short_news FROM PUBLIC;
REVOKE ALL ON TABLE network_service_short_news FROM collage;
GRANT ALL ON TABLE network_service_short_news TO collage;


--
-- Name: network_service_status; Type: ACL; Schema: public; Owner: collage
--

REVOKE ALL ON TABLE network_service_status FROM PUBLIC;
REVOKE ALL ON TABLE network_service_status FROM collage;
GRANT ALL ON TABLE network_service_status TO collage;


--
-- PostgreSQL database dump complete
--

