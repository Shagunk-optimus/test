--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.user_group DROP CONSTRAINT user_group_ibfk_2;
ALTER TABLE ONLY public.user_group DROP CONSTRAINT user_group_ibfk_1;
ALTER TABLE ONLY public.tree_template_contactgroup DROP CONSTRAINT tree_template_contactgroup_ibfk_3;
ALTER TABLE ONLY public.tree_template_contactgroup DROP CONSTRAINT tree_template_contactgroup_ibfk_2;
ALTER TABLE ONLY public.tree_template_contactgroup DROP CONSTRAINT tree_template_contactgroup_ibfk_1;
ALTER TABLE ONLY public.time_period_property DROP CONSTRAINT time_period_property_ibfk_1;
ALTER TABLE ONLY public.time_period_exclude DROP CONSTRAINT time_period_exclude_ibfk_2;
ALTER TABLE ONLY public.time_period_exclude DROP CONSTRAINT time_period_exclude_ibfk_1;
ALTER TABLE ONLY public.services DROP CONSTRAINT services_ibfk_3;
ALTER TABLE ONLY public.services DROP CONSTRAINT services_ibfk_2;
ALTER TABLE ONLY public.services DROP CONSTRAINT services_ibfk_1;
ALTER TABLE ONLY public.serviceprofile DROP CONSTRAINT serviceprofile_ibfk_2;
ALTER TABLE ONLY public.serviceprofile DROP CONSTRAINT serviceprofile_ibfk_1;
ALTER TABLE ONLY public.serviceprofile_hostgroup DROP CONSTRAINT serviceprofile_hostgroup_ibfk_2;
ALTER TABLE ONLY public.serviceprofile_hostgroup DROP CONSTRAINT serviceprofile_hostgroup_ibfk_1;
ALTER TABLE ONLY public.serviceprofile_host DROP CONSTRAINT serviceprofile_host_ibfk_2;
ALTER TABLE ONLY public.serviceprofile_host DROP CONSTRAINT serviceprofile_host_ibfk_1;
ALTER TABLE ONLY public.servicename_overrides DROP CONSTRAINT servicename_overrides_ibfk_1;
ALTER TABLE ONLY public.servicename_dependency DROP CONSTRAINT servicename_dependency_ibfk_2;
ALTER TABLE ONLY public.servicename_dependency DROP CONSTRAINT servicename_dependency_ibfk_1;
ALTER TABLE ONLY public.servicegroups DROP CONSTRAINT servicegroups_ibfk_1;
ALTER TABLE ONLY public.servicegroup_service DROP CONSTRAINT servicegroup_service_ibfk_3;
ALTER TABLE ONLY public.servicegroup_service DROP CONSTRAINT servicegroup_service_ibfk_2;
ALTER TABLE ONLY public.servicegroup_service DROP CONSTRAINT servicegroup_service_ibfk_1;
ALTER TABLE ONLY public.service_overrides DROP CONSTRAINT service_overrides_ibfk_1;
ALTER TABLE ONLY public.service_names DROP CONSTRAINT service_names_ibfk_2;
ALTER TABLE ONLY public.service_names DROP CONSTRAINT service_names_ibfk_1;
ALTER TABLE ONLY public.service_instance DROP CONSTRAINT service_instance_ibfk_1;
ALTER TABLE ONLY public.service_dependency DROP CONSTRAINT service_dependency_ibfk_2;
ALTER TABLE ONLY public.service_dependency DROP CONSTRAINT service_dependency_ibfk_1;
ALTER TABLE ONLY public.profiles_host DROP CONSTRAINT profiles_host_ibfk_3;
ALTER TABLE ONLY public.profiles_host DROP CONSTRAINT profiles_host_ibfk_2;
ALTER TABLE ONLY public.profiles_host DROP CONSTRAINT profiles_host_ibfk_1;
ALTER TABLE ONLY public.profile_parent DROP CONSTRAINT profile_parent_ibfk_1;
ALTER TABLE ONLY public.profile_hostgroup DROP CONSTRAINT profile_hostgroup_ibfk_1;
ALTER TABLE ONLY public.profile_host_profile_service DROP CONSTRAINT profile_host_profile_service_ibfk_2;
ALTER TABLE ONLY public.profile_host_profile_service DROP CONSTRAINT profile_host_profile_service_ibfk_1;
ALTER TABLE ONLY public.monarch_group_props DROP CONSTRAINT monarch_group_props_ibfk_1;
ALTER TABLE ONLY public.monarch_group_macro DROP CONSTRAINT monarch_group_macro_ibfk_2;
ALTER TABLE ONLY public.monarch_group_macro DROP CONSTRAINT monarch_group_macro_ibfk_1;
ALTER TABLE ONLY public.monarch_group_hostgroup DROP CONSTRAINT monarch_group_hostgroup_ibfk_2;
ALTER TABLE ONLY public.monarch_group_hostgroup DROP CONSTRAINT monarch_group_hostgroup_ibfk_1;
ALTER TABLE ONLY public.monarch_group_host DROP CONSTRAINT monarch_group_host_ibfk_2;
ALTER TABLE ONLY public.monarch_group_host DROP CONSTRAINT monarch_group_host_ibfk_1;
ALTER TABLE ONLY public.monarch_group_child DROP CONSTRAINT monarch_group_child_ibfk_2;
ALTER TABLE ONLY public.monarch_group_child DROP CONSTRAINT monarch_group_child_ibfk_1;
ALTER TABLE ONLY public.import_schema DROP CONSTRAINT import_schema_ibfk_1;
ALTER TABLE ONLY public.import_match_serviceprofile DROP CONSTRAINT import_match_serviceprofile_ibfk_2;
ALTER TABLE ONLY public.import_match_serviceprofile DROP CONSTRAINT import_match_serviceprofile_ibfk_1;
ALTER TABLE ONLY public.import_match_servicename DROP CONSTRAINT import_match_servicename_ibfk_2;
ALTER TABLE ONLY public.import_match_servicename DROP CONSTRAINT import_match_servicename_ibfk_1;
ALTER TABLE ONLY public.import_match_parent DROP CONSTRAINT import_match_parent_ibfk_2;
ALTER TABLE ONLY public.import_match_parent DROP CONSTRAINT import_match_parent_ibfk_1;
ALTER TABLE ONLY public.import_match DROP CONSTRAINT import_match_ibfk_3;
ALTER TABLE ONLY public.import_match DROP CONSTRAINT import_match_ibfk_2;
ALTER TABLE ONLY public.import_match DROP CONSTRAINT import_match_ibfk_1;
ALTER TABLE ONLY public.import_match_hostgroup DROP CONSTRAINT import_match_hostgroup_ibfk_2;
ALTER TABLE ONLY public.import_match_hostgroup DROP CONSTRAINT import_match_hostgroup_ibfk_1;
ALTER TABLE ONLY public.import_match_group DROP CONSTRAINT import_match_group_ibfk_2;
ALTER TABLE ONLY public.import_match_group DROP CONSTRAINT import_match_group_ibfk_1;
ALTER TABLE ONLY public.import_match_contactgroup DROP CONSTRAINT import_match_contactgroup_ibfk_2;
ALTER TABLE ONLY public.import_match_contactgroup DROP CONSTRAINT import_match_contactgroup_ibfk_1;
ALTER TABLE ONLY public.import_column DROP CONSTRAINT import_column_ibfk_1;
ALTER TABLE ONLY public.hosts DROP CONSTRAINT hosts_ibfk_4;
ALTER TABLE ONLY public.hosts DROP CONSTRAINT hosts_ibfk_3;
ALTER TABLE ONLY public.hosts DROP CONSTRAINT hosts_ibfk_2;
ALTER TABLE ONLY public.hosts DROP CONSTRAINT hosts_ibfk_1;
ALTER TABLE ONLY public.hostprofile_overrides DROP CONSTRAINT hostprofile_overrides_ibfk_1;
ALTER TABLE ONLY public.hostgroups DROP CONSTRAINT hostgroups_ibfk_3;
ALTER TABLE ONLY public.hostgroups DROP CONSTRAINT hostgroups_ibfk_2;
ALTER TABLE ONLY public.hostgroups DROP CONSTRAINT hostgroups_ibfk_1;
ALTER TABLE ONLY public.hostgroup_host DROP CONSTRAINT hostgroup_host_ibfk_2;
ALTER TABLE ONLY public.hostgroup_host DROP CONSTRAINT hostgroup_host_ibfk_1;
ALTER TABLE ONLY public.host_parent DROP CONSTRAINT host_parent_ibfk_2;
ALTER TABLE ONLY public.host_parent DROP CONSTRAINT host_parent_ibfk_1;
ALTER TABLE ONLY public.host_overrides DROP CONSTRAINT host_overrides_ibfk_1;
ALTER TABLE ONLY public.host_dependencies DROP CONSTRAINT host_dependencies_ibfk_2;
ALTER TABLE ONLY public.host_dependencies DROP CONSTRAINT host_dependencies_ibfk_1;
ALTER TABLE ONLY public.external_service_names DROP CONSTRAINT external_service_names_ibfk_2;
ALTER TABLE ONLY public.external_service_names DROP CONSTRAINT external_service_names_ibfk_1;
ALTER TABLE ONLY public.external_service DROP CONSTRAINT external_service_ibfk_3;
ALTER TABLE ONLY public.external_service DROP CONSTRAINT external_service_ibfk_2;
ALTER TABLE ONLY public.external_service DROP CONSTRAINT external_service_ibfk_1;
ALTER TABLE ONLY public.external_host_profile DROP CONSTRAINT external_host_profile_ibfk_2;
ALTER TABLE ONLY public.external_host_profile DROP CONSTRAINT external_host_profile_ibfk_1;
ALTER TABLE ONLY public.external_host DROP CONSTRAINT external_host_ibfk_2;
ALTER TABLE ONLY public.external_host DROP CONSTRAINT external_host_ibfk_1;
ALTER TABLE ONLY public.extended_info_coords DROP CONSTRAINT extended_info_coords_ibfk_1;
ALTER TABLE ONLY public.escalation_tree_template DROP CONSTRAINT escalation_tree_template_ibfk_2;
ALTER TABLE ONLY public.escalation_tree_template DROP CONSTRAINT escalation_tree_template_ibfk_1;
ALTER TABLE ONLY public.escalation_templates DROP CONSTRAINT escalation_templates_ibfk_1;
ALTER TABLE ONLY public.discover_method_filter DROP CONSTRAINT discover_method_filter_ibfk_2;
ALTER TABLE ONLY public.discover_method_filter DROP CONSTRAINT discover_method_filter_ibfk_1;
ALTER TABLE ONLY public.discover_group_method DROP CONSTRAINT discover_group_method_ibfk_2;
ALTER TABLE ONLY public.discover_group_method DROP CONSTRAINT discover_group_method_ibfk_1;
ALTER TABLE ONLY public.discover_group DROP CONSTRAINT discover_group_ibfk_1;
ALTER TABLE ONLY public.discover_group_filter DROP CONSTRAINT discover_group_filter_ibfk_2;
ALTER TABLE ONLY public.discover_group_filter DROP CONSTRAINT discover_group_filter_ibfk_1;
ALTER TABLE ONLY public.contactgroup_service_template DROP CONSTRAINT contactgroup_service_template_ibfk_2;
ALTER TABLE ONLY public.contactgroup_service_template DROP CONSTRAINT contactgroup_service_template_ibfk_1;
ALTER TABLE ONLY public.contactgroup_service_name DROP CONSTRAINT contactgroup_service_name_ibfk_2;
ALTER TABLE ONLY public.contactgroup_service_name DROP CONSTRAINT contactgroup_service_name_ibfk_1;
ALTER TABLE ONLY public.contactgroup_service DROP CONSTRAINT contactgroup_service_ibfk_2;
ALTER TABLE ONLY public.contactgroup_service DROP CONSTRAINT contactgroup_service_ibfk_1;
ALTER TABLE ONLY public.contactgroup_hostgroup DROP CONSTRAINT contactgroup_hostgroup_ibfk_2;
ALTER TABLE ONLY public.contactgroup_hostgroup DROP CONSTRAINT contactgroup_hostgroup_ibfk_1;
ALTER TABLE ONLY public.contactgroup_host_template DROP CONSTRAINT contactgroup_host_template_ibfk_2;
ALTER TABLE ONLY public.contactgroup_host_template DROP CONSTRAINT contactgroup_host_template_ibfk_1;
ALTER TABLE ONLY public.contactgroup_host_profile DROP CONSTRAINT contactgroup_host_profile_ibfk_2;
ALTER TABLE ONLY public.contactgroup_host_profile DROP CONSTRAINT contactgroup_host_profile_ibfk_1;
ALTER TABLE ONLY public.contactgroup_host DROP CONSTRAINT contactgroup_host_ibfk_2;
ALTER TABLE ONLY public.contactgroup_host DROP CONSTRAINT contactgroup_host_ibfk_1;
ALTER TABLE ONLY public.contactgroup_group DROP CONSTRAINT contactgroup_group_ibfk_2;
ALTER TABLE ONLY public.contactgroup_group DROP CONSTRAINT contactgroup_group_ibfk_1;
ALTER TABLE ONLY public.contactgroup_contact DROP CONSTRAINT contactgroup_contact_ibfk_2;
ALTER TABLE ONLY public.contactgroup_contact DROP CONSTRAINT contactgroup_contact_ibfk_1;
ALTER TABLE ONLY public.contact_service_template DROP CONSTRAINT contact_service_template_ibfk_2;
ALTER TABLE ONLY public.contact_service_template DROP CONSTRAINT contact_service_template_ibfk_1;
ALTER TABLE ONLY public.contact_service_name DROP CONSTRAINT contact_service_name_ibfk_2;
ALTER TABLE ONLY public.contact_service_name DROP CONSTRAINT contact_service_name_ibfk_1;
ALTER TABLE ONLY public.contact_service DROP CONSTRAINT contact_service_ibfk_2;
ALTER TABLE ONLY public.contact_service DROP CONSTRAINT contact_service_ibfk_1;
ALTER TABLE ONLY public.contact_overrides DROP CONSTRAINT contact_overrides_ibfk_1;
ALTER TABLE ONLY public.contact_hostgroup DROP CONSTRAINT contact_hostgroup_ibfk_2;
ALTER TABLE ONLY public.contact_hostgroup DROP CONSTRAINT contact_hostgroup_ibfk_1;
ALTER TABLE ONLY public.contact_host_template DROP CONSTRAINT contact_host_template_ibfk_2;
ALTER TABLE ONLY public.contact_host_template DROP CONSTRAINT contact_host_template_ibfk_1;
ALTER TABLE ONLY public.contact_host_profile DROP CONSTRAINT contact_host_profile_ibfk_2;
ALTER TABLE ONLY public.contact_host_profile DROP CONSTRAINT contact_host_profile_ibfk_1;
ALTER TABLE ONLY public.contact_host DROP CONSTRAINT contact_host_ibfk_2;
ALTER TABLE ONLY public.contact_host DROP CONSTRAINT contact_host_ibfk_1;
ALTER TABLE ONLY public.contact_group DROP CONSTRAINT contact_group_ibfk_2;
ALTER TABLE ONLY public.contact_group DROP CONSTRAINT contact_group_ibfk_1;
ALTER TABLE ONLY public.contact_command_overrides DROP CONSTRAINT contact_command_overrides_ibfk_2;
ALTER TABLE ONLY public.contact_command_overrides DROP CONSTRAINT contact_command_overrides_ibfk_1;
ALTER TABLE ONLY public.contact_command DROP CONSTRAINT contact_command_ibfk_2;
ALTER TABLE ONLY public.contact_command DROP CONSTRAINT contact_command_ibfk_1;
ALTER TABLE ONLY public.access_list DROP CONSTRAINT access_list_ibfk_1;
DROP INDEX public.user_group_user_id;
DROP INDEX public.tree_template_contactgroup_template_id;
DROP INDEX public.tree_template_contactgroup_contactgroup_id;
DROP INDEX public.time_period_exclude_exclude_id;
DROP INDEX public.services_servicename_id;
DROP INDEX public.services_serviceextinfo_id;
DROP INDEX public.services_escalation_id;
DROP INDEX public.serviceprofile_serviceprofile_id;
DROP INDEX public.serviceprofile_hostgroup_hostgroup_id;
DROP INDEX public.serviceprofile_host_host_id;
DROP INDEX public.servicename_dependency_servicename_id;
DROP INDEX public.servicename_dependency_depend_on_host_id;
DROP INDEX public.servicegroups_escalation_id;
DROP INDEX public.servicegroup_service_service_id;
DROP INDEX public.servicegroup_service_host_id;
DROP INDEX public.service_names_extinfo;
DROP INDEX public.service_names_escalation;
DROP INDEX public.service_dependency_service_id;
DROP INDEX public.service_dependency_depend_on_host_id;
DROP INDEX public.profiles_host_service_escalation_id;
DROP INDEX public.profiles_host_host_extinfo_id;
DROP INDEX public.profiles_host_host_escalation_id;
DROP INDEX public.profile_parent_host_id;
DROP INDEX public.profile_hostgroup_hostgroup_id;
DROP INDEX public.profile_host_profile_service_serviceprofile_id;
DROP INDEX public.monarch_group_props_group_id;
DROP INDEX public.monarch_group_macro_macro_id;
DROP INDEX public.monarch_group_hostgroup_hostgroup_id;
DROP INDEX public.monarch_group_host_host_id;
DROP INDEX public.monarch_group_child_child_id;
DROP INDEX public.import_schema_hostprofile_id;
DROP INDEX public.import_match_serviceprofile_serviceprofile_id;
DROP INDEX public.import_match_servicename_servicename_id;
DROP INDEX public.import_match_servicename_id;
DROP INDEX public.import_match_parent_parent_id;
DROP INDEX public.import_match_hostprofile_id;
DROP INDEX public.import_match_hostgroup_hostgroup_id;
DROP INDEX public.import_match_group_group_id;
DROP INDEX public.import_match_contactgroup_contactgroup_id;
DROP INDEX public.import_match_column_id;
DROP INDEX public.import_column_schema_id;
DROP INDEX public.hosts_service_escalation_id;
DROP INDEX public.hosts_hostprofile_id;
DROP INDEX public.hosts_hostextinfo_id;
DROP INDEX public.hosts_host_escalation_id;
DROP INDEX public.hostgroups_service_escalation_id;
DROP INDEX public.hostgroups_hostprofile_id;
DROP INDEX public.hostgroups_host_escalation_id;
DROP INDEX public.hostgroup_host_host_id;
DROP INDEX public.host_parent_parent_id;
DROP INDEX public.host_dependencies_parent_id;
DROP INDEX public.external_service_service_id;
DROP INDEX public.external_service_names_servicename_id;
DROP INDEX public.external_service_host_id;
DROP INDEX public.external_host_profile_hostprofile_id;
DROP INDEX public.external_host_host_id;
DROP INDEX public.escalation_tree_template_template_id;
DROP INDEX public.escalation_templates_escalation_period;
DROP INDEX public.discover_method_filter_filter_id;
DROP INDEX public.discover_group_schema_id;
DROP INDEX public.discover_group_method_method_id;
DROP INDEX public.discover_group_filter_filter_id;
DROP INDEX public.contactgroup_service_template_servicetemplate_id;
DROP INDEX public.contactgroup_service_service_id;
DROP INDEX public.contactgroup_service_name_servicename_id;
DROP INDEX public.contactgroup_hostgroup_hostgroup_id;
DROP INDEX public.contactgroup_host_template_hosttemplate_id;
DROP INDEX public.contactgroup_host_profile_hostprofile_id;
DROP INDEX public.contactgroup_host_host_id;
DROP INDEX public.contactgroup_group_group_id;
DROP INDEX public.contactgroup_contact_contact_id;
DROP INDEX public.contact_service_template_servicetemplate_id;
DROP INDEX public.contact_service_service_id;
DROP INDEX public.contact_service_name_servicename_id;
DROP INDEX public.contact_hostgroup_hostgroup_id;
DROP INDEX public.contact_host_template_hosttemplate_id;
DROP INDEX public.contact_host_profile_hostprofile_id;
DROP INDEX public.contact_host_host_id;
DROP INDEX public.contact_group_group_id;
DROP INDEX public.contact_command_overrides_command_id;
DROP INDEX public.contact_command_command_id;
DROP INDEX public.access_list_usergroup_id;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.user_groups DROP CONSTRAINT user_groups_pkey;
ALTER TABLE ONLY public.user_group DROP CONSTRAINT user_group_pkey;
ALTER TABLE ONLY public.tree_template_contactgroup DROP CONSTRAINT tree_template_contactgroup_pkey;
ALTER TABLE ONLY public.time_periods DROP CONSTRAINT time_periods_pkey;
ALTER TABLE ONLY public.time_periods DROP CONSTRAINT time_periods_name_key;
ALTER TABLE ONLY public.time_period_property DROP CONSTRAINT time_period_property_pkey;
ALTER TABLE ONLY public.time_period_exclude DROP CONSTRAINT time_period_exclude_pkey;
ALTER TABLE ONLY public.stage_other DROP CONSTRAINT stage_other_pkey;
ALTER TABLE ONLY public.stage_hosts DROP CONSTRAINT stage_hosts_pkey;
ALTER TABLE ONLY public.stage_host_services DROP CONSTRAINT stage_host_services_pkey;
ALTER TABLE ONLY public.stage_host_hostgroups DROP CONSTRAINT stage_host_hostgroups_pkey;
ALTER TABLE ONLY public.setup DROP CONSTRAINT setup_pkey;
ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_id_key;
ALTER TABLE ONLY public.services DROP CONSTRAINT services_pkey;
ALTER TABLE ONLY public.services DROP CONSTRAINT services_host_id_servicename_id_key;
ALTER TABLE ONLY public.serviceprofile DROP CONSTRAINT serviceprofile_pkey;
ALTER TABLE ONLY public.serviceprofile_hostgroup DROP CONSTRAINT serviceprofile_hostgroup_pkey;
ALTER TABLE ONLY public.serviceprofile_host DROP CONSTRAINT serviceprofile_host_pkey;
ALTER TABLE ONLY public.servicename_overrides DROP CONSTRAINT servicename_overrides_pkey;
ALTER TABLE ONLY public.servicename_dependency DROP CONSTRAINT servicename_dependency_pkey;
ALTER TABLE ONLY public.servicegroups DROP CONSTRAINT servicegroups_pkey;
ALTER TABLE ONLY public.servicegroups DROP CONSTRAINT servicegroups_name_key;
ALTER TABLE ONLY public.servicegroup_service DROP CONSTRAINT servicegroup_service_pkey;
ALTER TABLE ONLY public.service_templates DROP CONSTRAINT service_templates_pkey;
ALTER TABLE ONLY public.service_templates DROP CONSTRAINT service_templates_name_key;
ALTER TABLE ONLY public.service_overrides DROP CONSTRAINT service_overrides_pkey;
ALTER TABLE ONLY public.service_names DROP CONSTRAINT service_names_pkey;
ALTER TABLE ONLY public.service_names DROP CONSTRAINT service_names_name_key;
ALTER TABLE ONLY public.service_instance DROP CONSTRAINT service_instance_service_id_name_key;
ALTER TABLE ONLY public.service_instance DROP CONSTRAINT service_instance_pkey;
ALTER TABLE ONLY public.service_dependency_templates DROP CONSTRAINT service_dependency_templates_pkey;
ALTER TABLE ONLY public.service_dependency_templates DROP CONSTRAINT service_dependency_templates_name_key;
ALTER TABLE ONLY public.service_dependency DROP CONSTRAINT service_dependency_pkey;
ALTER TABLE ONLY public.profiles_service DROP CONSTRAINT profiles_service_pkey;
ALTER TABLE ONLY public.profiles_service DROP CONSTRAINT profiles_service_name_key;
ALTER TABLE ONLY public.profiles_host DROP CONSTRAINT profiles_host_pkey;
ALTER TABLE ONLY public.profiles_host DROP CONSTRAINT profiles_host_name_key;
ALTER TABLE ONLY public.profile_parent DROP CONSTRAINT profile_parent_pkey;
ALTER TABLE ONLY public.profile_hostgroup DROP CONSTRAINT profile_hostgroup_pkey;
ALTER TABLE ONLY public.profile_host_profile_service DROP CONSTRAINT profile_host_profile_service_pkey;
ALTER TABLE ONLY public.performanceconfig DROP CONSTRAINT performanceconfig_pkey;
ALTER TABLE ONLY public.performanceconfig DROP CONSTRAINT performanceconfig_host_service_key;
ALTER TABLE ONLY public.monarch_macros DROP CONSTRAINT monarch_macros_pkey;
ALTER TABLE ONLY public.monarch_groups DROP CONSTRAINT monarch_groups_pkey;
ALTER TABLE ONLY public.monarch_groups DROP CONSTRAINT monarch_groups_name_key;
ALTER TABLE ONLY public.monarch_group_props DROP CONSTRAINT monarch_group_props_pkey;
ALTER TABLE ONLY public.monarch_group_macro DROP CONSTRAINT monarch_group_macro_pkey;
ALTER TABLE ONLY public.monarch_group_hostgroup DROP CONSTRAINT monarch_group_hostgroup_pkey;
ALTER TABLE ONLY public.monarch_group_host DROP CONSTRAINT monarch_group_host_pkey;
ALTER TABLE ONLY public.monarch_group_child DROP CONSTRAINT monarch_group_child_pkey;
ALTER TABLE ONLY public.import_services DROP CONSTRAINT import_services_pkey;
ALTER TABLE ONLY public.import_schema DROP CONSTRAINT import_schema_pkey;
ALTER TABLE ONLY public.import_match_serviceprofile DROP CONSTRAINT import_match_serviceprofile_pkey;
ALTER TABLE ONLY public.import_match_servicename DROP CONSTRAINT import_match_servicename_pkey;
ALTER TABLE ONLY public.import_match DROP CONSTRAINT import_match_pkey;
ALTER TABLE ONLY public.import_match_parent DROP CONSTRAINT import_match_parent_pkey;
ALTER TABLE ONLY public.import_match_hostgroup DROP CONSTRAINT import_match_hostgroup_pkey;
ALTER TABLE ONLY public.import_match_group DROP CONSTRAINT import_match_group_pkey;
ALTER TABLE ONLY public.import_match_contactgroup DROP CONSTRAINT import_match_contactgroup_pkey;
ALTER TABLE ONLY public.import_hosts DROP CONSTRAINT import_hosts_pkey;
ALTER TABLE ONLY public.import_hosts DROP CONSTRAINT import_hosts_name_key;
ALTER TABLE ONLY public.import_column DROP CONSTRAINT import_column_pkey;
ALTER TABLE ONLY public.hosts DROP CONSTRAINT hosts_pkey;
ALTER TABLE ONLY public.hosts DROP CONSTRAINT hosts_name_key;
ALTER TABLE ONLY public.hostprofile_overrides DROP CONSTRAINT hostprofile_overrides_pkey;
ALTER TABLE ONLY public.hostgroups DROP CONSTRAINT hostgroups_pkey;
ALTER TABLE ONLY public.hostgroups DROP CONSTRAINT hostgroups_name_key;
ALTER TABLE ONLY public.hostgroup_host DROP CONSTRAINT hostgroup_host_pkey;
ALTER TABLE ONLY public.host_templates DROP CONSTRAINT host_templates_pkey;
ALTER TABLE ONLY public.host_templates DROP CONSTRAINT host_templates_name_key;
ALTER TABLE ONLY public.host_service DROP CONSTRAINT host_service_pkey;
ALTER TABLE ONLY public.host_parent DROP CONSTRAINT host_parent_pkey;
ALTER TABLE ONLY public.host_overrides DROP CONSTRAINT host_overrides_pkey;
ALTER TABLE ONLY public.host_dependencies DROP CONSTRAINT host_dependencies_pkey;
ALTER TABLE ONLY public.externals DROP CONSTRAINT externals_pkey;
ALTER TABLE ONLY public.external_service DROP CONSTRAINT external_service_pkey;
ALTER TABLE ONLY public.external_service_names DROP CONSTRAINT external_service_names_pkey;
ALTER TABLE ONLY public.external_host_profile DROP CONSTRAINT external_host_profile_pkey;
ALTER TABLE ONLY public.external_host DROP CONSTRAINT external_host_pkey;
ALTER TABLE ONLY public.extended_service_info_templates DROP CONSTRAINT extended_service_info_templates_pkey;
ALTER TABLE ONLY public.extended_service_info_templates DROP CONSTRAINT extended_service_info_templates_name_key;
ALTER TABLE ONLY public.extended_info_coords DROP CONSTRAINT extended_info_coords_pkey;
ALTER TABLE ONLY public.extended_host_info_templates DROP CONSTRAINT extended_host_info_templates_pkey;
ALTER TABLE ONLY public.extended_host_info_templates DROP CONSTRAINT extended_host_info_templates_name_key;
ALTER TABLE ONLY public.escalation_trees DROP CONSTRAINT escalation_trees_pkey;
ALTER TABLE ONLY public.escalation_trees DROP CONSTRAINT escalation_trees_name_key;
ALTER TABLE ONLY public.escalation_tree_template DROP CONSTRAINT escalation_tree_template_pkey;
ALTER TABLE ONLY public.escalation_templates DROP CONSTRAINT escalation_templates_pkey;
ALTER TABLE ONLY public.escalation_templates DROP CONSTRAINT escalation_templates_name_key;
ALTER TABLE ONLY public.discover_method DROP CONSTRAINT discover_method_pkey;
ALTER TABLE ONLY public.discover_method_filter DROP CONSTRAINT discover_method_filter_pkey;
ALTER TABLE ONLY public.discover_group DROP CONSTRAINT discover_group_pkey;
ALTER TABLE ONLY public.discover_group_method DROP CONSTRAINT discover_group_method_pkey;
ALTER TABLE ONLY public.discover_group_filter DROP CONSTRAINT discover_group_filter_pkey;
ALTER TABLE ONLY public.discover_filter DROP CONSTRAINT discover_filter_pkey;
ALTER TABLE ONLY public.datatype DROP CONSTRAINT datatype_pkey;
ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_pkey;
ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_name_key;
ALTER TABLE ONLY public.contactgroups DROP CONSTRAINT contactgroups_pkey;
ALTER TABLE ONLY public.contactgroups DROP CONSTRAINT contactgroups_name_key;
ALTER TABLE ONLY public.contactgroup_service_template DROP CONSTRAINT contactgroup_service_template_pkey;
ALTER TABLE ONLY public.contactgroup_service DROP CONSTRAINT contactgroup_service_pkey;
ALTER TABLE ONLY public.contactgroup_service_name DROP CONSTRAINT contactgroup_service_name_pkey;
ALTER TABLE ONLY public.contactgroup_hostgroup DROP CONSTRAINT contactgroup_hostgroup_pkey;
ALTER TABLE ONLY public.contactgroup_host_template DROP CONSTRAINT contactgroup_host_template_pkey;
ALTER TABLE ONLY public.contactgroup_host_profile DROP CONSTRAINT contactgroup_host_profile_pkey;
ALTER TABLE ONLY public.contactgroup_host DROP CONSTRAINT contactgroup_host_pkey;
ALTER TABLE ONLY public.contactgroup_group DROP CONSTRAINT contactgroup_group_pkey;
ALTER TABLE ONLY public.contactgroup_contact DROP CONSTRAINT contactgroup_contact_pkey;
ALTER TABLE ONLY public.contact_templates DROP CONSTRAINT contact_templates_pkey;
ALTER TABLE ONLY public.contact_templates DROP CONSTRAINT contact_templates_name_key;
ALTER TABLE ONLY public.contact_service_template DROP CONSTRAINT contact_service_template_pkey;
ALTER TABLE ONLY public.contact_service DROP CONSTRAINT contact_service_pkey;
ALTER TABLE ONLY public.contact_service_name DROP CONSTRAINT contact_service_name_pkey;
ALTER TABLE ONLY public.contact_overrides DROP CONSTRAINT contact_overrides_pkey;
ALTER TABLE ONLY public.contact_hostgroup DROP CONSTRAINT contact_hostgroup_pkey;
ALTER TABLE ONLY public.contact_host_template DROP CONSTRAINT contact_host_template_pkey;
ALTER TABLE ONLY public.contact_host_profile DROP CONSTRAINT contact_host_profile_pkey;
ALTER TABLE ONLY public.contact_host DROP CONSTRAINT contact_host_pkey;
ALTER TABLE ONLY public.contact_group DROP CONSTRAINT contact_group_pkey;
ALTER TABLE ONLY public.contact_command DROP CONSTRAINT contact_command_pkey;
ALTER TABLE ONLY public.contact_command_overrides DROP CONSTRAINT contact_command_overrides_pkey;
ALTER TABLE ONLY public.commands DROP CONSTRAINT commands_pkey;
ALTER TABLE ONLY public.commands DROP CONSTRAINT commands_name_key;
ALTER TABLE ONLY public.access_list DROP CONSTRAINT access_list_pkey;
ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
ALTER TABLE public.user_groups ALTER COLUMN usergroup_id DROP DEFAULT;
ALTER TABLE public.time_periods ALTER COLUMN timeperiod_id DROP DEFAULT;
ALTER TABLE public.services ALTER COLUMN service_id DROP DEFAULT;
ALTER TABLE public.servicename_dependency ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.servicegroups ALTER COLUMN servicegroup_id DROP DEFAULT;
ALTER TABLE public.service_templates ALTER COLUMN servicetemplate_id DROP DEFAULT;
ALTER TABLE public.service_names ALTER COLUMN servicename_id DROP DEFAULT;
ALTER TABLE public.service_instance ALTER COLUMN instance_id DROP DEFAULT;
ALTER TABLE public.service_dependency_templates ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.service_dependency ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.profiles_service ALTER COLUMN serviceprofile_id DROP DEFAULT;
ALTER TABLE public.profiles_host ALTER COLUMN hostprofile_id DROP DEFAULT;
ALTER TABLE public.performanceconfig ALTER COLUMN performanceconfig_id DROP DEFAULT;
ALTER TABLE public.monarch_macros ALTER COLUMN macro_id DROP DEFAULT;
ALTER TABLE public.monarch_groups ALTER COLUMN group_id DROP DEFAULT;
ALTER TABLE public.monarch_group_props ALTER COLUMN prop_id DROP DEFAULT;
ALTER TABLE public.import_services ALTER COLUMN import_services_id DROP DEFAULT;
ALTER TABLE public.import_schema ALTER COLUMN schema_id DROP DEFAULT;
ALTER TABLE public.import_match ALTER COLUMN match_id DROP DEFAULT;
ALTER TABLE public.import_hosts ALTER COLUMN import_hosts_id DROP DEFAULT;
ALTER TABLE public.import_column ALTER COLUMN column_id DROP DEFAULT;
ALTER TABLE public.hosts ALTER COLUMN host_id DROP DEFAULT;
ALTER TABLE public.hostgroups ALTER COLUMN hostgroup_id DROP DEFAULT;
ALTER TABLE public.host_templates ALTER COLUMN hosttemplate_id DROP DEFAULT;
ALTER TABLE public.host_service ALTER COLUMN host_service_id DROP DEFAULT;
ALTER TABLE public.externals ALTER COLUMN external_id DROP DEFAULT;
ALTER TABLE public.extended_service_info_templates ALTER COLUMN serviceextinfo_id DROP DEFAULT;
ALTER TABLE public.extended_host_info_templates ALTER COLUMN hostextinfo_id DROP DEFAULT;
ALTER TABLE public.escalation_trees ALTER COLUMN tree_id DROP DEFAULT;
ALTER TABLE public.escalation_templates ALTER COLUMN template_id DROP DEFAULT;
ALTER TABLE public.discover_method ALTER COLUMN method_id DROP DEFAULT;
ALTER TABLE public.discover_group ALTER COLUMN group_id DROP DEFAULT;
ALTER TABLE public.discover_filter ALTER COLUMN filter_id DROP DEFAULT;
ALTER TABLE public.datatype ALTER COLUMN datatype_id DROP DEFAULT;
ALTER TABLE public.contacts ALTER COLUMN contact_id DROP DEFAULT;
ALTER TABLE public.contactgroups ALTER COLUMN contactgroup_id DROP DEFAULT;
ALTER TABLE public.contact_templates ALTER COLUMN contacttemplate_id DROP DEFAULT;
ALTER TABLE public.commands ALTER COLUMN command_id DROP DEFAULT;
DROP SEQUENCE public.users_user_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.user_groups_usergroup_id_seq;
DROP TABLE public.user_groups;
DROP TABLE public.user_group;
DROP TABLE public.tree_template_contactgroup;
DROP SEQUENCE public.time_periods_timeperiod_id_seq;
DROP TABLE public.time_periods;
DROP TABLE public.time_period_property;
DROP TABLE public.time_period_exclude;
DROP TABLE public.stage_other;
DROP TABLE public.stage_hosts;
DROP TABLE public.stage_host_services;
DROP TABLE public.stage_host_hostgroups;
DROP TABLE public.setup;
DROP TABLE public.sessions;
DROP SEQUENCE public.services_service_id_seq;
DROP TABLE public.services;
DROP TABLE public.serviceprofile_hostgroup;
DROP TABLE public.serviceprofile_host;
DROP TABLE public.serviceprofile;
DROP TABLE public.servicename_overrides;
DROP SEQUENCE public.servicename_dependency_id_seq;
DROP TABLE public.servicename_dependency;
DROP SEQUENCE public.servicegroups_servicegroup_id_seq;
DROP TABLE public.servicegroups;
DROP TABLE public.servicegroup_service;
DROP SEQUENCE public.service_templates_servicetemplate_id_seq;
DROP TABLE public.service_templates;
DROP TABLE public.service_overrides;
DROP SEQUENCE public.service_names_servicename_id_seq;
DROP TABLE public.service_names;
DROP SEQUENCE public.service_instance_instance_id_seq;
DROP TABLE public.service_instance;
DROP SEQUENCE public.service_dependency_templates_id_seq;
DROP TABLE public.service_dependency_templates;
DROP SEQUENCE public.service_dependency_id_seq;
DROP TABLE public.service_dependency;
DROP SEQUENCE public.profiles_service_serviceprofile_id_seq;
DROP TABLE public.profiles_service;
DROP SEQUENCE public.profiles_host_hostprofile_id_seq;
DROP TABLE public.profiles_host;
DROP TABLE public.profile_parent;
DROP TABLE public.profile_hostgroup;
DROP TABLE public.profile_host_profile_service;
DROP SEQUENCE public.performanceconfig_performanceconfig_id_seq;
DROP TABLE public.performanceconfig;
DROP SEQUENCE public.monarch_macros_macro_id_seq;
DROP TABLE public.monarch_macros;
DROP SEQUENCE public.monarch_groups_group_id_seq;
DROP TABLE public.monarch_groups;
DROP SEQUENCE public.monarch_group_props_prop_id_seq;
DROP TABLE public.monarch_group_props;
DROP TABLE public.monarch_group_macro;
DROP TABLE public.monarch_group_hostgroup;
DROP TABLE public.monarch_group_host;
DROP TABLE public.monarch_group_child;
DROP SEQUENCE public.import_services_import_services_id_seq;
DROP TABLE public.import_services;
DROP SEQUENCE public.import_schema_schema_id_seq;
DROP TABLE public.import_schema;
DROP TABLE public.import_match_serviceprofile;
DROP TABLE public.import_match_servicename;
DROP TABLE public.import_match_parent;
DROP SEQUENCE public.import_match_match_id_seq;
DROP TABLE public.import_match_hostgroup;
DROP TABLE public.import_match_group;
DROP TABLE public.import_match_contactgroup;
DROP TABLE public.import_match;
DROP SEQUENCE public.import_hosts_import_hosts_id_seq;
DROP TABLE public.import_hosts;
DROP SEQUENCE public.import_column_column_id_seq;
DROP TABLE public.import_column;
DROP SEQUENCE public.hosts_host_id_seq;
DROP TABLE public.hosts;
DROP TABLE public.hostprofile_overrides;
DROP SEQUENCE public.hostgroups_hostgroup_id_seq;
DROP TABLE public.hostgroups;
DROP TABLE public.hostgroup_host;
DROP SEQUENCE public.host_templates_hosttemplate_id_seq;
DROP TABLE public.host_templates;
DROP SEQUENCE public.host_service_host_service_id_seq;
DROP TABLE public.host_service;
DROP TABLE public.host_parent;
DROP TABLE public.host_overrides;
DROP TABLE public.host_dependencies;
DROP SEQUENCE public.externals_external_id_seq;
DROP TABLE public.externals;
DROP TABLE public.external_service_names;
DROP TABLE public.external_service;
DROP TABLE public.external_host_profile;
DROP TABLE public.external_host;
DROP SEQUENCE public.extended_service_info_templates_serviceextinfo_id_seq;
DROP TABLE public.extended_service_info_templates;
DROP TABLE public.extended_info_coords;
DROP SEQUENCE public.extended_host_info_templates_hostextinfo_id_seq;
DROP TABLE public.extended_host_info_templates;
DROP SEQUENCE public.escalation_trees_tree_id_seq;
DROP TABLE public.escalation_trees;
DROP TABLE public.escalation_tree_template;
DROP SEQUENCE public.escalation_templates_template_id_seq;
DROP TABLE public.escalation_templates;
DROP SEQUENCE public.discover_method_method_id_seq;
DROP TABLE public.discover_method_filter;
DROP TABLE public.discover_method;
DROP TABLE public.discover_group_method;
DROP SEQUENCE public.discover_group_group_id_seq;
DROP TABLE public.discover_group_filter;
DROP TABLE public.discover_group;
DROP SEQUENCE public.discover_filter_filter_id_seq;
DROP TABLE public.discover_filter;
DROP SEQUENCE public.datatype_datatype_id_seq;
DROP TABLE public.datatype;
DROP SEQUENCE public.contacts_contact_id_seq;
DROP TABLE public.contacts;
DROP SEQUENCE public.contactgroups_contactgroup_id_seq;
DROP TABLE public.contactgroups;
DROP TABLE public.contactgroup_service_template;
DROP TABLE public.contactgroup_service_name;
DROP TABLE public.contactgroup_service;
DROP TABLE public.contactgroup_hostgroup;
DROP TABLE public.contactgroup_host_template;
DROP TABLE public.contactgroup_host_profile;
DROP TABLE public.contactgroup_host;
DROP TABLE public.contactgroup_group;
DROP TABLE public.contactgroup_contact;
DROP SEQUENCE public.contact_templates_contacttemplate_id_seq;
DROP TABLE public.contact_templates;
DROP TABLE public.contact_service_template;
DROP TABLE public.contact_service_name;
DROP TABLE public.contact_service;
DROP TABLE public.contact_overrides;
DROP TABLE public.contact_hostgroup;
DROP TABLE public.contact_host_template;
DROP TABLE public.contact_host_profile;
DROP TABLE public.contact_host;
DROP TABLE public.contact_group;
DROP TABLE public.contact_command_overrides;
DROP TABLE public.contact_command;
DROP SEQUENCE public.commands_command_id_seq;
DROP TABLE public.commands;
DROP TABLE public.access_list;
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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: access_list; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE access_list (
    object character varying(50) NOT NULL,
    type character varying(50) NOT NULL,
    usergroup_id integer DEFAULT 0 NOT NULL,
    access_values character varying(20)
);


ALTER TABLE public.access_list OWNER TO monarch;

--
-- Name: commands; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE commands (
    command_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(50),
    data text,
    comment text
);


ALTER TABLE public.commands OWNER TO monarch;

--
-- Name: commands_command_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE commands_command_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commands_command_id_seq OWNER TO monarch;

--
-- Name: commands_command_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE commands_command_id_seq OWNED BY commands.command_id;


--
-- Name: commands_command_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('commands_command_id_seq', 275, true);


--
-- Name: contact_command; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contact_command (
    contacttemplate_id integer DEFAULT 0 NOT NULL,
    type character varying(50) NOT NULL,
    command_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contact_command OWNER TO monarch;

--
-- Name: contact_command_overrides; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contact_command_overrides (
    contact_id integer DEFAULT 0 NOT NULL,
    type character varying(50) NOT NULL,
    command_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contact_command_overrides OWNER TO monarch;

--
-- Name: contact_group; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contact_group (
    contact_id integer DEFAULT 0 NOT NULL,
    group_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contact_group OWNER TO monarch;

--
-- Name: contact_host; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contact_host (
    contact_id integer DEFAULT 0 NOT NULL,
    host_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contact_host OWNER TO monarch;

--
-- Name: contact_host_profile; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contact_host_profile (
    contact_id integer DEFAULT 0 NOT NULL,
    hostprofile_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contact_host_profile OWNER TO monarch;

--
-- Name: contact_host_template; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contact_host_template (
    contact_id integer DEFAULT 0 NOT NULL,
    hosttemplate_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contact_host_template OWNER TO monarch;

--
-- Name: contact_hostgroup; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contact_hostgroup (
    contact_id integer DEFAULT 0 NOT NULL,
    hostgroup_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contact_hostgroup OWNER TO monarch;

--
-- Name: contact_overrides; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contact_overrides (
    contact_id integer DEFAULT 0 NOT NULL,
    host_notification_period integer,
    service_notification_period integer,
    data text
);


ALTER TABLE public.contact_overrides OWNER TO monarch;

--
-- Name: contact_service; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contact_service (
    contact_id integer DEFAULT 0 NOT NULL,
    service_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contact_service OWNER TO monarch;

--
-- Name: contact_service_name; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contact_service_name (
    contact_id integer DEFAULT 0 NOT NULL,
    servicename_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contact_service_name OWNER TO monarch;

--
-- Name: contact_service_template; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contact_service_template (
    contact_id integer DEFAULT 0 NOT NULL,
    servicetemplate_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contact_service_template OWNER TO monarch;

--
-- Name: contact_templates; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contact_templates (
    contacttemplate_id integer NOT NULL,
    name character varying(255) NOT NULL,
    host_notification_period integer,
    service_notification_period integer,
    data text,
    comment text
);


ALTER TABLE public.contact_templates OWNER TO monarch;

--
-- Name: contact_templates_contacttemplate_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE contact_templates_contacttemplate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_templates_contacttemplate_id_seq OWNER TO monarch;

--
-- Name: contact_templates_contacttemplate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE contact_templates_contacttemplate_id_seq OWNED BY contact_templates.contacttemplate_id;


--
-- Name: contact_templates_contacttemplate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('contact_templates_contacttemplate_id_seq', 2, true);


--
-- Name: contactgroup_contact; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contactgroup_contact (
    contactgroup_id integer DEFAULT 0 NOT NULL,
    contact_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contactgroup_contact OWNER TO monarch;

--
-- Name: contactgroup_group; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contactgroup_group (
    contactgroup_id integer DEFAULT 0 NOT NULL,
    group_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contactgroup_group OWNER TO monarch;

--
-- Name: contactgroup_host; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contactgroup_host (
    contactgroup_id integer DEFAULT 0 NOT NULL,
    host_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contactgroup_host OWNER TO monarch;

--
-- Name: contactgroup_host_profile; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contactgroup_host_profile (
    contactgroup_id integer DEFAULT 0 NOT NULL,
    hostprofile_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contactgroup_host_profile OWNER TO monarch;

--
-- Name: contactgroup_host_template; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contactgroup_host_template (
    contactgroup_id integer DEFAULT 0 NOT NULL,
    hosttemplate_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contactgroup_host_template OWNER TO monarch;

--
-- Name: contactgroup_hostgroup; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contactgroup_hostgroup (
    contactgroup_id integer DEFAULT 0 NOT NULL,
    hostgroup_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contactgroup_hostgroup OWNER TO monarch;

--
-- Name: contactgroup_service; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contactgroup_service (
    contactgroup_id integer DEFAULT 0 NOT NULL,
    service_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contactgroup_service OWNER TO monarch;

--
-- Name: contactgroup_service_name; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contactgroup_service_name (
    contactgroup_id integer DEFAULT 0 NOT NULL,
    servicename_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contactgroup_service_name OWNER TO monarch;

--
-- Name: contactgroup_service_template; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contactgroup_service_template (
    contactgroup_id integer DEFAULT 0 NOT NULL,
    servicetemplate_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.contactgroup_service_template OWNER TO monarch;

--
-- Name: contactgroups; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contactgroups (
    contactgroup_id integer NOT NULL,
    name character varying(255) NOT NULL,
    alias character varying(255) NOT NULL,
    comment text
);


ALTER TABLE public.contactgroups OWNER TO monarch;

--
-- Name: contactgroups_contactgroup_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE contactgroups_contactgroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contactgroups_contactgroup_id_seq OWNER TO monarch;

--
-- Name: contactgroups_contactgroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE contactgroups_contactgroup_id_seq OWNED BY contactgroups.contactgroup_id;


--
-- Name: contactgroups_contactgroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('contactgroups_contactgroup_id_seq', 1, true);


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE contacts (
    contact_id integer NOT NULL,
    name character varying(255) NOT NULL,
    alias character varying(255) NOT NULL,
    email text,
    pager text,
    contacttemplate_id integer,
    status smallint,
    comment text
);


ALTER TABLE public.contacts OWNER TO monarch;

--
-- Name: contacts_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE contacts_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_contact_id_seq OWNER TO monarch;

--
-- Name: contacts_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE contacts_contact_id_seq OWNED BY contacts.contact_id;


--
-- Name: contacts_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('contacts_contact_id_seq', 2, true);


--
-- Name: datatype; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE datatype (
    datatype_id integer NOT NULL,
    type character varying(100) NOT NULL,
    location character varying(255) NOT NULL
);


ALTER TABLE public.datatype OWNER TO monarch;

--
-- Name: datatype_datatype_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE datatype_datatype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.datatype_datatype_id_seq OWNER TO monarch;

--
-- Name: datatype_datatype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE datatype_datatype_id_seq OWNED BY datatype.datatype_id;


--
-- Name: datatype_datatype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('datatype_datatype_id_seq', 21, true);


--
-- Name: discover_filter; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE discover_filter (
    filter_id integer NOT NULL,
    name character varying(255),
    type character varying(50),
    filter text
);


ALTER TABLE public.discover_filter OWNER TO monarch;

--
-- Name: discover_filter_filter_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE discover_filter_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discover_filter_filter_id_seq OWNER TO monarch;

--
-- Name: discover_filter_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE discover_filter_filter_id_seq OWNED BY discover_filter.filter_id;


--
-- Name: discover_filter_filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('discover_filter_filter_id_seq', 1, false);


--
-- Name: discover_group; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE discover_group (
    group_id integer NOT NULL,
    name character varying(255),
    description text,
    config text,
    schema_id integer
);


ALTER TABLE public.discover_group OWNER TO monarch;

--
-- Name: discover_group_filter; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE discover_group_filter (
    group_id integer DEFAULT 0 NOT NULL,
    filter_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.discover_group_filter OWNER TO monarch;

--
-- Name: discover_group_group_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE discover_group_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discover_group_group_id_seq OWNER TO monarch;

--
-- Name: discover_group_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE discover_group_group_id_seq OWNED BY discover_group.group_id;


--
-- Name: discover_group_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('discover_group_group_id_seq', 1, false);


--
-- Name: discover_group_method; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE discover_group_method (
    group_id integer DEFAULT 0 NOT NULL,
    method_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.discover_group_method OWNER TO monarch;

--
-- Name: discover_method; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE discover_method (
    method_id integer NOT NULL,
    name character varying(255),
    description text,
    config text,
    type character varying(50)
);


ALTER TABLE public.discover_method OWNER TO monarch;

--
-- Name: discover_method_filter; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE discover_method_filter (
    method_id integer DEFAULT 0 NOT NULL,
    filter_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.discover_method_filter OWNER TO monarch;

--
-- Name: discover_method_method_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE discover_method_method_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discover_method_method_id_seq OWNER TO monarch;

--
-- Name: discover_method_method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE discover_method_method_id_seq OWNED BY discover_method.method_id;


--
-- Name: discover_method_method_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('discover_method_method_id_seq', 1, false);


--
-- Name: escalation_templates; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE escalation_templates (
    template_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(50) NOT NULL,
    data text,
    comment text,
    escalation_period integer
);


ALTER TABLE public.escalation_templates OWNER TO monarch;

--
-- Name: escalation_templates_template_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE escalation_templates_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.escalation_templates_template_id_seq OWNER TO monarch;

--
-- Name: escalation_templates_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE escalation_templates_template_id_seq OWNED BY escalation_templates.template_id;


--
-- Name: escalation_templates_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('escalation_templates_template_id_seq', 1, false);


--
-- Name: escalation_tree_template; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE escalation_tree_template (
    tree_id integer DEFAULT 0 NOT NULL,
    template_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.escalation_tree_template OWNER TO monarch;

--
-- Name: escalation_trees; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE escalation_trees (
    tree_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(100),
    type character varying(50) NOT NULL
);


ALTER TABLE public.escalation_trees OWNER TO monarch;

--
-- Name: escalation_trees_tree_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE escalation_trees_tree_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.escalation_trees_tree_id_seq OWNER TO monarch;

--
-- Name: escalation_trees_tree_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE escalation_trees_tree_id_seq OWNED BY escalation_trees.tree_id;


--
-- Name: escalation_trees_tree_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('escalation_trees_tree_id_seq', 1, false);


--
-- Name: extended_host_info_templates; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE extended_host_info_templates (
    hostextinfo_id integer NOT NULL,
    name character varying(255) NOT NULL,
    data text,
    script character varying(255),
    comment text
);


ALTER TABLE public.extended_host_info_templates OWNER TO monarch;

--
-- Name: extended_host_info_templates_hostextinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE extended_host_info_templates_hostextinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extended_host_info_templates_hostextinfo_id_seq OWNER TO monarch;

--
-- Name: extended_host_info_templates_hostextinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE extended_host_info_templates_hostextinfo_id_seq OWNED BY extended_host_info_templates.hostextinfo_id;


--
-- Name: extended_host_info_templates_hostextinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('extended_host_info_templates_hostextinfo_id_seq', 1, false);


--
-- Name: extended_info_coords; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE extended_info_coords (
    host_id integer DEFAULT 0 NOT NULL,
    data text
);


ALTER TABLE public.extended_info_coords OWNER TO monarch;

--
-- Name: extended_service_info_templates; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE extended_service_info_templates (
    serviceextinfo_id integer NOT NULL,
    name character varying(255) NOT NULL,
    data text,
    script character varying(255),
    comment text
);


ALTER TABLE public.extended_service_info_templates OWNER TO monarch;

--
-- Name: extended_service_info_templates_serviceextinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE extended_service_info_templates_serviceextinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extended_service_info_templates_serviceextinfo_id_seq OWNER TO monarch;

--
-- Name: extended_service_info_templates_serviceextinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE extended_service_info_templates_serviceextinfo_id_seq OWNED BY extended_service_info_templates.serviceextinfo_id;


--
-- Name: extended_service_info_templates_serviceextinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('extended_service_info_templates_serviceextinfo_id_seq', 5, true);


--
-- Name: external_host; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE external_host (
    external_id integer DEFAULT 0 NOT NULL,
    host_id integer DEFAULT 0 NOT NULL,
    data text,
    modified smallint
);


ALTER TABLE public.external_host OWNER TO monarch;

--
-- Name: external_host_profile; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE external_host_profile (
    external_id integer DEFAULT 0 NOT NULL,
    hostprofile_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.external_host_profile OWNER TO monarch;

--
-- Name: external_service; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE external_service (
    external_id integer DEFAULT 0 NOT NULL,
    host_id integer DEFAULT 0 NOT NULL,
    service_id integer DEFAULT 0 NOT NULL,
    data text,
    modified smallint
);


ALTER TABLE public.external_service OWNER TO monarch;

--
-- Name: external_service_names; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE external_service_names (
    external_id integer DEFAULT 0 NOT NULL,
    servicename_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.external_service_names OWNER TO monarch;

--
-- Name: externals; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE externals (
    external_id integer NOT NULL,
    name character varying(255),
    description character varying(50),
    type character varying(20) NOT NULL,
    display text,
    handler text
);


ALTER TABLE public.externals OWNER TO monarch;

--
-- Name: externals_external_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE externals_external_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.externals_external_id_seq OWNER TO monarch;

--
-- Name: externals_external_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE externals_external_id_seq OWNED BY externals.external_id;


--
-- Name: externals_external_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('externals_external_id_seq', 1, false);


--
-- Name: host_dependencies; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE host_dependencies (
    host_id integer DEFAULT 0 NOT NULL,
    parent_id integer DEFAULT 0 NOT NULL,
    data text,
    comment text
);


ALTER TABLE public.host_dependencies OWNER TO monarch;

--
-- Name: host_overrides; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE host_overrides (
    host_id integer DEFAULT 0 NOT NULL,
    check_period integer,
    notification_period integer,
    check_command integer,
    event_handler integer,
    data text
);


ALTER TABLE public.host_overrides OWNER TO monarch;

--
-- Name: host_parent; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE host_parent (
    host_id integer DEFAULT 0 NOT NULL,
    parent_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.host_parent OWNER TO monarch;

--
-- Name: host_service; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE host_service (
    host_service_id integer NOT NULL,
    host character varying(255) NOT NULL,
    service character varying(255) NOT NULL,
    label character varying(100) NOT NULL,
    dataname character varying(100) NOT NULL,
    datatype_id integer DEFAULT 0
);


ALTER TABLE public.host_service OWNER TO monarch;

--
-- Name: host_service_host_service_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE host_service_host_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.host_service_host_service_id_seq OWNER TO monarch;

--
-- Name: host_service_host_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE host_service_host_service_id_seq OWNED BY host_service.host_service_id;


--
-- Name: host_service_host_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('host_service_host_service_id_seq', 21, true);


--
-- Name: host_templates; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE host_templates (
    hosttemplate_id integer NOT NULL,
    name character varying(255) NOT NULL,
    check_period integer,
    notification_period integer,
    check_command integer,
    event_handler integer,
    data text,
    comment text
);


ALTER TABLE public.host_templates OWNER TO monarch;

--
-- Name: host_templates_hosttemplate_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE host_templates_hosttemplate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.host_templates_hosttemplate_id_seq OWNER TO monarch;

--
-- Name: host_templates_hosttemplate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE host_templates_hosttemplate_id_seq OWNED BY host_templates.hosttemplate_id;


--
-- Name: host_templates_hosttemplate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('host_templates_hosttemplate_id_seq', 1, true);


--
-- Name: hostgroup_host; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE hostgroup_host (
    hostgroup_id integer DEFAULT 0 NOT NULL,
    host_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.hostgroup_host OWNER TO monarch;

--
-- Name: hostgroups; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE hostgroups (
    hostgroup_id integer NOT NULL,
    name character varying(255) NOT NULL,
    alias character varying(255) NOT NULL,
    hostprofile_id integer,
    host_escalation_id integer,
    service_escalation_id integer,
    status smallint,
    comment text,
    notes character varying(4096)
);


ALTER TABLE public.hostgroups OWNER TO monarch;

--
-- Name: hostgroups_hostgroup_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE hostgroups_hostgroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hostgroups_hostgroup_id_seq OWNER TO monarch;

--
-- Name: hostgroups_hostgroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE hostgroups_hostgroup_id_seq OWNED BY hostgroups.hostgroup_id;


--
-- Name: hostgroups_hostgroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('hostgroups_hostgroup_id_seq', 9, true);


--
-- Name: hostprofile_overrides; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE hostprofile_overrides (
    hostprofile_id integer DEFAULT 0 NOT NULL,
    check_period integer,
    notification_period integer,
    check_command integer,
    event_handler integer,
    data text
);


ALTER TABLE public.hostprofile_overrides OWNER TO monarch;

--
-- Name: hosts; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE hosts (
    host_id integer NOT NULL,
    name character varying(255),
    alias character varying(255) NOT NULL,
    address character varying(50) NOT NULL,
    os character varying(50),
    hosttemplate_id integer,
    hostextinfo_id integer,
    hostprofile_id integer,
    host_escalation_id integer,
    service_escalation_id integer,
    status smallint,
    comment text,
    notes character varying(4096)
);


ALTER TABLE public.hosts OWNER TO monarch;

--
-- Name: hosts_host_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE hosts_host_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hosts_host_id_seq OWNER TO monarch;

--
-- Name: hosts_host_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE hosts_host_id_seq OWNED BY hosts.host_id;


--
-- Name: hosts_host_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('hosts_host_id_seq', 11, true);


--
-- Name: import_column; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE import_column (
    column_id integer NOT NULL,
    schema_id integer,
    name character varying(255),
    "position" integer,
    delimiter character varying(50)
);


ALTER TABLE public.import_column OWNER TO monarch;

--
-- Name: import_column_column_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE import_column_column_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.import_column_column_id_seq OWNER TO monarch;

--
-- Name: import_column_column_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE import_column_column_id_seq OWNED BY import_column.column_id;


--
-- Name: import_column_column_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('import_column_column_id_seq', 1, false);


--
-- Name: import_hosts; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE import_hosts (
    import_hosts_id integer NOT NULL,
    name character varying(255),
    alias character varying(255),
    address character varying(50),
    hostprofile_id integer
);


ALTER TABLE public.import_hosts OWNER TO monarch;

--
-- Name: import_hosts_import_hosts_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE import_hosts_import_hosts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.import_hosts_import_hosts_id_seq OWNER TO monarch;

--
-- Name: import_hosts_import_hosts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE import_hosts_import_hosts_id_seq OWNED BY import_hosts.import_hosts_id;


--
-- Name: import_hosts_import_hosts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('import_hosts_import_hosts_id_seq', 1, false);


--
-- Name: import_match; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE import_match (
    match_id integer NOT NULL,
    column_id integer,
    name character varying(255),
    match_order integer,
    match_type character varying(255),
    match_string character varying(255),
    rule character varying(255),
    object character varying(255),
    hostprofile_id integer,
    servicename_id integer,
    arguments character varying(508)
);


ALTER TABLE public.import_match OWNER TO monarch;

--
-- Name: import_match_contactgroup; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE import_match_contactgroup (
    match_id integer DEFAULT 0 NOT NULL,
    contactgroup_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.import_match_contactgroup OWNER TO monarch;

--
-- Name: import_match_group; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE import_match_group (
    match_id integer DEFAULT 0 NOT NULL,
    group_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.import_match_group OWNER TO monarch;

--
-- Name: import_match_hostgroup; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE import_match_hostgroup (
    match_id integer DEFAULT 0 NOT NULL,
    hostgroup_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.import_match_hostgroup OWNER TO monarch;

--
-- Name: import_match_match_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE import_match_match_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.import_match_match_id_seq OWNER TO monarch;

--
-- Name: import_match_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE import_match_match_id_seq OWNED BY import_match.match_id;


--
-- Name: import_match_match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('import_match_match_id_seq', 1, false);


--
-- Name: import_match_parent; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE import_match_parent (
    match_id integer DEFAULT 0 NOT NULL,
    parent_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.import_match_parent OWNER TO monarch;

--
-- Name: import_match_servicename; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE import_match_servicename (
    match_id integer DEFAULT 0 NOT NULL,
    servicename_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.import_match_servicename OWNER TO monarch;

--
-- Name: import_match_serviceprofile; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE import_match_serviceprofile (
    match_id integer DEFAULT 0 NOT NULL,
    serviceprofile_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.import_match_serviceprofile OWNER TO monarch;

--
-- Name: import_schema; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE import_schema (
    schema_id integer NOT NULL,
    name character varying(255),
    delimiter character varying(50),
    description text,
    type character varying(255),
    sync_object character varying(50),
    smart_name smallint DEFAULT 0,
    hostprofile_id integer DEFAULT 0,
    data_source character varying(255)
);


ALTER TABLE public.import_schema OWNER TO monarch;

--
-- Name: import_schema_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE import_schema_schema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.import_schema_schema_id_seq OWNER TO monarch;

--
-- Name: import_schema_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE import_schema_schema_id_seq OWNED BY import_schema.schema_id;


--
-- Name: import_schema_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('import_schema_schema_id_seq', 1, false);


--
-- Name: import_services; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE import_services (
    import_services_id integer NOT NULL,
    import_hosts_id integer,
    description character varying(255),
    check_command_id integer,
    command_line character varying(255),
    command_line_trans character varying(255),
    servicename_id integer,
    serviceprofile_id integer
);


ALTER TABLE public.import_services OWNER TO monarch;

--
-- Name: import_services_import_services_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE import_services_import_services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.import_services_import_services_id_seq OWNER TO monarch;

--
-- Name: import_services_import_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE import_services_import_services_id_seq OWNED BY import_services.import_services_id;


--
-- Name: import_services_import_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('import_services_import_services_id_seq', 1, false);


--
-- Name: monarch_group_child; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE monarch_group_child (
    group_id integer DEFAULT 0 NOT NULL,
    child_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.monarch_group_child OWNER TO monarch;

--
-- Name: monarch_group_host; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE monarch_group_host (
    group_id integer DEFAULT 0 NOT NULL,
    host_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.monarch_group_host OWNER TO monarch;

--
-- Name: monarch_group_hostgroup; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE monarch_group_hostgroup (
    group_id integer DEFAULT 0 NOT NULL,
    hostgroup_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.monarch_group_hostgroup OWNER TO monarch;

--
-- Name: monarch_group_macro; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE monarch_group_macro (
    group_id integer DEFAULT 0 NOT NULL,
    macro_id integer DEFAULT 0 NOT NULL,
    value character varying(255)
);


ALTER TABLE public.monarch_group_macro OWNER TO monarch;

--
-- Name: monarch_group_props; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE monarch_group_props (
    prop_id integer NOT NULL,
    group_id integer,
    name character varying(255),
    type character varying(20),
    value character varying(1020)
);


ALTER TABLE public.monarch_group_props OWNER TO monarch;

--
-- Name: monarch_group_props_prop_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE monarch_group_props_prop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.monarch_group_props_prop_id_seq OWNER TO monarch;

--
-- Name: monarch_group_props_prop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE monarch_group_props_prop_id_seq OWNED BY monarch_group_props.prop_id;


--
-- Name: monarch_group_props_prop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('monarch_group_props_prop_id_seq', 1, false);


--
-- Name: monarch_groups; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE monarch_groups (
    group_id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    location text,
    status smallint,
    data text
);


ALTER TABLE public.monarch_groups OWNER TO monarch;

--
-- Name: monarch_groups_group_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE monarch_groups_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.monarch_groups_group_id_seq OWNER TO monarch;

--
-- Name: monarch_groups_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE monarch_groups_group_id_seq OWNED BY monarch_groups.group_id;


--
-- Name: monarch_groups_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('monarch_groups_group_id_seq', 2, true);


--
-- Name: monarch_macros; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE monarch_macros (
    macro_id integer NOT NULL,
    name character varying(255),
    value character varying(255),
    description character varying(255)
);


ALTER TABLE public.monarch_macros OWNER TO monarch;

--
-- Name: monarch_macros_macro_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE monarch_macros_macro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.monarch_macros_macro_id_seq OWNER TO monarch;

--
-- Name: monarch_macros_macro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE monarch_macros_macro_id_seq OWNED BY monarch_macros.macro_id;


--
-- Name: monarch_macros_macro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('monarch_macros_macro_id_seq', 1, false);


--
-- Name: performanceconfig; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE performanceconfig (
    performanceconfig_id integer NOT NULL,
    host character varying(255) NOT NULL,
    service character varying(255) NOT NULL,
    type character varying(100) NOT NULL,
    enable smallint DEFAULT 0,
    parseregx_first smallint DEFAULT 0,
    service_regx smallint DEFAULT 0,
    label character varying(100) NOT NULL,
    rrdname character varying(100) NOT NULL,
    rrdcreatestring text NOT NULL,
    rrdupdatestring text NOT NULL,
    graphcgi text,
    perfidstring character varying(100) NOT NULL,
    parseregx character varying(255) NOT NULL
);


ALTER TABLE public.performanceconfig OWNER TO monarch;

--
-- Name: performanceconfig_performanceconfig_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE performanceconfig_performanceconfig_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.performanceconfig_performanceconfig_id_seq OWNER TO monarch;

--
-- Name: performanceconfig_performanceconfig_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE performanceconfig_performanceconfig_id_seq OWNED BY performanceconfig.performanceconfig_id;


--
-- Name: performanceconfig_performanceconfig_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('performanceconfig_performanceconfig_id_seq', 77, true);


--
-- Name: profile_host_profile_service; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE profile_host_profile_service (
    hostprofile_id integer DEFAULT 0 NOT NULL,
    serviceprofile_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.profile_host_profile_service OWNER TO monarch;

--
-- Name: profile_hostgroup; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE profile_hostgroup (
    hostprofile_id integer DEFAULT 0 NOT NULL,
    hostgroup_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.profile_hostgroup OWNER TO monarch;

--
-- Name: profile_parent; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE profile_parent (
    hostprofile_id integer DEFAULT 0 NOT NULL,
    host_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.profile_parent OWNER TO monarch;

--
-- Name: profiles_host; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE profiles_host (
    hostprofile_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    host_template_id integer,
    host_extinfo_id integer,
    host_escalation_id integer,
    service_escalation_id integer,
    data text
);


ALTER TABLE public.profiles_host OWNER TO monarch;

--
-- Name: profiles_host_hostprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE profiles_host_hostprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_host_hostprofile_id_seq OWNER TO monarch;

--
-- Name: profiles_host_hostprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE profiles_host_hostprofile_id_seq OWNED BY profiles_host.hostprofile_id;


--
-- Name: profiles_host_hostprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('profiles_host_hostprofile_id_seq', 4, true);


--
-- Name: profiles_service; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE profiles_service (
    serviceprofile_id integer NOT NULL,
    name character varying(255),
    description character varying(100),
    data text
);


ALTER TABLE public.profiles_service OWNER TO monarch;

--
-- Name: profiles_service_serviceprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE profiles_service_serviceprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_service_serviceprofile_id_seq OWNER TO monarch;

--
-- Name: profiles_service_serviceprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE profiles_service_serviceprofile_id_seq OWNED BY profiles_service.serviceprofile_id;


--
-- Name: profiles_service_serviceprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('profiles_service_serviceprofile_id_seq', 5, true);


--
-- Name: service_dependency; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE service_dependency (
    id integer NOT NULL,
    service_id integer DEFAULT 0 NOT NULL,
    host_id integer DEFAULT 0 NOT NULL,
    depend_on_host_id integer DEFAULT 0 NOT NULL,
    template integer DEFAULT 0 NOT NULL,
    comment text
);


ALTER TABLE public.service_dependency OWNER TO monarch;

--
-- Name: service_dependency_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE service_dependency_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_dependency_id_seq OWNER TO monarch;

--
-- Name: service_dependency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE service_dependency_id_seq OWNED BY service_dependency.id;


--
-- Name: service_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('service_dependency_id_seq', 1, false);


--
-- Name: service_dependency_templates; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE service_dependency_templates (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    servicename_id integer DEFAULT 0 NOT NULL,
    data text,
    comment text
);


ALTER TABLE public.service_dependency_templates OWNER TO monarch;

--
-- Name: service_dependency_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE service_dependency_templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_dependency_templates_id_seq OWNER TO monarch;

--
-- Name: service_dependency_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE service_dependency_templates_id_seq OWNED BY service_dependency_templates.id;


--
-- Name: service_dependency_templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('service_dependency_templates_id_seq', 1, false);


--
-- Name: service_instance; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE service_instance (
    instance_id integer NOT NULL,
    service_id integer DEFAULT 0 NOT NULL,
    name character varying(255) NOT NULL,
    status smallint DEFAULT 0,
    arguments character varying(508)
);


ALTER TABLE public.service_instance OWNER TO monarch;

--
-- Name: service_instance_instance_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE service_instance_instance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_instance_instance_id_seq OWNER TO monarch;

--
-- Name: service_instance_instance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE service_instance_instance_id_seq OWNED BY service_instance.instance_id;


--
-- Name: service_instance_instance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('service_instance_instance_id_seq', 1, false);


--
-- Name: service_names; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE service_names (
    servicename_id integer NOT NULL,
    name character varying(255),
    description character varying(100),
    template integer,
    check_command integer,
    command_line text,
    escalation integer,
    extinfo integer,
    data text
);


ALTER TABLE public.service_names OWNER TO monarch;

--
-- Name: service_names_servicename_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE service_names_servicename_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_names_servicename_id_seq OWNER TO monarch;

--
-- Name: service_names_servicename_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE service_names_servicename_id_seq OWNED BY service_names.servicename_id;


--
-- Name: service_names_servicename_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('service_names_servicename_id_seq', 238, true);


--
-- Name: service_overrides; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE service_overrides (
    service_id integer DEFAULT 0 NOT NULL,
    check_period integer,
    notification_period integer,
    event_handler integer,
    data text
);


ALTER TABLE public.service_overrides OWNER TO monarch;

--
-- Name: service_templates; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE service_templates (
    servicetemplate_id integer NOT NULL,
    name character varying(255) NOT NULL,
    parent_id integer,
    check_period integer,
    notification_period integer,
    check_command integer,
    command_line text,
    event_handler integer,
    data text,
    comment text
);


ALTER TABLE public.service_templates OWNER TO monarch;

--
-- Name: service_templates_servicetemplate_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE service_templates_servicetemplate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_templates_servicetemplate_id_seq OWNER TO monarch;

--
-- Name: service_templates_servicetemplate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE service_templates_servicetemplate_id_seq OWNED BY service_templates.servicetemplate_id;


--
-- Name: service_templates_servicetemplate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('service_templates_servicetemplate_id_seq', 1, true);


--
-- Name: servicegroup_service; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE servicegroup_service (
    servicegroup_id integer DEFAULT 0 NOT NULL,
    host_id integer DEFAULT 0 NOT NULL,
    service_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.servicegroup_service OWNER TO monarch;

--
-- Name: servicegroups; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE servicegroups (
    servicegroup_id integer NOT NULL,
    name character varying(255) NOT NULL,
    alias character varying(255) NOT NULL,
    escalation_id integer,
    comment text,
    notes character varying(4096)
);


ALTER TABLE public.servicegroups OWNER TO monarch;

--
-- Name: servicegroups_servicegroup_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE servicegroups_servicegroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.servicegroups_servicegroup_id_seq OWNER TO monarch;

--
-- Name: servicegroups_servicegroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE servicegroups_servicegroup_id_seq OWNED BY servicegroups.servicegroup_id;


--
-- Name: servicegroups_servicegroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('servicegroups_servicegroup_id_seq', 6, true);


--
-- Name: servicename_dependency; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE servicename_dependency (
    id integer NOT NULL,
    servicename_id integer DEFAULT 0 NOT NULL,
    depend_on_host_id integer,
    template integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.servicename_dependency OWNER TO monarch;

--
-- Name: servicename_dependency_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE servicename_dependency_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.servicename_dependency_id_seq OWNER TO monarch;

--
-- Name: servicename_dependency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE servicename_dependency_id_seq OWNED BY servicename_dependency.id;


--
-- Name: servicename_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('servicename_dependency_id_seq', 1, false);


--
-- Name: servicename_overrides; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE servicename_overrides (
    servicename_id integer DEFAULT 0 NOT NULL,
    check_period integer,
    notification_period integer,
    event_handler integer,
    data text
);


ALTER TABLE public.servicename_overrides OWNER TO monarch;

--
-- Name: serviceprofile; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE serviceprofile (
    servicename_id integer DEFAULT 0 NOT NULL,
    serviceprofile_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.serviceprofile OWNER TO monarch;

--
-- Name: serviceprofile_host; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE serviceprofile_host (
    serviceprofile_id integer DEFAULT 0 NOT NULL,
    host_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.serviceprofile_host OWNER TO monarch;

--
-- Name: serviceprofile_hostgroup; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE serviceprofile_hostgroup (
    serviceprofile_id integer DEFAULT 0 NOT NULL,
    hostgroup_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.serviceprofile_hostgroup OWNER TO monarch;

--
-- Name: services; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE services (
    service_id integer NOT NULL,
    host_id integer DEFAULT 0 NOT NULL,
    servicename_id integer DEFAULT 0 NOT NULL,
    servicetemplate_id integer,
    serviceextinfo_id integer,
    escalation_id integer,
    status smallint,
    check_command integer,
    command_line text,
    comment text,
    notes character varying(4096)
);


ALTER TABLE public.services OWNER TO monarch;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE services_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO monarch;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE services_service_id_seq OWNED BY services.service_id;


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('services_service_id_seq', 200, true);


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE sessions (
    id character(32) NOT NULL,
    a_session text NOT NULL
);


ALTER TABLE public.sessions OWNER TO monarch;

--
-- Name: setup; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE setup (
    name character varying(255) NOT NULL,
    type character varying(50),
    value text
);


ALTER TABLE public.setup OWNER TO monarch;

--
-- Name: stage_host_hostgroups; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE stage_host_hostgroups (
    name character varying(255) NOT NULL,
    user_acct character varying(50) NOT NULL,
    hostgroup character varying(50) NOT NULL
);


ALTER TABLE public.stage_host_hostgroups OWNER TO monarch;

--
-- Name: stage_host_services; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE stage_host_services (
    name character varying(255) NOT NULL,
    user_acct character varying(50) NOT NULL,
    host character varying(50) NOT NULL,
    type character varying(20),
    status smallint,
    service_id integer
);


ALTER TABLE public.stage_host_services OWNER TO monarch;

--
-- Name: stage_hosts; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE stage_hosts (
    name character varying(255) NOT NULL,
    user_acct character varying(50) NOT NULL,
    type character varying(20),
    status smallint,
    alias character varying(255),
    address character varying(255),
    os character varying(50),
    hostprofile character varying(50),
    serviceprofile character varying(50),
    info character varying(50),
    notes character varying(4096)
);


ALTER TABLE public.stage_hosts OWNER TO monarch;

--
-- Name: stage_other; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE stage_other (
    name character varying(255) NOT NULL,
    type character varying(50) NOT NULL,
    parent character varying(255) NOT NULL,
    data text,
    comment text
);


ALTER TABLE public.stage_other OWNER TO monarch;

--
-- Name: time_period_exclude; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE time_period_exclude (
    timeperiod_id integer DEFAULT 0 NOT NULL,
    exclude_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.time_period_exclude OWNER TO monarch;

--
-- Name: time_period_property; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE time_period_property (
    timeperiod_id integer DEFAULT 0 NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255),
    value character varying(255),
    comment character varying(255)
);


ALTER TABLE public.time_period_property OWNER TO monarch;

--
-- Name: time_periods; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE time_periods (
    timeperiod_id integer NOT NULL,
    name character varying(255) NOT NULL,
    alias character varying(255) NOT NULL,
    comment text
);


ALTER TABLE public.time_periods OWNER TO monarch;

--
-- Name: time_periods_timeperiod_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE time_periods_timeperiod_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.time_periods_timeperiod_id_seq OWNER TO monarch;

--
-- Name: time_periods_timeperiod_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE time_periods_timeperiod_id_seq OWNED BY time_periods.timeperiod_id;


--
-- Name: time_periods_timeperiod_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('time_periods_timeperiod_id_seq', 4, true);


--
-- Name: tree_template_contactgroup; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE tree_template_contactgroup (
    tree_id integer DEFAULT 0 NOT NULL,
    template_id integer DEFAULT 0 NOT NULL,
    contactgroup_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.tree_template_contactgroup OWNER TO monarch;

--
-- Name: user_group; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE user_group (
    usergroup_id integer DEFAULT 0 NOT NULL,
    user_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.user_group OWNER TO monarch;

--
-- Name: user_groups; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE user_groups (
    usergroup_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(100)
);


ALTER TABLE public.user_groups OWNER TO monarch;

--
-- Name: user_groups_usergroup_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE user_groups_usergroup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_groups_usergroup_id_seq OWNER TO monarch;

--
-- Name: user_groups_usergroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE user_groups_usergroup_id_seq OWNED BY user_groups.usergroup_id;


--
-- Name: user_groups_usergroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('user_groups_usergroup_id_seq', 1, true);


--
-- Name: users; Type: TABLE; Schema: public; Owner: monarch; Tablespace: 
--

CREATE TABLE users (
    user_id integer NOT NULL,
    user_acct character varying(20) NOT NULL,
    user_name character varying(255) NOT NULL,
    password character varying(20) NOT NULL,
    session character varying(255)
);


ALTER TABLE public.users OWNER TO monarch;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: monarch
--

CREATE SEQUENCE users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO monarch;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: monarch
--

ALTER SEQUENCE users_user_id_seq OWNED BY users.user_id;


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: monarch
--

SELECT pg_catalog.setval('users_user_id_seq', 2, true);


--
-- Name: command_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE commands ALTER COLUMN command_id SET DEFAULT nextval('commands_command_id_seq'::regclass);


--
-- Name: contacttemplate_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE contact_templates ALTER COLUMN contacttemplate_id SET DEFAULT nextval('contact_templates_contacttemplate_id_seq'::regclass);


--
-- Name: contactgroup_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE contactgroups ALTER COLUMN contactgroup_id SET DEFAULT nextval('contactgroups_contactgroup_id_seq'::regclass);


--
-- Name: contact_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE contacts ALTER COLUMN contact_id SET DEFAULT nextval('contacts_contact_id_seq'::regclass);


--
-- Name: datatype_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE datatype ALTER COLUMN datatype_id SET DEFAULT nextval('datatype_datatype_id_seq'::regclass);


--
-- Name: filter_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE discover_filter ALTER COLUMN filter_id SET DEFAULT nextval('discover_filter_filter_id_seq'::regclass);


--
-- Name: group_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE discover_group ALTER COLUMN group_id SET DEFAULT nextval('discover_group_group_id_seq'::regclass);


--
-- Name: method_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE discover_method ALTER COLUMN method_id SET DEFAULT nextval('discover_method_method_id_seq'::regclass);


--
-- Name: template_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE escalation_templates ALTER COLUMN template_id SET DEFAULT nextval('escalation_templates_template_id_seq'::regclass);


--
-- Name: tree_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE escalation_trees ALTER COLUMN tree_id SET DEFAULT nextval('escalation_trees_tree_id_seq'::regclass);


--
-- Name: hostextinfo_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE extended_host_info_templates ALTER COLUMN hostextinfo_id SET DEFAULT nextval('extended_host_info_templates_hostextinfo_id_seq'::regclass);


--
-- Name: serviceextinfo_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE extended_service_info_templates ALTER COLUMN serviceextinfo_id SET DEFAULT nextval('extended_service_info_templates_serviceextinfo_id_seq'::regclass);


--
-- Name: external_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE externals ALTER COLUMN external_id SET DEFAULT nextval('externals_external_id_seq'::regclass);


--
-- Name: host_service_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE host_service ALTER COLUMN host_service_id SET DEFAULT nextval('host_service_host_service_id_seq'::regclass);


--
-- Name: hosttemplate_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE host_templates ALTER COLUMN hosttemplate_id SET DEFAULT nextval('host_templates_hosttemplate_id_seq'::regclass);


--
-- Name: hostgroup_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE hostgroups ALTER COLUMN hostgroup_id SET DEFAULT nextval('hostgroups_hostgroup_id_seq'::regclass);


--
-- Name: host_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE hosts ALTER COLUMN host_id SET DEFAULT nextval('hosts_host_id_seq'::regclass);


--
-- Name: column_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE import_column ALTER COLUMN column_id SET DEFAULT nextval('import_column_column_id_seq'::regclass);


--
-- Name: import_hosts_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE import_hosts ALTER COLUMN import_hosts_id SET DEFAULT nextval('import_hosts_import_hosts_id_seq'::regclass);


--
-- Name: match_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE import_match ALTER COLUMN match_id SET DEFAULT nextval('import_match_match_id_seq'::regclass);


--
-- Name: schema_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE import_schema ALTER COLUMN schema_id SET DEFAULT nextval('import_schema_schema_id_seq'::regclass);


--
-- Name: import_services_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE import_services ALTER COLUMN import_services_id SET DEFAULT nextval('import_services_import_services_id_seq'::regclass);


--
-- Name: prop_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE monarch_group_props ALTER COLUMN prop_id SET DEFAULT nextval('monarch_group_props_prop_id_seq'::regclass);


--
-- Name: group_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE monarch_groups ALTER COLUMN group_id SET DEFAULT nextval('monarch_groups_group_id_seq'::regclass);


--
-- Name: macro_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE monarch_macros ALTER COLUMN macro_id SET DEFAULT nextval('monarch_macros_macro_id_seq'::regclass);


--
-- Name: performanceconfig_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE performanceconfig ALTER COLUMN performanceconfig_id SET DEFAULT nextval('performanceconfig_performanceconfig_id_seq'::regclass);


--
-- Name: hostprofile_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE profiles_host ALTER COLUMN hostprofile_id SET DEFAULT nextval('profiles_host_hostprofile_id_seq'::regclass);


--
-- Name: serviceprofile_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE profiles_service ALTER COLUMN serviceprofile_id SET DEFAULT nextval('profiles_service_serviceprofile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE service_dependency ALTER COLUMN id SET DEFAULT nextval('service_dependency_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE service_dependency_templates ALTER COLUMN id SET DEFAULT nextval('service_dependency_templates_id_seq'::regclass);


--
-- Name: instance_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE service_instance ALTER COLUMN instance_id SET DEFAULT nextval('service_instance_instance_id_seq'::regclass);


--
-- Name: servicename_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE service_names ALTER COLUMN servicename_id SET DEFAULT nextval('service_names_servicename_id_seq'::regclass);


--
-- Name: servicetemplate_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE service_templates ALTER COLUMN servicetemplate_id SET DEFAULT nextval('service_templates_servicetemplate_id_seq'::regclass);


--
-- Name: servicegroup_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE servicegroups ALTER COLUMN servicegroup_id SET DEFAULT nextval('servicegroups_servicegroup_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE servicename_dependency ALTER COLUMN id SET DEFAULT nextval('servicename_dependency_id_seq'::regclass);


--
-- Name: service_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE services ALTER COLUMN service_id SET DEFAULT nextval('services_service_id_seq'::regclass);


--
-- Name: timeperiod_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE time_periods ALTER COLUMN timeperiod_id SET DEFAULT nextval('time_periods_timeperiod_id_seq'::regclass);


--
-- Name: usergroup_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE user_groups ALTER COLUMN usergroup_id SET DEFAULT nextval('user_groups_usergroup_id_seq'::regclass);


--
-- Name: user_id; Type: DEFAULT; Schema: public; Owner: monarch
--

ALTER TABLE users ALTER COLUMN user_id SET DEFAULT nextval('users_user_id_seq'::regclass);


--
-- Data for Name: access_list; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY access_list (object, type, usergroup_id, access_values) FROM stdin;
commands	design_manage	1	add,modify,delete
commit	control	1	full_control
contactgroups	design_manage	1	add,modify,delete
contacts	design_manage	1	add,modify,delete
contact_templates	design_manage	1	add,modify,delete
escalations	design_manage	1	add,modify,delete
export	design_manage	1	add,modify,delete
extended_host_info_templates	design_manage	1	add,modify,delete
extended_service_info_templates	design_manage	1	add,modify,delete
externals	design_manage	1	add,modify,delete
ez_commit	ez	1	ez_commit
ez_discover	ez	1	ez_discover
ez_enabled	ez	1	ez_enabled
ez_hosts	ez	1	ez_hosts
ez_host_groups	ez	1	ez_host_groups
ez_import	ez	1	ez_import
ez_notifications	ez	1	ez_notifications
ez_profiles	ez	1	ez_profiles
ez_setup	ez	1	ez_setup
files	control	1	full_control
hostgroups	design_manage	1	add,modify,delete
hosts	design_manage	1	add,modify,delete
host_delete_tool	tools	1	add,modify,delete
host_dependencies	design_manage	1	add,modify,delete
host_templates	design_manage	1	add,modify,delete
import	discover	1	full_control
load	control	1	full_control
main_ez	ez	1	main_ez
manage	group_macro	1	manage
match_strings	discover	1	full_control
nagios_cgi_configuration	control	1	full_control
nagios_main_configuration	control	1	full_control
nagios_resource_macros	control	1	full_control
nmap	discover	1	full_control
parent_child	design_manage	1	add,modify,delete
pre_flight_test	control	1	full_control
process_stage	discover	1	full_control
profiles	design_manage	1	add,modify,delete
run_external_scripts	control	1	full_control
servicegroups	design_manage	1	add,modify,delete
services	design_manage	1	add,modify,delete
service_delete_tool	tools	1	add,modify,delete
service_dependency_templates	design_manage	1	add,modify,delete
service_templates	design_manage	1	add,modify,delete
setup	control	1	full_control
time_periods	design_manage	1	add,modify,delete
users	control	1	full_control
user_groups	control	1	full_control
\.


--
-- Data for Name: commands; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY commands (command_id, name, type, data, comment) FROM stdin;
1	check_local_load	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_load -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	# 'check_local_load' command definition
2	check_nntp	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nntp -H $HOSTADDRESS$ -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	# 'check_nntp' command definition
3	check_telnet	check	<?xml version="1.0" ?>\n<data>\n <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -p 23]]>\n </prop>\n</data>	# 'check_telnet' command definition
4	check_ftp	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_ftp -H $HOSTADDRESS$ -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	# 'check_ftp' command definition
5	host-notify-by-email	notify	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[/usr/bin/printf "%b" "GroundWork Host Status Notification:\\n\\nType:        $NOTIFICATIONTYPE$\\nHost:        $HOSTNAME$ ($HOSTADDRESS$)\\nHost State:  $HOSTSTATE$\\nHost Info:   $HOSTOUTPUT$\\nTime:        $LONGDATETIME$\\nHost Notes:  `echo '$HOSTNOTES$' | sed 's/<br>/\\\\n/g'`\\n" | /usr/local/groundwork/common/bin/mail -s "[GW] $NOTIFICATIONTYPE$ alert: $HOSTNAME$ is $HOSTSTATE$" $CONTACTEMAIL$]]>\n  </prop>\n</data>	# 'host-notify-by-email' command definition
6	process-service-perfdata	check	<?xml version="1.0" ?>\n<data>\n <prop name="command_line"><![CDATA[/usr/bin/printf "%b" "$LASTSERVICECHECK$\\t$HOSTNAME$\\t$SERVICEDESC$\\t$SERVICESTATE$\\t$SERVICEATTEMPT$\\t$SERVICESTATETYPE$\\t$SERVICEEXECUTIONTIME$\\t$SERVICELATENCY$\\t$SERVICEOUTPUT$\\t$SERVICEPERFDATA$\\n" >> /usr/local/groundwork/nagios/var/service-perfdata.dat]]>\n </prop>\n</data>	# 'process-service-perfdata' command definition
7	check-host-alive	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_icmp -H $HOSTADDRESS$ -w 3000.0,80% -c 5000.0,100% -n 1]]>\n  </prop>\n</data>	# 'check-host-alive' command definition
8	check_udp	check	<?xml version="1.0" ?>\n<data>\n <prop name="command_line"><![CDATA[$USER1$/check_udp -H $HOSTADDRESS$ -p $ARG1$]]>\n </prop>\n</data>	# 'check_udp' command definition
9	service-notify-by-epager	notify	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[/usr/bin/printf "%b" "Host $HOSTNAME$ is $HOSTSTATE$\\nService $SERVICEDESC$ is $SERVICESTATE$\\nInfo: $SERVICEOUTPUT$\\nTime: $LONGDATETIME$\\n" | /usr/local/groundwork/common/bin/mail -s "$NOTIFICATIONTYPE$ alert: $HOSTNAME$/$SERVICEDESC$ is $SERVICESTATE$" $CONTACTPAGER$]]>\n  </prop>\n</data>	# 'notify-by-epager' command definition
10	check_local_procs	check	<?xml version="1.0" ?>\n<data>\n <prop name="command_line"><![CDATA[$USER1$/check_procs -w $ARG1$ -c $ARG2$ -s $ARG3$]]>\n </prop>\n</data>	# 'check_local_procs' command definition
11	check_http	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_http -H $HOSTADDRESS$ -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	# 'check_http' command definition
12	check_pop3	check	<?xml version="1.0" ?>\n<data>\n <prop name="command_line"><![CDATA[$USER1$/check_pop -H $HOSTADDRESS$]]>\n </prop>\n</data>	# 'check_pop' command definition
13	check_hpjd	check	<?xml version="1.0" ?>\n<data>\n <prop name="command_line"><![CDATA[$USER1$/check_hpjd -H $HOSTADDRESS$ -C public]]>\n </prop>\n</data>	# 'check_hpjd' command definition
14	service-notify-by-email	notify	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[/usr/bin/printf "%b" "GroundWork Service Status Notification:\\n\\nType:           $NOTIFICATIONTYPE$\\nHost:           $HOSTNAME$ ($HOSTADDRESS$)\\nHost State:     $HOSTSTATE$\\nService:        $SERVICEDESC$\\nService State:  $SERVICESTATE$\\nService Info:   $SERVICEOUTPUT$\\nTime:           $LONGDATETIME$\\nService Notes:  `echo '$SERVICENOTES$' | sed 's/<br>/\\\\n/g'`\\n" | /usr/local/groundwork/common/bin/mail -s "[GW] $NOTIFICATIONTYPE$ alert: $HOSTNAME$/$SERVICEDESC$ is $SERVICESTATE$" $CONTACTEMAIL$]]>\n  </prop>\n</data>	# 'notify-by-email' command definition
15	check_smtp	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_smtp -H $HOSTADDRESS$ -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	# 'check_smtp' command definition
16	check_local_users	check	<?xml version="1.0" ?>\n<data>\n <prop name="command_line"><![CDATA[$USER1$/check_users -w $ARG1$ -c $ARG2$]]>\n </prop>\n</data>	# 'check_local_users' command definition
17	host-notify-by-epager	notify	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[/usr/bin/printf "%b" "Host $HOSTNAME$ is $HOSTSTATE$\\nInfo: $HOSTOUTPUT$\\nTime: $LONGDATETIME$\\n" | /usr/local/groundwork/common/bin/mail -s "$NOTIFICATIONTYPE$ alert: $HOSTNAME$ is $HOSTSTATE$" $CONTACTPAGER$]]>\n  </prop>\n</data>	# 'host-notify-by-epager' command definition
18	check_proc	check	<?xml version="1.0" ?>\n<data>\n <prop name="command_line"><![CDATA[$USER1$/check_procs -c $ARG1$ -C $ARG2$]]>\n </prop>\n</data>	# 'check_procs' command definition
19	check_ping	check	<?xml version="1.0" ?>\n<data>\n <prop name="command_line"><![CDATA[$USER1$/check_icmp -H $HOSTADDRESS$ -w $ARG1$ -c $ARG2$ -n 5]]>\n </prop>\n</data>	# 'check_ping' command definition
20	check_tcp	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -p $ARG1$]]>\n  </prop>\n</data>	# 'check_tcp' command definition
21	check_dns	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_dns -t 30 -s $HOSTADDRESS$ -H "$ARG1$"]]>\n  </prop>\n</data>	# 'check_dns' command definition
22	check_local_disk	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_disk -m -w "$ARG1$" -c "$ARG2$" -p "$ARG3$"]]>\n  </prop>\n</data>	# 'check_local_disk' command definition
23	process-host-perfdata	check	<?xml version="1.0" ?>\n<data>\n <prop name="command_line"><![CDATA[/usr/bin/printf "%b" "$LASTHOSTCHECK$\\t$HOSTNAME$\\t$HOSTSTATE$\\t$HOSTATTEMPT$\\t$HOSTSTATETYPE$\\t$HOSTEXECUTIONTIME$\\t$HOSTOUTPUT$\\t$HOSTPERFDATA$\\n" >> /usr/local/groundwork/nagios/var/host-perfdata.dat]]>\n </prop>\n</data>	# 'process-host-perfdata' command definition
24	check_alive	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_icmp -H $HOSTADDRESS$ -w 3000.0,80% -c 5000.0,100% -n 1]]>\n  </prop>\n</data>	\N
25	check_tcp_ssh	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -p 22]]>\n  </prop>\n</data>	\N
26	check_by_ssh_disk	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_disk -w $ARG1$ -c $ARG2$ -p $ARG3$"]]>\n  </prop>\n</data>	\N
27	check_by_ssh_load	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_load -w $ARG1$ -c $ARG2$"]]>\n  </prop>\n</data>	\N
28	check_by_ssh_mem	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_mem.pl -U -w $ARG1$ -c $ARG2$"]]>\n  </prop>\n</data>	\N
29	check_by_ssh_process_count	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_procs -w $ARG1$ -c $ARG2$"]]>\n  </prop>\n</data>	\N
30	check_by_ssh_swap	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_swap -w $ARG1$ -c $ARG2$"]]>\n  </prop>\n</data>	\N
31	check_snmp	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_snmp -H $HOSTADDRESS$ -o "$ARG1$" -r "$ARG2$" -l "$ARG3$" -C '$USER7$']]>\n  </prop>\n</data>	\N
32	check_snmp_if	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_snmp -H $HOSTADDRESS$ -C '$USER7$' -o "IF-MIB::ifInOctets.$ARG1$,IF-MIB::ifOutOctets.$ARG1$ ,IF-MIB::ifInDiscards.$ARG1$,IF-MIB::ifOutDiscards.$ARG1$,IF-MIB::ifInErrors.$ARG1$,IF-MIB::ifOutErrors.$ARG1$"]]>\n  </prop>\n</data>	\N
33	check_snmp_bandwidth	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_snmp -H $HOSTADDRESS$ -C '$USER7$' -o "IF-MIB::ifInOctets.$ARG1$,IF-MIB::ifOutOctets.$ARG1$,IF-MIB::ifSpeed.$ARG1$"]]>\n  </prop>\n</data>	\N
34	check_ifoperstatus	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_ifoperstatus -k "$ARG1$" -H $HOSTADDRESS$ -C "$USER7$"]]>\n  </prop>\n</data>	\N
35	host-notify-by-sendemail	notify	<?xml version="1.0" ?>\n<data>\n <prop name="command_line"><![CDATA[/usr/bin/printf "%b" "<html>\\n<table width='auto' style='background-color: #E6DBC3"\\;" min-width: 350px'>\\n<caption style='font-weight: bold"\\;" background-color: #B39962'><b>GroundWork Host<br>$NOTIFICATIONTYPE$ Notification</b></caption>\\n<tr>\\n<td style='background-color: #CCB98F'>Host:</td>\\n<td><b><a href='http://$USER32$/portal-statusviewer/urlmap?host=$HOSTNAME$'>$HOSTNAME$</a> ($HOSTADDRESS$)</b></td>\\n</tr>\\n<tr>\\n<td style='background-color: #CCB98F'>Host State:</td>\\n<td style='background-color: #F3EDE1'><b>$HOSTSTATE$</b></td>\\n</tr>\\n<tr>\\n<td style='background-color: #CCB98F'>Host Info:</td>\\n<td><b>$HOSTOUTPUT$</b></td>\\n</tr>\\n<tr>\\n<td style='background-color: #CCB98F'>Time:</td>\\n<td><b>$LONGDATETIME$</b></td>\\n</tr>\\n<tr>\\n<td style='background-color: #CCB98F'>Host Notes:</td>\\n<td><b>`echo '$HOSTNOTES$' | sed 's/<br>/\\\\n/g'`</b></td>\\n</tr>\\n</table>\\n</html>\\n" | /usr/local/groundwork/common/bin/sendEmail -s $USER13$ -q -f $ADMINEMAIL$ -t $CONTACTEMAIL$ -u "[GW] $NOTIFICATIONTYPE$ alert: $HOSTNAME$ is $HOSTSTATE$"]]>\n </prop>\n</data>	\N
36	service-notify-by-sendemail	notify	<?xml version="1.0" ?>\n<data>\n <prop name="command_line"><![CDATA[/usr/bin/printf "%b" "<html>\\n<table width='auto' style='background-color: #E6DBC3"\\;" min-width: 350px'>\\n<caption style='font-weight: bold"\\;" background-color: #B39962'>GroundWork Service<br>$NOTIFICATIONTYPE$ Notification</caption>\\n<tr>\\n<td style='background-color: #CCB98F'>Host:</td>\\n<td><b><a href='http://$USER32$/portal-statusviewer/urlmap?host=$HOSTNAME$'>$HOSTNAME$</a> ($HOSTADDRESS$)</b></td>\\n</tr>\\n<tr>\\n<td style='background-color: #CCB98F'>Host State:</td>\\n<td><b>$HOSTSTATE$</b></td>\\n</tr>\\n<tr>\\n<td style='background-color: #CCB98F'>Service:</td>\\n<td><b><a href='http://$USER32$/portal-statusviewer/urlmap?host=$HOSTNAME$&service=$SERVICEDESC$'>$SERVICEDESC$</a></b></td>\\n</tr>\\n<tr>\\n<td style='background-color: #CCB98F'>Service State:</td>\\n<td style='background-color: #F3EDE1'><b>$SERVICESTATE$</b></td>\\n</tr>\\n<tr>\\n<td style='background-color: #CCB98F'>Service Info:</td>\\n<td><b>$SERVICEOUTPUT$</b></td>\\n</tr>\\n<tr>\\n<td style='background-color: #CCB98F'>Time:</td>\\n<td><b>$LONGDATETIME$</b></td>\\n</tr>\\n<tr>\\n<td style='background-color: #CCB98F'>Service Notes:</td>\\n<td><b>`echo '$SERVICENOTES$' | sed 's/<br>/\\\\n/g'`</b></td>\\n</tr>\\n</table>\\n</html>\\n" | /usr/local/groundwork/common/bin/sendEmail -s $USER13$ -q -f $ADMINEMAIL$ -t $CONTACTEMAIL$ -u "[GW] $NOTIFICATIONTYPE$ alert: $HOSTNAME$/$SERVICEDESC$ is $SERVICESTATE$"]]>\n </prop>\n</data>	\N
37	check_mysql	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_mysql -H $HOSTADDRESS$ -d "$ARG1$" -u "$ARG2$" -p "$USER6$"]]>\n  </prop>\n</data>	\N
38	check_mysql_engine	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_mysql -H $HOSTADDRESS$ -u "$ARG1$" -p "$ARG2$"]]>\n  </prop>\n</data>	\N
39	check_mysql_engine_nopw	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_mysql -H $HOSTADDRESS$ -u "$ARG1$"]]>\n  </prop>\n</data>	\N
40	check_local_procs_string	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_procs -w "$ARG1$" -c "$ARG2$" -a "$ARG3$"]]>\n  </prop>\n</data>	\N
41	check_local_mem	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_mem.pl -U -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
42	check_tcp_nsca	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -w $ARG1$ -c $ARG2$ -p 5667]]>\n  </prop>\n</data>	\N
43	check_nagios	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nagios -F /usr/local/groundwork/nagios/var/status.log -e 5 -C bin/.nagios.bin]]>\n  </prop>\n</data>	\N
44	check_nagios_latency	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nagios_latency.pl]]>\n  </prop>\n</data>	\N
45	check_local_procs_arg	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_procs -w "$ARG1$" -c "$ARG2$" -a "$ARG3$"]]>\n  </prop>\n</data>	\N
46	check_local_swap	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_swap -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
47	check_tcp_dns	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -p 53]]>\n  </prop>\n</data>	\N
48	check_udp_dns	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_udp -H $HOSTADDRESS$ -p 53 -s "4500 003d 668f 4000 4011 4ce9 c0a8 02f0"]]>\n  </prop>\n</data>	\N
49	check_dns_expect	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_dns -t 30 -s $HOSTADDRESS$ -H "$ARG1$" -a "$ARG2$"]]>\n  </prop>\n</data>	\N
50	check_tcp_ftp	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -p 21]]>\n  </prop>\n</data>	\N
51	check_tcp_https	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -p 443]]>\n  </prop>\n</data>	\N
52	check_https	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_http -t 60 -H $HOSTADDRESS$ -w "$ARG1$" -c "$ARG2$" -S]]>\n  </prop>\n</data>	\N
53	check_tcp_port	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -p "$ARG1$"]]>\n  </prop>\n</data>	\N
54	check_http_port	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_http -H $HOSTADDRESS$ -w "$ARG1$" -c "$ARG2$" -p "$ARG3$"]]>\n  </prop>\n</data>	\N
55	check_tcp_imaps	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -p 993]]>\n  </prop>\n</data>	\N
56	check_imaps	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_imap -t 60 -H $HOSTADDRESS$ -w "$ARG1$" -c "$ARG2$" -p 993 -S]]>\n  </prop>\n</data>	\N
57	check_tcp_nntps	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -p 563]]>\n  </prop>\n</data>	\N
58	check_nntps	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nntp -H $HOSTADDRESS$ -w "$ARG1$" -c "$ARG2$" -p 563 -S]]>\n  </prop>\n</data>	\N
59	check_tcp_nrpe	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -p 5666]]>\n  </prop>\n</data>	\N
60	check_nrpe	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$]]>\n  </prop>\n</data>	\N
61	check_tcp_pop3s	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -p 995]]>\n  </prop>\n</data>	\N
62	check_pop3s	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_pop -t 60 -H $HOSTADDRESS$ -w "$ARG1$" -c "$ARG2$" -S]]>\n  </prop>\n</data>	\N
63	check_tcp_smtp	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -p 25]]>\n  </prop>\n</data>	\N
64	check_nrpe_print_queue	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_printqueue -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
65	check_nrpe_cpu	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_cpu -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
66	check_nrpe_disk	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_disk -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
67	check_nrpe_disk_transfers	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_disktransfers -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
68	check_nrpe_exchange_mailbox_receiveq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_exchange_mbox_recvq -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
69	check_nrpe_exchange_mailbox_sendq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_exchange_mbox_sendq -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
70	check_nrpe_exchange_mta_workq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_exchange_mta_workq -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
71	check_nrpe_exchange_public_receiveq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_exchange_pub_recvq -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
72	check_nrpe_exchange_public_sendq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_exchange_pub_sendq -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
73	check_nrpe_iis_bytes_received	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_iis_bytes_received -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
74	check_nrpe_iis_bytes_sent	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_iis_bytes_sent -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
75	check_nrpe_iis_bytes_total	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_iis_bytes_total -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
76	check_nrpe_iis_current_connections	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_iis_currentconnections -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
77	check_nrpe_iis_current_nonanonymous_users	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_iis_curnonanonusers -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
78	check_nrpe_iis_get_requests	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_iis_get_requests -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
79	check_nrpe_iis_maximum_connections	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_iis_maximumconnections -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
80	check_nrpe_iis_post_requests	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_iis_post_requests -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
81	check_nrpe_iis_private_bytes	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_iis_privatebytes -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
82	check_nrpe_iis_total_not_found_errors	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_iis_totalnotfounderrors -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
83	check_nrpe_local_cpu	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_cpu -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
84	check_nrpe_local_disk	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_disk -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
85	check_nrpe_local_memory	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_mem -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
86	check_nrpe_local_pagefile	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c check_pagefile_counter -a "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
87	check_nrpe_mem	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_mem -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
88	check_nrpe_mssql_buffer_cache_hits	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_mssql_buf_cache_hit -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
89	check_nrpe_mssql_deadlocks	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_mssql_deadlocks -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
90	check_nrpe_mssql_full_scans	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_mssql_fullscans -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
92	check_nrpe_mssql_lock_wait_time	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_mssql_lock_wait_time -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
93	check_nrpe_mssql_lock_waits	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_mssql_lock_waits -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
94	check_nrpe_mssql_log_growths	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_mssql_log_growth -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
95	check_nrpe_mssql_log_used	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_mssql_log_used -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
96	check_nrpe_mssql_memory_grants_pending	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_mssql_memgrantspending -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
97	check_nrpe_memory_pages	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_swapping -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
98	check_nrpe_mssql_transactions	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_mssql_transactions -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
99	check_nrpe_mssql_users	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $HOSTADDRESS$ -c get_mssql_users -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
148	check_apache	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_apache.pl -H $HOSTADDRESS$]]>\n  </prop>\n</data>	\N
149	check_nt_cpuload	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v CPULOAD -l "$ARG1$"]]>\n  </prop>\n</data>	\N
150	check_nt_useddiskspace	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v USEDDISKSPACE -l $ARG1$ -w $ARG2$ -c $ARG3$]]>\n  </prop>\n</data>	\N
151	check_nt_counter_exchange_mailrq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\MSExchangeIS Mailbox(_Total)\\\\Receive Queue Size","Receive Queue Size is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
152	check_nt_counter_exchange_mailsq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\MSExchangeIS Mailbox(_Total)\\\\Send Queue Size","Send Queue Size is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
153	check_nt_counter_exchange_mtawq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\MSExchangeMTA\\\\Work Queue Length","Work Queue Length is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
154	check_nt_counter_exchange_publicrq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\MSExchangeIS Public(_Total)\\\\Receive Queue Size","Receive Queue Size is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
155	check_nt_counter_exchange_publicsq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\MSExchangeIS Public(_Total)\\\\Send Queue Size","Send Queue Size is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
156	check_nt_memuse	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v MEMUSE -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
157	check_udp_nsclient	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_udp -H $HOSTADDRESS$ -p $USER19$]]>\n  </prop>\n</data>	\N
158	check_ldap	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_ldap -t 60  -H $HOSTADDRESS$ -w "$ARG1$" -c "$ARG2$" -b "$ARG3$" -3]]>\n  </prop>\n</data>	\N
159	check_tcp_ldap	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -t 60 -H $HOSTADDRESS$ -w 2 -c 4 -p 389]]>\n  </prop>\n</data>	\N
160	check_snmptraps	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_snmptraps.pl $HOSTNAME$ $ARG1$ $ARG2$ $ARG3$]]>\n  </prop>\n</data>	\N
161	check_ssh	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_ssh -H $HOSTADDRESS$ -t 60]]>\n  </prop>\n</data>	\N
162	check_by_ssh_apache	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_apache.pl -H $HOSTADDRESS$"]]>\n  </prop>\n</data>	\N
164	check_by_ssh_process_proftpd	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_procs -c 1:1 -a proftpd:\\ \\(accepting"]]>\n  </prop>\n</data>	\N
165	check_by_ssh_process_slapd	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_procs -w $ARG1$ -c $ARG2$ -C slapd"]]>\n  </prop>\n</data>	\N
166	check_by_ssh_mysql	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_mysql -H $HOSTADDRESS$ -d $ARG1$ -u $ARG2$ -p $ARG3$"]]>\n  </prop>\n</data>	\N
167	check_by_ssh_mysql_engine	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_mysql -H $HOSTADDRESS$ -u $ARG1$ -p $ARG2$"]]>\n  </prop>\n</data>	\N
168	check_by_ssh_process_args	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_procs -w $ARG1$ -c $ARG2$ -a $ARG3$"]]>\n  </prop>\n</data>	\N
169	check_sendmail	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_smtp -H $HOSTADDRESS$ -w "$ARG1$" -c "$ARG2$" -C "ehlo groundworkopensource.com" -R "ENHANCEDSTATUSCODES" -f nagios@$HOSTADDRESS$]]>\n  </prop>\n</data>	\N
170	check_by_ssh_mailq_sendmail	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "sudo $USER22$/check_mailq -w $ARG1$ -c $ARG2$ -M sendmail"]]>\n  </prop>\n</data>	\N
171	check_by_ssh_process_crond	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_procs -c 1:1 -a crond"]]>\n  </prop>\n</data>	\N
172	check_by_ssh_process_sendmail_accept	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_procs -c 1:1 -a sendmail:\\ accepting\\ con"]]>\n  </prop>\n</data>	\N
173	check_by_ssh_process_sendmail_qrunner	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_procs -c 1:1 -a sendmail:\\ Queue\\ runner"]]>\n  </prop>\n</data>	\N
174	check_by_ssh_process_xinetd	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_procs -c 1:1 -a xinetd"]]>\n  </prop>\n</data>	\N
175	check_by_ssh_process_cmd	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_procs -w $ARG1$ -c $ARG2$ -C $ARG3$"]]>\n  </prop>\n</data>	\N
176	check_wmi_cpu	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H "$USER21$" -c get_cpu -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
177	check_wmi_disk	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_disk -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
178	check_wmi_mem	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_mem -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
179	check_wmi_exchange_mailbox_receiveq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_exchange_mbox_recvq -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
180	check_wmi_exchange_mailbox_sendq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_exchange_mbox_sendq -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
181	check_wmi_service	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -H $USER21$ -t 60 -c get_service -a "$HOSTADDRESS$" "$ARG1$"]]>\n  </prop>\n</data>	\N
182	check_wmi_exchange_mta_workq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_exchange_mta_workq -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
183	check_wmi_exchange_public_receiveq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_exchange_pub_recvq -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
184	check_wmi_exchange_public_sendq	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_exchange_pub_sendq -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
185	check_wmi_iis_bytes_received	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_iis_bytes_received -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
186	check_wmi_iis_bytes_sent	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_iis_bytes_sent -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
187	check_wmi_iis_bytes_total	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_iis_bytes_total -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
188	check_wmi_iis_current_connections	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_iis_currentconnections -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
189	check_wmi_iis_current_nonanonymous_users	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_iis_curnonanonusers -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
190	check_wmi_iis_get_requests	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_iis_get_requests -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
191	check_wmi_iis_maximum_connections	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_iis_maximumconnections -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
192	check_wmi_iis_post_requests	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_iis_post_requests -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
193	check_wmi_iis_private_bytes	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_iis_privatebytes -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
194	check_wmi_iis_total_not_found_errors	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_iis_totalnotfounderrors -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
225	check_citrix	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_ica_master_browser.pl -I $HOSTADDRESS$ -P $HOSTADDRESS$]]>\n  </prop>\n</data>	\N
226	check_wmi_mssql_buffer_cache_hits	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_mssql_buf_cache_hit -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
227	check_wmi_mssql_deadlocks	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_mssql_deadlocks -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
228	check_wmi_disk_transfers	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_disktransfers -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
229	check_wmi_mssql_full_scans	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_mssql_fullscans -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
231	check_wmi_mssql_lock_wait_time	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_mssql_lock_wait_time -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
232	check_wmi_mssql_lock_waits	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_mssql_lock_waits -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
233	check_wmi_mssql_log_growths	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_mssql_log_growth -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
234	check_wmi_mssql_log_used	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_mssql_log_used -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
235	check_wmi_mssql_memory_grants_pending	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_mssql_memgrantspending -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
236	check_wmi_memory_pages	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_swapping -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
237	check_wmi_mssql_transactions	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_mssql_transactions -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$" "$ARG3$"]]>\n  </prop>\n</data>	\N
238	check_wmi_mssql_users	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -t 60 -H $USER21$ -c get_mssql_users -a "$HOSTADDRESS$" "$ARG1$" "$ARG2$"]]>\n  </prop>\n</data>	\N
246	check_nt_counter_disktransfers	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\PhysicalDisk(_Total)\\\\Disk Transfers/sec","PhysicalDisk(_Total) Disk Transfers/sec is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
247	check_nt_counter_memory_pages	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\Memory\\\\Pages/sec","Pages per Sec is %.f" -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
248	check_nt_counter_mssql_bufcache_hits	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\SQLServer:Buffer Manager\\\\Buffer cache hit ratio","SQLServer:Buffer Manager Buffer cache hit ratio is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
249	check_nt_counter_mssql_deadlocks	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\SQLServer:Locks(_Total)\\\\Number of Deadlocks/sec","SQLServer:Locks(_Total) Number of Deadlocks/sec is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
250	check_nt_counter_mssql_latch_waits	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\SQLServer:Latches\\\\Latch Waits/sec","SQLServer:Latches Latch Waits/sec is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
251	check_nt_counter_mssql_lock_wait_time	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\SQLServer:Locks(_Total)\\\\Lock Wait Time (ms)","SQLServer:Locks(_Total) Lock Wait Time (ms) is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
252	check_nt_counter_mssql_lock_waits	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\SQLServer:Locks(_Total)\\\\Lock Waits/sec","SQLServer:Locks(_Total) Lock Waits/sec is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
253	check_nt_counter_mssql_log_growths	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\SQLServer:Databases(_Total)\\\\Log Growths","SQLServer:Databases(_Total) Log Growths is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
254	check_nt_counter_mssql_log_used	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\SQLServer:Databases(_Total)\\\\Percent Log Used","SQLServer:Databases(_Total) Percent Log Used is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
255	check_nt_counter_mssql_memory_grants_pending	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\SQLServer:Memory Manager\\\\Memory Grants Pending","SQLServer:Memory Manager Memory Grants Pending is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
256	check_nt_counter_mssql_transactions	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\SQLServer:Databases(_Total)\\\\Transactions/sec","SQLServer:Databases(_Total) Transactions/sec is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
257	check_nt_counter_network_interface	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -H $HOSTADDRESS$ -p $USER19$ -s $USER4$ -v COUNTER -l "\\\\Network Interface(MS TCP Loopback interface)\\\\Bytes Total/sec","Network Interface(MS TCP Loopback interface) Bytes Total/sec is %.f " -w "$ARG1$" -c "$ARG2$"]]>\n  </prop>\n</data>	\N
258	check_by_ssh_process_named	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_procs -c 1:1 -C named -a /etc/named.conf"]]>\n  </prop>\n</data>	\N
259	check_syslog	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_syslog_gw.pl -l $ARG1$ -s /tmp/$HOSTNAME$.tmp -x $ARG2$ -a $HOSTADDRESS$]]>\n  </prop>\n</data>	\N
260	check_imap	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_imap -t 60 -H $HOSTADDRESS$ -w "$ARG1$" -c "$ARG2$" -p 143]]>\n  </prop>\n</data>	\N
262	process_service_perfdata_db	other	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER2$/process_service_perf_db.pl "$LASTSERVICECHECK$" "$HOSTNAME$" "$SERVICEDESC$" "$SERVICEOUTPUT$" "$SERVICEPERFDATA$"]]>\n  </prop>\n</data>	\N
263	check_snmp_alive	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_snmp -H $HOSTADDRESS$ -o .1.3.6.1.2.1.1.3.0 -l "Uptime is " -C '$USER7$']]>\n  </prop>\n</data>	\N
264	check_nt	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nt -p $USER19$ -s $USER4$ -H $HOSTADDRESS$ -v CLIENTVERSION]]>\n  </prop>\n</data>	\N
265	check_nrpe_service	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_nrpe -H $HOSTADDRESS$ -t 60 -c get_service -a "$HOSTADDRESS$" "$ARG1$"]]>\n  </prop>\n</data>	\N
267	check_local_proc_cpu	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_procl.sh --cpu -w "$ARG1$" -c "$ARG2$" -p "$ARG3$"]]>\n  </prop>\n</data>	\N
268	check_local_proc_mem	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_procl.sh --mem -w "$ARG1$" -c "$ARG2$" -p "$ARG3$"]]>\n  </prop>\n</data>	\N
269	check_dir_size	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_dir_size.sh $ARG1$ $ARG2$ $ARG3$]]>\n  </prop>\n</data>	\N
270	check_tcp_gw_listener	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_tcp -H $HOSTADDRESS$ -w $ARG1$ -c $ARG2$ -p 4913]]>\n  </prop>\n</data>	\N
271	launch_perfdata_process	other	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER2$/launch_perf_data_processing]]>\n  </prop>\n</data>	\N
272	check_by_ssh_cpu_proc	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_procl.sh --cpu -w $ARG1$ -c $ARG2$ -p $ARG3$"]]>\n  </prop>\n</data>	\N
273	check_by_ssh_mem_proc	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER22$/check_procl.sh --mem -w $ARG1$ -c $ARG2$ -p $ARG3$"]]>\n  </prop>\n</data>	\N
274	check_by_ssh_nagios_latency	check	<?xml version="1.0" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_by_ssh -H $HOSTADDRESS$ -t 60 -l "$USER17$" -C "$USER1$/check_nagios_latency.pl"]]>\n  </prop>\n</data>	\N
275	check_msg	check	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="command_line"><![CDATA[$USER1$/check_dummy $ARG1$ $ARG2$]]>\n  </prop>\n</data>	\N
\.


--
-- Data for Name: contact_command; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contact_command (contacttemplate_id, type, command_id) FROM stdin;
1	host	5
2	host	5
2	service	9
1	service	14
2	service	14
2	host	17
\.


--
-- Data for Name: contact_command_overrides; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contact_command_overrides (contact_id, type, command_id) FROM stdin;
\.


--
-- Data for Name: contact_group; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contact_group (contact_id, group_id) FROM stdin;
\.


--
-- Data for Name: contact_host; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contact_host (contact_id, host_id) FROM stdin;
1	1
\.


--
-- Data for Name: contact_host_profile; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contact_host_profile (contact_id, hostprofile_id) FROM stdin;
\.


--
-- Data for Name: contact_host_template; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contact_host_template (contact_id, hosttemplate_id) FROM stdin;
1	1
\.


--
-- Data for Name: contact_hostgroup; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contact_hostgroup (contact_id, hostgroup_id) FROM stdin;
\.


--
-- Data for Name: contact_overrides; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contact_overrides (contact_id, host_notification_period, service_notification_period, data) FROM stdin;
1	\N	\N	<?xml version="1.0" ?>\n<data>\n  <prop name="host_notification_options"><![CDATA[d,r]]>\n  </prop>\n  <prop name="service_notification_options"><![CDATA[c,r]]>\n  </prop>\n</data>
2	\N	\N	<?xml version="1.0" ?>\n<data>\n  <prop name="host_notification_options"><![CDATA[d,u,r]]>\n  </prop>\n  <prop name="service_notification_options"><![CDATA[u,c,w,r]]>\n  </prop>\n</data>
\.


--
-- Data for Name: contact_service; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contact_service (contact_id, service_id) FROM stdin;
\.


--
-- Data for Name: contact_service_name; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contact_service_name (contact_id, servicename_id) FROM stdin;
\.


--
-- Data for Name: contact_service_template; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contact_service_template (contact_id, servicetemplate_id) FROM stdin;
1	1
\.


--
-- Data for Name: contact_templates; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contact_templates (contacttemplate_id, name, host_notification_period, service_notification_period, data, comment) FROM stdin;
1	generic-contact-1	1	1	<?xml version="1.0" ?>\n<data>\n  <prop name="host_notification_options"><![CDATA[d,r]]>\n  </prop>\n  <prop name="service_notification_options"><![CDATA[c,r]]>\n  </prop>\n </data>	\N
2	generic-contact-2	3	3	<?xml version="1.0" ?>\n<data>\n <prop name="host_notification_options"><![CDATA[d,u,r]]>\n </prop>\n <prop name="service_notification_options"><![CDATA[u,c,w,r]]>\n </prop>\n</data>	\N
\.


--
-- Data for Name: contactgroup_contact; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contactgroup_contact (contactgroup_id, contact_id) FROM stdin;
1	1
1	2
\.


--
-- Data for Name: contactgroup_group; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contactgroup_group (contactgroup_id, group_id) FROM stdin;
\.


--
-- Data for Name: contactgroup_host; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contactgroup_host (contactgroup_id, host_id) FROM stdin;
1	1
\.


--
-- Data for Name: contactgroup_host_profile; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contactgroup_host_profile (contactgroup_id, hostprofile_id) FROM stdin;
\.


--
-- Data for Name: contactgroup_host_template; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contactgroup_host_template (contactgroup_id, hosttemplate_id) FROM stdin;
1	1
\.


--
-- Data for Name: contactgroup_hostgroup; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contactgroup_hostgroup (contactgroup_id, hostgroup_id) FROM stdin;
\.


--
-- Data for Name: contactgroup_service; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contactgroup_service (contactgroup_id, service_id) FROM stdin;
\.


--
-- Data for Name: contactgroup_service_name; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contactgroup_service_name (contactgroup_id, servicename_id) FROM stdin;
\.


--
-- Data for Name: contactgroup_service_template; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contactgroup_service_template (contactgroup_id, servicetemplate_id) FROM stdin;
1	1
\.


--
-- Data for Name: contactgroups; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contactgroups (contactgroup_id, name, alias, comment) FROM stdin;
1	nagiosadmin	Linux Administrators	# 'linux-admins' contact group definition
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY contacts (contact_id, name, alias, email, pager, contacttemplate_id, status, comment) FROM stdin;
1	jdoe	John Doe	jdoe@localhost	\N	1	1	# 'jdoe' contact definition
2	nagiosadmin	Nagios Admin	nagios-admin@localhost	pagenagios-admin@localhost	2	1	# 'nagios' contact definition
\.


--
-- Data for Name: datatype; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY datatype (datatype_id, type, location) FROM stdin;
1	RRD	/usr/local/groundwork/rrd/localhost_local_cpu_httpd.rrd
2	RRD	/usr/local/groundwork/rrd/localhost_local_cpu_java.rrd
3	RRD	/usr/local/groundwork/rrd/localhost_local_cpu_nagios.rrd
4	RRD	/usr/local/groundwork/rrd/localhost_local_cpu_perl.rrd
5	RRD	/usr/local/groundwork/rrd/localhost_local_cpu_syslog-ng.rrd
6	RRD	/usr/local/groundwork/rrd/localhost_local_disk_root.rrd
7	RRD	/usr/local/groundwork/rrd/localhost_local_load.rrd
8	RRD	/usr/local/groundwork/rrd/localhost_local_mem_httpd.rrd
9	RRD	/usr/local/groundwork/rrd/localhost_local_mem_java.rrd
10	RRD	/usr/local/groundwork/rrd/localhost_local_mem_nagios.rrd
11	RRD	/usr/local/groundwork/rrd/localhost_local_mem_perl.rrd
12	RRD	/usr/local/groundwork/rrd/localhost_local_mem_syslog-ng.rrd
13	RRD	/usr/local/groundwork/rrd/localhost_local_memory.rrd
14	RRD	/usr/local/groundwork/rrd/localhost_local_nagios_latency.rrd
15	RRD	/usr/local/groundwork/rrd/localhost_local_process_gw_listener.rrd
16	RRD	/usr/local/groundwork/rrd/localhost_local_process_nagios.rrd
17	RRD	/usr/local/groundwork/rrd/localhost_local_swap.rrd
18	RRD	/usr/local/groundwork/rrd/localhost_local_users.rrd
19	RRD	/usr/local/groundwork/rrd/localhost_tcp_gw_listener.rrd
20	RRD	/usr/local/groundwork/rrd/localhost_tcp_http.rrd
21	RRD	/usr/local/groundwork/rrd/localhost_tcp_nsca.rrd
\.


--
-- Data for Name: discover_filter; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY discover_filter (filter_id, name, type, filter) FROM stdin;
\.


--
-- Data for Name: discover_group; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY discover_group (group_id, name, description, config, schema_id) FROM stdin;
\.


--
-- Data for Name: discover_group_filter; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY discover_group_filter (group_id, filter_id) FROM stdin;
\.


--
-- Data for Name: discover_group_method; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY discover_group_method (group_id, method_id) FROM stdin;
\.


--
-- Data for Name: discover_method; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY discover_method (method_id, name, description, config, type) FROM stdin;
\.


--
-- Data for Name: discover_method_filter; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY discover_method_filter (method_id, filter_id) FROM stdin;
\.


--
-- Data for Name: escalation_templates; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY escalation_templates (template_id, name, type, data, comment, escalation_period) FROM stdin;
\.


--
-- Data for Name: escalation_tree_template; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY escalation_tree_template (tree_id, template_id) FROM stdin;
\.


--
-- Data for Name: escalation_trees; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY escalation_trees (tree_id, name, description, type) FROM stdin;
\.


--
-- Data for Name: extended_host_info_templates; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY extended_host_info_templates (hostextinfo_id, name, data, script, comment) FROM stdin;
\.


--
-- Data for Name: extended_info_coords; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY extended_info_coords (host_id, data) FROM stdin;
\.


--
-- Data for Name: extended_service_info_templates; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY extended_service_info_templates (serviceextinfo_id, name, data, script, comment) FROM stdin;
1	number_graph	<?xml version="1.0" ?>\n<data>\n  <prop name="notes_url"><![CDATA[/graphs/cgi-bin/label_graph.cgi?host=$HOSTNAME$&service=$SERVICENAME$]]>\n  </prop>\n  <prop name="icon_image"><![CDATA[services.gif]]>\n  </prop>\n  <prop name="icon_image_alt"><![CDATA[Service Detail]]>\n  </prop>\n</data>	\N	\N
2	unix_load_graph	<?xml version="1.0" ?>\n<data>\n  <prop name="notes_url"><![CDATA[/graphs/cgi-bin/label_graph.cgi?host=$HOSTNAME$&service=$SERVICENAME$]]>\n  </prop>\n  <prop name="icon_image"><![CDATA[services.gif]]>\n  </prop>\n  <prop name="icon_image_alt"><![CDATA[Service Detail]]>\n  </prop>\n</data>	\N	\N
3	percent_graph	<?xml version="1.0" ?>\n<data>\n  <prop name="notes_url"><![CDATA[/graphs/cgi-bin/label_graph.cgi?host=$HOSTNAME$&service=$SERVICENAME$]]>\n  </prop>\n  <prop name="icon_image"><![CDATA[services.gif]]>\n  </prop>\n  <prop name="icon_image_alt"><![CDATA[Service Detail]]>\n  </prop>\n</data>	\N	\N
4	snmp_if	<?xml version="1.0" ?>\n<data>\n  <prop name="notes_url"><![CDATA[/graphs/cgi-bin/percent_graph.cgi?host=$HOSTNAME$&service=$SERVICENAME$]]>\n  </prop>\n  <prop name="icon_image"><![CDATA[services.gif]]>\n  </prop>\n  <prop name="icon_image_alt"><![CDATA[Service Detail]]>\n  </prop>\n</data>	\N	\N
5	snmp_ifbandwidth	<?xml version="1.0" ?>\n<data>\n  <prop name="notes_url"><![CDATA[/graphs/cgi-bin/percent_graph.cgi?host=$HOSTNAME$&service=$SERVICENAME$]]>\n  </prop>\n  <prop name="icon_image"><![CDATA[services.gif]]>\n  </prop>\n  <prop name="icon_image_alt"><![CDATA[Service Detail]]>\n  </prop>\n</data>	\N	\N
\.


--
-- Data for Name: external_host; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY external_host (external_id, host_id, data, modified) FROM stdin;
\.


--
-- Data for Name: external_host_profile; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY external_host_profile (external_id, hostprofile_id) FROM stdin;
\.


--
-- Data for Name: external_service; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY external_service (external_id, host_id, service_id, data, modified) FROM stdin;
\.


--
-- Data for Name: external_service_names; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY external_service_names (external_id, servicename_id) FROM stdin;
\.


--
-- Data for Name: externals; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY externals (external_id, name, description, type, display, handler) FROM stdin;
\.


--
-- Data for Name: host_dependencies; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY host_dependencies (host_id, parent_id, data, comment) FROM stdin;
\.


--
-- Data for Name: host_overrides; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY host_overrides (host_id, check_period, notification_period, check_command, event_handler, data) FROM stdin;
1	\N	3	7	\N	<?xml version="1.0" ?>\n<data>\n <prop name="max_check_attempts"><![CDATA[10]]>\n </prop>\n <prop name="notification_options"><![CDATA[d,u,r]]>\n </prop>\n <prop name="notification_interval"><![CDATA[480]]>\n </prop>\n <prop name="notification_period"><![CDATA[3]]>\n </prop>\n</data>
\.


--
-- Data for Name: host_parent; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY host_parent (host_id, parent_id) FROM stdin;
\.


--
-- Data for Name: host_service; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY host_service (host_service_id, host, service, label, dataname, datatype_id) FROM stdin;
1	localhost	local_cpu_httpd	CPU Utilization		1
2	localhost	local_cpu_java	CPU Utilization		2
3	localhost	local_cpu_nagios	CPU Utilization		3
4	localhost	local_cpu_perl	CPU Utilization		4
5	localhost	local_cpu_syslog-ng	CPU Utilization		5
6	localhost	local_disk_root	Disk Utilization		6
7	localhost	local_load	Load Averages		7
8	localhost	local_mem_httpd	Memory Utilization		8
9	localhost	local_mem_java	Memory Utilization		9
10	localhost	local_mem_nagios	Memory Utilization		10
11	localhost	local_mem_perl	Memory Utilization		11
12	localhost	local_mem_syslog-ng	Memory Utilization		12
13	localhost	local_memory	Memory Utilization		13
14	localhost	local_nagios_latency	Nagios Service Check Latency in Seconds		14
15	localhost	local_process_gw_listener	Process Count		15
16	localhost	local_process_nagios	Process Count		16
17	localhost	local_swap	Swap Utilization		17
18	localhost	local_users	Current Users		18
19	localhost	tcp_gw_listener	Foundation Listener Response Time		19
20	localhost	tcp_http	HTTP Response Time		20
21	localhost	tcp_nsca	NSCA Response Time		21
\.


--
-- Data for Name: host_templates; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY host_templates (hosttemplate_id, name, check_period, notification_period, check_command, event_handler, data, comment) FROM stdin;
1	generic-host	3	3	7	\N	<?xml version="1.0" ?>\n<data>\n  <prop name="flap_detection_enabled"><![CDATA[1]]>\n  </prop>\n  <prop name="check_freshness"><![CDATA[-zero-]]>\n  </prop>\n  <prop name="notifications_enabled"><![CDATA[1]]>\n  </prop>\n  <prop name="event_handler_enabled"><![CDATA[1]]>\n  </prop>\n  <prop name="process_perf_data"><![CDATA[1]]>\n  </prop>\n  <prop name="active_checks_enabled"><![CDATA[1]]>\n  </prop>\n  <prop name="passive_checks_enabled"><![CDATA[1]]>\n  </prop>\n  <prop name="retain_status_information"><![CDATA[1]]>\n  </prop>\n  <prop name="max_check_attempts"><![CDATA[3]]>\n  </prop>\n  <prop name="notification_options"><![CDATA[d,u,r]]>\n  </prop>\n  <prop name="retain_nonstatus_information"><![CDATA[1]]>\n  </prop>\n  <prop name="obsess_over_host"><![CDATA[-zero-]]>\n  </prop>\n  <prop name="check_interval"><![CDATA[-zero-]]>\n  </prop>\n  <prop name="notification_interval"><![CDATA[60]]>\n  </prop>\n </data>	# Generic host definition template
\.


--
-- Data for Name: hostgroup_host; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY hostgroup_host (hostgroup_id, host_id) FROM stdin;
1	1
2	2
5	2
3	2
2	3
3	3
6	3
2	4
7	4
3	4
2	5
8	5
3	5
2	6
9	6
3	6
2	7
4	7
5	7
2	8
4	8
6	8
2	9
7	9
4	9
2	10
4	10
8	10
2	11
4	11
9	11
\.


--
-- Data for Name: hostgroups; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY hostgroups (hostgroup_id, name, alias, hostprofile_id, host_escalation_id, service_escalation_id, status, comment, notes) FROM stdin;
1	Linux Servers	Linux Servers	\N	\N	\N	1	# 'linux-boxes' host group definition	\N
2	hosts all	all-hosts	\N	\N	\N	\N	# hostgroups hosts all	\N
3	hosts up	hosts up	\N	\N	\N	\N	# hostgroups hosts up	\N
4	hosts down	hosts down	\N	\N	\N	\N	# hostgroups hosts down	\N
5	hosts ok	hosts ok	\N	\N	\N	\N	# hostgroups hosts ok	\N
6	hosts warning	hosts warning	\N	\N	\N	\N	# hostgroups hosts warning	\N
7	hosts critical	hosts critical	\N	\N	\N	\N	# hostgroups hosts critical	\N
8	hosts unknown	hosts unknown	\N	\N	\N	\N	# hostgroups hosts unknown	\N
9	hosts pending	hosts pending	\N	\N	\N	\N	# hostgroups hosts pending	\N
\.


--
-- Data for Name: hostprofile_overrides; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY hostprofile_overrides (hostprofile_id, check_period, notification_period, check_command, event_handler, data) FROM stdin;
1	\N	\N	\N	\N	<?xml version="1.0" ?>\n<data>\n </data>
\.


--
-- Data for Name: hosts; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY hosts (host_id, name, alias, address, os, hosttemplate_id, hostextinfo_id, hostprofile_id, host_escalation_id, service_escalation_id, status, comment, notes) FROM stdin;
1	localhost	Linux Server #1	127.0.0.1	n/a	1	\N	\N	\N	\N	1	# 'linux1' host definition	\N
2	host-up-ok	host-up-ok	127.0.1.0	\N	1	\N	\N	\N	\N	1	\N	\N
3	host-up-warning	host-up-warning	127.0.1.1	\N	1	\N	\N	\N	\N	1	\N	\N
4	host-up-critical	host-up-critical	127.0.1.2	\N	1	\N	\N	\N	\N	1	\N	\N
5	host-up-unknown	host-up-unknown	127.0.1.3	\N	1	\N	\N	\N	\N	1	\N	\N
6	host-up-pending	host-up-pending	127.0.1.4	\N	1	\N	\N	\N	\N	1	\N	\N
7	host-down-ok	host-down-ok	240.0.1.0	\N	1	\N	\N	\N	\N	1	\N	\N
8	host-down-warning	host-down-warning	240.0.1.1	\N	1	\N	\N	\N	\N	1	\N	\N
9	host-down-critical	host-down-critical	240.0.1.2	\N	1	\N	\N	\N	\N	1	\N	\N
10	host-down-unknown	host-down-unknown	240.0.1.3	\N	1	\N	\N	\N	\N	1	\N	\N
11	host-down-pending	host-down-pending	240.0.1.4	\N	1	\N	\N	\N	\N	1	\N	\N
\.


--
-- Data for Name: import_column; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY import_column (column_id, schema_id, name, "position", delimiter) FROM stdin;
\.


--
-- Data for Name: import_hosts; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY import_hosts (import_hosts_id, name, alias, address, hostprofile_id) FROM stdin;
\.


--
-- Data for Name: import_match; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY import_match (match_id, column_id, name, match_order, match_type, match_string, rule, object, hostprofile_id, servicename_id, arguments) FROM stdin;
\.


--
-- Data for Name: import_match_contactgroup; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY import_match_contactgroup (match_id, contactgroup_id) FROM stdin;
\.


--
-- Data for Name: import_match_group; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY import_match_group (match_id, group_id) FROM stdin;
\.


--
-- Data for Name: import_match_hostgroup; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY import_match_hostgroup (match_id, hostgroup_id) FROM stdin;
\.


--
-- Data for Name: import_match_parent; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY import_match_parent (match_id, parent_id) FROM stdin;
\.


--
-- Data for Name: import_match_servicename; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY import_match_servicename (match_id, servicename_id) FROM stdin;
\.


--
-- Data for Name: import_match_serviceprofile; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY import_match_serviceprofile (match_id, serviceprofile_id) FROM stdin;
\.


--
-- Data for Name: import_schema; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY import_schema (schema_id, name, delimiter, description, type, sync_object, smart_name, hostprofile_id, data_source) FROM stdin;
\.


--
-- Data for Name: import_services; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY import_services (import_services_id, import_hosts_id, description, check_command_id, command_line, command_line_trans, servicename_id, serviceprofile_id) FROM stdin;
\.


--
-- Data for Name: monarch_group_child; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY monarch_group_child (group_id, child_id) FROM stdin;
\.


--
-- Data for Name: monarch_group_host; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY monarch_group_host (group_id, host_id) FROM stdin;
\.


--
-- Data for Name: monarch_group_hostgroup; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY monarch_group_hostgroup (group_id, hostgroup_id) FROM stdin;
\.


--
-- Data for Name: monarch_group_macro; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY monarch_group_macro (group_id, macro_id, value) FROM stdin;
\.


--
-- Data for Name: monarch_group_props; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY monarch_group_props (prop_id, group_id, name, type, value) FROM stdin;
\.


--
-- Data for Name: monarch_groups; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY monarch_groups (group_id, name, description, location, status, data) FROM stdin;
1	windows-gdma-2.1	Group for configuration of Windows GDMA systems	/usr/local/groundwork/apache2/htdocs/gdma	\N	<?xml version="1.0" ?>\n<data>\n <prop name="label_enabled"><![CDATA[]]>\n </prop>\n <prop name="label"><![CDATA[]]>\n </prop>\n <prop name="nagios_etc"><![CDATA[]]>\n </prop>\n <prop name="use_hosts"><![CDATA[]]>\n </prop>\n <prop name="inherit_host_active_checks_enabled"><![CDATA[1]]>\n </prop>\n <prop name="inherit_host_passive_checks_enabled"><![CDATA[1]]>\n </prop>\n <prop name="inherit_service_active_checks_enabled"><![CDATA[1]]>\n </prop>\n <prop name="inherit_service_passive_checks_enabled"><![CDATA[1]]>\n </prop>\n <prop name="host_active_checks_enabled"><![CDATA[-zero-]]>\n </prop>\n <prop name="host_passive_checks_enabled"><![CDATA[-zero-]]>\n </prop>\n <prop name="service_active_checks_enabled"><![CDATA[-zero-]]>\n </prop>\n <prop name="service_passive_checks_enabled"><![CDATA[-zero-]]>\n </prop>\n</data>
2	unix-gdma-2.1	Group for configuration of Linux and Solaris GDMA systems	/usr/local/groundwork/apache2/htdocs/gdma	\N	<?xml version="1.0" ?>\n<data>\n <prop name="label_enabled"><![CDATA[]]>\n </prop>\n <prop name="label"><![CDATA[]]>\n </prop>\n <prop name="nagios_etc"><![CDATA[]]>\n </prop>\n <prop name="use_hosts"><![CDATA[]]>\n </prop>\n <prop name="inherit_host_active_checks_enabled"><![CDATA[1]]>\n </prop>\n <prop name="inherit_host_passive_checks_enabled"><![CDATA[1]]>\n </prop>\n <prop name="inherit_service_active_checks_enabled"><![CDATA[1]]>\n </prop>\n <prop name="inherit_service_passive_checks_enabled"><![CDATA[1]]>\n </prop>\n <prop name="host_active_checks_enabled"><![CDATA[-zero-]]>\n </prop>\n <prop name="host_passive_checks_enabled"><![CDATA[-zero-]]>\n </prop>\n <prop name="service_active_checks_enabled"><![CDATA[-zero-]]>\n </prop>\n <prop name="service_passive_checks_enabled"><![CDATA[-zero-]]>\n </prop>\n</data>
\.


--
-- Data for Name: monarch_macros; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY monarch_macros (macro_id, name, value, description) FROM stdin;
\.


--
-- Data for Name: performanceconfig; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY performanceconfig (performanceconfig_id, host, service, type, enable, parseregx_first, service_regx, label, rrdname, rrdcreatestring, rrdupdatestring, graphcgi, perfidstring, parseregx) FROM stdin;
4	*	snmp_if_	nagios	1	1	1	Interface Statistics	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr DS:in:COUNTER:1800:U:U DS:out:COUNTER:1800:U:U DS:indis:COUNTER:1800:U:U DS:outdis:COUNTER:1800:U:U DS:inerr:COUNTER:1800:U:U  DS:outerr:COUNTER:1800:U:U RRA:AVERAGE:0.5:1:2880 RRA:AVERAGE:0.5:5:4032	$RRDTOOL$ update $RRDNAME$ -t in:out:indis:outdis:inerr:outerr $LASTCHECK$:$VALUE1$:$VALUE2$:$VALUE3$:$VALUE4$:$VALUE5$:$VALUE6$  2>&1		 	SNMP OK - (\\d+)\\s(\\d+)\\s(\\d+)\\s(\\d+)\\s(\\d+)\\s(\\d+)
5	*	snmp_ifbandwidth_	nagios	1	\N	1	Interface Bandwidth Utilization	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr DS:in:COUNTER:1800:U:U DS:out:COUNTER:1800:U:U DS:ifspeed:GAUGE:1800:U:U RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ -t in:out:ifspeed $LASTCHECK$:$VALUE1$:$VALUE2$:$VALUE3$ 2>&1		 	SNMP OK - (\\d+)\\s+(\\d+)\\s+(\\d+)
13	*	icmp_ping	nagios	1	0	1	ICMP Ping Response Time	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr DS:rta:GAUGE:1800:U:U DS:pl:GAUGE:1800:U:U RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$:$VALUE2$ 2>&1	'rrdtool graph - --imgformat=PNG --title="ICMP Performance" --rigid --base=1000 --height=120 --width=700 --alt-autoscale-max --lower-limit=0 --vertical-label="Time and Percent" --slope-mode DEF:a="rrd_source":ds_source_1:AVERAGE DEF:b="rrd_source":ds_source_0:AVERAGE CDEF:cdefa=b CDEF:cdefb=a,100,/ AREA:cdefa#43C6DB:"Response Time (ms) " GPRINT:cdefa:LAST:"Current\\:%8.2lf %s" GPRINT:cdefa:AVERAGE:"Average\\:%8.2lf %s" GPRINT:cdefa:MAX:"Maximum\\:%8.2lf %s\\n" LINE1:cdefb#307D7E:"Percent Loss       " GPRINT:cdefb:LAST:"Current\\:%8.2lf %s" GPRINT:cdefb:AVERAGE:"Average\\:%8.2lf %s" GPRINT:cdefb:MAX:"Maximum\\:%8.2lf %s"'		
14	*	local_disk	nagios	1	0	1	Disk Utilization	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr $LISTSTART$DS:$LABEL#$:GAUGE:1800:U:U DS:$LABEL#$_wn:GAUGE:1800:U:U DS:$LABEL#$_cr:GAUGE:1800:U:U DS:$LABEL#$_mx:GAUGE:1800:U:U $LISTEND$ RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$:$WARN1$:$CRIT1$:$MAX1$ 2>&1	'rrdtool graph - \r\n DEF:a="rrd_source":ds_source_0:AVERAGE \r\n DEF:w="rrd_source":ds_source_1:AVERAGE\r\n DEF:c="rrd_source":ds_source_2:AVERAGE\r\n DEF:m="rrd_source":ds_source_3:AVERAGE\r\n CDEF:cdefa=a,m,/,100,* \r\n CDEF:cdefb=a,0.99,*\r\n CDEF:cdefw=w\r\n CDEF:cdefc=c\r\n CDEF:cdefm=m  \r\n AREA:a#C35617:"Space Used\\: "\r\n LINE:cdefa#FFCC00:\r\n GPRINT:a:LAST:"%.2lf MB\\l"\r\n LINE2:cdefw#FFFF00:"Warning Threshold\\:"\r\n GPRINT:cdefw:AVERAGE:"%.2lf" \r\n LINE2:cdefc#FF0033:"Critical Threshold\\:" \r\n GPRINT:cdefc:AVERAGE:"%.2lf\\l" \r\n GPRINT:cdefa:AVERAGE:"Percentage Space Used"=%.2lf\r\n GPRINT:cdefm:AVERAGE:"Maximum Capacity"=%.2lf\r\n CDEF:cdefws=a,cdefw,GT,a,0,IF\r\n AREA:cdefws#FFFF00\r\n CDEF:cdefcs=a,cdefc,GT,a,0,IF\r\n AREA:cdefcs#FF0033\r\n -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y  -l 0'		 
15	*	local_load	nagios	1	0	0	Load Averages	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr $LISTSTART$ DS:$LABEL#$:GAUGE:1800:U:U DS:$LABEL#$_wn:GAUGE:1800:U:U DS:$LABEL#$_cr:GAUGE:1800:U:U $LISTEND$  RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$:$WARN1$:$CRIT1$:$VALUE2$:$WARN2$:$CRIT2$:$VALUE3$:$WARN3$:$CRIT3$ 2>&1	'rrdtool graph - --imgformat=PNG --slope-mode \r\n DEF:a=rrd_source:ds_source_0:AVERAGE \r\n DEF:aw="rrd_source":ds_source_1:AVERAGE\r\n DEF:ac="rrd_source":ds_source_2:AVERAGE\r\n DEF:b=rrd_source:ds_source_3:AVERAGE \r\n DEF:bw="rrd_source":ds_source_4:AVERAGE\r\n DEF:bc="rrd_source":ds_source_5:AVERAGE\r\n DEF:c=rrd_source:ds_source_6:AVERAGE\r\n DEF:cw="rrd_source":ds_source_7:AVERAGE\r\n DEF:cc="rrd_source":ds_source_8:AVERAGE\r\n CDEF:cdefa=a \r\n CDEF:cdefb=b \r\n CDEF:cdefc=c \r\n AREA:cdefa#FF6600:"One Minute Load Average" GPRINT:cdefa:MIN:min=%.2lf  GPRINT:cdefa:AVERAGE:avg=%.2lf  \r\n GPRINT:cdefa:MAX:"max=%.2lf\\l"\r\n LINE:aw#FFCC33:"1 min avg Warning Threshold" \r\n GPRINT:aw:LAST:"%.1lf"\r\n LINE:ac#FF0000:"1 min avg Critical Threshold"\r\n GPRINT:ac:LAST:"%.1lf\\l"\r\n LINE2:cdefb#3300FF:"Five Minute Load Average"\r\n GPRINT:cdefb:MIN:min=%.2lf\r\n GPRINT:cdefb:AVERAGE:avg=%.2lf\r\n GPRINT:cdefb:MAX:"max=%.2lf\\l" \r\n LINE:bw#6666CC:"5 min avg Warning Threshold"\r\n GPRINT:bw:LAST:"%.1lf"\r\n LINE:bc#CC0000:"5 min avg Critical Threshold"\r\n GPRINT:bc:LAST:"%.1lf\\l"\r\n LINE3:cdefc#999999:"Fifteen Minute Load Average"   \r\n GPRINT:cdefc:MIN:min=%.2lf\r\n GPRINT:cdefc:AVERAGE:avg=%.2lf \r\n GPRINT:cdefc:MAX:"max=%.2lf\\l" \r\n LINE:cw#CCCC99:"15 min avg Warning Threshold"\r\n GPRINT:cw:LAST:"%.1lf"\r\n LINE:cc#990000:"15 min avg Critical Threshold"\r\n GPRINT:cc:LAST:"%.1lf\\l"\r\n -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF-Y --height 120'		 
16	*	local_mem	nagios	1	0	1	Memory Utilization	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr $LISTSTART$ DS:$LABEL#$:GAUGE:1800:U:U DS:$LABEL#$_wn:GAUGE:1800:U:U DS:$LABEL#$_cr:GAUGE:1800:U:U $LISTEND$ RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$:$WARN1$:$CRIT1$ 2>&1	'rrdtool graph - \r\n DEF:a="rrd_source":ds_source_0:AVERAGE \r\n DEF:w="rrd_source":ds_source_1:AVERAGE \r\n DEF:c="rrd_source":ds_source_2:AVERAGE \r\n CDEF:cdefa=a\r\n CDEF:cdefb=a,0.99,* \r\n CDEF:cdefw=w \r\n CDEF:cdefc=c \r\n CDEF:cdefm=c,1.05,*\r\n AREA:a#33FFFF \r\n AREA:cdefb#3399FF:"Memory Utilized\\:" \r\n GPRINT:a:LAST:"%.2lf Percent"\r\n GPRINT:cdefa:MIN:min=%.2lf\r\n GPRINT:cdefa:AVERAGE:avg=%.2lf\r\n GPRINT:cdefa:MAX:max="%.2lf\\l" \r\n LINE2:cdefw#FFFF00:"Warning Threshold\\:" \r\n GPRINT:cdefw:LAST:"%.2lf" \r\n LINE2:cdefc#FF0033:"Critical Threshold\\:" \r\n GPRINT:cdefc:LAST:"%.2lf\\l"  \r\n COMMENT:"Service\\: SERVICE"\r\n CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033\r\n CDEF:cdefwt=a,cdefw,GT,cdefw,0,IF LINE:cdefwt#000000 CDEF:cdefct=a,cdefc,GT,cdefc,0,IF LINE:cdefct#000000\r\n -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -u 100 -l 0 --rigid'		([\\d\\.]+)%
17	*	local_mysql_engine	nagios	1	1	1	MySQL Queries Per Second	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr DS:number:GAUGE:1800:U:U RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$ 2>&1	/graphs/cgi-bin/number_graph.cgi	 	Queries per second avg: ([\\d\\.]+)
18	*	local_process	nagios	1	1	1	Process Count	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr DS:number:GAUGE:1800:U:U RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$ 2>&1	'rrdtool graph - DEF:a="rrd_source":ds_source_0:AVERAGE CDEF:cdefa=a AREA:cdefa#0000FF:"Number of Processes" GPRINT:cdefa:MIN:min=%.2lf GPRINT:cdefa:AVERAGE:avg=%.2lf GPRINT:cdefa:MAX:max=%.2lf  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y --height 120 -l 0'		(\\d+) process
19	*	local_nagios_latency	nagios	1	0	0	Nagios Service Check Latency in Seconds	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr DS:min:GAUGE:1800:U:U DS:max:GAUGE:1800:U:U DS:avg:GAUGE:1800:U:U RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$:$VALUE2$:$VALUE3$ 2>&1	'rrdtool graph - \r\n DEF:a="rrd_source":ds_source_0:AVERAGE \r\n DEF:b="rrd_source":ds_source_1:AVERAGE \r\n DEF:c="rrd_source":ds_source_2:AVERAGE \r\n CDEF:cdefa=a\r\n CDEF:cdefb=b  \r\n CDEF:cdefc=c \r\n AREA:cdefb#66FFFF:"Maximum Latency\\: "\r\n GPRINT:cdefb:LAST:"%.2lf sec"\r\n GPRINT:cdefb:MIN:min=%.2lf \r\n GPRINT:cdefb:AVERAGE:avg=%.2lf   \r\n GPRINT:cdefb:MAX:max="%.2lf\\l" \r\n LINE:cdefb#999999\r\n AREA:cdefc#006699:"Average Latency\\: " \r\n GPRINT:c:LAST:"%.2lf sec"\r\n GPRINT:cdefc:MIN:min=%.2lf \r\n GPRINT:cdefc:AVERAGE:avg=%.2lf   \r\n GPRINT:cdefc:MAX:max="%.2lf\\l"  \r\n LINE:cdefc#999999\r\n AREA:a#333366:"Minimum Latency\\: " \r\n GPRINT:a:LAST:"%.2lf sec"\r\n GPRINT:cdefa:MIN:min=%.2lf \r\n GPRINT:cdefa:AVERAGE:avg=%.2lf   \r\n GPRINT:cdefa:MAX:max="%.2lf\\l" \r\n LINE:cdefa#999999 \r\n -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -l 0'		 
21	*	tcp_http	nagios	1	0	0	HTTP Response Time	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr DS:$LABEL1$:GAUGE:1800:U:U DS:$LABEL1$_wn:GAUGE:1800:U:U DS:$LABEL1$_cr:GAUGE:1800:U:U RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$:$WARN1$:$CRIT1$ 2>&1	'rrdtool graph - \r\n DEF:a="rrd_source":ds_source_0:AVERAGE\r\n DEF:w="rrd_source":ds_source_1:AVERAGE\r\n DEF:c="rrd_source":ds_source_2:AVERAGE\r\n CDEF:cdefa=a CDEF:cdefb=a,0.99,*\r\n CDEF:cdefw=w\r\n CDEF:cdefc=c \r\n AREA:a#33FFFF\r\n AREA:cdefb#00CF00:"Response Time\\:"\r\n GPRINT:a:LAST:"%.4lf Seconds"  \r\n GPRINT:a:MIN:min=%.2lf\r\n GPRINT:a:AVERAGE:avg=%.2lf\r\n GPRINT:a:MAX:max="%.2lf\\l"\r\n LINE2:cdefw#FFFF00:"Warning Threshold\\:"\r\n GPRINT:cdefw:LAST:"%.2lf"\r\n LINE2:cdefc#FF0033:"Critical Threshold\\:"\r\n GPRINT:cdefc:LAST:"%.2lf\\l"  \r\n COMMENT:"Host\\: HOST\\l" COMMENT:"Service\\: SERVICE"\r\n CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033\r\n -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -l 0'		 
22	*	local_mysql_database	nagios	1	1	1	MySQL Threads and Query Stats	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr DS:threads:GAUGE:1800:U:U DS:slow_queries:COUNTER:1800:U:U DS:queries_per_sec:GAUGE:1800:U:U RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$:$VALUE2$:$VALUE3$ 2>&1	'rrdtool graph - \r\n $LISTSTART$ \r\n   DEF:$DEFLABEL#$:AVERAGE \r\n   CDEF:cdef$CDEFLABEL#$=$CDEFLABEL#$\r\n   LINE2:$CDEFLABEL#$$COLORLABEL#$:$DSLABEL#$\r\n   GPRINT:$CDEFLABEL#$:MIN:min=%.2lf\r\n   GPRINT:$CDEFLABEL#$:AVERAGE:avg=%.2lf\r\n   GPRINT:$CDEFLABEL#$:MAX:max="%.2lf\\l"\r\n $LISTEND$\r\n -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y --height 120'		[\\S+|\\s+]+Threads: (\\d+)  [\\S+|\\s+]+queries: (\\d+)  [\\S+|\\s+]+  \\S+ [\\S+|\\s+]+avg: (\\d+\\.\\d+)
28	*	DEFAULT	nagios	1	0	0	DO NOT REMOVE THIS ENTRY - USE TO DEFINE DEFAULT GRAPHING SETTINGS				rrdtool graph - $LISTSTART$ DEF:$DEFLABEL#$:AVERAGE CDEF:cdef$CDEFLABEL#$=$CDEFLABEL#$ LINE2:$CDEFLABEL#$$COLORLABEL#$:$DSLABEL#$ GPRINT:$CDEFLABEL#$:MIN:min=%.2lf GPRINT:$CDEFLABEL#$:AVERAGE:avg=%.2lf GPRINT:$CDEFLABEL#$:MAX:max=%.2lf  $LISTEND$  -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y --height 120		
29	*	local_users	nagios	1	0	0	Current Users	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr DS:$LABEL1$:GAUGE:1800:U:U RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$ 2>&1	rrdtool graph - --imgformat=PNG --slope-mode DEF:a=rrd_source:ds_source_0:AVERAGE  CDEF:cdefa=a  AREA:cdefa#0033CC:"Number of logged in users" -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF-Y --height 120		
30	*	local_cpu	nagios	1	0	1	CPU Utilization	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr $LISTSTART$DS:$LABEL#$:GAUGE:1800:U:U DS:$LABEL#$_wn:GAUGE:1800:U:U DS:$LABEL#$_cr:GAUGE:1800:U:U $LISTEND$ RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$:$WARN1$:$CRIT1$ 2>&1	'rrdtool graph - \r\n DEF:a="rrd_source":ds_source_0:AVERAGE \r\n DEF:w="rrd_source":ds_source_1:AVERAGE \r\n DEF:c="rrd_source":ds_source_2:AVERAGE \r\n CDEF:cdefa=a \r\n CDEF:cdefb=a,0.99,* \r\n AREA:cdefa#7D1B7E:"Process CPU Utilization" \r\n GPRINT:cdefa:LAST:Current=%.2lf \r\n GPRINT:cdefa:MIN:min=%.2lf \r\n GPRINT:cdefa:AVERAGE:avg=%.2lf \r\n GPRINT:cdefa:MAX:max="%.2lf\\l" \r\n AREA:cdefb#571B7E: \r\n CDEF:cdefw=w\r\n CDEF:cdefc=c \r\n CDEF:cdefm=cdefc,1.01,* \r\n LINE2:cdefw#FFFF00:"Warning Threshold\\:" \r\n GPRINT:cdefw:LAST:"%.2lf" \r\n LINE2:cdefc#FF0033:"Critical Threshold\\:" \r\n GPRINT:cdefc:LAST:"%.2lf\\l" \r\n COMMENT:"Service\\: SERVICE"\r\n CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033\r\n CDEF:cdefwt=a,cdefw,GT,cdefw,0,IF LINE:cdefwt#000000 CDEF:cdefct=a,cdefc,GT,cdefc,0,IF LINE:cdefct#000000\r\n -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y --height 120 --rigid -u 100 -l 0'		
68	*	tcp_nsca	nagios	1	0	0	NSCA Response Time	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr $LISTSTART$DS:$LABEL#$:GAUGE:1800:U:U DS:$LABEL#$_wn:GAUGE:1800:U:U DS:$LABEL#$_cr:GAUGE:1800:U:U $LISTEND$ RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$:$WARN1$:$CRIT1$ 2>&1	'rrdtool graph - \r\n DEF:a="rrd_source":ds_source_0:AVERAGE\r\n DEF:w="rrd_source":ds_source_1:AVERAGE\r\n DEF:c="rrd_source":ds_source_2:AVERAGE\r\n CDEF:cdefa=a CDEF:cdefb=a,0.99,*\r\n CDEF:cdefw=w CDEF:cdefc=c\r\n AREA:a#33FFFF AREA:cdefb#00CF00:"Response Time\\:"\r\n GPRINT:a:LAST:"%.4lf Seconds"  \r\n GPRINT:a:MIN:min=%.4lf\r\n GPRINT:a:AVERAGE:avg=%.4lf\r\n GPRINT:a:MAX:max="%.4lf\\l"\r\n LINE2:cdefw#FFFF00:"Warning Threshold\\:"\r\n GPRINT:cdefw:LAST:"%.2lf"\r\n LINE2:cdefc#FF0033:"Critical Threshold\\:"\r\n GPRINT:cdefc:LAST:"%.2lf\\l"  \r\n COMMENT:"Host\\: HOST\\l" COMMENT:"Service\\: SERVICE"\r\n CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033\r\n -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -l 0'		 
69	*	local_swap	nagios	1	0	0	Swap Utilization	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr $LISTSTART$DS:$LABEL#$:GAUGE:1800:U:U DS:$LABEL#$_wn:GAUGE:1800:U:U DS:$LABEL#$_cr:GAUGE:1800:U:U DS:$LABEL#$_mx:GAUGE:1800:U:U $LISTEND$ RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480\r\n	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$:$WARN1$:$CRIT1$:$MAX1$ 2>&1	'rrdtool graph - \r\n DEF:a="rrd_source":ds_source_0:AVERAGE \r\n DEF:w="rrd_source":ds_source_1:AVERAGE \r\n DEF:c="rrd_source":ds_source_2:AVERAGE \r\n DEF:m="rrd_source":ds_source_3:AVERAGE \r\n CDEF:cdefa=a,m,/,100,* \r\n CDEF:cdefw=w\r\n CDEF:cdefc=c\r\n CDEF:cdefm=m \r\n AREA:a#9900FF:"Swap Free\\: " \r\n LINE2:a#6600FF: \r\n GPRINT:a:LAST:"%.2lf MB\\l" \r\n CDEF:cdefws=a,cdefw,LT,a,0,IF\r\n AREA:cdefws#FFFF00\r\n CDEF:cdefcs=a,cdefc,LT,a,0,IF\r\n AREA:cdefcs#FF0033 \r\n LINE2:cdefw#FFFF00:"Warning Threshold\\:" \r\n GPRINT:cdefw:AVERAGE:"%.2lf" \r\n LINE2:cdefc#FF0033:"Critical Threshold\\:" \r\n GPRINT:cdefc:AVERAGE:"%.2lf\\l" \r\n GPRINT:cdefa:AVERAGE:"Percentage Swap Free"=%.2lf \r\n GPRINT:cdefm:AVERAGE:"Total Swap Space=%.2lf" \r\n -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -l 0'		
77	*	tcp_gw_listener	nagios	1	0	0	Foundation Listener Response Time	/usr/local/groundwork/rrd/$HOST$_$SERVICE$.rrd	$RRDTOOL$ create $RRDNAME$ --step 300 --start n-1yr DS:$LABEL1$:GAUGE:1800:U:U DS:$LABEL1$_wn:GAUGE:1800:U:U DS:$LABEL1$_cr:GAUGE:1800:U:U RRA:AVERAGE:0.5:1:8640 RRA:AVERAGE:0.5:12:9480	$RRDTOOL$ update $RRDNAME$ $LASTCHECK$:$VALUE1$:$WARN1$:$CRIT1$ 2>&1	'rrdtool graph - \r\n DEF:a="rrd_source":ds_source_0:AVERAGE\r\n DEF:w="rrd_source":ds_source_1:AVERAGE\r\n DEF:c="rrd_source":ds_source_2:AVERAGE\r\n CDEF:cdefa=a CDEF:cdefb=a,0.99,*\r\n CDEF:cdefw=w\r\n CDEF:cdefc=c \r\n AREA:a#33FFFF\r\n AREA:cdefb#00CF00:"Response Time\\:"\r\n GPRINT:a:LAST:"%.4lf Seconds"  \r\n GPRINT:a:MIN:min=%.2lf\r\n GPRINT:a:AVERAGE:avg=%.2lf\r\n GPRINT:a:MAX:max="%.2lf\\l"\r\n LINE2:cdefw#FFFF00:"Warning Threshold\\:"\r\n GPRINT:cdefw:LAST:"%.2lf"\r\n LINE2:cdefc#FF0033:"Critical Threshold\\:"\r\n GPRINT:cdefc:LAST:"%.2lf\\l"  \r\n COMMENT:"Host\\: HOST\\l" COMMENT:"Service\\: SERVICE"\r\n CDEF:cdefws=a,cdefw,GT,a,0,IF AREA:cdefws#FFFF00 CDEF:cdefcs=a,cdefc,GT,a,0,IF AREA:cdefcs#FF0033\r\n -c BACK#FFFFFF -c CANVAS#FFFFFF -c GRID#C0C0C0 -c MGRID#404040 -c ARROW#FFFFFF -Y -l 0'		 
\.


--
-- Data for Name: profile_host_profile_service; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY profile_host_profile_service (hostprofile_id, serviceprofile_id) FROM stdin;
3	2
2	3
1	4
4	5
\.


--
-- Data for Name: profile_hostgroup; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY profile_hostgroup (hostprofile_id, hostgroup_id) FROM stdin;
\.


--
-- Data for Name: profile_parent; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY profile_parent (hostprofile_id, host_id) FROM stdin;
\.


--
-- Data for Name: profiles_host; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY profiles_host (hostprofile_id, name, description, host_template_id, host_extinfo_id, host_escalation_id, service_escalation_id, data) FROM stdin;
1	host-profile-service-ping	Host profile for ping	1	\N	\N	\N	\N
2	host-profile-snmp-network	Host Profile for monitoring network devices using snmp	1	\N	\N	\N	\N
3	host-profile-ssh-unix	Host Profile for monitoring servers using ssh	1	\N	\N	\N	<?xml version="1.0" ?>\n<data>\n  <prop name="hosts_select"><![CDATA[checked]]>\n  </prop>\n  <prop name="apply_services"><![CDATA[replace]]>\n  </prop>\n</data>
4	host-profile-cacti-host	Cacti host profile	1	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n</data>
\.


--
-- Data for Name: profiles_service; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY profiles_service (serviceprofile_id, name, description, data) FROM stdin;
2	ssh-unix	SSH UNIX server generic profile	<?xml version="1.0" ?>\n<data>\n</data>
3	snmp-network	network_snmp	<?xml version="1.0" ?>\n<data>\n</data>
4	service-ping	Ping service profile	<?xml version="1.0" ?>\n<data>\n</data>
5	cacti	Profile containing passive cacti service check	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n</data>
\.


--
-- Data for Name: service_dependency; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY service_dependency (id, service_id, host_id, depend_on_host_id, template, comment) FROM stdin;
\.


--
-- Data for Name: service_dependency_templates; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY service_dependency_templates (id, name, servicename_id, data, comment) FROM stdin;
\.


--
-- Data for Name: service_instance; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY service_instance (instance_id, service_id, name, status, arguments) FROM stdin;
\.


--
-- Data for Name: service_names; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY service_names (servicename_id, name, description, template, check_command, command_line, escalation, extinfo, data) FROM stdin;
1	*	special use	\N	\N	\N	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
4	icmp_ping	PING	1	19	check_ping!100.0,20%!500.0,60%	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
6	icmp_ping_alive	Ping host to see if it is Alive	1	24	\N	\N	1	<?xml version="1.0" ?>\n<data>\n</data>
13	udp_snmp	gwsn-snmp	1	263	\N	\N	1	<?xml version="1.0" ?>\n<data>\n</data>
14	snmp_if_1	gwsn-snmp_if	1	32	check_snmp_if!1	\N	5	<?xml version="1.0" ?>\n<data>\n</data>
15	snmp_ifbandwidth_1	SNMP_if_bandwidth	1	33	check_snmp_bandwidth!1	\N	5	<?xml version="1.0" ?>\n<data>\n</data>
16	snmp_ifoperstatus_1	SNMP_ifoperstatus	1	34	check_ifoperstatus!1	\N	5	<?xml version="1.0" ?>\n<data>\n</data>
17	tcp_http	check http server at host	1	11	check_http!3!5	\N	1	<?xml version="1.0" ?>\n<data>\n</data>
20	local_mysql_engine	gwsn-local_mysql_engine	1	38	check_mysql_engine!root!d3v3l0p3r	\N	1	<?xml version="1.0" ?>\n<data>\n</data>
64	nrpe_disk	check disk on nrpe server	1	66	check_nrpe_disk!*!80,90	\N	3	<?xml version="1.0" ?>\n<data>\n</data>
169	tcp_ssh	Check SSH server running at host	1	161	\N	\N	1	<?xml version="1.0" ?>\n<data>\n</data>
170	local_disk_root	gwsn-local_disk_root	1	22	check_local_disk!15%!10%!/	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
173	local_load	Check the local load on this unix server	1	1	check_local_load!5,4,3!10,8,6	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
174	local_memory	gwsn-local_mem	1	41	check_local_mem!95!99	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
175	local_mysql_cpu	gwsn-local_mysql_engine	1	267	check_local_proc_cpu!40!50!mysql	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
176	local_mysql_database	gwsn-local_mysql_database	1	37	check_mysql!monarch!monarch	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
177	local_mysql_mem	gwsn-local_mysql_engine	1	268	check_local_proc_mem!20!30!mysql	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
178	local_nagios_latency	Check NSCA port at host	1	44	\N	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
179	local_process_gw_listener	Check NSCA port at host	1	45	check_local_procs_arg!1:1!1:1!groundwork/foundation/container/lib/jboss	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
180	local_process_mysqld	gwsn-local_mysqld	1	40	check_local_procs_string!10!20!mysqld	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
181	local_process_mysqld_safe	gwsn-local_mysqld_safe	1	40	check_local_procs_string!1!2!mysqld_safe	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
182	local_process_nagios	Check NSCA port at host	1	43	\N	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
183	local_process_snmptrapd	Check NSCA port at host	1	45	check_local_procs_arg!1:1!1:1!snmptrapd	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
184	local_process_snmptt	Check NSCA port at host	1	45	check_local_procs_arg!2:2!2:2!sbin/snmptt	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
185	local_dir_size_snmptt	Check SNMPTT spool directory size	1	269	check_dir_size!/usr/local/groundwork/common/var/spool/snmptt!500!1000	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
186	tcp_gw_listener	Check NSCA port at host	1	270	check_tcp_gw_listener!5!9	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
187	tcp_http_port	Check HTTP server on Port at host	1	54	check_http_port!3!5!80	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
188	tcp_nsca	Check NSCA port at host	1	42	check_tcp_nsca!5!9	\N	\N	<?xml version="1.0" ?>\n<data>\n  <prop name="apply_services"><![CDATA[replace]]>\n  </prop>\n  <prop name="apply_check"><![CDATA[checked]]>\n  </prop>\n</data>\n
189	local_users	gwsn-local_users	1	16	check_local_users!5!20	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
190	local_cpu_httpd	gwsn-local_mysql_engine	1	267	check_local_proc_cpu!40!50!httpd	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
191	local_cpu_java	gwsn-local_mysql_engine	1	267	check_local_proc_cpu!40!50!java	\N	\N	<?xml version="1.0" ?>\n<data>\n  <prop name="apply_services"><![CDATA[replace]]>\n  </prop>\n  <prop name="apply_check"><![CDATA[checked]]>\n  </prop>\n</data>\n
192	local_cpu_mysql	gwsn-local_mysql_engine	1	267	check_local_proc_cpu!40!50!mysql	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
193	local_cpu_nagios	gwsn-local_mysql_engine	1	267	check_local_proc_cpu!40!50!nagios	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
194	local_cpu_perl	gwsn-local_mysql_engine	1	267	check_local_proc_cpu!40!50!perl	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
195	local_cpu_snmptrapd	gwsn-local_mysql_engine	1	267	check_local_proc_cpu!40!50!snmptrapd	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
196	local_cpu_snmptt	gwsn-local_mysql_engine	1	267	check_local_proc_cpu!40!50!snmptt	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
197	local_cpu_syslog-ng	gwsn-local_mysql_engine	1	267	check_local_proc_cpu!40!50!syslog-ng	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
198	local_load_stack	Check the local load on this unix server	1	1	check_local_load!5,4,3!10,8,6	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
199	local_mem_httpd	gwsn-local_mysql_engine	1	268	check_local_proc_mem!20!30!httpd	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
200	local_mem_java	gwsn-local_mysql_engine	1	268	check_local_proc_mem!40!50!java	\N	\N	<?xml version="1.0" ?>\n<data>\n  <prop name="apply_services"><![CDATA[replace]]>\n  </prop>\n  <prop name="apply_check"><![CDATA[checked]]>\n  </prop>\n</data>\n
201	local_mem_mysql	gwsn-local_mysql_engine	1	268	check_local_proc_mem!20!30!mysql	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
202	local_mem_nagios	gwsn-local_mysql_engine	1	268	check_local_proc_mem!20!30!nagios	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
203	local_mem_perl	gwsn-local_mysql_engine	1	268	check_local_proc_mem!20!30!perl	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
204	local_mem_snmptrapd	gwsn-local_mysql_engine	1	268	check_local_proc_mem!20!30!snmptrapd	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
205	local_mem_snmpttd	gwsn-local_mysql_engine	1	268	check_local_proc_mem!20!30!snmptt	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
206	local_mem_syslog-ng	gwsn-local_mysql_engine	1	268	check_local_proc_mem!20!30!syslog-ng	\N	\N	<?xml version="1.0" ?>\n<data>\n</data>
212	ssh_cpu_proc	gwsn-by_ssh_load	1	272	check_by_ssh_cpu_proc!<warn>!<crit>!<procname>	\N	2	<?xml version="1.0" ?>\n<data>\n  <prop name="dependency"><![CDATA[ssh_depend]]>\n  </prop>\n</data>
224	ssh_mem_proc	gwsn-by_ssh_load	1	273	check_by_ssh_mem_proc!<warn>!<crit>!<procname>	\N	2	<?xml version="1.0" ?>\n<data>\n  <prop name="dependency"><![CDATA[ssh_depend]]>\n  </prop>\n</data>
230	tcp_mysql	check http server at host	1	20	check_tcp!3306	\N	1	<?xml version="1.0" ?>\n<data>\n</data>
232	local_swap	ssh_swap	1	46	check_local_swap!20%!10%	\N	3	<?xml version="1.0" ?>\n<data>\n  <prop name="dependency"><![CDATA[ssh_depend]]>\n  </prop>\n</data>
233	cacti	\N	1	275	check_msg!3!"You actively checked a passive service, check your configuration"	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n</data>
238	test-pending	\N	1	275	check_msg!3!"You actively checked a passive service, check your configuration"	\N	\N	\N
236	test-critical	\N	1	275	check_msg!2!	\N	\N	\N
234	test-ok	\N	1	275	check_msg!0!	\N	\N	\N
235	test-warning	\N	1	275	check_msg!1!	\N	\N	\N
237	test-unknown	\N	1	275	check_msg!3!	\N	\N	\N
\.


--
-- Data for Name: service_overrides; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY service_overrides (service_id, check_period, notification_period, event_handler, data) FROM stdin;
190	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="notification_options"><![CDATA[u,c,r]]>\n  </prop>\n</data>
191	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="notification_options"><![CDATA[u,w,r]]>\n  </prop>\n</data>
192	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="active_checks_enabled"><![CDATA[-zero-]]>\n  </prop>\n</data>
193	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="notification_options"><![CDATA[u,c,w]]>\n  </prop>\n</data>
195	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="notification_options"><![CDATA[u,c,r]]>\n  </prop>\n</data>
196	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="notification_options"><![CDATA[u,w,r]]>\n  </prop>\n</data>
197	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="notification_options"><![CDATA[c,w,r]]>\n  </prop>\n</data>
198	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="active_checks_enabled"><![CDATA[-zero-]]>\n  </prop>\n</data>
199	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="notification_options"><![CDATA[u,c,w]]>\n  </prop>\n</data>
200	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="notification_options"><![CDATA[c,w,r]]>\n  </prop>\n</data>
\.


--
-- Data for Name: service_templates; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY service_templates (servicetemplate_id, name, parent_id, check_period, notification_period, check_command, command_line, event_handler, data, comment) FROM stdin;
1	generic-service	\N	3	3	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="flap_detection_enabled"><![CDATA[1]]>\n  </prop>\n  <prop name="retry_check_interval"><![CDATA[1]]>\n  </prop>\n  <prop name="check_freshness"><![CDATA[-zero-]]>\n  </prop>\n  <prop name="event_handler_enabled"><![CDATA[1]]>\n  </prop>\n  <prop name="notifications_enabled"><![CDATA[1]]>\n  </prop>\n  <prop name="process_perf_data"><![CDATA[1]]>\n  </prop>\n  <prop name="active_checks_enabled"><![CDATA[1]]>\n  </prop>\n  <prop name="is_volatile"><![CDATA[-zero-]]>\n  </prop>\n  <prop name="passive_checks_enabled"><![CDATA[1]]>\n  </prop>\n  <prop name="retain_status_information"><![CDATA[1]]>\n  </prop>\n  <prop name="max_check_attempts"><![CDATA[3]]>\n  </prop>\n  <prop name="notification_options"><![CDATA[u,c,w,r]]>\n  </prop>\n  <prop name="retain_nonstatus_information"><![CDATA[1]]>\n  </prop>\n  <prop name="normal_check_interval"><![CDATA[10]]>\n  </prop>\n  <prop name="obsess_over_service"><![CDATA[1]]>\n  </prop>\n  <prop name="notification_interval"><![CDATA[60]]>\n  </prop>\n</data>	# Generic service definition template - This is NOT a real service, just a template!
\.


--
-- Data for Name: servicegroup_service; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY servicegroup_service (servicegroup_id, host_id, service_id) FROM stdin;
1	9	196
1	4	191
1	11	198
1	6	192
1	8	195
1	3	190
1	10	197
1	5	200
1	7	193
1	2	199
2	7	193
2	2	199
3	8	195
3	3	190
4	9	196
4	4	191
5	10	197
5	5	200
6	11	198
6	6	192
\.


--
-- Data for Name: servicegroups; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY servicegroups (servicegroup_id, name, alias, escalation_id, comment, notes) FROM stdin;
1	group-all	group-all	\N	\N	\N
2	group-ok	group-ok	\N	\N	\N
3	group-warning	group-warning	\N	\N	\N
4	group-critical	group-critical	\N	\N	\N
5	group-unknown	group-unknown	\N	\N	\N
6	group-pending	group-pending	\N	\N	\N
\.


--
-- Data for Name: servicename_dependency; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY servicename_dependency (id, servicename_id, depend_on_host_id, template) FROM stdin;
\.


--
-- Data for Name: servicename_overrides; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY servicename_overrides (servicename_id, check_period, notification_period, event_handler, data) FROM stdin;
16	\N	\N	\N	<?xml version="1.0" ?>\n<data>\n </data>
233	1	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="active_checks_enabled"><![CDATA[-zero-]]>\n  </prop>\n  <prop name="max_check_attempts"><![CDATA[1]]>\n  </prop>\n</data>
238	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="active_checks_enabled"><![CDATA[-zero-]]>\n  </prop>\n</data>
236	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="notification_options"><![CDATA[u,w,r]]>\n  </prop>\n</data>
234	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="notification_options"><![CDATA[u,c,w]]>\n  </prop>\n</data>
235	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="notification_options"><![CDATA[u,c,r]]>\n  </prop>\n</data>
237	\N	\N	\N	<?xml version="1.0" encoding="iso-8859-1" ?>\n<data>\n  <prop name="notification_options"><![CDATA[c,w,r]]>\n  </prop>\n</data>
\.


--
-- Data for Name: serviceprofile; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY serviceprofile (servicename_id, serviceprofile_id) FROM stdin;
169	2
13	3
14	3
15	3
16	3
6	4
6	5
233	5
\.


--
-- Data for Name: serviceprofile_host; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY serviceprofile_host (serviceprofile_id, host_id) FROM stdin;
\.


--
-- Data for Name: serviceprofile_hostgroup; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY serviceprofile_hostgroup (serviceprofile_id, hostgroup_id) FROM stdin;
\.


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY services (service_id, host_id, servicename_id, servicetemplate_id, serviceextinfo_id, escalation_id, status, check_command, command_line, comment, notes) FROM stdin;
159	1	170	1	\N	\N	1	22	check_local_disk!15%!10%!/	\N	\N
161	1	206	1	\N	\N	1	268	check_local_proc_mem!20!30!syslog-ng	\N	\N
162	1	188	1	\N	\N	1	42	check_tcp_nsca!5!9	\N	\N
163	1	193	1	\N	\N	1	267	check_local_proc_cpu!40!50!nagios	\N	\N
164	1	17	1	1	\N	1	11	check_http!3!5	\N	\N
165	1	200	1	\N	\N	1	268	check_local_proc_mem!40!50!java	\N	\N
167	1	179	1	\N	\N	1	45	check_local_procs_arg!1:1!1:1!groundwork/foundation/container/lib/jboss	\N	\N
168	1	186	1	\N	\N	1	270	check_tcp_gw_listener!5!9	\N	\N
169	1	190	1	\N	\N	1	267	check_local_proc_cpu!40!50!httpd	\N	\N
170	1	182	1	\N	\N	1	43	\N	\N	\N
171	1	194	1	\N	\N	1	267	check_local_proc_cpu!40!50!perl	\N	\N
173	1	202	1	\N	\N	1	268	check_local_proc_mem!20!30!nagios	\N	\N
175	1	191	1	\N	\N	1	267	check_local_proc_cpu!40!50!java	\N	\N
177	1	232	1	3	\N	1	46	check_local_swap!20%!10%	\N	\N
178	1	178	1	\N	\N	1	44	\N	\N	\N
179	1	189	1	\N	\N	1	16	check_local_users!5!20	\N	\N
182	1	174	1	\N	\N	1	41	check_local_mem!95!99	\N	\N
183	1	197	1	\N	\N	1	267	check_local_proc_cpu!40!50!syslog-ng	\N	\N
184	1	203	1	\N	\N	1	268	check_local_proc_mem!20!30!perl	\N	\N
187	1	199	1	\N	\N	1	268	check_local_proc_mem!20!30!httpd	\N	\N
189	1	173	1	\N	\N	1	1	check_local_load!5,4,3!10,8,6	\N	\N
190	3	235	1	\N	\N	1	275	check_msg!1!	\N	\N
191	4	236	1	\N	\N	1	275	check_msg!2!	\N	\N
192	6	238	1	\N	\N	1	275	check_msg!3!"You actively checked a passive service, check your configuration"	\N	\N
193	7	234	1	\N	\N	1	275	check_msg!0!	\N	\N
195	8	235	1	\N	\N	1	275	check_msg!1!	\N	\N
196	9	236	1	\N	\N	1	275	check_msg!2!	\N	\N
197	10	237	1	\N	\N	1	275	check_msg!3!	\N	\N
198	11	238	1	\N	\N	1	275	check_msg!3!"You actively checked a passive service, check your configuration"	\N	\N
199	2	234	1	\N	\N	1	275	check_msg!0!	\N	\N
200	5	237	1	\N	\N	1	275	check_msg!3!	\N	\N
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY sessions (id, a_session) FROM stdin;
35161934b7ea7c25eded39f780959260	$D = {'_SESSION_ID' => '35161934b7ea7c25eded39f780959260','_SESSION_ATIME' => 1357211859,'session_stale' => 1357384659,'_SESSION_REMOTE_ADDR' => '127.0.0.1','_SESSION_CTIME' => 1357211859};;$D
bfc574718b72f99cc7505d1133c43d78	$D = {'_SESSION_ID' => 'bfc574718b72f99cc7505d1133c43d78','userid' => 2,'_SESSION_REMOTE_ADDR' => '127.0.0.1','_SESSION_CTIME' => 1357211872,'_SESSION_ATIME' => 1357215246,'session_stale' => 1357388046,'user_acct' => 'admin','_SESSION_EXPIRE_LIST' => {}};;$D
\.


--
-- Data for Name: setup; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY setup (name, type, value) FROM stdin;
accept_passive_host_checks	nagios	1
accept_passive_service_checks	nagios	1
admin_email	nagios	nagios@localhost
admin_pager	nagios	pagenagios@localhost
authorized_for_all_hosts	nagios_cgi	admin,guest
authorized_for_all_host_commands	nagios_cgi	admin
authorized_for_all_services	nagios_cgi	admin,guest
authorized_for_all_service_commands	nagios_cgi	admin
authorized_for_configuration_information	nagios_cgi	admin,jdoe
authorized_for_system_commands	nagios_cgi	admin
authorized_for_system_information	nagios_cgi	admin,theboss,jdoe
auto_reschedule_checks	nagios	\N
auto_rescheduling_interval	nagios	30
auto_rescheduling_window	nagios	180
backup_dir	config	/usr/local/groundwork/core/monarch/backup
broker_module	nagios	/usr/local/groundwork/common/lib/libbronx.so
cached_host_check_horizon	nagios	15
cached_service_check_horizon	nagios	15
cgi_bin	config	0
check_external_commands	nagios	1
check_for_orphaned_services	nagios	\N
check_host_freshness	nagios	\N
check_result_path	nagios	/usr/local/groundwork/nagios/var/checkresults
check_result_reaper_frequency	nagios	10
check_service_freshness	nagios	\N
child_processes_fork_twice	nagios	\N
commands	file	26
command_check_interval	nagios	-1
command_file	nagios	/usr/local/groundwork/nagios/var/spool/nagios.cmd
contactgroup	monarch_ez	nagiosadmin
contactgroups	file	30
contacts	file	31
contact_template	monarch_ez	generic-contact-2
contact_templates	file	29
date_format	nagios	us
default_statusmap_layout	nagios_cgi	5
default_statuswrl_layout	nagios_cgi	2
default_user_name	nagios_cgi	admin
doc_root	config	0
enable_environment_macros	nagios	\N
enable_event_handlers	nagios	1
enable_externals	config	0
enable_flap_detection	nagios	\N
enable_groups	config	0
enable_notifications	nagios	\N
escalations	file	35
escalation_templates	file	18
event_broker_options	nagios	-1
event_handler_timeout	nagios	30
execute_host_checks	nagios	1
execute_service_checks	nagios	1
extended_host_info	file	36
extended_host_info_templates	file	22
extended_service_info	file	21
extended_service_info_templates	file	20
external_command_buffer_slots	nagios	\N
free_child_process_memory	nagios	\N
freshness_check_interval	nagios	60
global_host_event_handler	nagios	\N
global_service_event_handler	nagios	\N
high_host_flap_threshold	nagios	50.0
high_service_flap_threshold	nagios	50.0
hostgroups	file	33
hosts	file	13
host_check_timeout	nagios	30
host_dependencies	file	23
host_down_sound	nagios_cgi	\N
host_freshness_check_interval	nagios	60
host_inter_check_delay_method	nagios	s
host_perfdata_command	nagios	\N
host_perfdata_file	nagios	\N
host_perfdata_file_mode	nagios	w
host_perfdata_file_processing_command	nagios	\N
host_perfdata_file_processing_interval	nagios	\N
host_perfdata_file_template	nagios	\N
host_profile	monarch_ez	host-profile-service-ping
host_templates	file	32
host_unreachable_sound	nagios_cgi	\N
illegal_macro_output_chars	nagios	`~$&|"<>
illegal_object_name_chars	nagios	`~!$%^&*|'"<>?,()'=
interval_length	nagios	60
is_portal	config	1
lock_author_names	nagios_cgi	\N
lock_file	nagios	/usr/local/groundwork/nagios/var/nagios.lock
login_authentication		none
log_archive_path	nagios	/usr/local/groundwork/nagios/var/archives
log_event_handlers	nagios	1
log_external_commands	nagios	1
log_file	nagios	/usr/local/groundwork/nagios/var/nagios.log
log_host_retries	nagios	1
log_initial_states	nagios	\N
log_notifications	nagios	1
log_passive_checks	nagios	1
log_passive_service_checks	nagios	\N
log_rotation_method	nagios	d
log_service_retries	nagios	1
low_host_flap_threshold	nagios	25.0
low_service_flap_threshold	nagios	25.0
max_check_result_file_age	nagios	\N
max_check_result_reaper_time	nagios	\N
max_concurrent_checks	nagios	100
max_host_check_spread	nagios	30
max_service_check_spread	nagios	30
max_tree_nodes	config	3000
misccommands	file	27
monarch_home	config	/usr/local/groundwork/core/monarch
monarch_version	config	4.1
nagios_bin	config	/usr/local/groundwork/nagios/bin
nagios_check_command	nagios_cgi	/usr/local/groundwork/nagios/libexec/check_nagios /usr/local/groundwork/nagios/var/status.log 5 '/usr/local/groundwork/nagios/bin/.nagios.bin'
nagios_etc	config	/usr/local/groundwork/nagios/etc
nagios_group	nagios	nagios
nagios_user	nagios	nagios
nagios_version	config	3.x
notification_timeout	nagios	30
object_cache_file	nagios	/usr/local/groundwork/nagios/var/objects.cache
obsess_over_hosts	nagios	\N
obsess_over_services	nagios	\N
ochp_command	nagios	\N
ochp_timeout	nagios	5
ocsp_command	nagios	\N
ocsp_timeout	nagios	5
other_host_inter_check_delay_method	nagios	\N
other_service_interleave_factor	nagios	\N
other_service_inter_check_delay_method	nagios	\N
passive_host_checks_are_soft	nagios	\N
perfdata_timeout	nagios	60
perflogbug_workaround_removed	nagios	1
physical_html_path	nagios_cgi	/usr/local/groundwork/nagios/share
ping_syntax	nagios_cgi	/bin/ping -n -U -c 5 $HOSTADDRESS$
precached_object_file	nagios	/usr/local/groundwork/nagios/var/objects.precache
process_performance_data	nagios	1
refresh_rate	nagios_cgi	90
resource_file	nagios	/usr/local/groundwork/nagios/etc/resource.cfg
resource_label1	resource	plugin directory
resource_label10	resource	
resource_label11	resource	
resource_label12	resource	
resource_label13	resource	sendEmail smtp mail relay option (-s) value
resource_label14	resource	
resource_label15	resource	
resource_label16	resource	
resource_label17	resource	default check_by_ssh remote user name for all SSH checks
resource_label18	resource	
resource_label19	resource	NSClient TCP Port
resource_label2	resource	event handler scripts directory
resource_label20	resource	
resource_label21	resource	GroundWork Proxy Server IP
resource_label22	resource	default plugin subdirectory on remote hosts, relative to the home directory of the user you SSH in as
resource_label23	resource	
resource_label24	resource	
resource_label25	resource	
resource_label26	resource	
resource_label27	resource	
resource_label28	resource	
resource_label29	resource	
resource_label3	resource	plugin timeout
resource_label30	resource	
resource_label31	resource	
resource_label32	resource	GroundWork Server fully qualified hostname
resource_label4	resource	NSClient password
resource_label5	resource	
resource_label6	resource	default MySQL password for GroundWork databases
resource_label7	resource	SNMP community string
resource_label8	resource	alternate SNMP community string
resource_label9	resource	
retain_state_information	nagios	1
retention_update_interval	nagios	60
servicegroups	file	15
services	file	19
service_check_timeout	nagios	60
service_critical_sound	nagios_cgi	\N
service_dependency	file	17
service_dependency_templates	file	16
service_interleave_factor	nagios	s
service_inter_check_delay_method	nagios	s
service_perfdata_command	nagios	\N
service_perfdata_file	nagios	/usr/local/groundwork/nagios/var/service-perfdata.dat
service_perfdata_file_mode	nagios	a
service_perfdata_file_processing_command	nagios	launch_perfdata_process
service_perfdata_file_processing_interval	nagios	300
service_perfdata_file_template	nagios	$LASTSERVICECHECK$\\t$HOSTNAME$\\t$SERVICEDESC$\\t$SERVICEOUTPUT$\\t$SERVICEPERFDATA$
service_templates	file	34
service_unknown_sound	nagios_cgi	\N
service_warning_sound	nagios_cgi	\N
session_timeout		3600
show_context_help	nagios_cgi	1
sleep_time	nagios	1
soft_state_dependencies	nagios	\N
state_retention_file	nagios	/usr/local/groundwork/nagios/var/nagiosstatus.sav
statusmap_background_image	nagios_cgi	states.png
statuswrl_include	nagios_cgi	myworld.wrl
status_file	nagios	/usr/local/groundwork/nagios/var/status.log
status_update_interval	nagios	15
super_user_password		
task	nagios	view_edit
temp_file	nagios	/usr/local/groundwork/nagios/var/nagios.tmp
time_periods	file	28
translate_passive_host_checks	nagios	\N
upload_dir	config	/tmp
url_html_path	nagios_cgi	/nagios
user1	resource	/usr/local/groundwork/nagios/libexec
user10	resource	
user11	resource	
user12	resource	
user13	resource	127.0.0.1
user14	resource	
user15	resource	
user16	resource	
user17	resource	nagios
user18	resource	
user19	resource	1248
user2	resource	/usr/local/groundwork/nagios/eventhandlers
user20	resource	
user21	resource	127.0.0.1
user22	resource	libexec
user23	resource	
user24	resource	
user25	resource	
user26	resource	
user27	resource	
user28	resource	
user29	resource	
user3	resource	60
user30	resource	
user31	resource	
user32	resource	USER32_GROUNDWORK_SERVER
user4	resource	somepassword
user5	resource	
user6	resource	gwrk
user7	resource	public
user8	resource	itgwrk
user9	resource	
use_aggressive_host_checking	nagios	\N
use_authentication	nagios_cgi	1
use_large_installation_tweaks	nagios	1
use_regexp_matching	nagios	\N
use_retained_program_state	nagios	1
use_retained_scheduling_info	nagios	1
use_syslog	nagios	\N
use_true_regexp_matching	nagios	\N
\.


--
-- Data for Name: stage_host_hostgroups; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY stage_host_hostgroups (name, user_acct, hostgroup) FROM stdin;
\.


--
-- Data for Name: stage_host_services; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY stage_host_services (name, user_acct, host, type, status, service_id) FROM stdin;
\.


--
-- Data for Name: stage_hosts; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY stage_hosts (name, user_acct, type, status, alias, address, os, hostprofile, serviceprofile, info, notes) FROM stdin;
\.


--
-- Data for Name: stage_other; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY stage_other (name, type, parent, data, comment) FROM stdin;
\.


--
-- Data for Name: time_period_exclude; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY time_period_exclude (timeperiod_id, exclude_id) FROM stdin;
\.


--
-- Data for Name: time_period_property; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY time_period_property (timeperiod_id, name, type, value, comment) FROM stdin;
2	friday	weekday	09:00-17:00	
2	monday	weekday	09:00-17:00	
2	thursday	weekday	09:00-17:00	
2	tuesday	weekday	09:00-17:00	
2	wednesday	weekday	09:00-17:00	
3	friday	weekday	00:00-24:00	
3	monday	weekday	00:00-24:00	
3	saturday	weekday	00:00-24:00	
3	sunday	weekday	00:00-24:00	
3	thursday	weekday	00:00-24:00	
3	tuesday	weekday	00:00-24:00	
3	wednesday	weekday	00:00-24:00	
4	friday	weekday	00:00-09:00,17:00-24:00	
4	monday	weekday	00:00-09:00,17:00-24:00	
4	saturday	weekday	00:00-24:00	
4	sunday	weekday	00:00-24:00	
4	thursday	weekday	00:00-09:00,17:00-24:00	
4	tuesday	weekday	00:00-09:00,17:00-24:00	
4	wednesday	weekday	00:00-09:00,17:00-24:00	
\.


--
-- Data for Name: time_periods; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY time_periods (timeperiod_id, name, alias, comment) FROM stdin;
1	none	No Time Is A Good Time	'none' timeperiod definition
2	workhours	"Normal" Working Hours	'workhours' timeperiod definition
3	24x7	24 Hours A Day, 7 Days A Week	All day, every day.
4	nonworkhours	Non-Work Hours	'nonworkhours' timeperiod definition
\.


--
-- Data for Name: tree_template_contactgroup; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY tree_template_contactgroup (tree_id, template_id, contactgroup_id) FROM stdin;
\.


--
-- Data for Name: user_group; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY user_group (usergroup_id, user_id) FROM stdin;
1	1
1	2
\.


--
-- Data for Name: user_groups; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY user_groups (usergroup_id, name, description) FROM stdin;
1	super_users	System defined group granted complete access.
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: monarch
--

COPY users (user_id, user_acct, user_name, password, session) FROM stdin;
1	super_user	Super User Account	Py.Z3VRXrRE3k	4ce50937286796d7a3ddcd978f0ea459
2	admin	admin		bfc574718b72f99cc7505d1133c43d78
\.


--
-- Name: access_list_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY access_list
    ADD CONSTRAINT access_list_pkey PRIMARY KEY (object, type, usergroup_id);


--
-- Name: commands_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY commands
    ADD CONSTRAINT commands_name_key UNIQUE (name);


--
-- Name: commands_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY commands
    ADD CONSTRAINT commands_pkey PRIMARY KEY (command_id);


--
-- Name: contact_command_overrides_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contact_command_overrides
    ADD CONSTRAINT contact_command_overrides_pkey PRIMARY KEY (contact_id, type, command_id);


--
-- Name: contact_command_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contact_command
    ADD CONSTRAINT contact_command_pkey PRIMARY KEY (contacttemplate_id, type, command_id);


--
-- Name: contact_group_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contact_group
    ADD CONSTRAINT contact_group_pkey PRIMARY KEY (contact_id, group_id);


--
-- Name: contact_host_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contact_host
    ADD CONSTRAINT contact_host_pkey PRIMARY KEY (contact_id, host_id);


--
-- Name: contact_host_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contact_host_profile
    ADD CONSTRAINT contact_host_profile_pkey PRIMARY KEY (contact_id, hostprofile_id);


--
-- Name: contact_host_template_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contact_host_template
    ADD CONSTRAINT contact_host_template_pkey PRIMARY KEY (contact_id, hosttemplate_id);


--
-- Name: contact_hostgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contact_hostgroup
    ADD CONSTRAINT contact_hostgroup_pkey PRIMARY KEY (contact_id, hostgroup_id);


--
-- Name: contact_overrides_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contact_overrides
    ADD CONSTRAINT contact_overrides_pkey PRIMARY KEY (contact_id);


--
-- Name: contact_service_name_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contact_service_name
    ADD CONSTRAINT contact_service_name_pkey PRIMARY KEY (contact_id, servicename_id);


--
-- Name: contact_service_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contact_service
    ADD CONSTRAINT contact_service_pkey PRIMARY KEY (contact_id, service_id);


--
-- Name: contact_service_template_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contact_service_template
    ADD CONSTRAINT contact_service_template_pkey PRIMARY KEY (contact_id, servicetemplate_id);


--
-- Name: contact_templates_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contact_templates
    ADD CONSTRAINT contact_templates_name_key UNIQUE (name);


--
-- Name: contact_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contact_templates
    ADD CONSTRAINT contact_templates_pkey PRIMARY KEY (contacttemplate_id);


--
-- Name: contactgroup_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contactgroup_contact
    ADD CONSTRAINT contactgroup_contact_pkey PRIMARY KEY (contactgroup_id, contact_id);


--
-- Name: contactgroup_group_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contactgroup_group
    ADD CONSTRAINT contactgroup_group_pkey PRIMARY KEY (contactgroup_id, group_id);


--
-- Name: contactgroup_host_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contactgroup_host
    ADD CONSTRAINT contactgroup_host_pkey PRIMARY KEY (contactgroup_id, host_id);


--
-- Name: contactgroup_host_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contactgroup_host_profile
    ADD CONSTRAINT contactgroup_host_profile_pkey PRIMARY KEY (contactgroup_id, hostprofile_id);


--
-- Name: contactgroup_host_template_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contactgroup_host_template
    ADD CONSTRAINT contactgroup_host_template_pkey PRIMARY KEY (contactgroup_id, hosttemplate_id);


--
-- Name: contactgroup_hostgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contactgroup_hostgroup
    ADD CONSTRAINT contactgroup_hostgroup_pkey PRIMARY KEY (contactgroup_id, hostgroup_id);


--
-- Name: contactgroup_service_name_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contactgroup_service_name
    ADD CONSTRAINT contactgroup_service_name_pkey PRIMARY KEY (contactgroup_id, servicename_id);


--
-- Name: contactgroup_service_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contactgroup_service
    ADD CONSTRAINT contactgroup_service_pkey PRIMARY KEY (contactgroup_id, service_id);


--
-- Name: contactgroup_service_template_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contactgroup_service_template
    ADD CONSTRAINT contactgroup_service_template_pkey PRIMARY KEY (contactgroup_id, servicetemplate_id);


--
-- Name: contactgroups_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contactgroups
    ADD CONSTRAINT contactgroups_name_key UNIQUE (name);


--
-- Name: contactgroups_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contactgroups
    ADD CONSTRAINT contactgroups_pkey PRIMARY KEY (contactgroup_id);


--
-- Name: contacts_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contacts
    ADD CONSTRAINT contacts_name_key UNIQUE (name);


--
-- Name: contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (contact_id);


--
-- Name: datatype_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY datatype
    ADD CONSTRAINT datatype_pkey PRIMARY KEY (datatype_id);


--
-- Name: discover_filter_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY discover_filter
    ADD CONSTRAINT discover_filter_pkey PRIMARY KEY (filter_id);


--
-- Name: discover_group_filter_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY discover_group_filter
    ADD CONSTRAINT discover_group_filter_pkey PRIMARY KEY (group_id, filter_id);


--
-- Name: discover_group_method_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY discover_group_method
    ADD CONSTRAINT discover_group_method_pkey PRIMARY KEY (group_id, method_id);


--
-- Name: discover_group_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY discover_group
    ADD CONSTRAINT discover_group_pkey PRIMARY KEY (group_id);


--
-- Name: discover_method_filter_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY discover_method_filter
    ADD CONSTRAINT discover_method_filter_pkey PRIMARY KEY (method_id, filter_id);


--
-- Name: discover_method_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY discover_method
    ADD CONSTRAINT discover_method_pkey PRIMARY KEY (method_id);


--
-- Name: escalation_templates_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY escalation_templates
    ADD CONSTRAINT escalation_templates_name_key UNIQUE (name);


--
-- Name: escalation_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY escalation_templates
    ADD CONSTRAINT escalation_templates_pkey PRIMARY KEY (template_id);


--
-- Name: escalation_tree_template_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY escalation_tree_template
    ADD CONSTRAINT escalation_tree_template_pkey PRIMARY KEY (tree_id, template_id);


--
-- Name: escalation_trees_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY escalation_trees
    ADD CONSTRAINT escalation_trees_name_key UNIQUE (name);


--
-- Name: escalation_trees_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY escalation_trees
    ADD CONSTRAINT escalation_trees_pkey PRIMARY KEY (tree_id);


--
-- Name: extended_host_info_templates_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY extended_host_info_templates
    ADD CONSTRAINT extended_host_info_templates_name_key UNIQUE (name);


--
-- Name: extended_host_info_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY extended_host_info_templates
    ADD CONSTRAINT extended_host_info_templates_pkey PRIMARY KEY (hostextinfo_id);


--
-- Name: extended_info_coords_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY extended_info_coords
    ADD CONSTRAINT extended_info_coords_pkey PRIMARY KEY (host_id);


--
-- Name: extended_service_info_templates_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY extended_service_info_templates
    ADD CONSTRAINT extended_service_info_templates_name_key UNIQUE (name);


--
-- Name: extended_service_info_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY extended_service_info_templates
    ADD CONSTRAINT extended_service_info_templates_pkey PRIMARY KEY (serviceextinfo_id);


--
-- Name: external_host_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY external_host
    ADD CONSTRAINT external_host_pkey PRIMARY KEY (external_id, host_id);


--
-- Name: external_host_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY external_host_profile
    ADD CONSTRAINT external_host_profile_pkey PRIMARY KEY (external_id, hostprofile_id);


--
-- Name: external_service_names_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY external_service_names
    ADD CONSTRAINT external_service_names_pkey PRIMARY KEY (external_id, servicename_id);


--
-- Name: external_service_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY external_service
    ADD CONSTRAINT external_service_pkey PRIMARY KEY (external_id, host_id, service_id);


--
-- Name: externals_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY externals
    ADD CONSTRAINT externals_pkey PRIMARY KEY (external_id);


--
-- Name: host_dependencies_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY host_dependencies
    ADD CONSTRAINT host_dependencies_pkey PRIMARY KEY (host_id, parent_id);


--
-- Name: host_overrides_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY host_overrides
    ADD CONSTRAINT host_overrides_pkey PRIMARY KEY (host_id);


--
-- Name: host_parent_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY host_parent
    ADD CONSTRAINT host_parent_pkey PRIMARY KEY (host_id, parent_id);


--
-- Name: host_service_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY host_service
    ADD CONSTRAINT host_service_pkey PRIMARY KEY (host_service_id);


--
-- Name: host_templates_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY host_templates
    ADD CONSTRAINT host_templates_name_key UNIQUE (name);


--
-- Name: host_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY host_templates
    ADD CONSTRAINT host_templates_pkey PRIMARY KEY (hosttemplate_id);


--
-- Name: hostgroup_host_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY hostgroup_host
    ADD CONSTRAINT hostgroup_host_pkey PRIMARY KEY (hostgroup_id, host_id);


--
-- Name: hostgroups_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY hostgroups
    ADD CONSTRAINT hostgroups_name_key UNIQUE (name);


--
-- Name: hostgroups_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY hostgroups
    ADD CONSTRAINT hostgroups_pkey PRIMARY KEY (hostgroup_id);


--
-- Name: hostprofile_overrides_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY hostprofile_overrides
    ADD CONSTRAINT hostprofile_overrides_pkey PRIMARY KEY (hostprofile_id);


--
-- Name: hosts_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY hosts
    ADD CONSTRAINT hosts_name_key UNIQUE (name);


--
-- Name: hosts_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY hosts
    ADD CONSTRAINT hosts_pkey PRIMARY KEY (host_id);


--
-- Name: import_column_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY import_column
    ADD CONSTRAINT import_column_pkey PRIMARY KEY (column_id);


--
-- Name: import_hosts_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY import_hosts
    ADD CONSTRAINT import_hosts_name_key UNIQUE (name);


--
-- Name: import_hosts_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY import_hosts
    ADD CONSTRAINT import_hosts_pkey PRIMARY KEY (import_hosts_id);


--
-- Name: import_match_contactgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY import_match_contactgroup
    ADD CONSTRAINT import_match_contactgroup_pkey PRIMARY KEY (match_id, contactgroup_id);


--
-- Name: import_match_group_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY import_match_group
    ADD CONSTRAINT import_match_group_pkey PRIMARY KEY (match_id, group_id);


--
-- Name: import_match_hostgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY import_match_hostgroup
    ADD CONSTRAINT import_match_hostgroup_pkey PRIMARY KEY (match_id, hostgroup_id);


--
-- Name: import_match_parent_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY import_match_parent
    ADD CONSTRAINT import_match_parent_pkey PRIMARY KEY (match_id, parent_id);


--
-- Name: import_match_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY import_match
    ADD CONSTRAINT import_match_pkey PRIMARY KEY (match_id);


--
-- Name: import_match_servicename_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY import_match_servicename
    ADD CONSTRAINT import_match_servicename_pkey PRIMARY KEY (match_id, servicename_id);


--
-- Name: import_match_serviceprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY import_match_serviceprofile
    ADD CONSTRAINT import_match_serviceprofile_pkey PRIMARY KEY (match_id, serviceprofile_id);


--
-- Name: import_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY import_schema
    ADD CONSTRAINT import_schema_pkey PRIMARY KEY (schema_id);


--
-- Name: import_services_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY import_services
    ADD CONSTRAINT import_services_pkey PRIMARY KEY (import_services_id);


--
-- Name: monarch_group_child_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY monarch_group_child
    ADD CONSTRAINT monarch_group_child_pkey PRIMARY KEY (group_id, child_id);


--
-- Name: monarch_group_host_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY monarch_group_host
    ADD CONSTRAINT monarch_group_host_pkey PRIMARY KEY (group_id, host_id);


--
-- Name: monarch_group_hostgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY monarch_group_hostgroup
    ADD CONSTRAINT monarch_group_hostgroup_pkey PRIMARY KEY (group_id, hostgroup_id);


--
-- Name: monarch_group_macro_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY monarch_group_macro
    ADD CONSTRAINT monarch_group_macro_pkey PRIMARY KEY (group_id, macro_id);


--
-- Name: monarch_group_props_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY monarch_group_props
    ADD CONSTRAINT monarch_group_props_pkey PRIMARY KEY (prop_id);


--
-- Name: monarch_groups_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY monarch_groups
    ADD CONSTRAINT monarch_groups_name_key UNIQUE (name);


--
-- Name: monarch_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY monarch_groups
    ADD CONSTRAINT monarch_groups_pkey PRIMARY KEY (group_id);


--
-- Name: monarch_macros_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY monarch_macros
    ADD CONSTRAINT monarch_macros_pkey PRIMARY KEY (macro_id);


--
-- Name: performanceconfig_host_service_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY performanceconfig
    ADD CONSTRAINT performanceconfig_host_service_key UNIQUE (host, service);


--
-- Name: performanceconfig_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY performanceconfig
    ADD CONSTRAINT performanceconfig_pkey PRIMARY KEY (performanceconfig_id);


--
-- Name: profile_host_profile_service_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY profile_host_profile_service
    ADD CONSTRAINT profile_host_profile_service_pkey PRIMARY KEY (hostprofile_id, serviceprofile_id);


--
-- Name: profile_hostgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY profile_hostgroup
    ADD CONSTRAINT profile_hostgroup_pkey PRIMARY KEY (hostprofile_id, hostgroup_id);


--
-- Name: profile_parent_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY profile_parent
    ADD CONSTRAINT profile_parent_pkey PRIMARY KEY (hostprofile_id, host_id);


--
-- Name: profiles_host_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY profiles_host
    ADD CONSTRAINT profiles_host_name_key UNIQUE (name);


--
-- Name: profiles_host_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY profiles_host
    ADD CONSTRAINT profiles_host_pkey PRIMARY KEY (hostprofile_id);


--
-- Name: profiles_service_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY profiles_service
    ADD CONSTRAINT profiles_service_name_key UNIQUE (name);


--
-- Name: profiles_service_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY profiles_service
    ADD CONSTRAINT profiles_service_pkey PRIMARY KEY (serviceprofile_id);


--
-- Name: service_dependency_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY service_dependency
    ADD CONSTRAINT service_dependency_pkey PRIMARY KEY (id);


--
-- Name: service_dependency_templates_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY service_dependency_templates
    ADD CONSTRAINT service_dependency_templates_name_key UNIQUE (name);


--
-- Name: service_dependency_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY service_dependency_templates
    ADD CONSTRAINT service_dependency_templates_pkey PRIMARY KEY (id);


--
-- Name: service_instance_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY service_instance
    ADD CONSTRAINT service_instance_pkey PRIMARY KEY (instance_id);


--
-- Name: service_instance_service_id_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY service_instance
    ADD CONSTRAINT service_instance_service_id_name_key UNIQUE (service_id, name);


--
-- Name: service_names_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY service_names
    ADD CONSTRAINT service_names_name_key UNIQUE (name);


--
-- Name: service_names_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY service_names
    ADD CONSTRAINT service_names_pkey PRIMARY KEY (servicename_id);


--
-- Name: service_overrides_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY service_overrides
    ADD CONSTRAINT service_overrides_pkey PRIMARY KEY (service_id);


--
-- Name: service_templates_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY service_templates
    ADD CONSTRAINT service_templates_name_key UNIQUE (name);


--
-- Name: service_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY service_templates
    ADD CONSTRAINT service_templates_pkey PRIMARY KEY (servicetemplate_id);


--
-- Name: servicegroup_service_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY servicegroup_service
    ADD CONSTRAINT servicegroup_service_pkey PRIMARY KEY (servicegroup_id, host_id, service_id);


--
-- Name: servicegroups_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY servicegroups
    ADD CONSTRAINT servicegroups_name_key UNIQUE (name);


--
-- Name: servicegroups_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY servicegroups
    ADD CONSTRAINT servicegroups_pkey PRIMARY KEY (servicegroup_id);


--
-- Name: servicename_dependency_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY servicename_dependency
    ADD CONSTRAINT servicename_dependency_pkey PRIMARY KEY (id);


--
-- Name: servicename_overrides_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY servicename_overrides
    ADD CONSTRAINT servicename_overrides_pkey PRIMARY KEY (servicename_id);


--
-- Name: serviceprofile_host_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY serviceprofile_host
    ADD CONSTRAINT serviceprofile_host_pkey PRIMARY KEY (serviceprofile_id, host_id);


--
-- Name: serviceprofile_hostgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY serviceprofile_hostgroup
    ADD CONSTRAINT serviceprofile_hostgroup_pkey PRIMARY KEY (serviceprofile_id, hostgroup_id);


--
-- Name: serviceprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY serviceprofile
    ADD CONSTRAINT serviceprofile_pkey PRIMARY KEY (servicename_id, serviceprofile_id);


--
-- Name: services_host_id_servicename_id_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY services
    ADD CONSTRAINT services_host_id_servicename_id_key UNIQUE (host_id, servicename_id);


--
-- Name: services_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: sessions_id_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY sessions
    ADD CONSTRAINT sessions_id_key UNIQUE (id);


--
-- Name: setup_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY setup
    ADD CONSTRAINT setup_pkey PRIMARY KEY (name);


--
-- Name: stage_host_hostgroups_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY stage_host_hostgroups
    ADD CONSTRAINT stage_host_hostgroups_pkey PRIMARY KEY (name, user_acct, hostgroup);


--
-- Name: stage_host_services_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY stage_host_services
    ADD CONSTRAINT stage_host_services_pkey PRIMARY KEY (name, user_acct, host);


--
-- Name: stage_hosts_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY stage_hosts
    ADD CONSTRAINT stage_hosts_pkey PRIMARY KEY (name, user_acct);


--
-- Name: stage_other_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY stage_other
    ADD CONSTRAINT stage_other_pkey PRIMARY KEY (name, type, parent);


--
-- Name: time_period_exclude_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY time_period_exclude
    ADD CONSTRAINT time_period_exclude_pkey PRIMARY KEY (timeperiod_id, exclude_id);


--
-- Name: time_period_property_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY time_period_property
    ADD CONSTRAINT time_period_property_pkey PRIMARY KEY (timeperiod_id, name);


--
-- Name: time_periods_name_key; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY time_periods
    ADD CONSTRAINT time_periods_name_key UNIQUE (name);


--
-- Name: time_periods_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY time_periods
    ADD CONSTRAINT time_periods_pkey PRIMARY KEY (timeperiod_id);


--
-- Name: tree_template_contactgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY tree_template_contactgroup
    ADD CONSTRAINT tree_template_contactgroup_pkey PRIMARY KEY (tree_id, template_id, contactgroup_id);


--
-- Name: user_group_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY user_group
    ADD CONSTRAINT user_group_pkey PRIMARY KEY (usergroup_id, user_id);


--
-- Name: user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY user_groups
    ADD CONSTRAINT user_groups_pkey PRIMARY KEY (usergroup_id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: monarch; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: access_list_usergroup_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX access_list_usergroup_id ON access_list USING btree (usergroup_id);


--
-- Name: contact_command_command_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contact_command_command_id ON contact_command USING btree (command_id);


--
-- Name: contact_command_overrides_command_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contact_command_overrides_command_id ON contact_command_overrides USING btree (command_id);


--
-- Name: contact_group_group_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contact_group_group_id ON contact_group USING btree (group_id);


--
-- Name: contact_host_host_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contact_host_host_id ON contact_host USING btree (host_id);


--
-- Name: contact_host_profile_hostprofile_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contact_host_profile_hostprofile_id ON contact_host_profile USING btree (hostprofile_id);


--
-- Name: contact_host_template_hosttemplate_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contact_host_template_hosttemplate_id ON contact_host_template USING btree (hosttemplate_id);


--
-- Name: contact_hostgroup_hostgroup_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contact_hostgroup_hostgroup_id ON contact_hostgroup USING btree (hostgroup_id);


--
-- Name: contact_service_name_servicename_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contact_service_name_servicename_id ON contact_service_name USING btree (servicename_id);


--
-- Name: contact_service_service_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contact_service_service_id ON contact_service USING btree (service_id);


--
-- Name: contact_service_template_servicetemplate_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contact_service_template_servicetemplate_id ON contact_service_template USING btree (servicetemplate_id);


--
-- Name: contactgroup_contact_contact_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contactgroup_contact_contact_id ON contactgroup_contact USING btree (contact_id);


--
-- Name: contactgroup_group_group_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contactgroup_group_group_id ON contactgroup_group USING btree (group_id);


--
-- Name: contactgroup_host_host_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contactgroup_host_host_id ON contactgroup_host USING btree (host_id);


--
-- Name: contactgroup_host_profile_hostprofile_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contactgroup_host_profile_hostprofile_id ON contactgroup_host_profile USING btree (hostprofile_id);


--
-- Name: contactgroup_host_template_hosttemplate_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contactgroup_host_template_hosttemplate_id ON contactgroup_host_template USING btree (hosttemplate_id);


--
-- Name: contactgroup_hostgroup_hostgroup_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contactgroup_hostgroup_hostgroup_id ON contactgroup_hostgroup USING btree (hostgroup_id);


--
-- Name: contactgroup_service_name_servicename_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contactgroup_service_name_servicename_id ON contactgroup_service_name USING btree (servicename_id);


--
-- Name: contactgroup_service_service_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contactgroup_service_service_id ON contactgroup_service USING btree (service_id);


--
-- Name: contactgroup_service_template_servicetemplate_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX contactgroup_service_template_servicetemplate_id ON contactgroup_service_template USING btree (servicetemplate_id);


--
-- Name: discover_group_filter_filter_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX discover_group_filter_filter_id ON discover_group_filter USING btree (filter_id);


--
-- Name: discover_group_method_method_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX discover_group_method_method_id ON discover_group_method USING btree (method_id);


--
-- Name: discover_group_schema_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX discover_group_schema_id ON discover_group USING btree (schema_id);


--
-- Name: discover_method_filter_filter_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX discover_method_filter_filter_id ON discover_method_filter USING btree (filter_id);


--
-- Name: escalation_templates_escalation_period; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX escalation_templates_escalation_period ON escalation_templates USING btree (escalation_period);


--
-- Name: escalation_tree_template_template_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX escalation_tree_template_template_id ON escalation_tree_template USING btree (template_id);


--
-- Name: external_host_host_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX external_host_host_id ON external_host USING btree (host_id);


--
-- Name: external_host_profile_hostprofile_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX external_host_profile_hostprofile_id ON external_host_profile USING btree (hostprofile_id);


--
-- Name: external_service_host_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX external_service_host_id ON external_service USING btree (host_id);


--
-- Name: external_service_names_servicename_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX external_service_names_servicename_id ON external_service_names USING btree (servicename_id);


--
-- Name: external_service_service_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX external_service_service_id ON external_service USING btree (service_id);


--
-- Name: host_dependencies_parent_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX host_dependencies_parent_id ON host_dependencies USING btree (parent_id);


--
-- Name: host_parent_parent_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX host_parent_parent_id ON host_parent USING btree (parent_id);


--
-- Name: hostgroup_host_host_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX hostgroup_host_host_id ON hostgroup_host USING btree (host_id);


--
-- Name: hostgroups_host_escalation_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX hostgroups_host_escalation_id ON hostgroups USING btree (host_escalation_id);


--
-- Name: hostgroups_hostprofile_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX hostgroups_hostprofile_id ON hostgroups USING btree (hostprofile_id);


--
-- Name: hostgroups_service_escalation_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX hostgroups_service_escalation_id ON hostgroups USING btree (service_escalation_id);


--
-- Name: hosts_host_escalation_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX hosts_host_escalation_id ON hosts USING btree (host_escalation_id);


--
-- Name: hosts_hostextinfo_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX hosts_hostextinfo_id ON hosts USING btree (hostextinfo_id);


--
-- Name: hosts_hostprofile_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX hosts_hostprofile_id ON hosts USING btree (hostprofile_id);


--
-- Name: hosts_service_escalation_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX hosts_service_escalation_id ON hosts USING btree (service_escalation_id);


--
-- Name: import_column_schema_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX import_column_schema_id ON import_column USING btree (schema_id);


--
-- Name: import_match_column_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX import_match_column_id ON import_match USING btree (column_id);


--
-- Name: import_match_contactgroup_contactgroup_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX import_match_contactgroup_contactgroup_id ON import_match_contactgroup USING btree (contactgroup_id);


--
-- Name: import_match_group_group_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX import_match_group_group_id ON import_match_group USING btree (group_id);


--
-- Name: import_match_hostgroup_hostgroup_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX import_match_hostgroup_hostgroup_id ON import_match_hostgroup USING btree (hostgroup_id);


--
-- Name: import_match_hostprofile_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX import_match_hostprofile_id ON import_match USING btree (hostprofile_id);


--
-- Name: import_match_parent_parent_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX import_match_parent_parent_id ON import_match_parent USING btree (parent_id);


--
-- Name: import_match_servicename_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX import_match_servicename_id ON import_match USING btree (servicename_id);


--
-- Name: import_match_servicename_servicename_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX import_match_servicename_servicename_id ON import_match_servicename USING btree (servicename_id);


--
-- Name: import_match_serviceprofile_serviceprofile_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX import_match_serviceprofile_serviceprofile_id ON import_match_serviceprofile USING btree (serviceprofile_id);


--
-- Name: import_schema_hostprofile_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX import_schema_hostprofile_id ON import_schema USING btree (hostprofile_id);


--
-- Name: monarch_group_child_child_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX monarch_group_child_child_id ON monarch_group_child USING btree (child_id);


--
-- Name: monarch_group_host_host_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX monarch_group_host_host_id ON monarch_group_host USING btree (host_id);


--
-- Name: monarch_group_hostgroup_hostgroup_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX monarch_group_hostgroup_hostgroup_id ON monarch_group_hostgroup USING btree (hostgroup_id);


--
-- Name: monarch_group_macro_macro_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX monarch_group_macro_macro_id ON monarch_group_macro USING btree (macro_id);


--
-- Name: monarch_group_props_group_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX monarch_group_props_group_id ON monarch_group_props USING btree (group_id);


--
-- Name: profile_host_profile_service_serviceprofile_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX profile_host_profile_service_serviceprofile_id ON profile_host_profile_service USING btree (serviceprofile_id);


--
-- Name: profile_hostgroup_hostgroup_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX profile_hostgroup_hostgroup_id ON profile_hostgroup USING btree (hostgroup_id);


--
-- Name: profile_parent_host_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX profile_parent_host_id ON profile_parent USING btree (host_id);


--
-- Name: profiles_host_host_escalation_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX profiles_host_host_escalation_id ON profiles_host USING btree (host_escalation_id);


--
-- Name: profiles_host_host_extinfo_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX profiles_host_host_extinfo_id ON profiles_host USING btree (host_extinfo_id);


--
-- Name: profiles_host_service_escalation_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX profiles_host_service_escalation_id ON profiles_host USING btree (service_escalation_id);


--
-- Name: service_dependency_depend_on_host_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX service_dependency_depend_on_host_id ON service_dependency USING btree (depend_on_host_id);


--
-- Name: service_dependency_service_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX service_dependency_service_id ON service_dependency USING btree (service_id);


--
-- Name: service_names_escalation; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX service_names_escalation ON service_names USING btree (escalation);


--
-- Name: service_names_extinfo; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX service_names_extinfo ON service_names USING btree (extinfo);


--
-- Name: servicegroup_service_host_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX servicegroup_service_host_id ON servicegroup_service USING btree (host_id);


--
-- Name: servicegroup_service_service_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX servicegroup_service_service_id ON servicegroup_service USING btree (service_id);


--
-- Name: servicegroups_escalation_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX servicegroups_escalation_id ON servicegroups USING btree (escalation_id);


--
-- Name: servicename_dependency_depend_on_host_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX servicename_dependency_depend_on_host_id ON servicename_dependency USING btree (depend_on_host_id);


--
-- Name: servicename_dependency_servicename_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX servicename_dependency_servicename_id ON servicename_dependency USING btree (servicename_id);


--
-- Name: serviceprofile_host_host_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX serviceprofile_host_host_id ON serviceprofile_host USING btree (host_id);


--
-- Name: serviceprofile_hostgroup_hostgroup_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX serviceprofile_hostgroup_hostgroup_id ON serviceprofile_hostgroup USING btree (hostgroup_id);


--
-- Name: serviceprofile_serviceprofile_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX serviceprofile_serviceprofile_id ON serviceprofile USING btree (serviceprofile_id);


--
-- Name: services_escalation_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX services_escalation_id ON services USING btree (escalation_id);


--
-- Name: services_serviceextinfo_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX services_serviceextinfo_id ON services USING btree (serviceextinfo_id);


--
-- Name: services_servicename_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX services_servicename_id ON services USING btree (servicename_id);


--
-- Name: time_period_exclude_exclude_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX time_period_exclude_exclude_id ON time_period_exclude USING btree (exclude_id);


--
-- Name: tree_template_contactgroup_contactgroup_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX tree_template_contactgroup_contactgroup_id ON tree_template_contactgroup USING btree (contactgroup_id);


--
-- Name: tree_template_contactgroup_template_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX tree_template_contactgroup_template_id ON tree_template_contactgroup USING btree (template_id);


--
-- Name: user_group_user_id; Type: INDEX; Schema: public; Owner: monarch; Tablespace: 
--

CREATE INDEX user_group_user_id ON user_group USING btree (user_id);


--
-- Name: access_list_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY access_list
    ADD CONSTRAINT access_list_ibfk_1 FOREIGN KEY (usergroup_id) REFERENCES user_groups(usergroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_command_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_command
    ADD CONSTRAINT contact_command_ibfk_1 FOREIGN KEY (command_id) REFERENCES commands(command_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_command_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_command
    ADD CONSTRAINT contact_command_ibfk_2 FOREIGN KEY (contacttemplate_id) REFERENCES contact_templates(contacttemplate_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_command_overrides_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_command_overrides
    ADD CONSTRAINT contact_command_overrides_ibfk_1 FOREIGN KEY (command_id) REFERENCES commands(command_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_command_overrides_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_command_overrides
    ADD CONSTRAINT contact_command_overrides_ibfk_2 FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_group_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_group
    ADD CONSTRAINT contact_group_ibfk_1 FOREIGN KEY (group_id) REFERENCES monarch_groups(group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_group_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_group
    ADD CONSTRAINT contact_group_ibfk_2 FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_host_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_host
    ADD CONSTRAINT contact_host_ibfk_1 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_host_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_host
    ADD CONSTRAINT contact_host_ibfk_2 FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_host_profile_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_host_profile
    ADD CONSTRAINT contact_host_profile_ibfk_1 FOREIGN KEY (hostprofile_id) REFERENCES profiles_host(hostprofile_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_host_profile_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_host_profile
    ADD CONSTRAINT contact_host_profile_ibfk_2 FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_host_template_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_host_template
    ADD CONSTRAINT contact_host_template_ibfk_1 FOREIGN KEY (hosttemplate_id) REFERENCES host_templates(hosttemplate_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_host_template_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_host_template
    ADD CONSTRAINT contact_host_template_ibfk_2 FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_hostgroup_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_hostgroup
    ADD CONSTRAINT contact_hostgroup_ibfk_1 FOREIGN KEY (hostgroup_id) REFERENCES hostgroups(hostgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_hostgroup_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_hostgroup
    ADD CONSTRAINT contact_hostgroup_ibfk_2 FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_overrides_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_overrides
    ADD CONSTRAINT contact_overrides_ibfk_1 FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_service_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_service
    ADD CONSTRAINT contact_service_ibfk_1 FOREIGN KEY (service_id) REFERENCES services(service_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_service_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_service
    ADD CONSTRAINT contact_service_ibfk_2 FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_service_name_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_service_name
    ADD CONSTRAINT contact_service_name_ibfk_1 FOREIGN KEY (servicename_id) REFERENCES service_names(servicename_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_service_name_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_service_name
    ADD CONSTRAINT contact_service_name_ibfk_2 FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_service_template_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_service_template
    ADD CONSTRAINT contact_service_template_ibfk_1 FOREIGN KEY (servicetemplate_id) REFERENCES service_templates(servicetemplate_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contact_service_template_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contact_service_template
    ADD CONSTRAINT contact_service_template_ibfk_2 FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_contact_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_contact
    ADD CONSTRAINT contactgroup_contact_ibfk_1 FOREIGN KEY (contact_id) REFERENCES contacts(contact_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_contact_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_contact
    ADD CONSTRAINT contactgroup_contact_ibfk_2 FOREIGN KEY (contactgroup_id) REFERENCES contactgroups(contactgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_group_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_group
    ADD CONSTRAINT contactgroup_group_ibfk_1 FOREIGN KEY (group_id) REFERENCES monarch_groups(group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_group_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_group
    ADD CONSTRAINT contactgroup_group_ibfk_2 FOREIGN KEY (contactgroup_id) REFERENCES contactgroups(contactgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_host_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_host
    ADD CONSTRAINT contactgroup_host_ibfk_1 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_host_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_host
    ADD CONSTRAINT contactgroup_host_ibfk_2 FOREIGN KEY (contactgroup_id) REFERENCES contactgroups(contactgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_host_profile_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_host_profile
    ADD CONSTRAINT contactgroup_host_profile_ibfk_1 FOREIGN KEY (hostprofile_id) REFERENCES profiles_host(hostprofile_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_host_profile_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_host_profile
    ADD CONSTRAINT contactgroup_host_profile_ibfk_2 FOREIGN KEY (contactgroup_id) REFERENCES contactgroups(contactgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_host_template_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_host_template
    ADD CONSTRAINT contactgroup_host_template_ibfk_1 FOREIGN KEY (hosttemplate_id) REFERENCES host_templates(hosttemplate_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_host_template_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_host_template
    ADD CONSTRAINT contactgroup_host_template_ibfk_2 FOREIGN KEY (contactgroup_id) REFERENCES contactgroups(contactgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_hostgroup_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_hostgroup
    ADD CONSTRAINT contactgroup_hostgroup_ibfk_1 FOREIGN KEY (hostgroup_id) REFERENCES hostgroups(hostgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_hostgroup_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_hostgroup
    ADD CONSTRAINT contactgroup_hostgroup_ibfk_2 FOREIGN KEY (contactgroup_id) REFERENCES contactgroups(contactgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_service_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_service
    ADD CONSTRAINT contactgroup_service_ibfk_1 FOREIGN KEY (service_id) REFERENCES services(service_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_service_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_service
    ADD CONSTRAINT contactgroup_service_ibfk_2 FOREIGN KEY (contactgroup_id) REFERENCES contactgroups(contactgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_service_name_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_service_name
    ADD CONSTRAINT contactgroup_service_name_ibfk_1 FOREIGN KEY (servicename_id) REFERENCES service_names(servicename_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_service_name_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_service_name
    ADD CONSTRAINT contactgroup_service_name_ibfk_2 FOREIGN KEY (contactgroup_id) REFERENCES contactgroups(contactgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_service_template_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_service_template
    ADD CONSTRAINT contactgroup_service_template_ibfk_1 FOREIGN KEY (servicetemplate_id) REFERENCES service_templates(servicetemplate_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: contactgroup_service_template_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY contactgroup_service_template
    ADD CONSTRAINT contactgroup_service_template_ibfk_2 FOREIGN KEY (contactgroup_id) REFERENCES contactgroups(contactgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: discover_group_filter_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY discover_group_filter
    ADD CONSTRAINT discover_group_filter_ibfk_1 FOREIGN KEY (group_id) REFERENCES discover_group(group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: discover_group_filter_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY discover_group_filter
    ADD CONSTRAINT discover_group_filter_ibfk_2 FOREIGN KEY (filter_id) REFERENCES discover_filter(filter_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: discover_group_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY discover_group
    ADD CONSTRAINT discover_group_ibfk_1 FOREIGN KEY (schema_id) REFERENCES import_schema(schema_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: discover_group_method_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY discover_group_method
    ADD CONSTRAINT discover_group_method_ibfk_1 FOREIGN KEY (method_id) REFERENCES discover_method(method_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: discover_group_method_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY discover_group_method
    ADD CONSTRAINT discover_group_method_ibfk_2 FOREIGN KEY (group_id) REFERENCES discover_group(group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: discover_method_filter_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY discover_method_filter
    ADD CONSTRAINT discover_method_filter_ibfk_1 FOREIGN KEY (method_id) REFERENCES discover_method(method_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: discover_method_filter_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY discover_method_filter
    ADD CONSTRAINT discover_method_filter_ibfk_2 FOREIGN KEY (filter_id) REFERENCES discover_filter(filter_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: escalation_templates_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY escalation_templates
    ADD CONSTRAINT escalation_templates_ibfk_1 FOREIGN KEY (escalation_period) REFERENCES time_periods(timeperiod_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: escalation_tree_template_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY escalation_tree_template
    ADD CONSTRAINT escalation_tree_template_ibfk_1 FOREIGN KEY (template_id) REFERENCES escalation_templates(template_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: escalation_tree_template_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY escalation_tree_template
    ADD CONSTRAINT escalation_tree_template_ibfk_2 FOREIGN KEY (tree_id) REFERENCES escalation_trees(tree_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: extended_info_coords_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY extended_info_coords
    ADD CONSTRAINT extended_info_coords_ibfk_1 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: external_host_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY external_host
    ADD CONSTRAINT external_host_ibfk_1 FOREIGN KEY (external_id) REFERENCES externals(external_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: external_host_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY external_host
    ADD CONSTRAINT external_host_ibfk_2 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: external_host_profile_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY external_host_profile
    ADD CONSTRAINT external_host_profile_ibfk_1 FOREIGN KEY (external_id) REFERENCES externals(external_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: external_host_profile_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY external_host_profile
    ADD CONSTRAINT external_host_profile_ibfk_2 FOREIGN KEY (hostprofile_id) REFERENCES profiles_host(hostprofile_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: external_service_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY external_service
    ADD CONSTRAINT external_service_ibfk_1 FOREIGN KEY (external_id) REFERENCES externals(external_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: external_service_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY external_service
    ADD CONSTRAINT external_service_ibfk_2 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: external_service_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY external_service
    ADD CONSTRAINT external_service_ibfk_3 FOREIGN KEY (service_id) REFERENCES services(service_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: external_service_names_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY external_service_names
    ADD CONSTRAINT external_service_names_ibfk_1 FOREIGN KEY (external_id) REFERENCES externals(external_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: external_service_names_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY external_service_names
    ADD CONSTRAINT external_service_names_ibfk_2 FOREIGN KEY (servicename_id) REFERENCES service_names(servicename_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: host_dependencies_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY host_dependencies
    ADD CONSTRAINT host_dependencies_ibfk_1 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: host_dependencies_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY host_dependencies
    ADD CONSTRAINT host_dependencies_ibfk_2 FOREIGN KEY (parent_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: host_overrides_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY host_overrides
    ADD CONSTRAINT host_overrides_ibfk_1 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: host_parent_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY host_parent
    ADD CONSTRAINT host_parent_ibfk_1 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: host_parent_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY host_parent
    ADD CONSTRAINT host_parent_ibfk_2 FOREIGN KEY (parent_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: hostgroup_host_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY hostgroup_host
    ADD CONSTRAINT hostgroup_host_ibfk_1 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: hostgroup_host_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY hostgroup_host
    ADD CONSTRAINT hostgroup_host_ibfk_2 FOREIGN KEY (hostgroup_id) REFERENCES hostgroups(hostgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: hostgroups_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY hostgroups
    ADD CONSTRAINT hostgroups_ibfk_1 FOREIGN KEY (hostprofile_id) REFERENCES profiles_host(hostprofile_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: hostgroups_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY hostgroups
    ADD CONSTRAINT hostgroups_ibfk_2 FOREIGN KEY (host_escalation_id) REFERENCES escalation_trees(tree_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: hostgroups_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY hostgroups
    ADD CONSTRAINT hostgroups_ibfk_3 FOREIGN KEY (service_escalation_id) REFERENCES escalation_trees(tree_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: hostprofile_overrides_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY hostprofile_overrides
    ADD CONSTRAINT hostprofile_overrides_ibfk_1 FOREIGN KEY (hostprofile_id) REFERENCES profiles_host(hostprofile_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: hosts_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY hosts
    ADD CONSTRAINT hosts_ibfk_1 FOREIGN KEY (hostextinfo_id) REFERENCES extended_host_info_templates(hostextinfo_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: hosts_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY hosts
    ADD CONSTRAINT hosts_ibfk_2 FOREIGN KEY (hostprofile_id) REFERENCES profiles_host(hostprofile_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: hosts_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY hosts
    ADD CONSTRAINT hosts_ibfk_3 FOREIGN KEY (host_escalation_id) REFERENCES escalation_trees(tree_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: hosts_ibfk_4; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY hosts
    ADD CONSTRAINT hosts_ibfk_4 FOREIGN KEY (service_escalation_id) REFERENCES escalation_trees(tree_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: import_column_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_column
    ADD CONSTRAINT import_column_ibfk_1 FOREIGN KEY (schema_id) REFERENCES import_schema(schema_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_contactgroup_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match_contactgroup
    ADD CONSTRAINT import_match_contactgroup_ibfk_1 FOREIGN KEY (contactgroup_id) REFERENCES contactgroups(contactgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_contactgroup_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match_contactgroup
    ADD CONSTRAINT import_match_contactgroup_ibfk_2 FOREIGN KEY (match_id) REFERENCES import_match(match_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_group_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match_group
    ADD CONSTRAINT import_match_group_ibfk_1 FOREIGN KEY (group_id) REFERENCES monarch_groups(group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_group_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match_group
    ADD CONSTRAINT import_match_group_ibfk_2 FOREIGN KEY (match_id) REFERENCES import_match(match_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_hostgroup_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match_hostgroup
    ADD CONSTRAINT import_match_hostgroup_ibfk_1 FOREIGN KEY (hostgroup_id) REFERENCES hostgroups(hostgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_hostgroup_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match_hostgroup
    ADD CONSTRAINT import_match_hostgroup_ibfk_2 FOREIGN KEY (match_id) REFERENCES import_match(match_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match
    ADD CONSTRAINT import_match_ibfk_1 FOREIGN KEY (hostprofile_id) REFERENCES profiles_host(hostprofile_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match
    ADD CONSTRAINT import_match_ibfk_2 FOREIGN KEY (column_id) REFERENCES import_column(column_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match
    ADD CONSTRAINT import_match_ibfk_3 FOREIGN KEY (servicename_id) REFERENCES service_names(servicename_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: import_match_parent_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match_parent
    ADD CONSTRAINT import_match_parent_ibfk_1 FOREIGN KEY (parent_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_parent_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match_parent
    ADD CONSTRAINT import_match_parent_ibfk_2 FOREIGN KEY (match_id) REFERENCES import_match(match_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_servicename_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match_servicename
    ADD CONSTRAINT import_match_servicename_ibfk_1 FOREIGN KEY (servicename_id) REFERENCES service_names(servicename_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_servicename_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match_servicename
    ADD CONSTRAINT import_match_servicename_ibfk_2 FOREIGN KEY (match_id) REFERENCES import_match(match_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_serviceprofile_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match_serviceprofile
    ADD CONSTRAINT import_match_serviceprofile_ibfk_1 FOREIGN KEY (serviceprofile_id) REFERENCES profiles_service(serviceprofile_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_match_serviceprofile_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_match_serviceprofile
    ADD CONSTRAINT import_match_serviceprofile_ibfk_2 FOREIGN KEY (match_id) REFERENCES import_match(match_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: import_schema_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY import_schema
    ADD CONSTRAINT import_schema_ibfk_1 FOREIGN KEY (hostprofile_id) REFERENCES profiles_host(hostprofile_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: monarch_group_child_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY monarch_group_child
    ADD CONSTRAINT monarch_group_child_ibfk_1 FOREIGN KEY (group_id) REFERENCES monarch_groups(group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: monarch_group_child_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY monarch_group_child
    ADD CONSTRAINT monarch_group_child_ibfk_2 FOREIGN KEY (child_id) REFERENCES monarch_groups(group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: monarch_group_host_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY monarch_group_host
    ADD CONSTRAINT monarch_group_host_ibfk_1 FOREIGN KEY (group_id) REFERENCES monarch_groups(group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: monarch_group_host_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY monarch_group_host
    ADD CONSTRAINT monarch_group_host_ibfk_2 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: monarch_group_hostgroup_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY monarch_group_hostgroup
    ADD CONSTRAINT monarch_group_hostgroup_ibfk_1 FOREIGN KEY (group_id) REFERENCES monarch_groups(group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: monarch_group_hostgroup_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY monarch_group_hostgroup
    ADD CONSTRAINT monarch_group_hostgroup_ibfk_2 FOREIGN KEY (hostgroup_id) REFERENCES hostgroups(hostgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: monarch_group_macro_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY monarch_group_macro
    ADD CONSTRAINT monarch_group_macro_ibfk_1 FOREIGN KEY (group_id) REFERENCES monarch_groups(group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: monarch_group_macro_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY monarch_group_macro
    ADD CONSTRAINT monarch_group_macro_ibfk_2 FOREIGN KEY (macro_id) REFERENCES monarch_macros(macro_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: monarch_group_props_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY monarch_group_props
    ADD CONSTRAINT monarch_group_props_ibfk_1 FOREIGN KEY (group_id) REFERENCES monarch_groups(group_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: profile_host_profile_service_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY profile_host_profile_service
    ADD CONSTRAINT profile_host_profile_service_ibfk_1 FOREIGN KEY (serviceprofile_id) REFERENCES profiles_service(serviceprofile_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: profile_host_profile_service_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY profile_host_profile_service
    ADD CONSTRAINT profile_host_profile_service_ibfk_2 FOREIGN KEY (hostprofile_id) REFERENCES profiles_host(hostprofile_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: profile_hostgroup_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY profile_hostgroup
    ADD CONSTRAINT profile_hostgroup_ibfk_1 FOREIGN KEY (hostgroup_id) REFERENCES hostgroups(hostgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: profile_parent_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY profile_parent
    ADD CONSTRAINT profile_parent_ibfk_1 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: profiles_host_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY profiles_host
    ADD CONSTRAINT profiles_host_ibfk_1 FOREIGN KEY (host_extinfo_id) REFERENCES extended_host_info_templates(hostextinfo_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: profiles_host_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY profiles_host
    ADD CONSTRAINT profiles_host_ibfk_2 FOREIGN KEY (host_escalation_id) REFERENCES escalation_trees(tree_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: profiles_host_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY profiles_host
    ADD CONSTRAINT profiles_host_ibfk_3 FOREIGN KEY (service_escalation_id) REFERENCES escalation_trees(tree_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: service_dependency_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY service_dependency
    ADD CONSTRAINT service_dependency_ibfk_1 FOREIGN KEY (service_id) REFERENCES services(service_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: service_dependency_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY service_dependency
    ADD CONSTRAINT service_dependency_ibfk_2 FOREIGN KEY (depend_on_host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: service_instance_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY service_instance
    ADD CONSTRAINT service_instance_ibfk_1 FOREIGN KEY (service_id) REFERENCES services(service_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: service_names_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY service_names
    ADD CONSTRAINT service_names_ibfk_1 FOREIGN KEY (extinfo) REFERENCES extended_service_info_templates(serviceextinfo_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: service_names_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY service_names
    ADD CONSTRAINT service_names_ibfk_2 FOREIGN KEY (escalation) REFERENCES escalation_trees(tree_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: service_overrides_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY service_overrides
    ADD CONSTRAINT service_overrides_ibfk_1 FOREIGN KEY (service_id) REFERENCES services(service_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: servicegroup_service_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY servicegroup_service
    ADD CONSTRAINT servicegroup_service_ibfk_1 FOREIGN KEY (servicegroup_id) REFERENCES servicegroups(servicegroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: servicegroup_service_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY servicegroup_service
    ADD CONSTRAINT servicegroup_service_ibfk_2 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: servicegroup_service_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY servicegroup_service
    ADD CONSTRAINT servicegroup_service_ibfk_3 FOREIGN KEY (service_id) REFERENCES services(service_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: servicegroups_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY servicegroups
    ADD CONSTRAINT servicegroups_ibfk_1 FOREIGN KEY (escalation_id) REFERENCES escalation_trees(tree_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: servicename_dependency_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY servicename_dependency
    ADD CONSTRAINT servicename_dependency_ibfk_1 FOREIGN KEY (servicename_id) REFERENCES service_names(servicename_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: servicename_dependency_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY servicename_dependency
    ADD CONSTRAINT servicename_dependency_ibfk_2 FOREIGN KEY (depend_on_host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: servicename_overrides_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY servicename_overrides
    ADD CONSTRAINT servicename_overrides_ibfk_1 FOREIGN KEY (servicename_id) REFERENCES service_names(servicename_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: serviceprofile_host_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY serviceprofile_host
    ADD CONSTRAINT serviceprofile_host_ibfk_1 FOREIGN KEY (serviceprofile_id) REFERENCES profiles_service(serviceprofile_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: serviceprofile_host_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY serviceprofile_host
    ADD CONSTRAINT serviceprofile_host_ibfk_2 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: serviceprofile_hostgroup_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY serviceprofile_hostgroup
    ADD CONSTRAINT serviceprofile_hostgroup_ibfk_1 FOREIGN KEY (serviceprofile_id) REFERENCES profiles_service(serviceprofile_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: serviceprofile_hostgroup_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY serviceprofile_hostgroup
    ADD CONSTRAINT serviceprofile_hostgroup_ibfk_2 FOREIGN KEY (hostgroup_id) REFERENCES hostgroups(hostgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: serviceprofile_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY serviceprofile
    ADD CONSTRAINT serviceprofile_ibfk_1 FOREIGN KEY (servicename_id) REFERENCES service_names(servicename_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: serviceprofile_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY serviceprofile
    ADD CONSTRAINT serviceprofile_ibfk_2 FOREIGN KEY (serviceprofile_id) REFERENCES profiles_service(serviceprofile_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: services_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY services
    ADD CONSTRAINT services_ibfk_1 FOREIGN KEY (host_id) REFERENCES hosts(host_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: services_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY services
    ADD CONSTRAINT services_ibfk_2 FOREIGN KEY (serviceextinfo_id) REFERENCES extended_service_info_templates(serviceextinfo_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: services_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY services
    ADD CONSTRAINT services_ibfk_3 FOREIGN KEY (escalation_id) REFERENCES escalation_trees(tree_id) ON UPDATE RESTRICT ON DELETE SET NULL;


--
-- Name: time_period_exclude_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY time_period_exclude
    ADD CONSTRAINT time_period_exclude_ibfk_1 FOREIGN KEY (timeperiod_id) REFERENCES time_periods(timeperiod_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: time_period_exclude_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY time_period_exclude
    ADD CONSTRAINT time_period_exclude_ibfk_2 FOREIGN KEY (exclude_id) REFERENCES time_periods(timeperiod_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: time_period_property_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY time_period_property
    ADD CONSTRAINT time_period_property_ibfk_1 FOREIGN KEY (timeperiod_id) REFERENCES time_periods(timeperiod_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: tree_template_contactgroup_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY tree_template_contactgroup
    ADD CONSTRAINT tree_template_contactgroup_ibfk_1 FOREIGN KEY (contactgroup_id) REFERENCES contactgroups(contactgroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: tree_template_contactgroup_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY tree_template_contactgroup
    ADD CONSTRAINT tree_template_contactgroup_ibfk_2 FOREIGN KEY (template_id) REFERENCES escalation_templates(template_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: tree_template_contactgroup_ibfk_3; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY tree_template_contactgroup
    ADD CONSTRAINT tree_template_contactgroup_ibfk_3 FOREIGN KEY (tree_id) REFERENCES escalation_trees(tree_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: user_group_ibfk_1; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY user_group
    ADD CONSTRAINT user_group_ibfk_1 FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: user_group_ibfk_2; Type: FK CONSTRAINT; Schema: public; Owner: monarch
--

ALTER TABLE ONLY user_group
    ADD CONSTRAINT user_group_ibfk_2 FOREIGN KEY (usergroup_id) REFERENCES user_groups(usergroup_id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

