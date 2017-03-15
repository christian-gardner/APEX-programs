set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.2.00.07'
,p_default_workspace_id=>100003
,p_default_application_id=>123
,p_default_owner=>'RDM'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 123 - Apex utility
--
-- Application Export:
--   Application:     123
--   Name:            Apex utility
--   Date and Time:   12:32 Wednesday March 15, 2017
--   Exported By:     CHRISTIAN.GARDNER
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     69427033981319
--

-- Application Statistics:
--   Pages:                     75
--     Items:                  238
--     Validations:              6
--     Processes:               79
--     Regions:                175
--     Buttons:                109
--     Dynamic Actions:         17
--   Shared Components:
--     Logic:
--     Navigation:
--       Tab Sets:               1
--         Tabs:                11
--       Lists:                  6
--       Breadcrumbs:            1
--         Entries:             51
--       NavBar Entries:         1
--     Security:
--       Authentication:         2
--     User Interface:
--       Themes:                 2
--       Templates:
--         Page:                30
--         Region:              60
--         Label:               24
--         List:                40
--         Popup LOV:            2
--         Calendar:             6
--         Breadcrumb:           4
--         Button:              15
--         Report:              20
--       LOVs:                   6
--       Shortcuts:              2
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,123)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'RDM')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Apex utility')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_123')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20160630073103'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD-MON-YYYY'
,p_date_time_format=>'DD-MON-YYYY HH:MIPM'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'02/10/2015 Disabled re-bill and partitioning maint'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(7266408148954965)
,p_application_tab_set=>0
,p_logo_image=>'#WORKSPACE_IMAGES#SPI_RGB.jpg'
,p_logo_image_attributes=>'alt="Safeguardproperties"; title="Safeguardproperties"'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 4.2'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160630073103'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(15405401148545063)
,p_name=>'Fees Return Status'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15405811394559133)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'BoA Return Data Errors'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15417100719490853)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'BOA Return Fees Due Back'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15426500823159191)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Search Rejections by error '
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15546623376090954)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Search Completed'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(15406816872634764)
,p_name=>'Admin Tasks'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15407130729641339)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage Users'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15407321240645712)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Change History'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(15409803160715901)
,p_name=>'Process Reports'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15410127864718627)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Client log'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15410320316722104)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Server log'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(15621601246119839)
,p_name=>'Application Maintenance'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15621903688129147)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage Table Partitions'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19215524589831704)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Merge partitions'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19932117721093812)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Add Partition'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(19327908338366494)
,p_name=>'Re-Bill Requests'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19328225616376787)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage Stage Table'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(25092127627890545)
,p_name=>'Manage Load Schema'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25092524123896449)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Review Process Flow'
,p_list_item_link_target=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25108105297512945)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'List O/S Programs'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25115322740067113)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'RDM File Patterns'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25143703896728183)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Manage Schema Variables'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25842919009601468)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Run Unix Script'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:60:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25849604929683984)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'File Watch Queue'
,p_list_item_link_target=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25849813974695024)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'File Load Report'
,p_list_item_link_target=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25892110953473784)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'File list'
,p_list_item_link_target=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:46:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25923530176939881)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'List file watchers'
,p_list_item_link_target=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(25994604547992362)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'RDM Load Logs'
,p_list_item_link_target=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26015219028068738)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Restart Process'
,p_list_item_link_target=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26090817034909910)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Move Loaded File'
,p_list_item_link_target=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(112989181265148)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(7256513222954781)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(7266301282954954)
,p_icon_sequence=>200
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'175'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(7267814658955007)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_HOME'
,p_tab_text=>'Home'
,p_tab_step=>1
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(10908010359654059)
,p_tab_set=>'TS1'
,p_tab_sequence=>20
,p_tab_name=>'T_MANAGEUSERS'
,p_tab_text=>'Manage Users'
,p_tab_step=>2
,p_tab_parent_tabset=>'main'
,p_display_condition_type=>'USER_IS_NOT_PUBLIC_USER'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(10909209022914927)
,p_tab_set=>'TS1'
,p_tab_sequence=>30
,p_tab_name=>'News Headlines'
,p_tab_text=>'News Headlines'
,p_tab_step=>3
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(2252921643881699)
,p_tab_set=>'TS1'
,p_tab_sequence=>40
,p_tab_name=>'Client Log'
,p_tab_text=>'Client Log'
,p_tab_step=>4
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(2262621012278464)
,p_tab_set=>'TS1'
,p_tab_sequence=>50
,p_tab_name=>'Server Log'
,p_tab_text=>'Server Log'
,p_tab_step=>5
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(2592131785554994)
,p_tab_set=>'TS1'
,p_tab_sequence=>60
,p_tab_name=>'T_BOAFEESRETURNED'
,p_tab_text=>'BOA Fees Returned'
,p_tab_step=>8
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(2592501808568884)
,p_tab_set=>'TS1'
,p_tab_sequence=>70
,p_tab_name=>'T_BOAFILES'
,p_tab_text=>'BOA Files'
,p_tab_step=>7
,p_tab_parent_tabset=>'main'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(2592711716579504)
,p_tab_set=>'TS1'
,p_tab_sequence=>80
,p_tab_name=>'T_BOAFEESSENT'
,p_tab_text=>'BOA Fees Sent'
,p_tab_step=>9
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(2593327435602537)
,p_tab_set=>'TS1'
,p_tab_sequence=>90
,p_tab_name=>'T_INOUTSTATUS'
,p_tab_text=>'In & out Status'
,p_tab_step=>11
,p_tab_parent_tabset=>'main'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(2609607469295480)
,p_tab_set=>'TS1'
,p_tab_sequence=>100
,p_tab_name=>'T_VARIANCE'
,p_tab_text=>'Variance'
,p_tab_step=>15
,p_tab_parent_tabset=>'main'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(2641903232139283)
,p_tab_set=>'TS1'
,p_tab_sequence=>110
,p_tab_name=>'T_RETURNSREJECTRATE'
,p_tab_text=>'Return Fees Status'
,p_tab_step=>16
);
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16098329495529439)
,p_lov_name=>'EMAILOPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(16098329495529439)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16098614139529442)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'To:'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16098908366529447)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'From:'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16099200645529447)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'cc:'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16099503999529448)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'exclude'
,p_lov_return_value=>'0'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(25843427273674838)
,p_lov_name=>'P65_Report Row Per Page'
,p_lov_query=>'.'||wwv_flow_api.id(25843427273674838)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25843712065674843)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'10'
,p_lov_return_value=>'10'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25844012193674849)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'15'
,p_lov_return_value=>'15'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25844305604674850)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25844609421674850)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'30'
,p_lov_return_value=>'30'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25844901772674850)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'50'
,p_lov_return_value=>'50'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25845221260674850)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25845508782674850)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'200'
,p_lov_return_value=>'200'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25845823710674851)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25846128352674851)
,p_lov_disp_sequence=>90
,p_lov_disp_value=>'1000'
,p_lov_return_value=>'1000'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25846417400674851)
,p_lov_disp_sequence=>100
,p_lov_disp_value=>'5000'
,p_lov_return_value=>'5000'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(18812218865445049)
,p_lov_name=>'PARTITION OPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(18812218865445049)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18812510589445059)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Exchange partitions'
,p_lov_return_value=>'EXCHANGE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18812811045445063)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Partition'
,p_lov_return_value=>'ADD-ONE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18813120383445063)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Remove Partition'
,p_lov_return_value=>'REMOVE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18813427282445063)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Take No Action'
,p_lov_return_value=>'TAKE-NO-ACTION'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(18815601705649741)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Merge last two'
,p_lov_return_value=>'MERGE:1-2'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(25954625288142417)
,p_lov_name=>'STEP_#'
,p_lov_query=>'.'||wwv_flow_api.id(25954625288142417)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25954910219142434)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'1'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25955219696142439)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'2'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25955513814142439)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'3'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25955819637142439)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'4'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25956103499142439)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'5'
,p_lov_return_value=>'5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25956413939142439)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'6'
,p_lov_return_value=>'6'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25956721594142439)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'7'
,p_lov_return_value=>'7'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25957013263142439)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'8'
,p_lov_return_value=>'8'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(25957307770142439)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'9'
,p_lov_return_value=>'9'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(22196618999188687)
,p_lov_name=>'TABLESPACE'
,p_lov_query=>'.'||wwv_flow_api.id(22196618999188687)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22196905356188690)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Dev Region'
,p_lov_return_value=>'SGDEVWS03'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22197209645188694)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'QA Region'
,p_lov_return_value=>'SGQAWS03'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22197806891206355)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'STAGE'
,p_lov_return_value=>'SGPRODWS03'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22198331680209971)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Production'
,p_lov_return_value=>'SGPRODWS03'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16100004046559910)
,p_lov_name=>'YESNO'
,p_lov_query=>'.'||wwv_flow_api.id(16100004046559910)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16100311809559910)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16100625641559910)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'0'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(7267517659954997)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2589806313065424)
,p_short_name=>'feesReturned'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2590023985072486)
,p_parent_id=>wwv_flow_api.id(2589806313065424)
,p_short_name=>'FeesByWorkOrder'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2603120619031109)
,p_parent_id=>0
,p_short_name=>'Due in'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2603325782043877)
,p_parent_id=>wwv_flow_api.id(15417704012501791)
,p_short_name=>'Reject status'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(2603720150076923)
,p_parent_id=>wwv_flow_api.id(2603325782043877)
,p_short_name=>'Reason for Reject'
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7267914138955011)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(7272212681986120)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'Manage Privileges'
,p_link=>'f?p=&APP_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(11231212893197072)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'News Alerts'
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15412017983790248)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'Client Log'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15413029790803008)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'Server Log'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15415116814331492)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'BOA Return Data Errors'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15417704012501791)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'BOA Fee Returns Due Back'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15426124376152090)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'BOA Error Messages'
,p_link=>'f?p=&FLOW_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15427209609299029)
,p_parent_id=>wwv_flow_api.id(15426124376152090)
,p_short_name=>'Search Rejected by Error'
,p_link=>'f?p=&FLOW_ID.:20:&SESSION.'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15431731402343393)
,p_parent_id=>wwv_flow_api.id(15427209609299029)
,p_short_name=>'Search Fees workorder'
,p_link=>'f?p=&APP_ID.:22:&SESSION.'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15465718549238686)
,p_parent_id=>wwv_flow_api.id(15427209609299029)
,p_short_name=>'boa_fees_sent'
,p_link=>'f?p=&FLOW_ID.:9:&SESSION.'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15545512687072983)
,p_parent_id=>wwv_flow_api.id(15545930016076730)
,p_short_name=>'Review Completed'
,p_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:::'
,p_page_id=>29
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15545930016076730)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'Completed keys'
,p_link=>'f?p=&FLOW_ID.:24:&SESSION.'
,p_page_id=>24
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15620617114109532)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'BOA_PARTITIONS'
,p_link=>'f?p=&APP_ID.:30:&SESSION.'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15621315508109538)
,p_parent_id=>wwv_flow_api.id(15620617114109532)
,p_short_name=>'Manage B of A Table Partitions'
,p_link=>'f?p=&APP_ID.:31:&SESSION.'
,p_page_id=>31
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17801801281302764)
,p_parent_id=>wwv_flow_api.id(15620617114109532)
,p_short_name=>'Modify BOA PARTITIONS'
,p_link=>'f?p=&APP_ID.:32:&SESSION.'
,p_page_id=>32
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18309516522502856)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'Manage partitions'
,p_link=>'f?p=&APP_ID.:26:&SESSION.'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18310217318502861)
,p_parent_id=>wwv_flow_api.id(18309516522502856)
,p_short_name=>'Edit BOA PARTITIONS'
,p_link=>'f?p=&APP_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18793221386786382)
,p_parent_id=>wwv_flow_api.id(18309516522502856)
,p_short_name=>'Edit BOA EXCHANGE PARTITIONS'
,p_link=>'f?p=&APP_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19213529544726059)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'Merge Partitions'
,p_link=>'f?p=&APP_ID.:35:&SESSION.'
,p_page_id=>35
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19223731101890410)
,p_parent_id=>wwv_flow_api.id(18310217318502861)
,p_short_name=>'Partition List by table'
,p_link=>'f?p=&APP_ID.:36:&SESSION.'
,p_page_id=>36
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19324712629151283)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'BOA ReBill Stage'
,p_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_page_id=>37
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19325415658151289)
,p_parent_id=>wwv_flow_api.id(19324712629151283)
,p_short_name=>'Edit BOA REBILLREQUESTS'
,p_link=>'f?p=&APP_ID.:38:&SESSION.'
,p_page_id=>38
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19575600860096876)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'Add partition'
,p_link=>'f?p=&APP_ID.:40:&SESSION.'
,p_page_id=>40
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22192814275032097)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'Manage End Users'
,p_link=>'f?p=&APP_ID.:41:&SESSION.'
,p_page_id=>41
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22193510259032103)
,p_parent_id=>wwv_flow_api.id(22192814275032097)
,p_short_name=>'Edit End User Privileges'
,p_link=>'f?p=&APP_ID.:42:&SESSION.'
,p_page_id=>42
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25092923248912047)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'Review Process Flow'
,p_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:::'
,p_page_id=>45
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25106720899414536)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'List O/S Programs'
,p_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25107201680453875)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'Load Schema Variables'
,p_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:::'
,p_page_id=>48
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25114129571057643)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'RDM File Patterns'
,p_link=>'f?p=&APP_ID.:53:&SESSION.'
,p_page_id=>53
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25114827208057644)
,p_parent_id=>wwv_flow_api.id(25114129571057643)
,p_short_name=>'Add RDM File Patterns'
,p_link=>'f?p=&APP_ID.:54:&SESSION.'
,p_page_id=>54
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25569621534289900)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'BOA File Watcher Queue'
,p_link=>'f?p=&APP_ID.:57:&SESSION.'
,p_page_id=>57
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25573815735390039)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'BOA_FILE_LOAD_REPORT'
,p_link=>'f?p=&APP_ID.:58:&SESSION.'
,p_page_id=>58
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25853323642736080)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'file watch queue'
,p_link=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:::'
,p_page_id=>65
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25853513290740846)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'File load Report'
,p_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::'
,p_page_id=>66
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25864914811585098)
,p_parent_id=>wwv_flow_api.id(25853513290740846)
,p_short_name=>'Edit File Load Report'
,p_link=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:::'
,p_page_id=>67
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25877130708042359)
,p_parent_id=>wwv_flow_api.id(25853323642736080)
,p_short_name=>'Edit File Watch Queue'
,p_link=>'f?p=&APP_ID.:68:&SESSION.'
,p_page_id=>68
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25892519351485102)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'File Listing'
,p_link=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:::'
,p_page_id=>46
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25894029862716615)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'Run unix script'
,p_link=>'f?p=&FLOW_ID.:60:&SESSION.'
,p_page_id=>60
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25921526987916848)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'list of file watchers'
,p_link=>'f?p=&FLOW_ID.:75:&SESSION.'
,p_page_id=>75
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25995023944998592)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'RDM Load Logs'
,p_link=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:::'
,p_page_id=>80
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26014824635066164)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'Restart Process'
,p_link=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:::'
,p_page_id=>81
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26034429479656157)
,p_parent_id=>wwv_flow_api.id(25995023944998592)
,p_short_name=>'Edit Files Processed'
,p_link=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:::'
,p_page_id=>83
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26034615893662489)
,p_parent_id=>wwv_flow_api.id(25995023944998592)
,p_short_name=>'Edit Load Queue'
,p_link=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:::'
,p_page_id=>82
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26091203663916086)
,p_parent_id=>wwv_flow_api.id(7267914138955011)
,p_short_name=>'Move Loaded File'
,p_link=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:::'
,p_page_id=>85
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26101318575253036)
,p_parent_id=>wwv_flow_api.id(26091203663916086)
,p_short_name=>'Run Batch'
,p_link=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:::'
,p_page_id=>86
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7256625864954788)
,p_theme_id=>122
,p_name=>'Login'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="login">',
'  <div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'  <div id="login-main">#REGION_POSITION_02##BODY##REGION_POSITION_03#</div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7256718558954808)
,p_theme_id=>122
,p_name=>'No Tabs - Left Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        &nbsp;',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col-sb-left">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="main-sb-left">',
'      #BODY##REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7256832509954808)
,p_theme_id=>122
,p_name=>'No Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        &nbsp;',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="three-col">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="two-col-tbl">',
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'        <tbody>',
'          <tr>',
'            <td class="tbl-main" width="100%">#BODY#</td>',
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'          </tr>',
'        </tbody>',
'      </table>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7256910271954808)
,p_theme_id=>122
,p_name=>'No Tabs - Right Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        &nbsp;',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col">',
'    <div id="sidebar">#REGION_POSITION_03#</div>     ',
'    <div id="main">#REGION_POSITION_02##BODY#</div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7257005674954808)
,p_theme_id=>122
,p_name=>'No Tabs - Right Sidebar (optional / table-based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="error_container">',
'	<div class="rounded-corner-region-blank-alt">',
'		<div class="rc-gray-top">',
'			<div class="rc-gray-top-r"></div>',
'		</div>',
'		<div class="rc-body">',
'			<div class="rc-body-r">',
'				<div class="rc-content-main">',
'					<div class="sErrorText">',
'					<strong>#MESSAGE#</strong>',
'					<strong>#ADDITIONAL_INFO#</strong>',
'					<div>#TECHNICAL_INFO#</div>',
'					<p>',
'						<button onclick="#BACK_LINK#" class="button-default" type="button">',
'						  <span>#OK#</span>',
'						</button>',
'					</p>',
'					</div>',
'					<div class="clear"></div>',
'				</div>',
'				<div class="clear"></div>',
'			</div>',
'		</div>',
'		<div class="rc-bottom">',
'			<div class="rc-bottom-r"></div>',
'		</div>',
'	</div>',
'</div>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7257109260954810)
,p_theme_id=>122
,p_name=>'One Level Tabs - Left Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col-sb-left">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="main-sb-left">',
'      #BODY##REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7257211104954811)
,p_theme_id=>122
,p_name=>'One Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="three-col">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="two-col-tbl">',
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'        <tbody>',
'          <tr>',
'            <td class="tbl-main" width="100%">#BODY#</td>',
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'          </tr>',
'        </tbody>',
'      </table>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7257317011954817)
,p_theme_id=>122
,p_name=>'One Level Tabs - Right Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col">',
'    <div id="sidebar">#REGION_POSITION_03#</div>     ',
'    <div id="main">#REGION_POSITION_02##BODY#</div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7257425144954817)
,p_theme_id=>122
,p_name=>'One Level Tabs - Right Sidebar (optional / table-based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="navbar-link">#TEXT#</a></div>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7257532005954818)
,p_theme_id=>122
,p_name=>'Popup'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'<title>#TITLE#</title>',
'<link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD# class="pop-up-body">#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top"><div class="t1messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7257624987954818)
,p_theme_id=>122
,p_name=>'Printer Friendly'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-sidebar" style="padding-right: 10px;">#REGION_POSITION_02#</td>     ',
'        <td class="tbl-main" width="100%">#BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7257706597954818)
,p_theme_id=>122
,p_name=>'Two Level Tabs - Left Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
' #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col-sb-left">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="main-sb-left">',
'      #BODY##REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7257828267954818)
,p_theme_id=>122
,p_name=>'Two Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
' #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="three-col">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="two-col-tbl">',
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'        <tbody>',
'          <tr>',
'            <td class="tbl-main" width="100%">#BODY#</td>',
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'          </tr>',
'        </tbody>',
'      </table>',
'    </div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7257931904954819)
,p_theme_id=>122
,p_name=>'Two Level Tabs - Right Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
' #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col">',
'    <div id="sidebar">#REGION_POSITION_03#</div>     ',
'    <div id="main">#REGION_POSITION_02##BODY#</div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(7258023235954819)
,p_theme_id=>122
,p_name=>'Two Level Tabs - Right Sidebar (optional / table-based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
' #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49668485976170432)
,p_theme_id=>123
,p_name=>'Login'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="login">',
'  <div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'  <div id="login-main">#REGION_POSITION_02##BODY##REGION_POSITION_03#</div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49668681657170433)
,p_theme_id=>123
,p_name=>'No Tabs - Left Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        &nbsp;',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col-sb-left">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="main-sb-left">',
'      #BODY##REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49668959098170441)
,p_theme_id=>123
,p_name=>'No Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        &nbsp;',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="three-col">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="two-col-tbl">',
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'        <tbody>',
'          <tr>',
'            <td class="tbl-main" width="100%">#BODY#</td>',
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'          </tr>',
'        </tbody>',
'      </table>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49669267612170441)
,p_theme_id=>123
,p_name=>'No Tabs - Right Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        &nbsp;',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col">',
'    <div id="sidebar">#REGION_POSITION_03#</div>     ',
'    <div id="main">#REGION_POSITION_02##BODY#</div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49669586834170443)
,p_theme_id=>123
,p_name=>'No Tabs - Right Sidebar (optional / table-based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">',
'<img src="#IMAGE#" alt= "#ALT#" height="HEIGHT#" width= "#WIDTH# />#TEXT#</a></div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="error_container">',
'	<div class="rounded-corner-region-blank-alt">',
'		<div class="rc-gray-top">',
'			<div class="rc-gray-top-r"></div>',
'		</div>',
'		<div class="rc-body">',
'			<div class="rc-body-r">',
'				<div class="rc-content-main">',
'					<div class="sErrorText">',
'					<strong>#MESSAGE#</strong>',
'					<strong>#ADDITIONAL_INFO#</strong>',
'					<div>#TECHNICAL_INFO#</div>',
'					<p>',
'						<button onclick="#BACK_LINK#" class="button-default" type="button">',
'						  <span>#OK#</span>',
'						</button>',
'					</p>',
'					</div>',
'					<div class="clear"></div>',
'				</div>',
'				<div class="clear"></div>',
'			</div>',
'		</div>',
'		<div class="rc-bottom">',
'			<div class="rc-bottom-r"></div>',
'		</div>',
'	</div>',
'</div>'))
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49669859953170444)
,p_theme_id=>123
,p_name=>'One Level Tabs - Left Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col-sb-left">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="main-sb-left">',
'      #BODY##REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49670171102170446)
,p_theme_id=>123
,p_name=>'One Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="three-col">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="two-col-tbl">',
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'        <tbody>',
'          <tr>',
'            <td class="tbl-main" width="100%">#BODY#</td>',
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'          </tr>',
'        </tbody>',
'      </table>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#BAR_BODY#',
''))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">',
'<img src="#IMAGE#" alt= "#ALT#" height="HEIGHT#" width= "#WIDTH# />#TEXT#</a></div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49670470039170446)
,p_theme_id=>123
,p_name=>'One Level Tabs - Right Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col">',
'    <div id="sidebar">#REGION_POSITION_03#</div>     ',
'    <div id="main">#REGION_POSITION_02##BODY#</div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49670770557170447)
,p_theme_id=>123
,p_name=>'One Level Tabs - Right Sidebar (optional / table-based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="navbar-link">#TEXT#</a></div>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49671074484170447)
,p_theme_id=>123
,p_name=>'Popup'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'<title>#TITLE#</title>',
'<link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD# class="pop-up-body">#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top"><div class="t1messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49671358513170449)
,p_theme_id=>123
,p_name=>'Printer Friendly'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-sidebar" style="padding-right: 10px;">#REGION_POSITION_02#</td>     ',
'        <td class="tbl-main" width="100%">#BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49671677604170449)
,p_theme_id=>123
,p_name=>'Two Level Tabs - Left Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
' #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col-sb-left">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="main-sb-left">',
'      #BODY##REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49671963804170451)
,p_theme_id=>123
,p_name=>'Two Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
' #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="three-col">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="two-col-tbl">',
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'        <tbody>',
'          <tr>',
'            <td class="tbl-main" width="100%">#BODY#</td>',
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'          </tr>',
'        </tbody>',
'      </table>',
'    </div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49672270257170451)
,p_theme_id=>123
,p_name=>'Two Level Tabs - Right Sidebar (fixed-width / DIV based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
' #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col">',
'    <div id="sidebar">#REGION_POSITION_03#</div>     ',
'    <div id="main">#REGION_POSITION_02##BODY#</div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(49672561786170452)
,p_theme_id=>123
,p_name=>'Two Level Tabs - Right Sidebar (optional / table-based)'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
' #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(119807673265283)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>123
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(7264825649954884)
,p_template_name=>'Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-default" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(7264900054954890)
,p_template_name=>'Hot Button (Black)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt5" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(7265001184954892)
,p_template_name=>'Hot Button (Blue)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt1" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(7265122730954892)
,p_template_name=>'Hot Button (Yellow)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt4" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(7265211044954892)
,p_template_name=>'Small Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt2" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'XP Square FFFFFF'
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(7265327761954892)
,p_template_name=>'Small Hot Button (Blue)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt3" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(7265412434954892)
,p_template_name=>'Small Hot Button (Yellow)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt6" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(49691558293170497)
,p_template_name=>'Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-default" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>123
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(49691785930170499)
,p_template_name=>'Hot Button (Black)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt5" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>123
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(49691963420170499)
,p_template_name=>'Hot Button (Blue)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt1" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>123
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(49692172165170499)
,p_template_name=>'Hot Button (Yellow)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt4" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>123
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(49692363340170499)
,p_template_name=>'Small Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt2" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'XP Square FFFFFF'
,p_theme_id=>123
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(49692582099170501)
,p_template_name=>'Small Hot Button (Blue)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt3" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>123
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(49692762871170501)
,p_template_name=>'Small Hot Button (Yellow)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt6" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>123
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7258117917954824)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="blank-region">',
'#BODY#',
'<div class="clear"></div>',
'</div>'))
,p_page_plug_template_name=>'Blank Region'
,p_theme_id=>122
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7258214261954841)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">#TITLE#</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>',
'<div class="clear"></div>'))
,p_page_plug_template_name=>'Borderless Region'
,p_theme_id=>122
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7258319200954842)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    ',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>',
'<div class="clear"></div>'))
,p_page_plug_template_name=>'Borderless Region - No Title'
,p_theme_id=>122
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7258412457954842)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="bracketed-region brackets" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bk-top">',
'    <div class="bk-top-r">',
'      <div class="bk-title">#TITLE#</div>',
'      <div class="bk-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'    </div>',
'  </div>',
'  <div class="bk-body">#BODY#</div>',
'  <div class="bk-bottom">',
'    <div class="bk-bottom-r">&nbsp;</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_theme_id=>122
,p_theme_class_id=>18
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content with a bracket UI.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7258504016954842)
,p_layout=>'TABLE'
,p_template=>'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>122
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7258626264954842)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top">',
'    <div class="rc-gray-top-r"></div>',
'  </div>',
'  <div class="rc-body">',
'    <div class="rc-body-r">',
'      <div class="rc-content-main">',
'        <div class="rc-left">',
'          <h3>#TITLE#</h3>',
'        </div>',
'        <div class="rc-right">',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'        </div>',
'        <div class="clear"></div>',
'      </div>',
'    </div>',
'  </div>',
'  <div class="rc-bottom">',
'    <div class="rc-bottom-r"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Button Region with Title'
,p_theme_id=>122
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7258729478954842)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top">',
'    <div class="rc-gray-top-r"></div>',
'  </div>',
'  <div class="rc-body">',
'    <div class="rc-body-r">',
'      <div class="rc-content-main">',
'        <div class="rc-left">',
'          #BODY#',
'        </div>',
'        <div class="rc-right">',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'        </div>',
'        <div class="clear"></div>',
'      </div>',
'    </div>',
'  </div>',
'  <div class="rc-bottom">',
'    <div class="rc-bottom-r"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Button Region without Title'
,p_theme_id=>122
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7258822234954842)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="tSC">',
'  #BODY#',
'</div>',
'<div class="tSF">',
'  <div class="tSFO">',
'    <div class="tSFI">',
'    </div>',
'  </div>',
'</div>',
''))
,p_page_plug_template_name=>'Centered Tab Set Region'
,p_theme_id=>122
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7258917485954842)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">',
'     <div class="rc-image"><img src="#IMAGE_PREFIX#themes/theme_22/images/report_icon.png" alt="" /></div>',
'      <div class="rc-content">#BODY#</div>',
'<div class="clear"></div>',
'</div>',
'</div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Chart List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>122
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7259009288954842)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Chart Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>122
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7259102523954842)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">',
'#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Form Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>122
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7259219159954842)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="hide-show-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="hide-show-top">',
'    <div class="hide-show-title"><a href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_22/images/right_arrow.png'',''#IMAGE_PREFIX#themes/theme_22/images/down_arrow.png'');" class="t1HideandSho'
||'wRegionLink"><img src="#IMAGE_PREFIX#themes/theme_22/images/right_arrow.png" ',
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a> #TITLE#</div>',
'    <div class="hide-show-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'<div class="hide" id="region#REGION_SEQUENCE_ID#" style="float:left;">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_theme_id=>122
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Gray Head, white body'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7259331369954842)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="navigation-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'    <h3>#TITLE#</h3>',
'  <div>',
'    #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Navigation Region'
,p_theme_id=>122
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7259411521954842)
,p_layout=>'TABLE'
,p_template=>'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_theme_id=>122
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7259500699954842)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-nested" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'	<div class="nr-top">',
'		<div class="nr-top-r">',
'    <div class="nr-title">#TITLE#</div>',
'    <div class="nr-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'		</div>',
'	</div>',
'	<div class="nr-body">',
'		<div class="nr-content-main">',
'			#BODY#',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Nested Region'
,p_theme_id=>122
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7259622417954843)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_theme_id=>122
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7259721261954843)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">&nbsp;</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Title'
,p_theme_id=>122
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7259807082954843)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tbody>',
'<tr>',
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_find.png" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>',
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>',
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>',
'</tr>',
'<tr><td class="apex_finderbar_left_middle"><br /></td></tr>',
'<tr>',
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_theme_id=>122
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7259924454954843)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'    <div class="rc-content-main">',
'    #BODY#',
'    </div>',
'  </div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Report List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>122
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7260002088954843)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div> '))
,p_page_plug_template_name=>'Reports Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>122
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7260100351954843)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region float-left-100pct" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>',
''))
,p_page_plug_template_name=>'Reports Region 100% Width'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>122
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7260210923954843)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank-white" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>',
'	<div class="rc-gray-top">',
'		<div class="rc-gray-top-r"></div>',
'	</div>',
'	<div class="rc-body">',
'		<div class="rc-body-r">',
'			<div class="rc-content-main">',
'				#BODY#',
'				<div class="clear"></div>',
'			</div>',
'			<div class="rc-content-buttons">',
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'			</div>',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'	<div class="rc-bottom">',
'		<div class="rc-bottom-r"></div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region No Title'
,p_theme_id=>122
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7260309635954843)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank-alt" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>',
'	<div class="rc-gray-top">',
'		<div class="rc-gray-top-r"></div>',
'	</div>',
'	<div class="rc-body">',
'		<div class="rc-body-r">',
'			<div class="rc-content-main">',
'				#BODY#',
'				<div class="clear"></div>',
'			</div>',
'			<div class="rc-content-buttons">',
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'			</div>',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'	<div class="rc-bottom">',
'		<div class="rc-bottom-r"></div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region No Title, Alternative 1'
,p_theme_id=>122
,p_theme_class_id=>10
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7260409701954843)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div>',
'<div class="clear"></div>',
'</div>',
'</div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region, Alternative 1'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>122
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7260510511954843)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sidebar-region">',
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div> ',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>122
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>',
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#FF0000" height="16">',
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">',
'              <tr>',
'                <td align=middle valign="top">',
'                  <div align="center">',
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">',
'                      <b>#TITLE# </b></font></div>',
'                </td>',
'              </tr>',
'            </table>',
'          </td>',
'        </tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0">',
'   <tr>',
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />',
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">',
'              <tr>',
'                <td colspan="2">',
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">',
'                    <tr>',
'                      <td>&nbsp;</td>',
'                      <td valign="top" width="106">',
'                        <P><FONT face="arial, helvetica" size="1">',
'                            #BODY#',
'                           </font>',
'                        </P>',
'                      </td>',
'                    </tr>',
'                  </table>',
'            </table>',
'          </td>',
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'      </table>',
'      <table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>',
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'</table>',
''))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7260626124954843)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sidebar-region">',
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div> ',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>122
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7260717910954843)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank-white sidebar-alt2" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>',
'	<div class="rc-gray-top">',
'		<div class="rc-gray-top-r"></div>',
'	</div>',
'	<div class="rc-body">',
'		<div class="rc-body-r">',
'			<div class="rc-content-main">',
'				#BODY#',
'				<div class="clear"></div>',
'			</div>',
'			<div class="rc-content-buttons">',
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'			</div>',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'	<div class="rc-bottom">',
'		<div class="rc-bottom-r"></div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Bordered'
,p_theme_id=>122
,p_theme_class_id=>3
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7260823926954844)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank-alt sidebar-alt2" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>',
'	<div class="rc-gray-top">',
'		<div class="rc-gray-top-r"></div>',
'	</div>',
'	<div class="rc-body">',
'		<div class="rc-body-r">',
'			<div class="rc-content-main">',
'				#BODY#',
'				<div class="clear"></div>',
'			</div>',
'			<div class="rc-content-buttons">',
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'			</div>',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'	<div class="rc-bottom">',
'		<div class="rc-bottom-r"></div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Bordered Alternative'
,p_theme_id=>122
,p_theme_class_id=>3
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7260923330954844)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Region'
,p_theme_id=>122
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(7261002767954844)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_theme_id=>122
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49672874582170452)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="blank-region">',
'#BODY#',
'<div class="clear"></div>',
'</div>'))
,p_page_plug_template_name=>'Blank Region'
,p_theme_id=>123
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49673171082170454)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">#TITLE#</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>',
'<div class="clear"></div>'))
,p_page_plug_template_name=>'Borderless Region'
,p_theme_id=>123
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
end;
/
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49673480987170454)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    ',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>',
'<div class="clear"></div>'))
,p_page_plug_template_name=>'Borderless Region - No Title'
,p_theme_id=>123
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49673783807170455)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="bracketed-region brackets" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bk-top">',
'    <div class="bk-top-r">',
'      <div class="bk-title">#TITLE#</div>',
'      <div class="bk-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'    </div>',
'  </div>',
'  <div class="bk-body">#BODY#</div>',
'  <div class="bk-bottom">',
'    <div class="bk-bottom-r">&nbsp;</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_theme_id=>123
,p_theme_class_id=>18
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content with a bracket UI.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49674087496170455)
,p_layout=>'TABLE'
,p_template=>'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>123
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49674377654170455)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top">',
'    <div class="rc-gray-top-r"></div>',
'  </div>',
'  <div class="rc-body">',
'    <div class="rc-body-r">',
'      <div class="rc-content-main">',
'        <div class="rc-left">',
'          <h3>#TITLE#</h3>',
'        </div>',
'        <div class="rc-right">',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'        </div>',
'        <div class="clear"></div>',
'      </div>',
'    </div>',
'  </div>',
'  <div class="rc-bottom">',
'    <div class="rc-bottom-r"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Button Region with Title'
,p_theme_id=>123
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49674657155170457)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top">',
'    <div class="rc-gray-top-r"></div>',
'  </div>',
'  <div class="rc-body">',
'    <div class="rc-body-r">',
'      <div class="rc-content-main">',
'        <div class="rc-left">',
'          #BODY#',
'        </div>',
'        <div class="rc-right">',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'        </div>',
'        <div class="clear"></div>',
'      </div>',
'    </div>',
'  </div>',
'  <div class="rc-bottom">',
'    <div class="rc-bottom-r"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Button Region without Title'
,p_theme_id=>123
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49674972037170457)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="tSC">',
'  #BODY#',
'</div>',
'<div class="tSF">',
'  <div class="tSFO">',
'    <div class="tSFI">',
'    </div>',
'  </div>',
'</div>',
''))
,p_page_plug_template_name=>'Centered Tab Set Region'
,p_theme_id=>123
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49675275413170457)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">',
'     <div class="rc-image"><img src="#IMAGE_PREFIX#themes/theme_22/images/report_icon.png" alt="" /></div>',
'      <div class="rc-content">#BODY#</div>',
'<div class="clear"></div>',
'</div>',
'</div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Chart List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>123
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49675583056170458)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Chart Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>123
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49675875816170458)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">',
'#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Form Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>123
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49676171226170458)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="hide-show-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="hide-show-top">',
'    <div class="hide-show-title"><a href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_22/images/right_arrow.png'',''#IMAGE_PREFIX#themes/theme_22/images/down_arrow.png'');" class="t1HideandSho'
||'wRegionLink"><img src="#IMAGE_PREFIX#themes/theme_22/images/right_arrow.png" ',
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a> #TITLE#</div>',
'    <div class="hide-show-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'<div class="hide" id="region#REGION_SEQUENCE_ID#" style="float:left;">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_theme_id=>123
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Gray Head, white body'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49676463238170460)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="navigation-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'    <h3>#TITLE#</h3>',
'  <div>',
'    #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Navigation Region'
,p_theme_id=>123
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49676774245170460)
,p_layout=>'TABLE'
,p_template=>'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_theme_id=>123
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49677085326170460)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-nested" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'	<div class="nr-top">',
'		<div class="nr-top-r">',
'    <div class="nr-title">#TITLE#</div>',
'    <div class="nr-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'		</div>',
'	</div>',
'	<div class="nr-body">',
'		<div class="nr-content-main">',
'			#BODY#',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Nested Region'
,p_theme_id=>123
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49677356183170462)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_theme_id=>123
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49677672587170462)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">&nbsp;</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Title'
,p_theme_id=>123
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49677978695170472)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tbody>',
'<tr>',
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_find.png" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>',
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>',
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>',
'</tr>',
'<tr><td class="apex_finderbar_left_middle"><br /></td></tr>',
'<tr>',
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_theme_id=>123
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49678258445170472)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'    <div class="rc-content-main">',
'    #BODY#',
'    </div>',
'  </div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Report List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>123
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49678584607170474)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div> '))
,p_page_plug_template_name=>'Reports Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>123
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49678876525170474)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region float-left-100pct" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>',
''))
,p_page_plug_template_name=>'Reports Region 100% Width'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>123
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49679160880170476)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank-white" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>',
'	<div class="rc-gray-top">',
'		<div class="rc-gray-top-r"></div>',
'	</div>',
'	<div class="rc-body">',
'		<div class="rc-body-r">',
'			<div class="rc-content-main">',
'				#BODY#',
'				<div class="clear"></div>',
'			</div>',
'			<div class="rc-content-buttons">',
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'			</div>',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'	<div class="rc-bottom">',
'		<div class="rc-bottom-r"></div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region No Title'
,p_theme_id=>123
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49679467435170476)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank-alt" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>',
'	<div class="rc-gray-top">',
'		<div class="rc-gray-top-r"></div>',
'	</div>',
'	<div class="rc-body">',
'		<div class="rc-body-r">',
'			<div class="rc-content-main">',
'				#BODY#',
'				<div class="clear"></div>',
'			</div>',
'			<div class="rc-content-buttons">',
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'			</div>',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'	<div class="rc-bottom">',
'		<div class="rc-bottom-r"></div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region No Title, Alternative 1'
,p_theme_id=>123
,p_theme_class_id=>10
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49679782892170476)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div>',
'<div class="clear"></div>',
'</div>',
'</div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region, Alternative 1'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>123
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49680057026170477)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sidebar-region">',
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div> ',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>123
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>',
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#FF0000" height="16">',
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">',
'              <tr>',
'                <td align=middle valign="top">',
'                  <div align="center">',
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">',
'                      <b>#TITLE# </b></font></div>',
'                </td>',
'              </tr>',
'            </table>',
'          </td>',
'        </tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0">',
'   <tr>',
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />',
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">',
'              <tr>',
'                <td colspan="2">',
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">',
'                    <tr>',
'                      <td>&nbsp;</td>',
'                      <td valign="top" width="106">',
'                        <P><FONT face="arial, helvetica" size="1">',
'                            #BODY#',
'                           </font>',
'                        </P>',
'                      </td>',
'                    </tr>',
'                  </table>',
'            </table>',
'          </td>',
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'      </table>',
'      <table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>',
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'</table>',
''))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49680364584170477)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sidebar-region">',
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div> ',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>123
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49680673260170477)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank-white sidebar-alt2" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>',
'	<div class="rc-gray-top">',
'		<div class="rc-gray-top-r"></div>',
'	</div>',
'	<div class="rc-body">',
'		<div class="rc-body-r">',
'			<div class="rc-content-main">',
'				#BODY#',
'				<div class="clear"></div>',
'			</div>',
'			<div class="rc-content-buttons">',
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'			</div>',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'	<div class="rc-bottom">',
'		<div class="rc-bottom-r"></div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Bordered'
,p_theme_id=>123
,p_theme_class_id=>3
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49680968716170479)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank-alt sidebar-alt2" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>',
'	<div class="rc-gray-top">',
'		<div class="rc-gray-top-r"></div>',
'	</div>',
'	<div class="rc-body">',
'		<div class="rc-body-r">',
'			<div class="rc-content-main">',
'				#BODY#',
'				<div class="clear"></div>',
'			</div>',
'			<div class="rc-content-buttons">',
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'			</div>',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'	<div class="rc-bottom">',
'		<div class="rc-bottom-r"></div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Bordered Alternative'
,p_theme_id=>123
,p_theme_class_id=>3
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49681263778170479)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Region'
,p_theme_id=>123
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(49681569572170479)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_theme_id=>123
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7262101219954862)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-alt1" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-default" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_name=>'Button List'
,p_theme_id=>122
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="button-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7262210186954873)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'          <li class="#LIST_STATUS#">',
'            <a href="#LINK#"><span>#TEXT#</span></a>',
'          </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'          <li class="#LIST_STATUS#">',
'            <a href="#LINK#"><span>#TEXT#</span></a>',
'          </li>'))
,p_list_template_name=>'Centered Tab Set'
,p_theme_id=>122
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="tS">',
'  <div class="tSO">',
'    <div class="tSI">',
'      <div class="tSU">',
'        <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'         </ul>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7262325097954873)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_theme_id=>122
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7262414470954875)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_theme_id=>122
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7262515275954875)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="list-item-current">',
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="list-item">',
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_theme_id=>122
,p_theme_class_id=>4
,p_list_template_before_rows=>'<div class="horizontal-images-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7262618282954875)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>122
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7262718779954875)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Horizontal Tabs Rounded List'
,p_theme_id=>122
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sHTabs">',
'	<div class="sHTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'		</ul>',
'	</div>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7262807719954875)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Horizontal Tabs Rounded List (Full Width)'
,p_theme_id=>122
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sHFWTabs">',
'<div class="sHTabs">',
'	<div class="sHTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'			<li class="last"></li>',
'		</ul>',
'	</div>',
'</div>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7262906986954875)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_theme_id=>122
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sBTabs">',
'	<div class="sBTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'			<li class="last"></li>',
'		</ul>',
'	</div>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7263020809954875)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_theme_id=>122
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_22/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />',
'</li>'))
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_22/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7263116682954875)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_theme_id=>122
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(thi'
||'s,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(th'
||'is,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7263222430954875)
,p_list_template_current=>'<li class="active"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>122
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sHorizontalTabs">',
'	<div class="sHorizontalTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'		</ul>',
'	</div>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7263301351954875)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="list-item-current">',
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="list-item">',
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_name=>'Vertical Images List'
,p_theme_id=>122
,p_theme_class_id=>5
,p_list_template_before_rows=>'<div class="vertical-images-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7263426840954875)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>122
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7263506642954875)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>122
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="vertical-sidebar-list">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7263613547954876)
,p_list_template_current=>'<li class="current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>122
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7263711702954876)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets, Alternative'
,p_theme_id=>122
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7263808458954876)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>122
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7263932520954876)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li class="non-current">#TEXT#</li>'
,p_list_template_name=>'Wizard Progress List'
,p_theme_id=>122
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="wizard-progress-list" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_between_items=>'<li class="progress-indicator">&nbsp;</li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(7264014424954876)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Wizard Progress List, Horizontal Train'
,p_theme_id=>122
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sHorizontalProgressList">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49684881604170486)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-alt1" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-default" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_name=>'Button List'
,p_theme_id=>123
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="button-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49685166820170486)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'          <li class="#LIST_STATUS#">',
'            <a href="#LINK#"><span>#TEXT#</span></a>',
'          </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'          <li class="#LIST_STATUS#">',
'            <a href="#LINK#"><span>#TEXT#</span></a>',
'          </li>'))
,p_list_template_name=>'Centered Tab Set'
,p_theme_id=>123
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="tS">',
'  <div class="tSO">',
'    <div class="tSI">',
'      <div class="tSU">',
'        <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'         </ul>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49685479083170486)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_theme_id=>123
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49685773647170488)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_theme_id=>123
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49686085999170488)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="list-item-current">',
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="list-item">',
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_theme_id=>123
,p_theme_class_id=>4
,p_list_template_before_rows=>'<div class="horizontal-images-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49686381898170488)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>123
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49686684026170490)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Horizontal Tabs Rounded List'
,p_theme_id=>123
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sHTabs">',
'	<div class="sHTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'		</ul>',
'	</div>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49686971398170490)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Horizontal Tabs Rounded List (Full Width)'
,p_theme_id=>123
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sHFWTabs">',
'<div class="sHTabs">',
'	<div class="sHTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'			<li class="last"></li>',
'		</ul>',
'	</div>',
'</div>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49687265736170490)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_theme_id=>123
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sBTabs">',
'	<div class="sBTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'			<li class="last"></li>',
'		</ul>',
'	</div>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49687558407170491)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_theme_id=>123
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_22/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />',
'</li>'))
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_22/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49687864599170491)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_theme_id=>123
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(thi'
||'s,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(th'
||'is,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49688176920170491)
,p_list_template_current=>'<li class="active"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>123
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sHorizontalTabs">',
'	<div class="sHorizontalTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'		</ul>',
'	</div>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49688456371170493)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="list-item-current">',
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="list-item">',
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_name=>'Vertical Images List'
,p_theme_id=>123
,p_theme_class_id=>5
,p_list_template_before_rows=>'<div class="vertical-images-list">'
,p_list_template_after_rows=>'</div>'
);
end;
/
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49688765352170493)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>123
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49689081583170494)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>123
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="vertical-sidebar-list">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49689375007170494)
,p_list_template_current=>'<li class="current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>123
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49689657472170494)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets, Alternative'
,p_theme_id=>123
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49689972902170496)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>123
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49690258259170496)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li class="non-current">#TEXT#</li>'
,p_list_template_name=>'Wizard Progress List'
,p_theme_id=>123
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="wizard-progress-list" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_between_items=>'<li class="progress-indicator">&nbsp;</li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(49690575469170496)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Wizard Progress List, Horizontal Train'
,p_theme_id=>123
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sHorizontalProgressList">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7261125315954847)
,p_row_template_name=>'Borderless Report'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr>',
'<td><table class="report-borderless" cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>122
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(7261125315954847)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7261226472954854)
,p_row_template_name=>'Fixed Headers'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>'
,p_row_template2=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data-alt" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#',
'<tr>',
'<td><div class="fixed-header-report"><table cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody></table></div><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<thead>',
''))
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
''))
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#d8e4f0'
,p_row_style_checked=>'#d8e4f0'
,p_theme_id=>122
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(7261226472954854)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7261316323954854)
,p_row_template_name=>'Horizontal Border'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" class="horizontal-border" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" cellspacing="0" border="0" class="report-standard" summary="">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>122
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(7261316323954854)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7261403982954854)
,p_row_template_name=>'One Column Unordered List'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#',
'<tr><td><ul class="t1OneColumnUnorderedList">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>122
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(7261403982954854)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7261508355954854)
,p_row_template_name=>'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<span class="title"><a href="#2#">#1#</a></span>',
'<span class="description"><span class="last_modified">#5#</span>#3#</span>',
'<span class="type">#4#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="sSearchResultsReport">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul> ',
'#PAGINATION#'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>122
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7261620458954854)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="report-standard">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>122
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(7261620458954854)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7261714377954855)
,p_row_template_name=>'Standard, Alternating Row Colors'
,p_row_template1=>'<td class="data"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template2=>'<td class="dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#<tr><td>',
'<table border="0" cellpadding="0" cellspacing="0" class="report-standard-alternatingrowcolors" summary="" >'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>122
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(7261714377954855)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7261804697954855)
,p_row_template_name=>'Two Column Portlet'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="report-row">',
'  <div class="report-col-hdr">#1#</div>',
'  <div class="report-col-val">#2#</div>',
'</div>'))
,p_row_template_before_rows=>'<div class="two-col-report-portlet" #REPORT_ATTRIBUTES# id="#REGION_ID#">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>122
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7261927590954855)
,p_row_template_name=>'Value Attribute Pairs - Div'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="report-row">',
'  <div class="report-col-hdr">#COLUMN_HEADER#</div>',
'  <div class="report-col-val">#COLUMN_VALUE#</div>',
'</div>'))
,p_row_template_before_rows=>'<div class="two-col-report-portlet">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>122
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(7262014785954855)
,p_row_template_name=>'Value Attribute Pairs - Table'
,p_row_template1=>'<tr><th class="header">#COLUMN_HEADER#</th><td class="data">#COLUMN_VALUE#</td></tr>'
,p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="ValueAttributePairsParent">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="ValueAttribu'
||'tePairs">'
,p_row_template_after_rows=>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>122
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(49681856615170480)
,p_row_template_name=>'Borderless Report'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr>',
'<td><table class="report-borderless" cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(49681856615170480)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(49682157799170480)
,p_row_template_name=>'Fixed Headers'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>'
,p_row_template2=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data-alt" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#',
'<tr>',
'<td><div class="fixed-header-report"><table cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody></table></div><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<thead>',
''))
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
''))
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#d8e4f0'
,p_row_style_checked=>'#d8e4f0'
,p_theme_id=>123
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(49682157799170480)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(49682458266170482)
,p_row_template_name=>'Horizontal Border'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" class="horizontal-border" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" cellspacing="0" border="0" class="report-standard" summary="">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>123
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(49682458266170482)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(49682763376170482)
,p_row_template_name=>'One Column Unordered List'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#',
'<tr><td><ul class="t1OneColumnUnorderedList">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>123
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(49682763376170482)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(49683086301170482)
,p_row_template_name=>'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<span class="title"><a href="#2#">#1#</a></span>',
'<span class="description"><span class="last_modified">#5#</span>#3#</span>',
'<span class="type">#4#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="sSearchResultsReport">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul> ',
'#PAGINATION#'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(49683365444170483)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="report-standard">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>123
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(49683365444170483)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(49683664351170483)
,p_row_template_name=>'Standard, Alternating Row Colors'
,p_row_template1=>'<td class="data"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template2=>'<td class="dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#<tr><td>',
'<table border="0" cellpadding="0" cellspacing="0" class="report-standard-alternatingrowcolors" summary="" >'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>123
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(49683664351170483)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(49683958865170483)
,p_row_template_name=>'Two Column Portlet'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="report-row">',
'  <div class="report-col-hdr">#1#</div>',
'  <div class="report-col-val">#2#</div>',
'</div>'))
,p_row_template_before_rows=>'<div class="two-col-report-portlet" #REPORT_ATTRIBUTES# id="#REGION_ID#">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>123
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(49684267909170485)
,p_row_template_name=>'Value Attribute Pairs - Div'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="report-row">',
'  <div class="report-col-hdr">#COLUMN_HEADER#</div>',
'  <div class="report-col-val">#COLUMN_VALUE#</div>',
'</div>'))
,p_row_template_before_rows=>'<div class="two-col-report-portlet">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>123
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(49684572813170485)
,p_row_template_name=>'Value Attribute Pairs - Table'
,p_row_template1=>'<tr><th class="header">#COLUMN_HEADER#</th><td class="data">#COLUMN_VALUE#</td></tr>'
,p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="ValueAttributePairsParent">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="ValueAttribu'
||'tePairs">'
,p_row_template_after_rows=>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>123
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7264119070954876)
,p_template_name=>'BlueRequired'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #0404B4; font-size: 14px; font-family : calibri, verdana, sans-serif"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999"/>',
''))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>122
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7264213739954883)
,p_template_name=>'No Label'
,p_template_body1=>'<span class="hidden-label">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>122
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7264324228954883)
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="optional">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>122
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7264418669954883)
,p_template_name=>'Optional with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>122
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7264520235954883)
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999" /> <span class="required">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>122
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7264619968954883)
,p_template_name=>'Required with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUI'
||'RED#" tabindex="999" /> '
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>122
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(7264715406954883)
,p_template_name=>'blueLable'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #0404B4; font-size: 14px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>122
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(49690857121170497)
,p_template_name=>'BlueRequired'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #0404B4; font-size: 14px; font-family : calibri, verdana, sans-serif"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999"/>',
''))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>123
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(49690980370170497)
,p_template_name=>'No Label'
,p_template_body1=>'<span class="hidden-label">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(49691087232170497)
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="optional">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(49691184008170497)
,p_template_name=>'Optional with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(49691276352170497)
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999" /> <span class="required">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(49691366992170497)
,p_template_name=>'Required with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUI'
||'RED#" tabindex="999" /> '
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(49691477827170497)
,p_template_name=>'blueLable'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #0404B4; font-size: 14px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50423873184010407)
,p_template_name=>'Blue-Label-16'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #0000FF; font-size: 16px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50426356514327231)
,p_template_name=>'LiteBlueLabel'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #0000FF; font-size: 14px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50428561520565254)
,p_template_name=>'italic-10px'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #000000; font-size: 10px; font-style: italic; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50428774858606955)
,p_template_name=>'italic-10px-Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #000000; font-size: 10px; font-style: italic; font-family : calibri, verdana, sans-serif"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999"/>'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50429367988709040)
,p_template_name=>'italic-16px'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #000000; font-size: 16px; font-style: italic; font-family : courier, courier-new, serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50429558516772561)
,p_template_name=>'italic-14px'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #000000; font-size: 14px; font-style: italic; font-family : courier, courier-new, serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(50440361153514343)
,p_template_name=>'italic-14px-green'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #135429; font-size: 14px; font-style: italic; font-family : courier, courier-new, serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(59529455913233803)
,p_template_name=>'Safeguard Blue'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #1589FF; font-size: 14px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(59529958814244088)
,p_template_name=>'Safeguard Blue Reqd'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #1589FF; font-size: 14px; font-family : calibri, verdana, sans-serif"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999"/>',
''))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>123
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(59547376635485743)
,p_template_name=>'Safeguard Blue 16px'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #1589FF; font-size: 16px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(7265524102954900)
,p_name=>'Breadcrumb Menu'
,p_before_first=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="breadcrumb_container">',
'	<ul>',
'		<li class="open"><span></span></li>'))
,p_current_page_option=>'		<li class="active"><a href="#LINK#">#NAME#</a></li>'
,p_non_current_page_option=>'		<li><a href="#LINK#">#NAME#</a></li>'
,p_between_levels=>'		<li class="sep"><span></span></li>'
,p_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'		<li class="close"><span></span></li>',
'	</ul>',
'</div>'))
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>122
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(7265626233954908)
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>122
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(49692956546170501)
,p_name=>'Breadcrumb Menu'
,p_before_first=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="breadcrumb_container">',
'	<ul>',
'		<li class="open"><span></span></li>'))
,p_current_page_option=>'		<li class="active"><a href="#LINK#">#NAME#</a></li>'
,p_non_current_page_option=>'		<li><a href="#LINK#">#NAME#</a></li>'
,p_between_levels=>'		<li class="sep"><span></span></li>'
,p_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'		<li class="close"><span></span></li>',
'	</ul>',
'</div>'))
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(49693085156170501)
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>123
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(7266024089954922)
,p_popup_icon=>'#IMAGE_PREFIX#themes/theme_22/images/sPopupLOVIcon.png'
,p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" media="all"/>',
'',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="pop-up-lov"'
,p_before_field_text=>'<div class="t1PopupHead">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next >'
,p_prev_button_text=>'< Previous'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<div style="padding:5px 10px; font-size:10px;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="t1PopupBody">'
,p_theme_id=>122
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(49693460784170502)
,p_popup_icon=>'#IMAGE_PREFIX#themes/theme_22/images/sPopupLOVIcon.png'
,p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_22/css/theme_4_0.css" type="text/css" media="all"/>',
'',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="pop-up-lov"'
,p_before_field_text=>'<div class="t1PopupHead">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next >'
,p_prev_button_text=>'< Previous'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<div style="padding:5px 10px; font-size:10px;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="t1PopupBody">'
,p_theme_id=>123
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(7265705175954914)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>'<th scope="col" class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="Calendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th scope="row" class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th scope="row" class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>'<table class="ListCalendarHolder" summary="" role="presentation"><tr><td class="MonthTitle">#LTITLE#</td></tr><tr><td><table class="ListCalendar" summary="#CALENDAR_TITLE# #LTITLE#">#DAYS#</td></tr></table>'
,p_agenda_past_day_format=>'<tr> <th id="#MON#_#DD#_#YYYY#" colspan="2" class="PastDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_today_day_format=>'<tr>  <th  id="#MON#_#DD#_#YYYY#" colspan="2"  class="ToDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_future_day_format=>'<tr>   <th  id="#MON#_#DD#_#YYYY#" colspan="2" class="FutureDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_past_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="PastHour" >#TIME#</th><td class="PastDay" headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_today_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="TodayHour" >#TIME#</th><td class="ToDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_future_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="FutureHour" >#TIME#</th><td class="FutureDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>122
,p_theme_class_id=>1
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(7265811176954921)
,p_cal_template_name=>'Calendar, Alternative 1'
,p_day_of_week_format=>'<th scope="col" valign="bottom" class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="CalendarAlternative1">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top" height="100" height="100">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="MonthTitle">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th scope="row" class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th scope="row" class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>'<table class="ListCalendarAlternateHolder" summary="" role="presentation"><tr><td class="MonthTitle">#LTITLE#</td></tr><tr><td><table class="ListCalendarAlternate" summary="#CALENDAR_TITLE# #LTITLE#">#DAYS#</td></tr></table>'''
,p_agenda_past_day_format=>'<tr> <th id="#MON#_#DD#_#YYYY#" colspan="2" class="PastDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_today_day_format=>'<tr>  <th  id="#MON#_#DD#_#YYYY#" colspan="2"  class="ToDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_future_day_format=>'<tr>   <th  id="#MON#_#DD#_#YYYY#" colspan="2" class="FutureDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_past_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="PastHour" >#TIME#</th><td class="PastDay" headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_today_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="TodayHour" >#TIME#</th><td class="ToDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_future_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="FutureHour" >#TIME#</th><td class="FutureDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>122
,p_theme_class_id=>2
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(7265930595954921)
,p_cal_template_name=>'Small Calendar'
,p_day_of_week_format=>'<th scope="col" class="day-of-week">#DY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="small-calendar-holder"> ',
' <tr>',
'   <td class="month-title">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="small-calendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>'))
,p_day_title_format=>'<div class="day-title">#DD#</div>'
,p_day_open_format=>'<td class="day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="weekend-day-title">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="weekend-day">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="non-day-title">#DD#</div>'
,p_nonday_open_format=>'<td class="non-day" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="SmallWeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="DayOfWeek">#DY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top"><div class="inner">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t1Today" valign="top"><div class="inner">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay"><div class="inner">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="DayOfWeek">#DY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th scope="row" class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>'<table class="ListCalendarSmallHolder" summary="" role="presentation"><tr><td class="MonthTitle">#LTITLE#</td></tr><tr><td><table class="ListCalendarSmall" summary="#CALENDAR_TITLE# #LTITLE#">#DAYS#</td></tr></table>'''
,p_agenda_past_day_format=>'<tr> <th id="#MON#_#DD#_#YYYY#" colspan="2" class="PastDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_today_day_format=>'<tr>  <th  id="#MON#_#DD#_#YYYY#" colspan="2"  class="ToDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_future_day_format=>'<tr>   <th  id="#MON#_#DD#_#YYYY#" colspan="2" class="FutureDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_past_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="PastHour" >#TIME#</th><td class="PastDay" headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_today_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="TodayHour" >#TIME#</th><td class="ToDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_future_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="FutureHour" >#TIME#</th><td class="FutureDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>122
,p_theme_class_id=>3
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(49693159762170501)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>'<th scope="col" class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="Calendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th scope="row" class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th scope="row" class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>'<table class="ListCalendarHolder" summary="" role="presentation"><tr><td class="MonthTitle">#LTITLE#</td></tr><tr><td><table class="ListCalendar" summary="#CALENDAR_TITLE# #LTITLE#">#DAYS#</td></tr></table>'
,p_agenda_past_day_format=>'<tr> <th id="#MON#_#DD#_#YYYY#" colspan="2" class="PastDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_today_day_format=>'<tr>  <th  id="#MON#_#DD#_#YYYY#" colspan="2"  class="ToDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_future_day_format=>'<tr>   <th  id="#MON#_#DD#_#YYYY#" colspan="2" class="FutureDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_past_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="PastHour" >#TIME#</th><td class="PastDay" headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_today_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="TodayHour" >#TIME#</th><td class="ToDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_future_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="FutureHour" >#TIME#</th><td class="FutureDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>123
,p_theme_class_id=>1
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(49693286975170501)
,p_cal_template_name=>'Calendar, Alternative 1'
,p_day_of_week_format=>'<th scope="col" valign="bottom" class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="CalendarAlternative1">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top" height="100" height="100">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="MonthTitle">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th scope="row" class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th scope="row" class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>'<table class="ListCalendarAlternateHolder" summary="" role="presentation"><tr><td class="MonthTitle">#LTITLE#</td></tr><tr><td><table class="ListCalendarAlternate" summary="#CALENDAR_TITLE# #LTITLE#">#DAYS#</td></tr></table>'''
,p_agenda_past_day_format=>'<tr> <th id="#MON#_#DD#_#YYYY#" colspan="2" class="PastDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_today_day_format=>'<tr>  <th  id="#MON#_#DD#_#YYYY#" colspan="2"  class="ToDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_future_day_format=>'<tr>   <th  id="#MON#_#DD#_#YYYY#" colspan="2" class="FutureDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_past_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="PastHour" >#TIME#</th><td class="PastDay" headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_today_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="TodayHour" >#TIME#</th><td class="ToDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_future_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="FutureHour" >#TIME#</th><td class="FutureDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>123
,p_theme_class_id=>2
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(49693379397170502)
,p_cal_template_name=>'Small Calendar'
,p_day_of_week_format=>'<th scope="col" class="day-of-week">#DY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="small-calendar-holder"> ',
' <tr>',
'   <td class="month-title">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="small-calendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>'))
,p_day_title_format=>'<div class="day-title">#DD#</div>'
,p_day_open_format=>'<td class="day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="weekend-day-title">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="weekend-day">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="non-day-title">#DD#</div>'
,p_nonday_open_format=>'<td class="non-day" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="SmallWeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="DayOfWeek">#DY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top"><div class="inner">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t1Today" valign="top"><div class="inner">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay"><div class="inner">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="DayOfWeek">#DY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th scope="row" class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>'<table class="ListCalendarSmallHolder" summary="" role="presentation"><tr><td class="MonthTitle">#LTITLE#</td></tr><tr><td><table class="ListCalendarSmall" summary="#CALENDAR_TITLE# #LTITLE#">#DAYS#</td></tr></table>'''
,p_agenda_past_day_format=>'<tr> <th id="#MON#_#DD#_#YYYY#" colspan="2" class="PastDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_today_day_format=>'<tr>  <th  id="#MON#_#DD#_#YYYY#" colspan="2"  class="ToDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_future_day_format=>'<tr>   <th  id="#MON#_#DD#_#YYYY#" colspan="2" class="FutureDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_past_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="PastHour" >#TIME#</th><td class="PastDay" headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_today_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="TodayHour" >#TIME#</th><td class="ToDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_future_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="FutureHour" >#TIME#</th><td class="FutureDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>123
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(7266120147954929)
,p_theme_id=>122
,p_theme_name=>'SafeGuardProperties'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(7257425144954817)
,p_error_template=>wwv_flow_api.id(7257005674954808)
,p_printer_friendly_template=>wwv_flow_api.id(7257624987954818)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(7256625864954788)
,p_default_button_template=>wwv_flow_api.id(7264825649954884)
,p_default_region_template=>wwv_flow_api.id(7260002088954843)
,p_default_chart_template=>wwv_flow_api.id(7259009288954842)
,p_default_form_template=>wwv_flow_api.id(7259102523954842)
,p_default_reportr_template=>wwv_flow_api.id(7260002088954843)
,p_default_tabform_template=>wwv_flow_api.id(7260002088954843)
,p_default_wizard_template=>wwv_flow_api.id(7260923330954844)
,p_default_menur_template=>wwv_flow_api.id(7258504016954842)
,p_default_listr_template=>wwv_flow_api.id(7258917485954842)
,p_default_irr_template=>wwv_flow_api.id(7259622417954843)
,p_default_report_template=>wwv_flow_api.id(7261620458954854)
,p_default_label_template=>wwv_flow_api.id(7264418669954883)
,p_default_menu_template=>wwv_flow_api.id(7265524102954900)
,p_default_calendar_template=>wwv_flow_api.id(7265705175954914)
,p_default_list_template=>wwv_flow_api.id(7263613547954876)
,p_default_option_label=>wwv_flow_api.id(7264418669954883)
,p_default_required_label=>wwv_flow_api.id(7264619968954883)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(122),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(49693686757170504)
,p_theme_id=>123
,p_theme_name=>'SafeGuard'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(49670770557170447)
,p_error_template=>wwv_flow_api.id(49669586834170443)
,p_printer_friendly_template=>wwv_flow_api.id(49671358513170449)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(49668485976170432)
,p_default_button_template=>wwv_flow_api.id(49691558293170497)
,p_default_region_template=>wwv_flow_api.id(49678584607170474)
,p_default_chart_template=>wwv_flow_api.id(49675583056170458)
,p_default_form_template=>wwv_flow_api.id(49675875816170458)
,p_default_reportr_template=>wwv_flow_api.id(49678584607170474)
,p_default_tabform_template=>wwv_flow_api.id(49678584607170474)
,p_default_wizard_template=>wwv_flow_api.id(49681263778170479)
,p_default_menur_template=>wwv_flow_api.id(49674087496170455)
,p_default_listr_template=>wwv_flow_api.id(49675275413170457)
,p_default_irr_template=>wwv_flow_api.id(49677356183170462)
,p_default_report_template=>wwv_flow_api.id(49683365444170483)
,p_default_label_template=>wwv_flow_api.id(49691184008170497)
,p_default_menu_template=>wwv_flow_api.id(49692956546170501)
,p_default_calendar_template=>wwv_flow_api.id(49693159762170501)
,p_default_list_template=>wwv_flow_api.id(49689375007170494)
,p_default_option_label=>wwv_flow_api.id(49691184008170497)
,p_default_required_label=>wwv_flow_api.id(49691366992170497)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(123),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(7270417531986092)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(15485302381326181)
,p_shortcut_name=>'OK_TO_GET_NEXT_PREV_PK_VALUE'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Are you sure you want to leave this page without saving?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(7266408148954965)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(15656200361222966)
,p_name=>'AD Security'
,p_scheme_type=>'NATIVE_LDAP'
,p_attribute_01=>'prod.local'
,p_attribute_02=>'389'
,p_attribute_03=>'NO_SSL'
,p_attribute_04=>'PROD\%LDAP_USER%'
,p_attribute_05=>'Y'
,p_attribute_08=>'STD'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(7266204635954931)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>123
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:175:&SESSION.'
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>true
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'NAVBAR'
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49668959098170441)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151111143756'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7268002550955024)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  PID  ',
'FROM BOFA_PRIVILEGES ',
'WHERE  UPPER(APEX_USER) = UPPER(:P175_USERNAME);'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15407410555651878)
,p_plug_name=>'Admin Tasks'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49676463238170460)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(15406816872634764)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(49689375007170494)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  PID  ',
'FROM BOFA_PRIVILEGES ',
'WHERE  UPPER(APEX_USER) = UPPER(:P175_USERNAME);'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15410516020747994)
,p_plug_name=>'Process Reports'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49676463238170460)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(15409803160715901)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(49689375007170494)
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  PID  ',
'FROM BOFA_PRIVILEGES ',
'WHERE  UPPER(APEX_USER) = UPPER(:P175_USERNAME);'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15414409468323238)
,p_plug_name=>'B of A Returns Status'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49676463238170460)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(15405401148545063)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(49689375007170494)
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  PID  ',
'FROM BOFA_PRIVILEGES ',
'WHERE  UPPER(APEX_USER) = UPPER(:P175_USERNAME);'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15622304887158765)
,p_plug_name=>'Application Maintenance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49676463238170460)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(15621601246119839)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(49689375007170494)
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15654609403178680)
,p_plug_name=>'Access Error'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49673480987170454)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19328312325405468)
,p_plug_name=>'Re-Bill Tasks'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49676463238170460)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(19327908338366494)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(49689375007170494)
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25094317201934901)
,p_plug_name=>'BOA File Watch Process'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49676463238170460)
,p_plug_display_sequence=>200
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(25092127627890545)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(49689375007170494)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26166705395662652)
,p_plug_name=>'BOA File Watch Process Menu'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49679160880170476)
,p_plug_display_sequence=>230
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26166902063671161)
,p_plug_name=>'File Watcher Logs'
,p_parent_plug_id=>wwv_flow_api.id(26166705395662652)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>240
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26167131152679600)
,p_plug_name=>'File Watcher Actions'
,p_parent_plug_id=>wwv_flow_api.id(26166705395662652)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>250
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26167407173691575)
,p_plug_name=>'File Watcher Process Setup'
,p_parent_plug_id=>wwv_flow_api.id(26166705395662652)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>260
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15654918932183990)
,p_name=>'P1_ACCESS_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15654609403178680)
,p_prompt=>'You are not an authorized user.  Please contact the application administrator for access.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  PID  ',
'FROM BOFA_PRIVILEGES ',
'WHERE  UPPER(APEX_USER) = UPPER(:P175_USERNAME) ',
'UNION',
'SELECT PID',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
''))
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please help me I have fallen and I can''t get up '
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26148109096694302)
,p_name=>'P1_MANAGE_PROCESS_FLOW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26167407173691575)
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;1'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="padding:0 0 0 0" '
,p_new_grid=>true
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26150221480840495)
,p_name=>'P1_MANAGE_OS_SCRIPTS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(26167407173691575)
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;1'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="padding:0px;" '
,p_new_grid=>true
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49690980370170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'HORIZONTAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26153122796873058)
,p_name=>'P1_MANAGE_PROCESS_FLOW_LABEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26167407173691575)
,p_prompt=>'Manage Process Flow'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'This option is used to setup and modify File Watch Process flows'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26154212648893011)
,p_name=>'P1_MANAGE_OS_SCRIPTS_LABEL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(26167407173691575)
,p_prompt=>' Manage O/S Programs'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="padding:0px" '
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'This provides a method of registering Unix scripts into the File Watch System.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26155719703965737)
,p_name=>'P1_FILE_PATTERNS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26167407173691575)
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;1'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49690980370170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26156114515983314)
,p_name=>'P1_FILE_PATTERN_LABEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26167407173691575)
,p_prompt=>'Manage File Patterns'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Used to register files to be loaded by the File Watch System'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26157717066027695)
,p_name=>'P1_MANAGE_SCHEMA_VARIABLES'
,p_item_sequence=>125
,p_item_plug_id=>wwv_flow_api.id(26167407173691575)
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;1'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49690980370170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26159205586093818)
,p_name=>'P1_MANAGE_SCHEMA_VARIABLES_LABEL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(26167407173691575)
,p_prompt=>'Manage Schema Variables'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Allows the user to create and modify variables used in the File Watch System'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26161710257182832)
,p_name=>'P1_RUN_UNIX_SCRIPT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(26167131152679600)
,p_prompt=>'Run Unix Script'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;1'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49690980370170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26162025988190726)
,p_name=>'P1_RUN_UNIX_SCRIPT_LABEL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(26167131152679600)
,p_prompt=>'Run Unix Script'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Provides the user the functionality of running ad hock UNIX scripts '
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26170611316799343)
,p_name=>'P1_VIEW_FILE_QUEUE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(26166902063671161)
,p_prompt=>'View File Queue'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;1'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(49690980370170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26170922518809295)
,p_name=>'P1_VIEW_FILE_WATCH_QUEUE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(26166902063671161)
,p_prompt=>'View File Watch Queue'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Displays the details of File Watch Process listed in the File Load Queue<br>',
'Allows user to request the status of a completed job.'))
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26171402880833592)
,p_name=>'P1_FILE_LOAD_QUEUE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(26166902063671161)
,p_prompt=>'File Load Queue'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;1'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(49690980370170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26171831323850818)
,p_name=>'P1_VIEW_FILE_LOAD_QUEUE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(26166902063671161)
,p_prompt=>'View File Load Queue'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Displays the latest status of a File Watch Process'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26172319665871381)
,p_name=>'P1_FILE_LISTING'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(26167131152679600)
,p_prompt=>'File Listing'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;1'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49690980370170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26172605215878126)
,p_name=>'P1_CREATE_FILE_LISTING'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(26167131152679600)
,p_prompt=>'Set File Listing'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Sets and displays a file listing for a list of Oracle Directories'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26172904759908703)
,p_name=>'P1_LIST_FILE_WATCHERS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(26166902063671161)
,p_prompt=>'List File Watchers'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;1'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(49690980370170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26173215530918878)
,p_name=>'P1_VIEW_FILE_WATCHERS'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(26166902063671161)
,p_prompt=>'View File Watchers'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Provides a list of all File Watchers and their status'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26173525222929693)
,p_name=>'P1_LOAD_LOGS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(26166902063671161)
,p_prompt=>'Load Logs'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;1'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(49690980370170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26173809479936930)
,p_name=>'P1_VIEW_LOAD_LOGS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(26166902063671161)
,p_prompt=>'View Load Logs'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Displays the three main audit tables.<br> The BOA Process log table: records any errors that may occur by the File Watch System.<br> The BOA Queue table: lists the status of files scheduled to be loaded.<br> The BOA Load table: provides the result of'
||' the load.  '
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26174615924964321)
,p_name=>'P1_MVC_LOADED_FILE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(26167131152679600)
,p_prompt=>'Mvc Loaded File'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;1'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(49690980370170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26174927126974318)
,p_name=>'P1_MOVE_LOADED_FILE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(26167131152679600)
,p_prompt=>'Move Loaded File'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Provides a method of removing failed or completed files out of the STAGE folder'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26175331427987502)
,p_name=>'P1_RESTART_LOAD_PROCESS'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(26167131152679600)
,p_prompt=>'Restart Load Process'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;1'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(49690980370170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26175613096995985)
,p_name=>'P1_RESTART_PROCESS'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(26167131152679600)
,p_prompt=>'Restart Process'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Sometimes it is easier to just restart a load process from the beginning. This provides a method of doing so.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26176222129022179)
,p_name=>'P1_FILE_WATCHER_LOGS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(26166902063671161)
,p_prompt=>'File Watcher Logs'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59547376635485743)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26177524273036381)
,p_name=>'P1_FILE_WATCHER_ACTIONS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(26167131152679600)
,p_prompt=>'File Watcher Actions'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59547376635485743)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26178826633050458)
,p_name=>'P1_FILE_WATCHER_SETUP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26167407173691575)
,p_prompt=>'File Watcher Setup'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59547376635485743)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26180228537095159)
,p_name=>'P1_BOA_FILE_WATCH_MENUS'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(26166705395662652)
,p_prompt=>'Bank Of America File Watch System'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59547376635485743)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26149429807813573)
,p_name=>'Manage Process Flow'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_MANAGE_PROCESS_FLOW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26149725873813584)
,p_event_id=>wwv_flow_api.id(26149429807813573)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_MANAGE_PROCESS_FLOW'
,p_attribute_01=>'javascript:redirect(''f?p=&APP_ID.:45:&SESSION.::NO:::'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26152213381998144)
,p_name=>'MANAGE_OS_SCRIPTS'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_MANAGE_OS_SCRIPTS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26152527357998147)
,p_event_id=>wwv_flow_api.id(26152213381998144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_MANAGE_OS_SCRIPTS'
,p_attribute_01=>'javascript:redirect(''f?p=&APP_ID.:51:&SESSION.::NO:::'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26180710345146719)
,p_name=>'View File Watch Queue'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_VIEW_FILE_QUEUE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26181032417146722)
,p_event_id=>wwv_flow_api.id(26180710345146719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_VIEW_FILE_QUEUE'
,p_attribute_01=>'javascript:redirect(''f?p=&APP_ID.:65:&SESSION.::NO:::'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26181209353174818)
,p_name=>'View File LOAD Queue'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_FILE_LOAD_QUEUE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26181505345174831)
,p_event_id=>wwv_flow_api.id(26181209353174818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_FILE_LOAD_QUEUE'
,p_attribute_01=>'javascript:redirect(''f?p=&APP_ID.:66:&SESSION.::NO:::'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26182907069259289)
,p_name=>'GO_TO_FILE_WATCHERS'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_LIST_FILE_WATCHERS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26183202650259289)
,p_event_id=>wwv_flow_api.id(26182907069259289)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:redirect(''f?p=&APP_ID.:75:&SESSION.::NO:::'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26183307546268923)
,p_name=>'GO_TO_LOGS'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_LOAD_LOGS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26183603314268927)
,p_event_id=>wwv_flow_api.id(26183307546268923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:redirect(''f?p=&APP_ID.:80:&SESSION.::NO:::'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26183815296280561)
,p_name=>'RUN_SCRIPT'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_RUN_UNIX_SCRIPT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26184125626280562)
,p_event_id=>wwv_flow_api.id(26183815296280561)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:redirect(''f?p=&APP_ID.:60:&SESSION.::NO:::'');'
,p_stop_execution_on_error=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26184209194288268)
,p_name=>'GO_TO_FILE_LIST'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_FILE_LISTING'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26184517625288269)
,p_event_id=>wwv_flow_api.id(26184209194288268)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:redirect(''f?p=&APP_ID.:46:&SESSION.::NO:::'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26184606901297150)
,p_name=>'MOVE_THE_FILE'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_MVC_LOADED_FILE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26184931886297150)
,p_event_id=>wwv_flow_api.id(26184606901297150)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:redirect(''f?p=&APP_ID.:85:&SESSION.::NO:::'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26185205870722644)
,p_name=>'restart'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_RESTART_LOAD_PROCESS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26185516572722656)
,p_event_id=>wwv_flow_api.id(26185205870722644)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:redirect(''f?p=&APP_ID.:81:&SESSION.::NO:::'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26185613274734217)
,p_name=>'go_file_pattern'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_FILE_PATTERNS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26185916008734218)
,p_event_id=>wwv_flow_api.id(26185613274734217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:redirect(''f?p=&APP_ID.:53:&SESSION.::NO:::'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26186006479741723)
,p_name=>'Go_to_schema_var'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_MANAGE_SCHEMA_VARIABLES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26186327790741724)
,p_event_id=>wwv_flow_api.id(26186006479741723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:redirect(''f?p=&APP_ID.:48:&SESSION.::NO:::'');'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'Manage Privileges'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage Privileges'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(49668681657170433)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150210125033'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7272019671986120)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11239020236302653)
,p_name=>'Manage Privileges'
,p_template=>wwv_flow_api.id(49678584607170474)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_04'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"PID",',
'"PID" PID_DISPLAY,',
'"APEX_USER",',
'"FIRST_NAME",',
'"LAST_NAME",',
'"MANAGER",',
'"SGP_ID",',
'"EMAILADDRESS",',
'"EMAIL_SENT",',
'"WORK_TABLE",',
'"WORKSPACE"',
'from "#OWNER#"."BOFA_PRIVILEGES"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11241824377302658)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11239325427302655)
,p_query_column_id=>2
,p_column_alias=>'PID'
,p_column_display_sequence=>2
,p_column_heading=>'Pid'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOFA_PRIVILEGES'
,p_ref_column_name=>'PID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11239402153302655)
,p_query_column_id=>3
,p_column_alias=>'PID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Sys ID'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOFA_PRIVILEGES'
,p_ref_column_name=>'PID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11239515671302655)
,p_query_column_id=>4
,p_column_alias=>'APEX_USER'
,p_column_display_sequence=>4
,p_column_heading=>'Apex User'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>20
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOFA_PRIVILEGES'
,p_ref_column_name=>'APEX_USER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11239617211302655)
,p_query_column_id=>5
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'First Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOFA_PRIVILEGES'
,p_ref_column_name=>'FIRST_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11239703926302655)
,p_query_column_id=>6
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Last Name'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOFA_PRIVILEGES'
,p_ref_column_name=>'LAST_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11239820699302655)
,p_query_column_id=>7
,p_column_alias=>'MANAGER'
,p_column_display_sequence=>7
,p_column_heading=>'Manager'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(16100004046559910)
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOFA_PRIVILEGES'
,p_ref_column_name=>'MANAGER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11239923661302655)
,p_query_column_id=>8
,p_column_alias=>'SGP_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Safeguard ID'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOFA_PRIVILEGES'
,p_ref_column_name=>'SGP_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11240021083302655)
,p_query_column_id=>9
,p_column_alias=>'EMAILADDRESS'
,p_column_display_sequence=>9
,p_column_heading=>'Emailaddress'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>40
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOFA_PRIVILEGES'
,p_ref_column_name=>'EMAILADDRESS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16096709289453796)
,p_query_column_id=>10
,p_column_alias=>'EMAIL_SENT'
,p_column_display_sequence=>11
,p_column_heading=>'Email Option'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(16098329495529439)
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'Select option'
,p_lov_null_value=>'0'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11240125508302655)
,p_query_column_id=>11
,p_column_alias=>'WORK_TABLE'
,p_column_display_sequence=>10
,p_column_heading=>'Work Table'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOFA_PRIVILEGES'
,p_ref_column_name=>'WORK_TABLE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22184310658956907)
,p_query_column_id=>12
,p_column_alias=>'WORKSPACE'
,p_column_display_sequence=>12
,p_column_heading=>'Workspace'
,p_use_as_row_header=>'N'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11240210924302656)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11239020236302653)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11240406474302656)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11239020236302653)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11240325119302656)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11239020236302653)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Submit'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11240525856302656)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(11239020236302653)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Add Row'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7271718307986111)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11241926728302658)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11241319397302657)
,p_tabular_form_region_id=>wwv_flow_api.id(11239020236302653)
,p_validation_name=>'MANAGER must be numeric'
,p_validation_sequence=>60
,p_validation=>'MANAGER'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(11240325119302656)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'MANAGER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11241401900302657)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11239020236302653)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'BOFA_PRIVILEGES'
,p_attribute_03=>'PID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11240325119302656)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11241624576302658)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11239020236302653)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'BOFA_PRIVILEGES'
,p_attribute_03=>'PID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'News Alerts'
,p_page_mode=>'NORMAL'
,p_step_title=>'News Alerts'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141128080225'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11228318131197059)
,p_name=>'NewsAlerts'
,p_template=>wwv_flow_api.id(49673783807170455)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"APPL",',
'"ENTRY_DT",',
'"ENTRY_INFO"',
'from "#OWNER#"."NEWS_ALERTS"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11230611431197069)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11228628094197061)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'RDM'
,p_ref_table_name=>'NEWS_ALERTS'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11228713768197061)
,p_query_column_id=>3
,p_column_alias=>'APPL'
,p_column_display_sequence=>3
,p_column_heading=>'Appl'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'RDM'
,p_ref_table_name=>'NEWS_ALERTS'
,p_ref_column_name=>'APPL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11228826753197061)
,p_query_column_id=>4
,p_column_alias=>'ENTRY_DT'
,p_column_display_sequence=>4
,p_column_heading=>'Entry Dt'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'RDM'
,p_ref_table_name=>'NEWS_ALERTS'
,p_ref_column_name=>'ENTRY_DT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11228906134197061)
,p_query_column_id=>5
,p_column_alias=>'ENTRY_INFO'
,p_column_display_sequence=>5
,p_column_heading=>'Entry Info'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>100
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'RDM'
,p_ref_table_name=>'NEWS_ALERTS'
,p_ref_column_name=>'ENTRY_INFO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11231022485197071)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11229018110197064)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11228318131197059)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11229213765197064)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11228318131197059)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11229125669197064)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11228318131197059)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Submit'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11229317171197064)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(11228318131197059)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Add Row'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11230708790197069)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(11230120592197067)
,p_tabular_form_region_id=>wwv_flow_api.id(11228318131197059)
,p_validation_name=>'ENTRY_DT must be a valid date'
,p_validation_sequence=>30
,p_validation=>'ENTRY_DT'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(11229125669197064)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'ENTRY_DT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11230201003197068)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11228318131197059)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NEWS_ALERTS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11229125669197064)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11230427345197068)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11228318131197059)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NEWS_ALERTS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Client Log'
,p_page_mode=>'NORMAL'
,p_step_title=>'Client Log'
,p_step_sub_title=>'Client Log'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141128080329'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2253021986881701)
,p_plug_name=>'Client Log'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT process, sub_process, entrydte, rowcounts, message',
'from(',
'SELECT process, sub_process, entrydte, rowcounts, message',
' FROM BOA_PROCESS_LOG)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(2253120228881701)
,p_name=>'Client Log'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>2253120228881701
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2253311511881722)
,p_db_column_name=>'PROCESS'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Process'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2253418391881725)
,p_db_column_name=>'SUB_PROCESS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sub Process'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUB_PROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2253500566881726)
,p_db_column_name=>'ENTRYDTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Entry Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRYDTE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2253625095881726)
,p_db_column_name=>'ROWCOUNTS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Record Count'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'ROWCOUNTS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2253729705881726)
,p_db_column_name=>'MESSAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Message'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MESSAGE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2253826954881977)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'22539'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROCESS:SUB_PROCESS:ENTRYDTE:ROWCOUNTS:MESSAGE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15411731089790247)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Server Log'
,p_page_mode=>'NORMAL'
,p_step_title=>'Server Log'
,p_step_sub_title=>'Server Log'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141128080411'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2262709908278466)
,p_plug_name=>'Server Log'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select VW_SERVER_PROCESS_LOG.PROCESS as PROCESS,',
'    VW_SERVER_PROCESS_LOG.SUB_PROCESS as SUB_PROCESS,',
'    VW_SERVER_PROCESS_LOG.ENTRYDTE as ENTRYDTE,',
'    VW_SERVER_PROCESS_LOG.ROWCOUNTS as ROWCOUNTS,',
'    VW_SERVER_PROCESS_LOG.MESSAGE as MESSAGE ',
' from VW_SERVER_PROCESS_LOG VW_SERVER_PROCESS_LOG'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(2262818020278466)
,p_name=>'Server Log'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>2262818020278466
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2263031388278480)
,p_db_column_name=>'PROCESS'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Process'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2263121721278483)
,p_db_column_name=>'SUB_PROCESS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sub Process'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUB_PROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2263201640278483)
,p_db_column_name=>'ENTRYDTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'&nbsp;&nbsp;&nbsp;&nbsp;Entry Date&nbsp;&nbsp;&nbsp;&nbsp;'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRYDTE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2263331819278483)
,p_db_column_name=>'ROWCOUNTS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Records loaded'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'ROWCOUNTS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2263409604278484)
,p_db_column_name=>'MESSAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Message'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MESSAGE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2263506799280468)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'22636'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROCESS:SUB_PROCESS:ENTRYDTE:ROWCOUNTS:MESSAGE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15412709881803008)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'Report 1'
,p_page_mode=>'NORMAL'
,p_step_title=>'Report 1'
,p_step_sub_title=>'Report 1'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140516131519'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2853414503155601)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT A.WORK_ORDER, A.TRANKY,A.ENTRYDT,A.CREATED_BY,A.CATEGORY,A.COMMENTS, CASE WHEN B.WORK_ORDER IS NOT NULL THEN ''YES'' ELSE ''NO'' END AS FEES_FLAG, CASE WHEN C.WORK_ORDER IS NOT NULL THEN ''YES'' ELSE ''NO'' END AS RETURN_FLAG ',
'FROM RDM.BOA_BILLABLE_WO_UNQ A',
'LEFT JOIN (SELECT WORK_ORDER,DONE_CD FROM  RDM.BOA_FEES_SENT ) B ON (A.WORK_ORDER = B.WORK_ORDER) ',
'LEFT JOIN (SELECT WORK_ORDER,DONE_CD FROM  RDM.BOA_FEES_RETURNED ) C ON (A.WORK_ORDER = C.WORK_ORDER) ',
'WHERE C.WORK_ORDER IS NULL',
' AND  B.WORK_ORDER IS NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(2853508884155601)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'CGARDNER'
,p_internal_uid=>2853508884155601
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2853716718155625)
,p_db_column_name=>'WORK_ORDER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2853821145155627)
,p_db_column_name=>'TRANKY'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tranky'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRANKY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2853932536155628)
,p_db_column_name=>'ENTRYDT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Entrydt'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRYDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2854016806155628)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2854114667155628)
,p_db_column_name=>'CATEGORY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2854213787155628)
,p_db_column_name=>'COMMENTS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Comments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2854302459155630)
,p_db_column_name=>'FEES_FLAG'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Fees Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FEES_FLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2854400563155630)
,p_db_column_name=>'RETURN_FLAG'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Return Flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RETURN_FLAG'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2854523213157779)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'28546'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'WORK_ORDER:TRANKY:ENTRYDT:CREATED_BY:CATEGORY:COMMENTS:FEES_FLAG:RETURN_FLAG'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'boa_files'
,p_page_mode=>'NORMAL'
,p_step_title=>'boa_files'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140317084251'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(2557120254211493)
,p_name=>'Tabular Form'
,p_template=>wwv_flow_api.id(49678584607170474)
,p_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'"PID",',
'"PID" PID_DISPLAY,',
'"CLIENT",',
'"FILE_NAME",',
'"RECORDCNT",',
'"ENTRY_DATE",',
'"COMMENTS"',
'from "#OWNER#"."BOA_FILES"',
''))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2559927443211542)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2557408475211512)
,p_query_column_id=>2
,p_column_alias=>'PID'
,p_column_display_sequence=>2
,p_column_heading=>'Pid'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOA_FILES'
,p_ref_column_name=>'PID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2557523892211516)
,p_query_column_id=>3
,p_column_alias=>'PID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Pid'
,p_disable_sort_column=>'N'
,p_column_width=>16
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOA_FILES'
,p_ref_column_name=>'PID_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2557620892211516)
,p_query_column_id=>4
,p_column_alias=>'CLIENT'
,p_column_display_sequence=>4
,p_column_heading=>'Client'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOA_FILES'
,p_ref_column_name=>'CLIENT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2557705700211516)
,p_query_column_id=>5
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'File Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>50
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOA_FILES'
,p_ref_column_name=>'FILE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2557812120211516)
,p_query_column_id=>6
,p_column_alias=>'RECORDCNT'
,p_column_display_sequence=>6
,p_column_heading=>'Record count'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOA_FILES'
,p_ref_column_name=>'RECORDCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2557915608211516)
,p_query_column_id=>7
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Entry Date'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOA_FILES'
,p_ref_column_name=>'ENTRY_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2558003701211516)
,p_query_column_id=>8
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>8
,p_column_heading=>'Comments'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'RDM'
,p_ref_table_name=>'BOA_FILES'
,p_ref_column_name=>'COMMENTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2558417325211522)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(2557120254211493)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2558227459211522)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(2557120254211493)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2558122982211522)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2557120254211493)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2558315419211522)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2557120254211493)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2560022640211542)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(2559221765211533)
,p_tabular_form_region_id=>wwv_flow_api.id(2557120254211493)
,p_validation_name=>'RECORDCNT must be numeric'
,p_validation_sequence=>50
,p_validation=>'RECORDCNT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(2558227459211522)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'RECORDCNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(2559402815211539)
,p_tabular_form_region_id=>wwv_flow_api.id(2557120254211493)
,p_validation_name=>'ENTRY_DATE must be a valid date'
,p_validation_sequence=>60
,p_validation=>'ENTRY_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(2558227459211522)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'ENTRY_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2559505851211539)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(2557120254211493)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'BOA_FILES'
,p_attribute_03=>'PID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2558227459211522)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2559720090211542)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(2557120254211493)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'BOA_FILES'
,p_attribute_03=>'PID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'boa_fees_returned'
,p_page_mode=>'NORMAL'
,p_step_title=>'boa_fees_returned'
,p_step_sub_title=>'boa_fees_returned'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140801135915'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2560902038940582)
,p_plug_name=>'BOA_FEES_RETURNED'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT WORK_ORDER AS SEARCH, TRANSACTION_TYPE, TRANID, WORK_ORDER, DONE_CD, ORDER_DT, TRANKY, ERROR_CODE, ERROR_MESSAGE, FILE_NAME',
'FROM BOA_FEES_RETURNED',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(2561011967940582)
,p_name=>'BOA_FEES_RETURNED'
,p_max_row_count=>'100000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>2561011967940582
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2561209097940592)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Transaction Type'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2561313266940599)
,p_db_column_name=>'TRANID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tranid'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRANID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2561412871940600)
,p_db_column_name=>'WORK_ORDER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2561506942940600)
,p_db_column_name=>'DONE_CD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Done Cd'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DONE_CD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2561627528940600)
,p_db_column_name=>'ORDER_DT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Order Dt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_DT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2561721664940600)
,p_db_column_name=>'TRANKY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Tranky'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRANKY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2561822990940600)
,p_db_column_name=>'ERROR_CODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Error Code'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ERROR_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2561902098940600)
,p_db_column_name=>'ERROR_MESSAGE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Error Message'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ERROR_MESSAGE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2577506995697889)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'File Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15418705420807639)
,p_db_column_name=>'SEARCH'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Search'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SEARCH'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2562630633942119)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25627'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRANSACTION_TYPE:TRANID:WORK_ORDER:DONE_CD:ORDER_DT:TRANKY:ERROR_CODE:ERROR_MESSAGE:FILE_NAME:SEARCH'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2578230252816287)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Count by file name'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'25783'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRANSACTION_TYPE:TRANID:WORK_ORDER:DONE_CD:ORDER_DT:TRANKY:ERROR_CODE:ERROR_MESSAGE:FILE_NAME:SEARCH'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(2578413797816288)
,p_report_id=>wwv_flow_api.id(2578230252816287)
,p_group_by_columns=>'FILE_NAME'
,p_function_01=>'COUNT'
,p_function_column_01=>'FILE_NAME'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'FILES'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2591310941542025)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Order date by File'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'25914'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRANSACTION_TYPE:TRANID:WORK_ORDER:DONE_CD:ORDER_DT:TRANKY:ERROR_CODE:ERROR_MESSAGE:FILE_NAME:SEARCH'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(2591527053542026)
,p_report_id=>wwv_flow_api.id(2591310941542025)
,p_group_by_columns=>'FILE_NAME:ORDER_DT'
,p_function_01=>'COUNT'
,p_function_column_01=>'ORDER_DT'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'ORDER_DT'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2670428484125381)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Reject Reasons'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'26705'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRANSACTION_TYPE:TRANID:WORK_ORDER:DONE_CD:ORDER_DT:TRANKY:ERROR_CODE:ERROR_MESSAGE:FILE_NAME:SEARCH'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(2670604145125384)
,p_report_id=>wwv_flow_api.id(2670428484125381)
,p_group_by_columns=>'ERROR_MESSAGE'
,p_function_01=>'COUNT'
,p_function_column_01=>'ERROR_MESSAGE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Reject reasons'
,p_function_sum_01=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3061102252308237)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'count of order date'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'30612'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRANSACTION_TYPE:TRANID:WORK_ORDER:DONE_CD:ORDER_DT:TRANKY:ERROR_CODE:ERROR_MESSAGE:FILE_NAME:SEARCH'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(3061310116308241)
,p_report_id=>wwv_flow_api.id(3061102252308237)
,p_group_by_columns=>'ORDER_DT'
,p_function_01=>'COUNT'
,p_function_column_01=>'ORDER_DT'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_sort_column_01=>'ORDER_DT'
,p_sort_direction_01=>'DESC'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'boa_fees_sent'
,p_page_mode=>'NORMAL'
,p_step_title=>'boa_fees_sent'
,p_step_sub_title=>'boa_fees_sent'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141128081012'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2579811322521953)
,p_plug_name=>'boa_fees_sent'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT * from boa_fees_sent',
'WHERE WORK_ORDER = :P9_WORK_ORDER',
' AND  DONE_CD    = :P9_PUNCH_CODE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(2579927521521953)
,p_name=>'boa_fees_sent'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>2579927521521953
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2580129968521958)
,p_db_column_name=>'TRANID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tranid'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRANID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2580218385521959)
,p_db_column_name=>'WORK_ORDER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2580312460521959)
,p_db_column_name=>'DONE_CD'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Done Cd'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DONE_CD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2580420166521959)
,p_db_column_name=>'ORDER_DT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Order Dt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_DT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2580504373521959)
,p_db_column_name=>'LOAN'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Loan'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2580615563521959)
,p_db_column_name=>'SENTDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Sentdate'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SENTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2580722802521959)
,p_db_column_name=>'TRANCODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Trancode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRANCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2580802019521959)
,p_db_column_name=>'PRICE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Price'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2580908332521960)
,p_db_column_name=>'FIELD6'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Field6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2581020750521960)
,p_db_column_name=>'FIELD7'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Field7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2581123127521960)
,p_db_column_name=>'FIELD8'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Field8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2581211060521960)
,p_db_column_name=>'FIELD9'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Field9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2581326739521960)
,p_db_column_name=>'FIELD10'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Field10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2581430701521960)
,p_db_column_name=>'FIELD11'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Field11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2581517887521960)
,p_db_column_name=>'WT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Wt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2581608735521961)
,p_db_column_name=>'SWT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Swt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SWT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2581715455521961)
,p_db_column_name=>'PRICEPER'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Priceper'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRICEPER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2581801720521961)
,p_db_column_name=>'QTY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Qty'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'QTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2581920932521961)
,p_db_column_name=>'UOM'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Uom'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UOM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2582025060521961)
,p_db_column_name=>'SERVICEID'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Serviceid'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SERVICEID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2582125490521961)
,p_db_column_name=>'ZIP'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Zip'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ZIP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2582211146521961)
,p_db_column_name=>'PID'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2582306424521962)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'File Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15413915989271026)
,p_db_column_name=>'YEARMO'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Yearmo'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'YEARMO'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2582428997525467)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25825'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRANID:WORK_ORDER:DONE_CD:ORDER_DT:LOAN:SENTDATE:TRANCODE:PRICE:FIELD6:FIELD7:FIELD8:FIELD9:FIELD10:FIELD11:WT:SWT:PRICEPER:QTY:UOM:SERVICEID:ZIP:PID:FILE_NAME:YEARMO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2648902733636551)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'count by file'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'26490'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRANID:WORK_ORDER:DONE_CD:ORDER_DT:LOAN:SENTDATE:TRANCODE:PRICE:FIELD6:FIELD7:FIELD8:FIELD9:FIELD10:FIELD11:WT:SWT:PRICEPER:QTY:UOM:SERVICEID:ZIP:PID:FILE_NAME:YEARMO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(2649110204636555)
,p_report_id=>wwv_flow_api.id(2648902733636551)
,p_group_by_columns=>'FILE_NAME'
,p_function_01=>'COUNT'
,p_function_column_01=>'FILE_NAME'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'count by file'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_sort_column_01=>'FILE_NAME'
,p_sort_direction_01=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15463928049082064)
,p_plug_name=>'WORK ORDER /  PUNCH CODE'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674377654170455)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15465413307238684)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15464209648089296)
,p_name=>'P9_WORK_ORDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15463928049082064)
,p_prompt=>'Work Order'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15464401885092889)
,p_name=>'P9_PUNCH_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15463928049082064)
,p_prompt=>'Punch Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'BOA Return Data Errors'
,p_page_mode=>'NORMAL'
,p_step_title=>'BOA Return Data Errors'
,p_step_sub_title=>'BOA Return Data Errors'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141128080451'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15401424218406293)
,p_plug_name=>'BOA Return Data Errors'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'select * from BOA_FEES_RETURNED_W_ERRORS'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(15401508010406293)
,p_name=>'BOA Return Data Errors'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'CGARDNER'
,p_internal_uid=>15401508010406293
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15401716249406307)
,p_db_column_name=>'TRANSACTION_TYPE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Transaction Type'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15401815443406311)
,p_db_column_name=>'TRANID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tranid'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRANID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15401915368406311)
,p_db_column_name=>'WORK_ORDER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15402030618406311)
,p_db_column_name=>'DONE_CD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Done Cd'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DONE_CD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15402132726406311)
,p_db_column_name=>'ORDER_DT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Order Dt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORDER_DT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15402232513406311)
,p_db_column_name=>'TRANKY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Tranky'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRANKY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15402313468406311)
,p_db_column_name=>'ERROR_CODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Error Code'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ERROR_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15402416403406311)
,p_db_column_name=>'ERROR_MESSAGE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Error Message'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ERROR_MESSAGE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15402509999406311)
,p_db_column_name=>'RESOLVED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Resolved'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'RESOLVED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15402607785406311)
,p_db_column_name=>'RESEARCHING'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Researching'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'RESEARCHING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15402726242406311)
,p_db_column_name=>'RESENT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Resent'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'RESENT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15402827467406312)
,p_db_column_name=>'DEV'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Dev'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DEV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15402916160406312)
,p_db_column_name=>'BILLED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Billed'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'BILLED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15403001082406312)
,p_db_column_name=>'PID'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15403123819406312)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'File Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILE_NAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15403214074406902)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'154033'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRANSACTION_TYPE:TRANID:WORK_ORDER:DONE_CD:ORDER_DT:TRANKY:ERROR_CODE:ERROR_MESSAGE:RESOLVED:RESEARCHING:RESENT:DEV:BILLED:PID:FILE_NAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15414805097331490)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'Returns due in '
,p_page_mode=>'NORMAL'
,p_step_title=>'Returns due in '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49669859953170444)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140804163602'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(2583206814717755)
,p_name=>'Returns Status'
,p_template=>wwv_flow_api.id(49678584607170474)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_04'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'WITH RETURNED_DATES AS ',
'(',
'SELECT  R.TRANID, R.TRANKY, R.ERROR_CODE, R.ERROR_MESSAGE, R.PID,R.REJECTED',
'FROM (',
'SELECT  TRANID, TRANKY, ERROR_CODE, ERROR_MESSAGE, PID, ',
'       ( CASE WHEN SUBSTR(TRANKY,1,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') AND ERROR_CODE = 0 THEN ''N'' ELSE ''Y'' END) AS REJECTED, ',
'         RANK () OVER ( PARTITION BY TRIM(TRANID) ORDER BY (CASE WHEN SUBSTR(TRANKY,1,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') AND ERROR_CODE = 0 THEN ''N'' ELSE ''Y'' END), ROWNUM ) RK  ',
'        FROM RDM.BOA_FEES_RETURNED) R',
'WHERE R.RK = 1 ',
')',
'SELECT T.edit, T.CLIENT, T.FILE_NAME, T.ENTRY_DATE, T.RECORDCNT, T.RETURN_STATUS, T.REJECTED, T.CNT',
'from (SELECT S.edit, S.CLIENT, S.FILE_NAME, S.ENTRY_DATE, S.RECORDCNT,S.RETURN_STATUS, S.REJECTED, S.CNT, substr(s.dates,5,4)||substr(s.dates,1,4) yyyymmdd, s.dates',
'FROM (',
'  SELECT A.file_name as edit,  A.CLIENT, A.FILE_NAME, A.ENTRY_DATE, A.RECORDCNT, D.RETURN_STATUS, D.REJECTED, D.CNT, CASE WHEN A.FILE_NAME LIKE ''SGP_FEES%'' THEN SUBSTR(A.FILE_NAME,10) ELSE SUBSTR(A.FILE_NAME,18) END AS DATES  ',
'  FROM RDM.BOA_FILES a',
'  LEFT JOIN (',
'             select G.PID, G.RETURN_STATUS, G.REJECTED, COUNT(*) AS CNT',
'              from (   ',
'                    SELECT P.PID, ( CASE WHEN B.TRANID IS NOT NULL THEN ''IN'' ELSE ''OUT'' END )  RETURN_STATUS, CASE WHEN B.REJECTED IS NULL THEN ''U'' ELSE B.REJECTED END REJECTED ',
'                      FROM RDM.BOA_FEES_SENT P',
'                      LEFT JOIN ( SELECT TRANID, TRANKY, ERROR_CODE, ERROR_MESSAGE, PID, REJECTED ',
'                                   FROM RETURNED_DATES ) B ',
'                          ON ( TRIM(B.TRANID) = TRIM(P.TRANID) )',
'                     ) G',
'              GROUP BY G.PID, G.RETURN_STATUS, G.REJECTED ) D        ',
'             ON (D.PID = A.PID) ',
' WHERE (D.PID = A.PID) ) S ) T',
' WHERE T.YYYYMMDD BETWEEN :P11_BEGIN_DATE AND :P11_END_DATE',
' ORDER BY T.dates                 ',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P11_BEGIN_DATE,P11_END_DATE'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3117027747334040)
,p_query_column_id=>1
,p_column_alias=>'EDIT'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_FILE_NAME,P13_REJ_NY:#EDIT#,#REJECTED#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3117118077334040)
,p_query_column_id=>2
,p_column_alias=>'CLIENT'
,p_column_display_sequence=>2
,p_column_heading=>'Client'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3117218755334040)
,p_query_column_id=>3
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'File Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3117317170334040)
,p_query_column_id=>4
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Entry Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3117407163334040)
,p_query_column_id=>5
,p_column_alias=>'RECORDCNT'
,p_column_display_sequence=>5
,p_column_heading=>'Recordcnt'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3117502014334041)
,p_query_column_id=>6
,p_column_alias=>'RETURN_STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Return Status'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3117606153334041)
,p_query_column_id=>7
,p_column_alias=>'REJECTED'
,p_column_display_sequence=>7
,p_column_heading=>'Rejected'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3117729419334041)
,p_query_column_id=>8
,p_column_alias=>'CNT'
,p_column_display_sequence=>8
,p_column_heading=>'Cnt'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3107630217049962)
,p_plug_name=>'Date Range'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3117828428345556)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3107630217049962)
,p_button_name=>'P11_SUBMIT'
,p_button_static_id=>'P11_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692582099170501)
,p_button_image_alt=>'Submit'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3107929432057203)
,p_name=>'P11_BEGIN_DATE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3107630217049962)
,p_prompt=>'Begin Date'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'WITH DATE_RANGE AS ( SELECT TO_CHAR(SYSDATE - ROWNUM,''YYYYMMDD'') DATES',
'                     FROM   dual',
'                     CONNECT BY ROWNUM <= 60',
'                     )',
'             SELECT DATES D, DATES R ',
'             FROM   DATE_RANGE;'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3108117786062538)
,p_name=>'P11_END_DATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3107630217049962)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'WITH DATE_RANGE AS ( SELECT TO_CHAR(SYSDATE - ROWNUM,''YYYYMMDD'') DATES',
'                     FROM   dual',
'                     CONNECT BY ROWNUM <= 60',
'                     )',
'             SELECT DATES D, DATES R ',
'             FROM   DATE_RANGE;',
''))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'fees_by_workorder'
,p_page_mode=>'NORMAL'
,p_step_title=>'fees_by_workorder'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49669859953170444)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140318085306'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(2586028968998513)
,p_name=>'FeesByWorkOrder'
,p_template=>wwv_flow_api.id(49678584607170474)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_04'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT * ',
'from boa_fees_sent',
'where work_order = :P12_Work_order'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2586320360998520)
,p_query_column_id=>1
,p_column_alias=>'TRANID'
,p_column_display_sequence=>1
,p_column_heading=>'TRANID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2586419732998522)
,p_query_column_id=>2
,p_column_alias=>'WORK_ORDER'
,p_column_display_sequence=>2
,p_column_heading=>'WORK_ORDER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2586526072998522)
,p_query_column_id=>3
,p_column_alias=>'DONE_CD'
,p_column_display_sequence=>3
,p_column_heading=>'DONE_CD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2586629385998522)
,p_query_column_id=>4
,p_column_alias=>'ORDER_DT'
,p_column_display_sequence=>4
,p_column_heading=>'ORDER_DT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2586714181998522)
,p_query_column_id=>5
,p_column_alias=>'LOAN'
,p_column_display_sequence=>5
,p_column_heading=>'LOAN'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2586803691998522)
,p_query_column_id=>6
,p_column_alias=>'SENTDATE'
,p_column_display_sequence=>6
,p_column_heading=>'SENTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2586900534998522)
,p_query_column_id=>7
,p_column_alias=>'TRANCODE'
,p_column_display_sequence=>7
,p_column_heading=>'TRANCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2587019340998522)
,p_query_column_id=>8
,p_column_alias=>'PRICE'
,p_column_display_sequence=>8
,p_column_heading=>'PRICE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2587110679998522)
,p_query_column_id=>9
,p_column_alias=>'FIELD6'
,p_column_display_sequence=>9
,p_column_heading=>'FIELD6'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2587220032998522)
,p_query_column_id=>10
,p_column_alias=>'FIELD7'
,p_column_display_sequence=>10
,p_column_heading=>'FIELD7'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2587313191998522)
,p_query_column_id=>11
,p_column_alias=>'FIELD8'
,p_column_display_sequence=>11
,p_column_heading=>'FIELD8'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2587404084998522)
,p_query_column_id=>12
,p_column_alias=>'FIELD9'
,p_column_display_sequence=>12
,p_column_heading=>'FIELD9'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2587529556998522)
,p_query_column_id=>13
,p_column_alias=>'FIELD10'
,p_column_display_sequence=>13
,p_column_heading=>'FIELD10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2587600572998522)
,p_query_column_id=>14
,p_column_alias=>'FIELD11'
,p_column_display_sequence=>14
,p_column_heading=>'FIELD11'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2587719632998522)
,p_query_column_id=>15
,p_column_alias=>'WT'
,p_column_display_sequence=>15
,p_column_heading=>'WT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2587817086998522)
,p_query_column_id=>16
,p_column_alias=>'SWT'
,p_column_display_sequence=>16
,p_column_heading=>'SWT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2587924996998523)
,p_query_column_id=>17
,p_column_alias=>'PRICEPER'
,p_column_display_sequence=>17
,p_column_heading=>'PRICEPER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2588031358998523)
,p_query_column_id=>18
,p_column_alias=>'QTY'
,p_column_display_sequence=>18
,p_column_heading=>'QTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2588130580998523)
,p_query_column_id=>19
,p_column_alias=>'UOM'
,p_column_display_sequence=>19
,p_column_heading=>'UOM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2588206207998523)
,p_query_column_id=>20
,p_column_alias=>'SERVICEID'
,p_column_display_sequence=>20
,p_column_heading=>'SERVICEID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2588314217998523)
,p_query_column_id=>21
,p_column_alias=>'ZIP'
,p_column_display_sequence=>21
,p_column_heading=>'ZIP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2588416562998523)
,p_query_column_id=>22
,p_column_alias=>'PID'
,p_column_display_sequence=>22
,p_column_heading=>'PID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2588528127998523)
,p_query_column_id=>23
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>23
,p_column_heading=>'FILE_NAME'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2590524138148398)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2588708304003758)
,p_name=>'P12_WORK_ORDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2586028968998513)
,p_prompt=>'Work Order'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2588900971007146)
,p_name=>'P12_WORK_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2586028968998513)
,p_prompt=>'Work Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'REJECT STATUS'
,p_page_mode=>'NORMAL'
,p_step_title=>'REJECT STATUS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141128081343'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(2593831429651990)
,p_name=>'RejectStatus'
,p_template=>wwv_flow_api.id(49674657155170457)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_04'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT S.TRANID AS EDIT,S.TRANID,S.WORK_ORDER,S.DONE_CD, S.ORDER_DT, S.LOAN, ',
'                  S.SENTDATE, S.TRANCODE,S.PRICE,S.FIELD6,S.FIELD7,S.FIELD8,S.FIELD9,S.FIELD10,S.FIELD11,S.WT,S.SWT,S.PRICEPER,',
'                  S.QTY,S.UOM,S.SERVICEID,S.ZIP,S.PID,S.FILE_NAME,S.RETURN_STATUS, S.REJECTED  ',
'           FROM (  ',
'           SELECT P.TRANID,P.WORK_ORDER,P.DONE_CD, P.ORDER_DT, P.LOAN, ',
'                  P.SENTDATE, P.TRANCODE,P.PRICE,P.FIELD6,P.FIELD7,P.FIELD8,P.FIELD9,P.FIELD10,P.FIELD11,P.WT,P.SWT,P.PRICEPER,',
'                  P.QTY,P.UOM,P.SERVICEID,P.ZIP,P.PID,P.FILE_NAME, ( CASE WHEN R.TRANID IS NOT NULL THEN ''IN'' ELSE ''OUT'' END ) RETURN_STATUS, (CASE WHEN R.REJECTED IS NULL THEN ''U'' ELSE R.REJECTED END) AS REJECTED ',
'            FROM RDM.BOA_FEES_SENT P',
'             LEFT JOIN (SELECT  TRANID,  ',
'                                 TRANKY, ERROR_CODE, ERROR_MESSAGE, PID, ',
'                                 ( CASE WHEN SUBSTR(TRANKY,1,1) IN (''0'',''1'',''2'',''3'',''4'',''5'',''6'',''7'',''8'',''9'') AND ERROR_CODE = 0 THEN ''N'' ELSE ''Y'' END) AS REJECTED ',
'                         FROM RDM.BOA_FEES_RETURNED) R',
'             ON ( TRIM(R.TRANID) = TRIM(P.TRANID))) S',
'WHERE S.FILE_NAME  = :P13_FILE_NAME',
' AND  S.REJECTED   = :P13_REJ_NY',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13_FILE_NAME,P13_REJ_NY'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2600114654942741)
,p_query_column_id=>1
,p_column_alias=>'EDIT'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::P14_WORK_ORDER,P14_WORK_CODE:#WORK_ORDER#,#DONE_CD#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2594119100651994)
,p_query_column_id=>2
,p_column_alias=>'TRANID'
,p_column_display_sequence=>2
,p_column_heading=>'TRANID'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2594202891651994)
,p_query_column_id=>3
,p_column_alias=>'WORK_ORDER'
,p_column_display_sequence=>3
,p_column_heading=>'WORK_ORDER'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2594313893651994)
,p_query_column_id=>4
,p_column_alias=>'DONE_CD'
,p_column_display_sequence=>4
,p_column_heading=>'DONE_CD'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2594428065651995)
,p_query_column_id=>5
,p_column_alias=>'ORDER_DT'
,p_column_display_sequence=>5
,p_column_heading=>'ORDER_DT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2594512845651995)
,p_query_column_id=>6
,p_column_alias=>'LOAN'
,p_column_display_sequence=>6
,p_column_heading=>'LOAN'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2594630017651995)
,p_query_column_id=>7
,p_column_alias=>'SENTDATE'
,p_column_display_sequence=>7
,p_column_heading=>'SENTDATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2594704509651995)
,p_query_column_id=>8
,p_column_alias=>'TRANCODE'
,p_column_display_sequence=>8
,p_column_heading=>'TRANCODE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2594803728651995)
,p_query_column_id=>9
,p_column_alias=>'PRICE'
,p_column_display_sequence=>9
,p_column_heading=>'PRICE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2594906455651995)
,p_query_column_id=>10
,p_column_alias=>'FIELD6'
,p_column_display_sequence=>10
,p_column_heading=>'FIELD6'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2595000957651995)
,p_query_column_id=>11
,p_column_alias=>'FIELD7'
,p_column_display_sequence=>11
,p_column_heading=>'FIELD7'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2595123163651995)
,p_query_column_id=>12
,p_column_alias=>'FIELD8'
,p_column_display_sequence=>12
,p_column_heading=>'FIELD8'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2595200197651995)
,p_query_column_id=>13
,p_column_alias=>'FIELD9'
,p_column_display_sequence=>13
,p_column_heading=>'FIELD9'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2595325888651995)
,p_query_column_id=>14
,p_column_alias=>'FIELD10'
,p_column_display_sequence=>14
,p_column_heading=>'FIELD10'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2595406163651995)
,p_query_column_id=>15
,p_column_alias=>'FIELD11'
,p_column_display_sequence=>15
,p_column_heading=>'FIELD11'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2595528389651995)
,p_query_column_id=>16
,p_column_alias=>'WT'
,p_column_display_sequence=>16
,p_column_heading=>'WT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2595607629651995)
,p_query_column_id=>17
,p_column_alias=>'SWT'
,p_column_display_sequence=>17
,p_column_heading=>'SWT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2595705348651995)
,p_query_column_id=>18
,p_column_alias=>'PRICEPER'
,p_column_display_sequence=>18
,p_column_heading=>'PRICEPER'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2595810038651995)
,p_query_column_id=>19
,p_column_alias=>'QTY'
,p_column_display_sequence=>19
,p_column_heading=>'QTY'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2595902441651995)
,p_query_column_id=>20
,p_column_alias=>'UOM'
,p_column_display_sequence=>20
,p_column_heading=>'UOM'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2596030899651995)
,p_query_column_id=>21
,p_column_alias=>'SERVICEID'
,p_column_display_sequence=>21
,p_column_heading=>'SERVICEID'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2596128867651995)
,p_query_column_id=>22
,p_column_alias=>'ZIP'
,p_column_display_sequence=>22
,p_column_heading=>'ZIP'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2596200077651995)
,p_query_column_id=>23
,p_column_alias=>'PID'
,p_column_display_sequence=>23
,p_column_heading=>'PID'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2596326627651995)
,p_query_column_id=>24
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>24
,p_column_heading=>'FILE_NAME'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2596429636651995)
,p_query_column_id=>25
,p_column_alias=>'RETURN_STATUS'
,p_column_display_sequence=>25
,p_column_heading=>'RETURN_STATUS'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2596521033651995)
,p_query_column_id=>26
,p_column_alias=>'REJECTED'
,p_column_display_sequence=>26
,p_column_heading=>'REJECTED'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2603404510051002)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2599706915915951)
,p_name=>'P13_FILE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2593831429651990)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15436405919658894)
,p_name=>'P13_REJ_NY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2593831429651990)
,p_prompt=>'Rejected '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Reason for Reject'
,p_page_mode=>'NORMAL'
,p_step_title=>'Reason for Reject'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49669859953170444)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140807064303'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(2600619607970183)
,p_name=>'Reason for reject'
,p_template=>wwv_flow_api.id(49678584607170474)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_04'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT * FROM BOA_FEES_RETURNED ',
'where work_order = :P14_WORK_ORDER',
' and  DONE_CD   = :P14_WORK_CODE '))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P14_WORK_ORDER,P14_WORK_CODE'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2600923685970185)
,p_query_column_id=>1
,p_column_alias=>'TRANSACTION_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'TRANSACTION_TYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2601013882970185)
,p_query_column_id=>2
,p_column_alias=>'TRANID'
,p_column_display_sequence=>2
,p_column_heading=>'TRANID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2601116791970185)
,p_query_column_id=>3
,p_column_alias=>'WORK_ORDER'
,p_column_display_sequence=>3
,p_column_heading=>'WORK_ORDER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2601221516970185)
,p_query_column_id=>4
,p_column_alias=>'DONE_CD'
,p_column_display_sequence=>4
,p_column_heading=>'DONE_CD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2601312224970185)
,p_query_column_id=>5
,p_column_alias=>'ORDER_DT'
,p_column_display_sequence=>5
,p_column_heading=>'ORDER_DT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2601430480970186)
,p_query_column_id=>6
,p_column_alias=>'TRANKY'
,p_column_display_sequence=>6
,p_column_heading=>'TRANKY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2601515915970186)
,p_query_column_id=>7
,p_column_alias=>'ERROR_CODE'
,p_column_display_sequence=>7
,p_column_heading=>'ERROR_CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2601608498970186)
,p_query_column_id=>8
,p_column_alias=>'ERROR_MESSAGE'
,p_column_display_sequence=>8
,p_column_heading=>'ERROR_MESSAGE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2601723750970186)
,p_query_column_id=>9
,p_column_alias=>'RESOLVED'
,p_column_display_sequence=>9
,p_column_heading=>'RESOLVED'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2601824229970186)
,p_query_column_id=>10
,p_column_alias=>'RESEARCHING'
,p_column_display_sequence=>10
,p_column_heading=>'RESEARCHING'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2601908953970186)
,p_query_column_id=>11
,p_column_alias=>'RESENT'
,p_column_display_sequence=>11
,p_column_heading=>'RESENT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2602027117970186)
,p_query_column_id=>12
,p_column_alias=>'DEV'
,p_column_display_sequence=>12
,p_column_heading=>'DEV'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2602122061970186)
,p_query_column_id=>13
,p_column_alias=>'BILLED'
,p_column_display_sequence=>13
,p_column_heading=>'BILLED'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2602225009970186)
,p_query_column_id=>14
,p_column_alias=>'PID'
,p_column_display_sequence=>14
,p_column_heading=>'PID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2602323780970186)
,p_query_column_id=>15
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>15
,p_column_heading=>'FILE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15437803472751155)
,p_query_column_id=>16
,p_column_alias=>'YEARMO'
,p_column_display_sequence=>16
,p_column_heading=>'Yearmo'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2604217286101964)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2602506434976897)
,p_name=>'P14_WORK_ORDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2600619607970183)
,p_prompt=>'Work Order'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2602729929981212)
,p_name=>'P14_WORK_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2600619607970183)
,p_prompt=>'Work Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'Variance'
,p_page_mode=>'NORMAL'
,p_step_title=>'Variance'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.apexir_WORKSHEET_DATA th div {',
'font: bold 9px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
'.apexir_WORKSHEET_DATA td {',
'font: normal 9px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
''))
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140609123732'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2605012587261501)
,p_plug_name=>'Variance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.TRANID, A.WORK_ORDER, A.DONE_CD, A.LOAN, A.SENTDATE, A.TRANCODE, A.PRICE, A.FIELD6, A.FIELD7, A.FIELD8, A.FIELD9, A.FIELD10, A.FIELD11, A.WT, A.SWT, A.PRICEPER, A.QTY, A.UOM, A.SERVICEID, A.ZIP, A.PID, A.FILE_NAME',
'from RDM.BOA_FEES_SENT A',
'WHERE NOT EXISTS ( SELECT 1 ',
'                   FROM   RDM.BOA_FEES_RETURNED B',
'                   WHERE A.WORK_ORDER = B.WORK_ORDER ',
'                     AND A.DONE_CD    = B.DONE_CD) ',
'AND A.WORK_ORDER NOT IN (''BAD_DATA'')',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(2605115257261501)
,p_name=>'Variance'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>2605115257261501
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2605312068261505)
,p_db_column_name=>'TRANID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tranid'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRANID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2605422920261505)
,p_db_column_name=>'WORK_ORDER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2605500047261505)
,p_db_column_name=>'DONE_CD'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Done Cd'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DONE_CD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2605715609261505)
,p_db_column_name=>'LOAN'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Loan'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2605823367261506)
,p_db_column_name=>'SENTDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Sentdate'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SENTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2605914834261506)
,p_db_column_name=>'TRANCODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Trancode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRANCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2606022376261506)
,p_db_column_name=>'PRICE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Price'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRICE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2606115951261506)
,p_db_column_name=>'FIELD6'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Field6'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD6'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2606232217261506)
,p_db_column_name=>'FIELD7'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Field7'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD7'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2663405732358712)
,p_db_column_name=>'FIELD8'
,p_display_order=>11
,p_column_identifier=>'X'
,p_column_label=>'Field8'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD8'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2606426212261506)
,p_db_column_name=>'FIELD9'
,p_display_order=>13
,p_column_identifier=>'L'
,p_column_label=>'Field9'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD9'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2606523469261507)
,p_db_column_name=>'FIELD10'
,p_display_order=>14
,p_column_identifier=>'M'
,p_column_label=>'Field10'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD10'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2666805308837751)
,p_db_column_name=>'FIELD11'
,p_display_order=>15
,p_column_identifier=>'Y'
,p_column_label=>'Field11'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'FIELD11'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2606700260261507)
,p_db_column_name=>'WT'
,p_display_order=>19
,p_column_identifier=>'O'
,p_column_label=>'Wt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2606803862261507)
,p_db_column_name=>'SWT'
,p_display_order=>20
,p_column_identifier=>'P'
,p_column_label=>'Swt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SWT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2606928413261507)
,p_db_column_name=>'PRICEPER'
,p_display_order=>21
,p_column_identifier=>'Q'
,p_column_label=>'Priceper'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRICEPER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2607027172261507)
,p_db_column_name=>'QTY'
,p_display_order=>22
,p_column_identifier=>'R'
,p_column_label=>'Qty'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'QTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2607105796261507)
,p_db_column_name=>'UOM'
,p_display_order=>23
,p_column_identifier=>'S'
,p_column_label=>'Uom'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UOM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2607211054261508)
,p_db_column_name=>'SERVICEID'
,p_display_order=>24
,p_column_identifier=>'T'
,p_column_label=>'Serviceid'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SERVICEID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2607302622261510)
,p_db_column_name=>'ZIP'
,p_display_order=>25
,p_column_identifier=>'U'
,p_column_label=>'Zip'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ZIP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2607405117261510)
,p_db_column_name=>'PID'
,p_display_order=>26
,p_column_identifier=>'V'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2607517006261510)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>27
,p_column_identifier=>'W'
,p_column_label=>'File Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILE_NAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2607613972261829)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'26077'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRANID:WORK_ORDER:DONE_CD:LOAN:SENTDATE:TRANCODE:PRICE:FIELD6:FIELD7:FIELD9:FIELD10:WT:SWT:PRICEPER:QTY:UOM:SERVICEID:ZIP:PID:FILE_NAME:FIELD8:FIELD11'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2608321376273450)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Variance by file'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'26084'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRANID:WORK_ORDER:DONE_CD:LOAN:SENTDATE:TRANCODE:PRICE:FIELD6:FIELD7:FIELD9:FIELD10:WT:SWT:PRICEPER:QTY:UOM:SERVICEID:ZIP:PID:FILE_NAME:FIELD8:FIELD11'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(2608522146273451)
,p_report_id=>wwv_flow_api.id(2608321376273450)
,p_group_by_columns=>'FILE_NAME'
,p_function_01=>'COUNT'
,p_function_column_01=>'FILE_NAME'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_sum_01=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2608922199283178)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Variance by day'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'26090'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRANID:WORK_ORDER:DONE_CD:LOAN:SENTDATE:TRANCODE:PRICE:FIELD6:FIELD7:FIELD9:FIELD10:WT:SWT:PRICEPER:QTY:UOM:SERVICEID:ZIP:PID:FILE_NAME:FIELD8:FIELD11'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(2609101227283178)
,p_report_id=>wwv_flow_api.id(2608922199283178)
,p_group_by_columns=>'ORDER_DT'
,p_function_01=>'COUNT'
,p_function_column_01=>'ORDER_DT'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Variance by day'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2626703392079403)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'by Sent date'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'26268'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRANID:WORK_ORDER:DONE_CD:LOAN:SENTDATE:TRANCODE:PRICE:FIELD6:FIELD7:FIELD9:FIELD10:WT:SWT:PRICEPER:QTY:UOM:SERVICEID:ZIP:PID:FILE_NAME:FIELD8:FIELD11'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(2626902288079405)
,p_report_id=>wwv_flow_api.id(2626703392079403)
,p_group_by_columns=>'SENTDATE'
,p_function_01=>'COUNT'
,p_function_column_01=>'SENTDATE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Count by Sentdate'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2627929898200580)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'sent date by file'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'26280'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TRANID:WORK_ORDER:DONE_CD:LOAN:SENTDATE:TRANCODE:PRICE:FIELD6:FIELD7:FIELD9:FIELD10:WT:SWT:PRICEPER:QTY:UOM:SERVICEID:ZIP:PID:FILE_NAME:FIELD8:FIELD11'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(2628103052200580)
,p_report_id=>wwv_flow_api.id(2627929898200580)
,p_group_by_columns=>'FILE_NAME:SENTDATE'
,p_function_01=>'COUNT'
,p_function_column_01=>'SENTDATE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'sent date by file'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_sort_column_01=>'FILE_NAME'
,p_sort_direction_01=>'DESC NULLS LAST'
,p_sort_column_02=>'SENTDATE'
,p_sort_direction_02=>'ASC'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'Boa FeesReturn Status'
,p_page_mode=>'NORMAL'
,p_step_title=>'Returns Reject Rate'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49669859953170444)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140801103741'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15406103750583661)
,p_plug_name=>'Bank of America'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49673783807170455)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15405913185567493)
,p_plug_name=>'Boa Return Status'
,p_parent_plug_id=>wwv_flow_api.id(15406103750583661)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49676774245170460)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(15405401148545063)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(49689375007170494)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Dashboard'
,p_page_mode=>'NORMAL'
,p_step_title=>'Dashboard'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49669859953170444)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140321104054'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'BOA Fee Returns Due '
,p_page_mode=>'NORMAL'
,p_step_title=>'BOA Fee Returns Due '
,p_step_sub_title=>'BOA Fee Returns Due '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141128080530'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15415913166476270)
,p_name=>'BOA Fee Returns Due Back'
,p_template=>wwv_flow_api.id(49673783807170455)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
' "EDIT",',
' "CLIENT",',
' "FILE_NAME",',
' "ENTRY_DATE",',
' "RECORDCNT",',
' "RETURN_STATUS",',
' "REJECTED",',
' "CNT"',
'from #OWNER#.BOA_FEES_RETURN_STATUS'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683664351170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15416208561476275)
,p_query_column_id=>1
,p_column_alias=>'EDIT'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_FILE_NAME,P13_REJ_NY:#FILE_NAME#,#REJECTED#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15416311780476295)
,p_query_column_id=>2
,p_column_alias=>'CLIENT'
,p_column_display_sequence=>2
,p_column_heading=>'CLIENT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15416425045476295)
,p_query_column_id=>3
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'FILE_NAME'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15416515443476295)
,p_query_column_id=>4
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'ENTRY_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15416623469476295)
,p_query_column_id=>5
,p_column_alias=>'RECORDCNT'
,p_column_display_sequence=>5
,p_column_heading=>'RECORDCNT'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15416727623476295)
,p_query_column_id=>6
,p_column_alias=>'RETURN_STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'RETURN_STATUS'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15416808693476295)
,p_query_column_id=>7
,p_column_alias=>'REJECTED'
,p_column_display_sequence=>7
,p_column_heading=>'REJECTED'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15416900318476295)
,p_query_column_id=>8
,p_column_alias=>'CNT'
,p_column_display_sequence=>8
,p_column_heading=>'CNT'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15417405378501789)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'BOA FEES RETURNED REJECTED'
,p_page_mode=>'NORMAL'
,p_step_title=>'BOA FEES RETURNED REJECTED'
,p_step_sub_title=>'BOA FEES RETURNED'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49669586834170443)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140801141825'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15419303150845011)
,p_name=>'BOA FEES RETURNED REJECTED'
,p_template=>wwv_flow_api.id(49678584607170474)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT WORK_ORDER AS SEARCH, TRANSACTION_TYPE, TRANID, WORK_ORDER, DONE_CD, ORDER_DT, TRANKY, ERROR_CODE, ERROR_MESSAGE, FILE_NAME',
' FROM BOA_FEES_RETURNED_REJECTED',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15421312500849998)
,p_query_column_id=>1
,p_column_alias=>'SEARCH'
,p_column_display_sequence=>1
,p_column_heading=>'Search'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::P12_WORK_ORDER,P12_WORK_CODE:#WORK_ORDER#,#DONE_CD#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ws/small_page.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15419617723845014)
,p_query_column_id=>2
,p_column_alias=>'TRANSACTION_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'TRANSACTION_TYPE'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15419701240845018)
,p_query_column_id=>3
,p_column_alias=>'TRANID'
,p_column_display_sequence=>2
,p_column_heading=>'TRANID'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15419819044845021)
,p_query_column_id=>4
,p_column_alias=>'WORK_ORDER'
,p_column_display_sequence=>4
,p_column_heading=>'WORK_ORDER'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15419927753845021)
,p_query_column_id=>5
,p_column_alias=>'DONE_CD'
,p_column_display_sequence=>5
,p_column_heading=>'DONE_CD'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15420030623845021)
,p_query_column_id=>6
,p_column_alias=>'ORDER_DT'
,p_column_display_sequence=>6
,p_column_heading=>'ORDER_DT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15420131777845022)
,p_query_column_id=>7
,p_column_alias=>'TRANKY'
,p_column_display_sequence=>7
,p_column_heading=>'TRANKY'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15420221112845022)
,p_query_column_id=>8
,p_column_alias=>'ERROR_CODE'
,p_column_display_sequence=>8
,p_column_heading=>'ERROR_CODE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15420304741845022)
,p_query_column_id=>9
,p_column_alias=>'ERROR_MESSAGE'
,p_column_display_sequence=>9
,p_column_heading=>'ERROR_MESSAGE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15421023437845022)
,p_query_column_id=>10
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'FILE_NAME'
,p_disable_sort_column=>'N'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Search Rejected by Error'
,p_page_mode=>'NORMAL'
,p_step_title=>'Search Rejected by Error'
,p_step_sub_title=>'Search Rejected by Error'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141128080932'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15422506715945994)
,p_name=>'Search Rejected by Error'
,p_template=>wwv_flow_api.id(49673783807170455)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT A.TRANSACTION_TYPE AS SGP_FEES, ',
'       A.TRANSACTION_TYPE, ',
'       A.TRANID, ',
'       A.WORK_ORDER, ',
'       A.DONE_CD, ',
'       A.ORDER_DT, ',
'       A.TRANKY, ',
'       A.ERROR_CODE, ',
'       A.ERROR_MESSAGE, ',
'       A.RESOLVED, ',
'       A.RESEARCHING, ',
'       A.RESENT, ',
'       A.DEV, ',
'       A.BILLED, ',
'       A.PID, ',
'       A.FILE_NAME, ',
'       A.YEARMO',
'FROM  BOA_FEES_RETURNED A, BOA_FEES_SENT B',
'WHERE A.WORK_ORDER = B.WORK_ORDER',
' AND  A.DONE_CD    = B.DONE_CD  ',
' AND A.ERROR_MESSAGE = :P20_ERROR_MESSAGE',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P20_ERROR_MESSAGE'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15463423488037347)
,p_query_column_id=>1
,p_column_alias=>'SGP_FEES'
,p_column_display_sequence=>1
,p_column_heading=>'SGP Fees'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::P9_WORK_ORDER,P9_PUNCH_CODE:#WORK_ORDER#,#DONE_CD#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15464809143180669)
,p_query_column_id=>2
,p_column_alias=>'TRANSACTION_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Transaction Type'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15423006116945996)
,p_query_column_id=>3
,p_column_alias=>'TRANID'
,p_column_display_sequence=>3
,p_column_heading=>'TRANID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15423129560945996)
,p_query_column_id=>4
,p_column_alias=>'WORK_ORDER'
,p_column_display_sequence=>4
,p_column_heading=>'WORK_ORDER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15423202622945996)
,p_query_column_id=>5
,p_column_alias=>'DONE_CD'
,p_column_display_sequence=>5
,p_column_heading=>'DONE_CD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15464924795180669)
,p_query_column_id=>6
,p_column_alias=>'ORDER_DT'
,p_column_display_sequence=>6
,p_column_heading=>'Order Dt'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15423432172945996)
,p_query_column_id=>7
,p_column_alias=>'TRANKY'
,p_column_display_sequence=>7
,p_column_heading=>'TRANKY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15423509240945996)
,p_query_column_id=>8
,p_column_alias=>'ERROR_CODE'
,p_column_display_sequence=>8
,p_column_heading=>'ERROR_CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15423616419945996)
,p_query_column_id=>9
,p_column_alias=>'ERROR_MESSAGE'
,p_column_display_sequence=>9
,p_column_heading=>'ERROR_MESSAGE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15447207693646941)
,p_query_column_id=>10
,p_column_alias=>'RESOLVED'
,p_column_display_sequence=>11
,p_column_heading=>'Resolved'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15447307998646941)
,p_query_column_id=>11
,p_column_alias=>'RESEARCHING'
,p_column_display_sequence=>12
,p_column_heading=>'Researching'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15447415304646941)
,p_query_column_id=>12
,p_column_alias=>'RESENT'
,p_column_display_sequence=>13
,p_column_heading=>'Resent'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15447510351646941)
,p_query_column_id=>13
,p_column_alias=>'DEV'
,p_column_display_sequence=>14
,p_column_heading=>'Dev'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15447603167646941)
,p_query_column_id=>14
,p_column_alias=>'BILLED'
,p_column_display_sequence=>15
,p_column_heading=>'Billed'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15465021368180669)
,p_query_column_id=>15
,p_column_alias=>'PID'
,p_column_display_sequence=>16
,p_column_heading=>'Pid'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15423713947945997)
,p_query_column_id=>16
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'FILE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15465109186180669)
,p_query_column_id=>17
,p_column_alias=>'YEARMO'
,p_column_display_sequence=>17
,p_column_heading=>'Yearmo'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15424023974074817)
,p_plug_name=>'Error message'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49673783807170455)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15426913959299028)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15424306060080803)
,p_name=>'P20_ERROR_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15424023974074817)
,p_prompt=>'Error Message'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49690980370170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'BOA Error Messages'
,p_page_mode=>'NORMAL'
,p_step_title=>'BOA Error Messages'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141128080756'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15424910693137175)
,p_name=>'Error messages'
,p_template=>wwv_flow_api.id(49673783807170455)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_04'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.ERROR_MESSAGE AS SEARCH, A.ERROR_MESSAGE, COUNT(*) AS count',
'FROM  BOA_FEES_RETURNED A, BOA_FEES_SENT B',
'WHERE A.WORK_ORDER = B.WORK_ORDER',
' AND  A.DONE_CD    = B.DONE_CD ',
'AND   A.ERROR_MESSAGE IS NOT NULL',
'GROUP BY A.ERROR_MESSAGE',
'ORDER BY A.ERROR_MESSAGE'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>30
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15425223688137177)
,p_query_column_id=>1
,p_column_alias=>'SEARCH'
,p_column_display_sequence=>1
,p_column_heading=>'SEARCH'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::P20_ERROR_MESSAGE:#ERROR_MESSAGE#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15425312254137179)
,p_query_column_id=>2
,p_column_alias=>'ERROR_MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'ERROR_MESSAGE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15425415293137179)
,p_query_column_id=>3
,p_column_alias=>'COUNT'
,p_column_display_sequence=>3
,p_column_heading=>'COUNT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15425829525152089)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Search Fees workorder'
,p_page_mode=>'NORMAL'
,p_step_title=>'Search Fees workorder'
,p_step_sub_title=>'Search Fees workorder'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49669859953170444)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140801152739'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15428208581343378)
,p_name=>'FeesByWorkOrder'
,p_template=>wwv_flow_api.id(49678584607170474)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_04'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT * ',
'from boa_fees_sent',
'where work_order = :P22_Work_order'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15429407870343383)
,p_query_column_id=>1
,p_column_alias=>'TRANID'
,p_column_display_sequence=>1
,p_column_heading=>'TRANID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15429512413343383)
,p_query_column_id=>2
,p_column_alias=>'WORK_ORDER'
,p_column_display_sequence=>2
,p_column_heading=>'WORK_ORDER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15429615504343383)
,p_query_column_id=>3
,p_column_alias=>'DONE_CD'
,p_column_display_sequence=>3
,p_column_heading=>'DONE_CD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15429701093343383)
,p_query_column_id=>4
,p_column_alias=>'ORDER_DT'
,p_column_display_sequence=>4
,p_column_heading=>'ORDER_DT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15429825622343384)
,p_query_column_id=>5
,p_column_alias=>'LOAN'
,p_column_display_sequence=>5
,p_column_heading=>'LOAN'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15429931993343384)
,p_query_column_id=>6
,p_column_alias=>'SENTDATE'
,p_column_display_sequence=>6
,p_column_heading=>'SENTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15430026591343384)
,p_query_column_id=>7
,p_column_alias=>'TRANCODE'
,p_column_display_sequence=>7
,p_column_heading=>'TRANCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15430105283343384)
,p_query_column_id=>8
,p_column_alias=>'PRICE'
,p_column_display_sequence=>8
,p_column_heading=>'PRICE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15430201133343384)
,p_query_column_id=>9
,p_column_alias=>'FIELD6'
,p_column_display_sequence=>9
,p_column_heading=>'FIELD6'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15430319741343384)
,p_query_column_id=>10
,p_column_alias=>'FIELD7'
,p_column_display_sequence=>10
,p_column_heading=>'FIELD7'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15430403361343384)
,p_query_column_id=>11
,p_column_alias=>'FIELD8'
,p_column_display_sequence=>11
,p_column_heading=>'FIELD8'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15430517894343384)
,p_query_column_id=>12
,p_column_alias=>'FIELD9'
,p_column_display_sequence=>12
,p_column_heading=>'FIELD9'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15430620749343384)
,p_query_column_id=>13
,p_column_alias=>'FIELD10'
,p_column_display_sequence=>13
,p_column_heading=>'FIELD10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15428427423343381)
,p_query_column_id=>14
,p_column_alias=>'FIELD11'
,p_column_display_sequence=>14
,p_column_heading=>'FIELD11'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15428518049343381)
,p_query_column_id=>15
,p_column_alias=>'WT'
,p_column_display_sequence=>15
,p_column_heading=>'WT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15428606166343381)
,p_query_column_id=>16
,p_column_alias=>'SWT'
,p_column_display_sequence=>16
,p_column_heading=>'SWT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15428726614343381)
,p_query_column_id=>17
,p_column_alias=>'PRICEPER'
,p_column_display_sequence=>17
,p_column_heading=>'PRICEPER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15428829536343381)
,p_query_column_id=>18
,p_column_alias=>'QTY'
,p_column_display_sequence=>18
,p_column_heading=>'QTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15428917813343381)
,p_query_column_id=>19
,p_column_alias=>'UOM'
,p_column_display_sequence=>19
,p_column_heading=>'UOM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15429030862343381)
,p_query_column_id=>20
,p_column_alias=>'SERVICEID'
,p_column_display_sequence=>20
,p_column_heading=>'SERVICEID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15429104162343381)
,p_query_column_id=>21
,p_column_alias=>'ZIP'
,p_column_display_sequence=>21
,p_column_heading=>'ZIP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15429217375343383)
,p_query_column_id=>22
,p_column_alias=>'PID'
,p_column_display_sequence=>22
,p_column_heading=>'PID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15429309177343383)
,p_query_column_id=>23
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>23
,p_column_heading=>'FILE_NAME'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15431502469343393)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15430721728343384)
,p_name=>'P22_WORK_ORDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15428208581343378)
,p_prompt=>'Work Order'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15430924009343385)
,p_name=>'P22_WORK_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15428208581343378)
,p_prompt=>'Work Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'Search Completed'
,p_page_mode=>'NORMAL'
,p_step_title=>'Search Completed'
,p_step_sub_title=>'Search Completed'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49669586834170443)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140806143415'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15467804122906796)
,p_name=>'Search Completed'
,p_template=>wwv_flow_api.id(49673783807170455)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
' "TRANSACTION",',
' "TRANID",',
' "WORK_ORDER",',
' "DONE_CD",',
' "ORDER_DATE",',
' "TRANKY",',
' "ERROR_CODE",',
' "ERROR_MESSAGE",',
' "RESOLVED",',
' "RESEARCHING",',
' "RESENT",',
' "DEV",',
' "BILLED",',
' "SOURCE",',
' "LOAN",',
' "SENT_DATE",',
' "TRANCODE",',
' "PRICE",',
' "INV_NBR",',
' "WT",',
' "SWT",',
' "PRICEPER",',
' "QTY",',
' "UOM",',
' "SERVICEID",',
' "ZIP",',
' "STATE",',
' "FILE_NAME",',
' "SOURCE_FILE",',
' "CATEGORY",',
' "YEARMO"',
'from #OWNER#.BOA_COMPLETED',
'where YEARMO     = :P23_YEARMO',
' AND  WORK_ORDER = :P23_WORK_ORDER',
' AND  DONE_CD    = :P23_WORK_CD'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15468112204906803)
,p_query_column_id=>1
,p_column_alias=>'TRANSACTION'
,p_column_display_sequence=>1
,p_column_heading=>'TRANSACTION'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15468209591906806)
,p_query_column_id=>2
,p_column_alias=>'TRANID'
,p_column_display_sequence=>2
,p_column_heading=>'TRANID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15468317122906806)
,p_query_column_id=>3
,p_column_alias=>'WORK_ORDER'
,p_column_display_sequence=>3
,p_column_heading=>'WORK_ORDER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15468406820906806)
,p_query_column_id=>4
,p_column_alias=>'DONE_CD'
,p_column_display_sequence=>4
,p_column_heading=>'DONE_CD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15468520432906806)
,p_query_column_id=>5
,p_column_alias=>'ORDER_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'ORDER_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15468611955906806)
,p_query_column_id=>6
,p_column_alias=>'TRANKY'
,p_column_display_sequence=>6
,p_column_heading=>'TRANKY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15468707192906806)
,p_query_column_id=>7
,p_column_alias=>'ERROR_CODE'
,p_column_display_sequence=>7
,p_column_heading=>'ERROR_CODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15468803992906807)
,p_query_column_id=>8
,p_column_alias=>'ERROR_MESSAGE'
,p_column_display_sequence=>8
,p_column_heading=>'ERROR_MESSAGE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15468929367906807)
,p_query_column_id=>9
,p_column_alias=>'RESOLVED'
,p_column_display_sequence=>9
,p_column_heading=>'RESOLVED'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15469016977906807)
,p_query_column_id=>10
,p_column_alias=>'RESEARCHING'
,p_column_display_sequence=>10
,p_column_heading=>'RESEARCHING'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15469126979906807)
,p_query_column_id=>11
,p_column_alias=>'RESENT'
,p_column_display_sequence=>11
,p_column_heading=>'RESENT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15469228407906807)
,p_query_column_id=>12
,p_column_alias=>'DEV'
,p_column_display_sequence=>12
,p_column_heading=>'DEV'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15469323851906807)
,p_query_column_id=>13
,p_column_alias=>'BILLED'
,p_column_display_sequence=>13
,p_column_heading=>'BILLED'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15469423790906807)
,p_query_column_id=>14
,p_column_alias=>'SOURCE'
,p_column_display_sequence=>14
,p_column_heading=>'SOURCE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15469515134906807)
,p_query_column_id=>15
,p_column_alias=>'LOAN'
,p_column_display_sequence=>15
,p_column_heading=>'LOAN'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15469631045906807)
,p_query_column_id=>16
,p_column_alias=>'SENT_DATE'
,p_column_display_sequence=>16
,p_column_heading=>'SENT_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15469703050906807)
,p_query_column_id=>17
,p_column_alias=>'TRANCODE'
,p_column_display_sequence=>17
,p_column_heading=>'TRANCODE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15469806310906807)
,p_query_column_id=>18
,p_column_alias=>'PRICE'
,p_column_display_sequence=>18
,p_column_heading=>'PRICE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15469918855906807)
,p_query_column_id=>19
,p_column_alias=>'INV_NBR'
,p_column_display_sequence=>19
,p_column_heading=>'INV_NBR'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15470000874906807)
,p_query_column_id=>20
,p_column_alias=>'WT'
,p_column_display_sequence=>20
,p_column_heading=>'WT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15470121844906807)
,p_query_column_id=>21
,p_column_alias=>'SWT'
,p_column_display_sequence=>21
,p_column_heading=>'SWT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15470203500906807)
,p_query_column_id=>22
,p_column_alias=>'PRICEPER'
,p_column_display_sequence=>22
,p_column_heading=>'PRICEPER'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15470332172906807)
,p_query_column_id=>23
,p_column_alias=>'QTY'
,p_column_display_sequence=>23
,p_column_heading=>'QTY'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15470422123906807)
,p_query_column_id=>24
,p_column_alias=>'UOM'
,p_column_display_sequence=>24
,p_column_heading=>'UOM'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15470500858906807)
,p_query_column_id=>25
,p_column_alias=>'SERVICEID'
,p_column_display_sequence=>25
,p_column_heading=>'SERVICEID'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15470606180906807)
,p_query_column_id=>26
,p_column_alias=>'ZIP'
,p_column_display_sequence=>26
,p_column_heading=>'ZIP'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15470728344906807)
,p_query_column_id=>27
,p_column_alias=>'STATE'
,p_column_display_sequence=>27
,p_column_heading=>'STATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15470802661906807)
,p_query_column_id=>28
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>28
,p_column_heading=>'FILE_NAME'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15470929091906807)
,p_query_column_id=>29
,p_column_alias=>'SOURCE_FILE'
,p_column_display_sequence=>29
,p_column_heading=>'SOURCE_FILE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15471032580906807)
,p_query_column_id=>30
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>30
,p_column_heading=>'CATEGORY'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15471101022906807)
,p_query_column_id=>31
,p_column_alias=>'YEARMO'
,p_column_display_sequence=>31
,p_column_heading=>'YEARMO'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15472115083017787)
,p_plug_name=>'Search Criteria'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49673783807170455)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15472431358023803)
,p_name=>'P23_YEARMO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15472115083017787)
,p_prompt=>'Year Month'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15472623810027314)
,p_name=>'P23_WORK_ORDER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15472115083017787)
,p_prompt=>'Work Order'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15472814968031437)
,p_name=>'P23_WORK_CD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15472115083017787)
,p_prompt=>'Work Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Completed keys'
,p_page_mode=>'NORMAL'
,p_step_title=>'Completed keys'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140806165739'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15473332230060573)
,p_plug_name=>'WORK ORDER'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49678584607170474)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15474102279089817)
,p_name=>'WORK ORDER PUNCH CODE'
,p_template=>wwv_flow_api.id(49678584607170474)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT WORK_ORDER AS SEARCH, WORK_ORDER, DONE_CD, YEARMO',
'FROM BOA_COMPLETED',
'WHERE WORK_ORDER = :p24_work_order'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P24_WORK_ORDER'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15474422910089819)
,p_query_column_id=>1
,p_column_alias=>'SEARCH'
,p_column_display_sequence=>1
,p_column_heading=>'SEARCH'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_WORK_ORDER,P29_DONE_CD,P29_YEARMO:#WORK_ORDER#,#DONE_CD#,#YEARMO#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15474500095089819)
,p_query_column_id=>2
,p_column_alias=>'WORK_ORDER'
,p_column_display_sequence=>2
,p_column_heading=>'WORK_ORDER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15474625695089819)
,p_query_column_id=>3
,p_column_alias=>'DONE_CD'
,p_column_display_sequence=>3
,p_column_heading=>'DONE_CD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15474717550089819)
,p_query_column_id=>4
,p_column_alias=>'YEARMO'
,p_column_display_sequence=>4
,p_column_heading=>'YEARMO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15545612789076729)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15473719894066492)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15473332230060573)
,p_button_name=>'P24_SUBMIT'
,p_button_static_id=>'P24_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(119807673265283)
,p_button_image_alt=>'Submit'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15473610414063919)
,p_name=>'P24_WORK_ORDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15473332230060573)
,p_prompt=>'Work Order'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'alert'
,p_page_mode=>'NORMAL'
,p_step_title=>'alert'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141003153844'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18074222214626566)
,p_plug_name=>'test'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49678584607170474)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18074603214649493)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18074222214626566)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692582099170501)
,p_button_image_alt=>'Submit'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18074531810642654)
,p_name=>'P25_X'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18074222214626566)
,p_prompt=>'X'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Manage partitions'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage partitions'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141106100622'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18307611071502840)
,p_plug_name=>'List of Partitions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"TABLE_OWNER",',
'"TABLE_NAME",',
'"INCREMENT_BY",',
'"PARTITION_FMT",',
'"TOTAL_REQ",',
'"PARTITION_RULE",',
'"PARTITION_ON",',
'"PARTITION_PREFIX",',
'"VALUE_FMT",',
'"MOV_PARTITION_TO",',
'"PARTITION_TYPE",',
'"PRIMARY_KEY",',
'"MONTHS_BACK",',
'"ACTIVE"',
'from "#OWNER#"."BOA_PARTITIONS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18307820010502841)
,p_name=>'List of Partitions'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::P33_ID:#ID#'
,p_detail_link_text=>'<img src="#WORKSPACE_IMAGES#FNDNEXTS.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>18307820010502841
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18307912216502850)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18308023318502853)
,p_db_column_name=>'TABLE_OWNER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Table Owner'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_OWNER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18308118886502853)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Table Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18308209100502853)
,p_db_column_name=>'INCREMENT_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Increment By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'INCREMENT_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18308303417502853)
,p_db_column_name=>'PARTITION_FMT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Partition Fmt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_FMT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18308414226502853)
,p_db_column_name=>'TOTAL_REQ'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Total Req'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TOTAL_REQ'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18308513325502854)
,p_db_column_name=>'PARTITION_RULE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Partition Rule'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_RULE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18308604375502854)
,p_db_column_name=>'PARTITION_ON'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Partition On'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_ON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18308717273502854)
,p_db_column_name=>'PARTITION_PREFIX'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Partition Prefix'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_PREFIX'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18308815754502854)
,p_db_column_name=>'VALUE_FMT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Value Fmt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VALUE_FMT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18308907721502854)
,p_db_column_name=>'MOV_PARTITION_TO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Action taken'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'MOV_PARTITION_TO'
,p_rpt_named_lov=>wwv_flow_api.id(18812218865445049)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18309010091502855)
,p_db_column_name=>'PARTITION_TYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Partition Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18309118934502855)
,p_db_column_name=>'PRIMARY_KEY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Primary Key'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRIMARY_KEY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18309231474502855)
,p_db_column_name=>'MONTHS_BACK'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Number of MM / DD from Current date'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'MONTHS_BACK'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18810121911926387)
,p_db_column_name=>'ACTIVE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Active'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVE'
,p_rpt_named_lov=>wwv_flow_api.id(16100004046559910)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18310600884509841)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'183107'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:TABLE_OWNER:TABLE_NAME:INCREMENT_BY:PARTITION_FMT:TOTAL_REQ:PARTITION_RULE:PARTITION_ON:PARTITION_PREFIX:VALUE_FMT:MOV_PARTITION_TO:PARTITION_TYPE:PRIMARY_KEY:MONTHS_BACK:ACTIVE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18309729460502856)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18787526684769230)
,p_name=>'Exchange partitions'
,p_template=>wwv_flow_api.id(49678584607170474)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>'SELECT * FROM BOA_EXCHANGE_PARTITIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18787818505769260)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::P34_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18787908675769265)
,p_query_column_id=>2
,p_column_alias=>'PTABLE_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Primary Table Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18788027909769265)
,p_query_column_id=>3
,p_column_alias=>'PPART_POSITION'
,p_column_display_sequence=>3
,p_column_heading=>'Primary Partition Position'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18788118945769265)
,p_query_column_id=>4
,p_column_alias=>'PEXCHANGE_TABLE'
,p_column_display_sequence=>4
,p_column_heading=>'Exchange Table Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18788231452769265)
,p_query_column_id=>5
,p_column_alias=>'PPART_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'Primary Partition Action'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18788327716769265)
,p_query_column_id=>6
,p_column_alias=>'ATABLE_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Archive Table'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18788402593769265)
,p_query_column_id=>7
,p_column_alias=>'APART_POSITION'
,p_column_display_sequence=>7
,p_column_heading=>'Archive Partition position'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18788523154769265)
,p_query_column_id=>8
,p_column_alias=>'AEXCHANGE_TABLE'
,p_column_display_sequence=>8
,p_column_heading=>'Exchange Table Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18788618908769265)
,p_query_column_id=>9
,p_column_alias=>'APART_ACTION'
,p_column_display_sequence=>9
,p_column_heading=>'Archive Partition Action'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18810628104999466)
,p_query_column_id=>10
,p_column_alias=>'ACTIVE'
,p_column_display_sequence=>10
,p_column_heading=>'Active'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18309428704502855)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18307611071502840)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18793413703803403)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18787526684769230)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692582099170501)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'Partition values'
,p_page_mode=>'NORMAL'
,p_step_title=>'Partition values'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140930124118'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17811921675661488)
,p_plug_name=>'Partition values'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"TABLE_ID",',
'"PARTITION_NAME",',
'"VALUE_FMT",',
'"PARTITION_VALUE"',
'from "#OWNER#"."BOA_PARTITION_VALUES" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(17812111796661489)
,p_name=>'Partition values'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>17812111796661489
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17812218486661494)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17812315293661499)
,p_db_column_name=>'TABLE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Table Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17812424166661500)
,p_db_column_name=>'PARTITION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Partition Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17812532213661500)
,p_db_column_name=>'VALUE_FMT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Value Fmt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VALUE_FMT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17812614495661500)
,p_db_column_name=>'PARTITION_VALUE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Partition Value'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_VALUE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17813015170663296)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'178131'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:TABLE_ID:PARTITION_NAME:VALUE_FMT:PARTITION_VALUE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17812807903661500)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(17811921675661488)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:28'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'Form on BOA_PARTITION_VALUES'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on BOA_PARTITION_VALUES'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140930124003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17808412425661434)
,p_plug_name=>'Form on BOA_PARTITION_VALUES'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49675875816170458)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17808711821661441)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(17808412425661434)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P28_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17809015059661442)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17808412425661434)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17808612824661441)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(17808412425661434)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P28_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17808816437661441)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17808412425661434)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P28_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17809616606661449)
,p_branch_action=>'f?p=&APP_ID.:27:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17809822169661453)
,p_name=>'P28_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17808412425661434)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17810016102661460)
,p_name=>'P28_TABLE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17808412425661434)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Table Id'
,p_source=>'TABLE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17810218907661460)
,p_name=>'P28_PARTITION_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17808412425661434)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Name'
,p_source=>'PARTITION_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17810427541661461)
,p_name=>'P28_VALUE_FMT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17808412425661434)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Value Fmt'
,p_source=>'VALUE_FMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17810622449661461)
,p_name=>'P28_PARTITION_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(17808412425661434)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Value'
,p_source=>'PARTITION_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17811012312661463)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_PARTITION_VALUES'
,p_attribute_02=>'BOA_PARTITION_VALUES'
,p_attribute_03=>'P28_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17811228277661468)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_PARTITION_VALUES'
,p_attribute_02=>'BOA_PARTITION_VALUES'
,p_attribute_03=>'P28_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17811407549661468)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(17808816437661441)
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Review Completed'
,p_page_mode=>'NORMAL'
,p_step_title=>'Review Completed'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49669586834170443)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140807064019'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15517518274624195)
,p_plug_name=>'BOA Completed'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49673783807170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15537227474816083)
,p_plug_name=>'SQ1'
,p_parent_plug_id=>wwv_flow_api.id(15517518274624195)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15537409944820449)
,p_plug_name=>'SQ2'
,p_parent_plug_id=>wwv_flow_api.id(15517518274624195)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15538316224850681)
,p_plug_name=>'SQ3'
,p_parent_plug_id=>wwv_flow_api.id(15517518274624195)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15541016364935863)
,p_plug_name=>'SQ11'
,p_parent_plug_id=>wwv_flow_api.id(15517518274624195)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15542900874988124)
,p_plug_name=>'SQ21'
,p_parent_plug_id=>wwv_flow_api.id(15517518274624195)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15543114380992081)
,p_plug_name=>'SQ31'
,p_parent_plug_id=>wwv_flow_api.id(15517518274624195)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15545232397072981)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15517806253624197)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15517518274624195)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15517915060624198)
,p_branch_action=>'f?p=&APP_ID.:24:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15518121613624200)
,p_name=>'P29_WORK_ORDER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15537227474816083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Order'
,p_source=>'WORK_ORDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15518324238624201)
,p_name=>'P29_DONE_CD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15537227474816083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Done Code'
,p_source=>'DONE_CD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15518524771624201)
,p_name=>'P29_TRANSACTION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(15538316224850681)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction'
,p_source=>'TRANSACTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15518712276624201)
,p_name=>'P29_TRANID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15537227474816083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Trans Id'
,p_source=>'TRANID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>40
,p_cMaxlength=>40
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15518907228624202)
,p_name=>'P29_ORDER_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15537227474816083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order Date'
,p_source=>'ORDER_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15519100188624202)
,p_name=>'P29_TRANKY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(15537409944820449)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tranky'
,p_source=>'TRANKY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15519313355624202)
,p_name=>'P29_ERROR_CODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(15538316224850681)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Error Code'
,p_source=>'ERROR_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15519507302624202)
,p_name=>'P29_ERROR_MESSAGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(15538316224850681)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Error Message'
,p_source=>'ERROR_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15519730387624202)
,p_name=>'P29_RESOLVED'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(15517518274624195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Resolved'
,p_source=>'RESOLVED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15519901496624202)
,p_name=>'P29_RESEARCHING'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(15517518274624195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Researching'
,p_source=>'RESEARCHING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15520110119624203)
,p_name=>'P29_RESENT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(15517518274624195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Resent'
,p_source=>'RESENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15520302333624203)
,p_name=>'P29_DEV'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(15517518274624195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dev'
,p_source=>'DEV'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15520516353624203)
,p_name=>'P29_BILLED'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(15517518274624195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Billed'
,p_source=>'BILLED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15520708384624203)
,p_name=>'P29_SOURCE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(15541016364935863)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Source'
,p_source=>'SOURCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15520913761624203)
,p_name=>'P29_LOAN'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(15537409944820449)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loan'
,p_source=>'LOAN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15521126244624203)
,p_name=>'P29_SENT_DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(15537227474816083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sent Date'
,p_source=>'SENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15521309832624204)
,p_name=>'P29_TRANCODE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(15538316224850681)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Trancode'
,p_source=>'TRANCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15521503623624204)
,p_name=>'P29_PRICE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(15543114380992081)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price'
,p_source=>'PRICE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15521700020624204)
,p_name=>'P29_INV_NBR'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(15537409944820449)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inv Nbr'
,p_source=>'INV_NBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15521909527624204)
,p_name=>'P29_WT'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(15542900874988124)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Type:'
,p_source=>'WT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15522101789624204)
,p_name=>'P29_SWT'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(15542900874988124)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sub Work Type:'
,p_source=>'SWT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15522305172624206)
,p_name=>'P29_PRICEPER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(15543114380992081)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Price Per Unit:'
,p_source=>'PRICEPER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15522520879624206)
,p_name=>'P29_QTY'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(15543114380992081)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qty'
,p_source=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15522707399624207)
,p_name=>'P29_UOM'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(15543114380992081)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit of Measure'
,p_source=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15522906122624207)
,p_name=>'P29_SERVICEID'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(15537409944820449)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Serviceid'
,p_source=>'SERVICEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15523120994624207)
,p_name=>'P29_ZIP'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(15538316224850681)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Zip Code'
,p_source=>'ZIP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15523329336624207)
,p_name=>'P29_STATE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(15537409944820449)
,p_use_cache_before_default=>'NO'
,p_prompt=>'State'
,p_source=>'STATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>3
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15523517401624207)
,p_name=>'P29_FILE_NAME'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(15541016364935863)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Name'
,p_source=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15523725741624207)
,p_name=>'P29_SOURCE_FILE'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(15541016364935863)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Source File'
,p_source=>'SOURCE_FILE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691477827170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15523924352624208)
,p_name=>'P29_CATEGORY'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(15517518274624195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_source=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15524119557624208)
,p_name=>'P29_YEARMO'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(15517518274624195)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Yearmo'
,p_source=>'YEARMO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15547314833994246)
,p_name=>'P29_WTYPES'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(15542900874988124)
,p_item_default=>'----------------------------'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49690980370170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15524829713624209)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_COMPLETED'
,p_attribute_02=>'BOA_COMPLETED'
,p_attribute_03=>'P29_WORK_ORDER'
,p_attribute_04=>'WORK_ORDER'
,p_attribute_05=>'P29_DONE_CD'
,p_attribute_06=>'DONE_CD'
,p_attribute_08=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'YEARMO         = :P29_YEARMO',
'AND WORK_ORDER = :P29_WORK_ORDER',
'AND DONE_CD    = :P29_DONE_CD'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15525013791624209)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_COMPLETED'
,p_attribute_02=>'BOA_COMPLETED'
,p_attribute_03=>'P29_WORK_ORDER'
,p_attribute_04=>'WORK_ORDER'
,p_attribute_05=>'P29_DONE_CD'
,p_attribute_06=>'DONE_CD'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15525202801624209)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'B of A Table Partitions'
,p_page_mode=>'NORMAL'
,p_step_title=>'B of A Table Partitions'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141003073119'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15619401864109514)
,p_plug_name=>'BOA_PARTITIONS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ID,',
'       TABLE_OWNER, ',
'       TABLE_NAME, ',
'       INCREMENT_BY, ',
'       PARTITION_FMT, ',
'       TOTAL_REQ, ',
'       PARTITION_RULE, ',
'       PARTITION_ON, ',
'       PARTITION_PREFIX, ',
'       VALUE_FMT, ',
'       MOV_PARTITION_TO, ',
'       PARTITION_TYPE, ',
'       PRIMARY_KEY',
'from "#OWNER#"."BOA_PARTITIONS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(15619630577109515)
,p_name=>'BOA_PARTITIONS'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::P32_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>15619630577109515
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15619727949109525)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15619807688109530)
,p_db_column_name=>'TABLE_OWNER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Table Owner'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_OWNER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15619912716109530)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Table Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15620004990109530)
,p_db_column_name=>'INCREMENT_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Increment By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'INCREMENT_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15620116393109530)
,p_db_column_name=>'PARTITION_FMT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Partition Fmt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_FMT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15620213043109530)
,p_db_column_name=>'TOTAL_REQ'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Total Req'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TOTAL_REQ'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15620318597109531)
,p_db_column_name=>'PARTITION_RULE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Partition Rule'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_RULE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17428522756673598)
,p_db_column_name=>'PARTITION_ON'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Partition On'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_ON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17439423291810127)
,p_db_column_name=>'PARTITION_PREFIX'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Partition Prefix'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_PREFIX'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17796021549276840)
,p_db_column_name=>'VALUE_FMT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Value Fmt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VALUE_FMT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17796101655276852)
,p_db_column_name=>'MOV_PARTITION_TO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Mov Partition To'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MOV_PARTITION_TO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17796223237276853)
,p_db_column_name=>'PARTITION_TYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Partition Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17796332098276853)
,p_db_column_name=>'PRIMARY_KEY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Primary Key'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRIMARY_KEY'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15622628782165679)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'156227'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:TABLE_OWNER:TABLE_NAME:INCREMENT_BY:PARTITION_FMT:TOTAL_REQ:PARTITION_RULE:PARTITION_ON:PARTITION_PREFIX:VALUE_FMT:MOV_PARTITION_TO:PARTITION_TYPE:PRIMARY_KEY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15620800511109533)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15620506169109531)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(15619401864109514)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692582099170501)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'Manage B of A Table Partitions'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage B of A Table Partitions'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141003072930'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15621129462109538)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15623220948172832)
,p_plug_name=>'Border'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15623404456177598)
,p_plug_name=>'Edit Table Partitions'
,p_parent_plug_id=>wwv_flow_api.id(15623220948172832)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49673783807170455)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15615529655109461)
,p_plug_name=>'Manage B of A Table Partitions'
,p_parent_plug_id=>wwv_flow_api.id(15623404456177598)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49673480987170454)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15615805657109462)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(15615529655109461)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15616126665109464)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15615529655109461)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692762871170501)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15615715215109462)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(15615529655109461)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692582099170501)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15615923677109462)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15615529655109461)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15616719735109469)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15616907809109478)
,p_name=>'P31_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15615529655109461)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15617111174109491)
,p_name=>'P31_TABLE_OWNER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15615529655109461)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Table Owner'
,p_source=>'TABLE_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15617323858109492)
,p_name=>'P31_TABLE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15615529655109461)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Table Name'
,p_source=>'TABLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15617526008109493)
,p_name=>'P31_INCREMENT_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15615529655109461)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Increment By'
,p_source=>'INCREMENT_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15617703880109494)
,p_name=>'P31_PARTITION_FMT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(15615529655109461)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Fmt'
,p_source=>'PARTITION_FMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15617902830109494)
,p_name=>'P31_TOTAL_REQ'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(15615529655109461)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Req'
,p_source=>'TOTAL_REQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15618103334109494)
,p_name=>'P31_PARTITION_RULE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(15615529655109461)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Rule'
,p_source=>'PARTITION_RULE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17428706797681042)
,p_name=>'P31_PARTITION_ON'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(15615529655109461)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition On'
,p_source=>'PARTITION_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17441605392818411)
,p_name=>'P31_PARTITION_PREFIX'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(15615529655109461)
,p_prompt=>'Partition Prefix'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15618526259109496)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_PARTITIONS'
,p_attribute_02=>'BOA_PARTITIONS'
,p_attribute_03=>'P31_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15618717664109497)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_PARTITIONS'
,p_attribute_02=>'BOA_PARTITIONS'
,p_attribute_03=>'P31_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15618917108109497)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15615923677109462)
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'Modify BOA PARTITIONS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Modify BOA PARTITIONS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140930090143'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17796817176302709)
,p_plug_name=>'Modify  BOA PARTITIONS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49675875816170458)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17801630349302757)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17797104089302714)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(17796817176302709)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P32_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17797406379302715)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17796817176302709)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17797024574302714)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(17796817176302709)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P32_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17797232121302714)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17796817176302709)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P32_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17798000835302724)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17798230944302727)
,p_name=>'P32_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17796817176302709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17798430222302740)
,p_name=>'P32_TABLE_OWNER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17796817176302709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Table Owner'
,p_source=>'TABLE_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17798603237302741)
,p_name=>'P32_TABLE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17796817176302709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Table Name'
,p_source=>'TABLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17798823921302741)
,p_name=>'P32_INCREMENT_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17796817176302709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Increment By'
,p_source=>'INCREMENT_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17799007714302743)
,p_name=>'P32_PARTITION_FMT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(17796817176302709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partitioned column format'
,p_source=>'PARTITION_FMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17799210173302744)
,p_name=>'P32_TOTAL_REQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(17796817176302709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Required'
,p_source=>'TOTAL_REQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17799426809302744)
,p_name=>'P32_PARTITION_RULE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(17796817176302709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Rule'
,p_source=>'PARTITION_RULE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17799617478302744)
,p_name=>'P32_PARTITION_ON'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(17796817176302709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Column'
,p_source=>'PARTITION_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17799825721302744)
,p_name=>'P32_PARTITION_PREFIX'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(17796817176302709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Prefix'
,p_source=>'PARTITION_PREFIX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17800024396302745)
,p_name=>'P32_VALUE_FMT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(17796817176302709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partitioned Value Format'
,p_source=>'VALUE_FMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17800222191302745)
,p_name=>'P32_MOV_PARTITION_TO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(17796817176302709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Action '
,p_source=>'MOV_PARTITION_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17800400554302745)
,p_name=>'P32_PARTITION_TYPE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(17796817176302709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Type'
,p_source=>'PARTITION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17800625777302745)
,p_name=>'P32_PRIMARY_KEY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(17796817176302709)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Primary Key'
,p_source=>'PRIMARY_KEY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17801005351302746)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_PARTITIONS'
,p_attribute_02=>'BOA_PARTITIONS'
,p_attribute_03=>'P32_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17801229991302749)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_PARTITIONS'
,p_attribute_02=>'BOA_PARTITIONS'
,p_attribute_03=>'P32_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17801427162302749)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(17797232121302714)
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Edit BOA PARTITIONS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit BOA PARTITIONS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141128095012'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18302305469502792)
,p_plug_name=>'Edit BOA_PARTITIONS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49675875816170458)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18310000672502861)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18302611169502796)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18302305469502792)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P33_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18302923460502798)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18302305469502792)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18302514366502796)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18302305469502792)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P33_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18302707950502796)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18302305469502792)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P33_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19224213601943146)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(18302305469502792)
,p_button_name=>'LIST_PARTITIONS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692582099170501)
,p_button_image_alt=>'List Partitions'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::P36_TABLE_NAME:&P33_TABLE_NAME.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18303517712502804)
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18303706462502809)
,p_name=>'P33_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18303922932502819)
,p_name=>'P33_TABLE_OWNER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Table Owner'
,p_source=>'TABLE_OWNER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18304129147502820)
,p_name=>'P33_TABLE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Table Name'
,p_source=>'TABLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18304314088502820)
,p_name=>'P33_INCREMENT_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'# dd / mm between Partitions'
,p_source=>'INCREMENT_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'center'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18304510260502821)
,p_name=>'P33_PARTITION_FMT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Fmt'
,p_source=>'PARTITION_FMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18304721516502821)
,p_name=>'P33_TOTAL_REQ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Number Partitions Required'
,p_source=>'TOTAL_REQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'center'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18304916863502822)
,p_name=>'P33_PARTITION_RULE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Rule'
,p_source=>'PARTITION_RULE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18305106840502822)
,p_name=>'P33_PARTITION_ON'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column to Partition On'
,p_source=>'PARTITION_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18305322984502822)
,p_name=>'P33_PARTITION_PREFIX'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Prefix'
,p_source=>'PARTITION_PREFIX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18305529896502822)
,p_name=>'P33_VALUE_FMT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Value Fmt'
,p_source=>'VALUE_FMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18305724223502822)
,p_name=>'P33_MOV_PARTITION_TO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Actions'
,p_source=>'MOV_PARTITION_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PARTITION OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(18812218865445049)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18305900490502822)
,p_name=>'P33_PARTITION_TYPE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Type'
,p_source=>'PARTITION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18306127488502823)
,p_name=>'P33_PRIMARY_KEY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Table Primary Key'
,p_source=>'PRIMARY_KEY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18306325669502823)
,p_name=>'P33_MONTHS_BACK'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Months / Days Back'
,p_source=>'MONTHS_BACK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'center'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18810331388937166)
,p_name=>'P33_ACTIVE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(18302305469502792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active'
,p_source=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(16100004046559910)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18306720298502824)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_PARTITIONS'
,p_attribute_02=>'BOA_PARTITIONS'
,p_attribute_03=>'P33_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18306916068502827)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_PARTITIONS'
,p_attribute_02=>'BOA_PARTITIONS'
,p_attribute_03=>'P33_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18307117598502828)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18302707950502796)
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Edit BOA EXCHANGE PARTITIONS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit BOA EXCHANGE PARTITIONS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141128095035'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18789008075786331)
,p_plug_name=>'Edit BOA EXCHANGE PARTITIONS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49675875816170458)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18793027288786381)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18789330722786335)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18789008075786331)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P34_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18789616523786338)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18789008075786331)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18789209935786335)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18789008075786331)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P34_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18789431357786335)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18789008075786331)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P34_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18790207515786343)
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18790426548786348)
,p_name=>'P34_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18789008075786331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18790611346786362)
,p_name=>'P34_PTABLE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18789008075786331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Primary table Name'
,p_source=>'PTABLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18790800144786363)
,p_name=>'P34_PPART_POSITION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18789008075786331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Primary Partition Position'
,p_source=>'PPART_POSITION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18791011544786366)
,p_name=>'P34_PEXCHANGE_TABLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18789008075786331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Exchange Table Name'
,p_source=>'PEXCHANGE_TABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18791232748786366)
,p_name=>'P34_PPART_ACTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(18789008075786331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Action'
,p_source=>'PPART_ACTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PARTITION OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(18812218865445049)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18791415818786366)
,p_name=>'P34_ATABLE_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(18789008075786331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Archive Table Name'
,p_source=>'ATABLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18791606960786366)
,p_name=>'P34_APART_POSITION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(18789008075786331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Archive Partition Position'
,p_source=>'APART_POSITION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18791819122786367)
,p_name=>'P34_AEXCHANGE_TABLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(18789008075786331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Exchange Table Name'
,p_source=>'AEXCHANGE_TABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18792026980786373)
,p_name=>'P34_APART_ACTION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(18789008075786331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partition Action'
,p_source=>'APART_ACTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PARTITION OPTIONS'
,p_lov=>'.'||wwv_flow_api.id(18812218865445049)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18810814733005646)
,p_name=>'P34_ACTIVE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(18789008075786331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active'
,p_source=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(16100004046559910)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18792417034786374)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_EXCHANGE_PARTITIONS'
,p_attribute_02=>'BOA_EXCHANGE_PARTITIONS'
,p_attribute_03=>'P34_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18792629627786381)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_EXCHANGE_PARTITIONS'
,p_attribute_02=>'BOA_EXCHANGE_PARTITIONS'
,p_attribute_03=>'P34_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18792818492786381)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18789431357786335)
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'Merge Partitions'
,p_page_mode=>'NORMAL'
,p_step_title=>'Merge Partitions'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141128095240'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19211502583726032)
,p_plug_name=>'Merge Partitions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49675875816170458)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19213332271726058)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19211810438726036)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(19211502583726032)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19211706707726036)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19211502583726032)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(19213003306726050)
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(19211810438726036)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19212225655726045)
,p_name=>'P35_PTABLE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19211502583726032)
,p_prompt=>'Table Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select table_name D, TABLE_NAME R ',
'from all_tab_partitions ',
'where table_name not like ''BIN%''',
'and   TABLE_OWNER = ''RDM''',
'GROUP BY TABLE_NAME',
'ORDER BY TABLE_NAME;',
''))
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19212406487726049)
,p_name=>'P35_PARTITION_NAME1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(19211502583726032)
,p_prompt=>'From Partition '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select partition_name d, partition_name r ',
'from all_tab_partitions ',
'where table_name =   :P35_PTABLE_NAME',
'AND   TABLE_OWNER = ''RDM''',
'order by partition_position',
''))
,p_lov_cascade_parent_items=>'P35_PTABLE_NAME'
,p_ajax_items_to_submit=>'P35_PTABLE_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19212606433726049)
,p_name=>'P35_PARTITION_NAME2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(19211502583726032)
,p_prompt=>'To Partition'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select partition_name d, partition_name r ',
'from all_tab_partitions ',
'where table_name =   :P35_PTABLE_NAME',
'AND   PARTITION_NAME != :P35_PARTITION_NAME1',
'AND   TABLE_OWNER   = ''RDM''',
'order by partition_position',
''))
,p_lov_cascade_parent_items=>'P35_PARTITION_NAME1'
,p_ajax_items_to_submit=>'P35_PARTITION_NAME1'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19212824853726049)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run Stored Procedure'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#OWNER#.SVCUTIL.PERFORM_MERGE(',
'P_PTABLE_NAME => :P35_PTABLE_NAME,',
'P_PARTITION_NAME1 => :P35_PARTITION_NAME1,',
'P_PARTITION_NAME2 => :P35_PARTITION_NAME2);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19211810438726036)
,p_process_success_message=>'PARTITIONS Were Merged Refresh screen'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Partition List by table'
,p_page_mode=>'NORMAL'
,p_step_title=>'Partition List by table'
,p_step_sub_title=>'Partition List by table'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141128095447'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(19221603354890393)
,p_name=>'Partition List by Table'
,p_template=>wwv_flow_api.id(49673783807170455)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.partition_name, A.high_value, A.partition_position  ',
'from all_tab_partitions A',
'where A.TABLE_NAME = :P36_TABLE_NAME',
'and   a.table_owner = ''RDM''',
'',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19223908771930187)
,p_query_column_id=>1
,p_column_alias=>'PARTITION_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Partition Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19224019922930187)
,p_query_column_id=>2
,p_column_alias=>'HIGH_VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'High Value'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19224131363930187)
,p_query_column_id=>3
,p_column_alias=>'PARTITION_POSITION'
,p_column_display_sequence=>3
,p_column_heading=>'Partition Position'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19223508725890410)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19224532001995293)
,p_name=>'P36_TABLE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19221603354890393)
,p_prompt=>'Table Name:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_api.create_page(
 p_id=>37
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'BOA REBILL Requests'
,p_page_mode=>'NORMAL'
,p_step_title=>'BOA REBILL Requests'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141112090844'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19323331934151266)
,p_plug_name=>'BOA ReBill Stage'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "REQUESTOID", ',
'"CLIENTID",',
'"WORKORDERNO",',
'"INITIALINVOICENO",',
'"USERID",',
'"REQUESTDATE",',
'"REQEUSTTYPE",',
'"STATUS",',
'"PID"',
'from "#OWNER#"."BOA_REBILLREQUESTS_STG" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(19323516702151267)
,p_name=>'BOA ReBill Stage'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.::P38_REQUESTOID:#REQUESTOID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>19323516702151267
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19323612447151277)
,p_db_column_name=>'REQUESTOID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Request ID'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'REQUESTOID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19323704149151281)
,p_db_column_name=>'CLIENTID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Client ID'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLIENTID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19323827299151282)
,p_db_column_name=>'WORKORDERNO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Work Order Nbr'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORKORDERNO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19323901910151282)
,p_db_column_name=>'INITIALINVOICENO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Initial Invoice Nbr'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INITIALINVOICENO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19324016201151282)
,p_db_column_name=>'USERID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'User ID'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USERID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19324112770151282)
,p_db_column_name=>'REQUESTDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Request Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'REQUESTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19324218568151282)
,p_db_column_name=>'REQEUSTTYPE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Reqeust Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REQEUSTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19324329058151282)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19324406479151283)
,p_db_column_name=>'PID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19325529912155152)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'193256'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'REQUESTOID:CLIENTID:WORKORDERNO:INITIALINVOICENO:USERID:REQUESTDATE:REQEUSTTYPE:STATUS:PID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19324928511151283)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19324622961151283)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(19323331934151266)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:38'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_api.create_page(
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_tab_set=>'TS1'
,p_name=>'Edit BOA REBILLREQUESTS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit BOA REBILLREQUESTS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141112091320'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19319007155151219)
,p_plug_name=>'Edit BOA REBILLREQUESTS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49675875816170458)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19325206325151289)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19319321465151223)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(19319007155151219)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P38_REQUESTOID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19319625768151224)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19319007155151219)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19319217344151223)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(19319007155151219)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P38_REQUESTOID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19319407288151223)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(19319007155151219)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P38_REQUESTOID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(19320202385151229)
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19320410916151232)
,p_name=>'P38_REQUESTOID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19319007155151219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request ID'
,p_source=>'REQUESTOID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19320606247151248)
,p_name=>'P38_CLIENTID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(19319007155151219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Client ID'
,p_source=>'CLIENTID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19320801970151249)
,p_name=>'P38_WORKORDERNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(19319007155151219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Order Nbr'
,p_source=>'WORKORDERNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19321029568151249)
,p_name=>'P38_INITIALINVOICENO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(19319007155151219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Initial Invoice Nbr'
,p_source=>'INITIALINVOICENO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19321203558151249)
,p_name=>'P38_USERID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(19319007155151219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'USER ID'
,p_source=>'USERID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19321431023151249)
,p_name=>'P38_REQUESTDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(19319007155151219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Date'
,p_source=>'REQUESTDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19321623735151251)
,p_name=>'P38_REQEUSTTYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(19319007155151219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reqeust Type'
,p_source=>'REQEUSTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19321812951151251)
,p_name=>'P38_STATUS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(19319007155151219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19322027265151252)
,p_name=>'P38_PID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(19319007155151219)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File ID'
,p_source=>'PID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19322422685151253)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_REBILLREQUESTS_STG'
,p_attribute_02=>'BOA_REBILLREQUESTS_STG'
,p_attribute_03=>'P38_REQUESTOID'
,p_attribute_04=>'REQUESTOID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19322624832151256)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_REBILLREQUESTS_STG'
,p_attribute_02=>'BOA_REBILLREQUESTS_STG'
,p_attribute_03=>'P38_REQUESTOID'
,p_attribute_04=>'REQUESTOID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19322821696151256)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19319407288151223)
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_api.create_page(
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'BOA Re-Bill Requests '
,p_page_mode=>'NORMAL'
,p_step_title=>'BOA Re-Bill Requests '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141112091600'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19327426470222406)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_api.create_page(
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Add partition'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add partition'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141119151317'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19575406904096867)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19575925672120673)
,p_plug_name=>'Add Partition'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49678584607170474)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19581009892276894)
,p_plug_name=>'Table list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * ',
' FROM BOA_PARTITIONS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(19581122936276894)
,p_name=>'Table list'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'CGARDNER'
,p_internal_uid=>19581122936276894
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19581306515276898)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19581430479276904)
,p_db_column_name=>'TABLE_OWNER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Table Owner'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_OWNER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19581511191276904)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Table Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19581630025276904)
,p_db_column_name=>'INCREMENT_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Increment By'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'INCREMENT_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19581721970276904)
,p_db_column_name=>'PARTITION_FMT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Partition Fmt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_FMT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19581802713276904)
,p_db_column_name=>'TOTAL_REQ'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Total Req'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TOTAL_REQ'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19581930832276904)
,p_db_column_name=>'PARTITION_RULE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Partition Rule'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_RULE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19582008960276904)
,p_db_column_name=>'PARTITION_ON'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Partition On'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_ON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19582103064276904)
,p_db_column_name=>'PARTITION_PREFIX'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Partition Prefix'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_PREFIX'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19582200080276904)
,p_db_column_name=>'VALUE_FMT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Value Fmt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VALUE_FMT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19582310566276905)
,p_db_column_name=>'MOV_PARTITION_TO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Mov Partition To'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MOV_PARTITION_TO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19582412812276905)
,p_db_column_name=>'PARTITION_TYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Partition Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTITION_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19582507120276905)
,p_db_column_name=>'PRIMARY_KEY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Primary Key'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRIMARY_KEY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19582628601276905)
,p_db_column_name=>'MONTHS_BACK'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Months Back'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MONTHS_BACK'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19582706324276905)
,p_db_column_name=>'ACTIVE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Active'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19582810931277168)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'195829'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:TABLE_OWNER:TABLE_NAME:INCREMENT_BY:PARTITION_FMT:TOTAL_REQ:PARTITION_RULE:PARTITION_ON:PARTITION_PREFIX:VALUE_FMT:MOV_PARTITION_TO:PARTITION_TYPE:PRIMARY_KEY:MONTHS_BACK:ACTIVE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19587102984426245)
,p_plug_name=>'Last partition created'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49678584607170474)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19576200835120674)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(19575925672120673)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Add Partition'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19576106100120674)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19575925672120673)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(19577210904120691)
,p_branch_action=>'f?p=&APP_ID.:40:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(19576200835120674)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19576631324120681)
,p_name=>'P40_PTABLE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19575925672120673)
,p_prompt=>'Partition Table Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select TABLE_NAME D, TABLE_NAME R ',
'FROM BOA_PARTITIONS',
'ORDER BY 1 ',
''))
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19576828813120687)
,p_name=>'P40_PARTITION_NAME1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(19575925672120673)
,p_prompt=>'Partition to Add'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19587509441435110)
,p_name=>'P40_TABLENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(19587102984426245)
,p_prompt=>'Table name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select TABLE_NAME D, TABLE_NAME R ',
'FROM BOA_PARTITIONS',
'ORDER BY 1 ',
''))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19588228407441458)
,p_name=>'P40_LAST_PARTITION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(19587102984426245)
,p_prompt=>'Last Partition Created'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  PARTITION_NAME',
'                   from ALL_TAB_PARTITIONS',
'                    where TABLE_NAME   =  :P40_TABLENAME',
'                   and partition_position = ( select max(partition_position) from all_tab_partitions  where table_name =  :P40_TABLENAME)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19590419300506501)
,p_name=>'P40_PARTITION_VALUE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(19587102984426245)
,p_prompt=>'Partition Value'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  HIGH_VALUE',
'                   from ALL_TAB_PARTITIONS',
'                    where TABLE_NAME   =  :P40_TABLENAME',
'                   and partition_NAME =   :P40_LAST_PARTITION'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>90
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19601008042830763)
,p_name=>'P40_MESSAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(19575925672120673)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19594503574644008)
,p_name=>'Find partition Name'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_TABLENAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19594823695644013)
,p_event_id=>wwv_flow_api.id(19594503574644008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_LAST_PARTITION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'                select  PARTITION_NAME',
'                   from ALL_TAB_PARTITIONS',
'                    where TABLE_NAME   =  :P40_TABLENAME',
'                   and partition_position = ( select max(partition_position) from all_tab_partitions  where table_name =  :P40_TABLENAME)',
''))
,p_attribute_07=>'P40_TABLENAME'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19595923360678166)
,p_name=>'Partition value'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_LAST_PARTITION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19596225709678169)
,p_event_id=>wwv_flow_api.id(19595923360678166)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_PARTITION_VALUE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'                select   HIGH_VALUE',
'                   from ALL_TAB_PARTITIONS',
'                    where TABLE_NAME   =  :P40_TABLENAME',
'                   and partition_position = ( select max(partition_position) from all_tab_partitions  where table_name =  :P40_TABLENAME)',
''))
,p_attribute_07=>'P40_TABLENAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19577005257120688)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run Stored Procedure'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#OWNER#.SVCUTIL.ADD_PARTITION(',
'P_PTABLE_NAME => :P40_PTABLE_NAME,',
'P_PARTITION_NAME1 => :P40_PARTITION_NAME1,',
'P_MESSAGE  => :P40_MESSAGE);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19576200835120674)
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_api.create_page(
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Manage End Users'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage End Users'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150210132939'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22191313599032089)
,p_plug_name=>'Manage End Users'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PID", ',
'"APEX_USER",',
'"FIRST_NAME",',
'"LAST_NAME",',
'"MANAGER",',
'"SGP_ID",',
'"EMAILADDRESS",',
'"WORK_TABLE",',
'"WORKSPACE",',
'"EMAIL_SENT"',
'from "#OWNER#"."BOFA_PRIVILEGES" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22191526206032090)
,p_name=>'Manage End Users'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.::P42_PID:#PID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>22191526206032090
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22191625923032093)
,p_db_column_name=>'PID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22191709144032095)
,p_db_column_name=>'APEX_USER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Apex User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APEX_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22191822414032095)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'First Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIRST_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22191923729032096)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22192016149032096)
,p_db_column_name=>'MANAGER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Manager'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'MANAGER'
,p_rpt_named_lov=>wwv_flow_api.id(16100004046559910)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22192115220032096)
,p_db_column_name=>'SGP_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Safeguard ID'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SGP_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22192231752032096)
,p_db_column_name=>'EMAILADDRESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Email'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAILADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22192315575032096)
,p_db_column_name=>'WORK_TABLE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Work Table'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_TABLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22192416641032096)
,p_db_column_name=>'WORKSPACE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Workspace'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORKSPACE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22192500612032097)
,p_db_column_name=>'EMAIL_SENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Email Options'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL_SENT'
,p_rpt_named_lov=>wwv_flow_api.id(16098329495529439)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22193724868039084)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221938'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PID:APEX_USER:FIRST_NAME:LAST_NAME:MANAGER:SGP_ID:EMAILADDRESS:WORK_TABLE:WORKSPACE:EMAIL_SENT'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22193029785032098)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22192707465032097)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22191313599032089)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:42'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00042
begin
wwv_flow_api.create_page(
 p_id=>42
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Edit End User Privileges'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit End User Privileges'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150210132755'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22186806475032028)
,p_plug_name=>'Edit End User Privileges'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49673783807170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22193323309032103)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22187107485032031)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22186806475032028)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P42_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22187422671032032)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22186806475032028)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692172165170499)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22187017159032031)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22186806475032028)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P42_PID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22187220914032031)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22186806475032028)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P42_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22188011475032042)
,p_branch_action=>'f?p=&APP_ID.:41:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22188210497032046)
,p_name=>'P42_PID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22186806475032028)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pid'
,p_source=>'PID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22188405876032057)
,p_name=>'P42_APEX_USER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22186806475032028)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apex User Name'
,p_source=>'APEX_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22188623636032058)
,p_name=>'P42_FIRST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22186806475032028)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22188808315032059)
,p_name=>'P42_LAST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22186806475032028)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22189003254032059)
,p_name=>'P42_MANAGER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22186806475032028)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager'
,p_source=>'MANAGER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(16100004046559910)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22189228690032062)
,p_name=>'P42_SGP_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22186806475032028)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Safeguard Property ID'
,p_source=>'SGP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22189423931032062)
,p_name=>'P42_EMAILADDRESS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(22186806475032028)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Address'
,p_source=>'EMAILADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22189603163032062)
,p_name=>'P42_WORK_TABLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(22186806475032028)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Temporary Work Table'
,p_source=>'WORK_TABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22189811008032062)
,p_name=>'P42_WORKSPACE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(22186806475032028)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Workspace'
,p_source=>'WORKSPACE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TABLESPACE'
,p_lov=>'.'||wwv_flow_api.id(22196618999188687)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22190016231032062)
,p_name=>'P42_EMAIL_SENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(22186806475032028)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Options'
,p_source=>'EMAIL_SENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAILOPTIONS'
,p_lov=>'.'||wwv_flow_api.id(16098329495529439)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22190410615032064)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOFA_PRIVILEGES'
,p_attribute_02=>'BOFA_PRIVILEGES'
,p_attribute_03=>'P42_PID'
,p_attribute_04=>'PID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22190617890032067)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOFA_PRIVILEGES'
,p_attribute_02=>'BOFA_PRIVILEGES'
,p_attribute_03=>'P42_PID'
,p_attribute_04=>'PID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22190824306032067)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22187220914032031)
);
end;
/
prompt --application/pages/page_00043
begin
wwv_flow_api.create_page(
 p_id=>43
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'send email'
,p_page_mode=>'NORMAL'
,p_step_title=>'send email'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150506140638'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24369932283568769)
,p_plug_name=>'send email'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49678584607170474)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24370108519571423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24369932283568769)
,p_button_name=>'SEND_EMAIL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(119807673265283)
,p_button_image_alt=>'Send Email'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24370313283591704)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'send email'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'  v_to    VARCHAR2(2000 BYTE);',
'  v_from  VARCHAR2(50 BYTE);',
'  v_body  VARCHAR2(50 BYTE);',
'',
'BEGIN',
'v_from := ''Nick.Kwiatkowski@safeguardproperties.com'';',
'v_to   := ''Tyrone.Bryant@safeguardproperties.com,thad.ehmann@safeguardproperties.com'';',
'apex_mail.send(',
'  p_from =>  v_from,',
'  p_to =>   v_to,',
'  p_subj => ''Do Not Reply - Bid Tracking - Bid Category Report Uploaded'',',
'  p_body => ''testing'',',
'  p_body_html => ''Test - sent by christian.'');   ',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00044
begin
wwv_flow_api.create_page(
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'FILE Listings'
,p_page_mode=>'NORMAL'
,p_step_title=>'FILE Listings'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150903141010'
);
end;
/
prompt --application/pages/page_00045
begin
wwv_flow_api.create_page(
 p_id=>45
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Rdm Load Definitions'
,p_page_mode=>'NORMAL'
,p_step_title=>'Rdm Load Definations'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.apexir_WORKSHEET_DATA th div {',
'font: bold 11px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
'.apexir_WORKSHEET_DATA td {',
'font: normal 11px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
''))
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151006081447'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25082103029922711)
,p_plug_name=>'BOA Load Definitions '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select pid, VARIABLE_NAME, os_path_from, os_path_TO, file_pattern, action, comments, flow_order ',
'from  BOA_LOAD_DEFINITIONS',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25082308317922713)
,p_name=>'Rdm Load Schema Vars'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:47:P47_PID:#PID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>25082308317922713
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25082432760922718)
,p_db_column_name=>'PID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25121622474701885)
,p_db_column_name=>'VARIABLE_NAME'
,p_display_order=>4
,p_column_identifier=>'E'
,p_column_label=>'Variable Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VARIABLE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25121821898701889)
,p_db_column_name=>'FILE_PATTERN'
,p_display_order=>6
,p_column_identifier=>'G'
,p_column_label=>'File Pattern'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILE_PATTERN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25121902440701889)
,p_db_column_name=>'ACTION'
,p_display_order=>7
,p_column_identifier=>'H'
,p_column_label=>'Action'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ACTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25082729431922725)
,p_db_column_name=>'COMMENTS'
,p_display_order=>8
,p_column_identifier=>'D'
,p_column_label=>'Comment or additional info'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25128828151203523)
,p_db_column_name=>'OS_PATH_FROM'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Os Path From'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OS_PATH_FROM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25128923663203526)
,p_db_column_name=>'OS_PATH_TO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Os Path To'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OS_PATH_TO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25244316751070747)
,p_db_column_name=>'FLOW_ORDER'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Flow Order'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'FLOW_ORDER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25083121152970894)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'250832'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'VARIABLE_NAME:FLOW_ORDER:FILE_PATTERN:ACTION:COMMENTS:OS_PATH_FROM:OS_PATH_TO:'
,p_sort_column_1=>'VARIABLE_NAME'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25108328094524725)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25082929955922725)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25082103029922711)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'ADD to FLOW'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:47::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00046
begin
wwv_flow_api.create_page(
 p_id=>46
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'File listing'
,p_page_mode=>'NORMAL'
,p_step_title=>'File listing'
,p_step_sub_title=>'BOA fee Return output'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150916071314'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25816801060373285)
,p_name=>'BOA FILE LISTING'
,p_template=>wwv_flow_api.id(49674657155170457)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT OWN_PRIV, OWN_NUM, GROUP_NAME, OWN_NAME,MON, FILE_SIZE, DD,HRMIN, FILE_NAME FROM TABLE(RDM_LOAD.BOA_FEES_VALIDATE.BOA_GET_FILE_LIST)',
'where "GROUP_NAME" NOT IN (''rdmloadadm'')'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25817106487373298)
,p_query_column_id=>1
,p_column_alias=>'OWN_PRIV'
,p_column_display_sequence=>1
,p_column_heading=>'OWN_PRIV'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25817221183373303)
,p_query_column_id=>2
,p_column_alias=>'OWN_NUM'
,p_column_display_sequence=>2
,p_column_heading=>'OWN_NUM'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25817303146373303)
,p_query_column_id=>3
,p_column_alias=>'GROUP_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'GROUP_NAME'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25817408615373303)
,p_query_column_id=>4
,p_column_alias=>'OWN_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'OWN_NAME'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25817531992373303)
,p_query_column_id=>5
,p_column_alias=>'MON'
,p_column_display_sequence=>5
,p_column_heading=>'MON'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25817631673373303)
,p_query_column_id=>6
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>9
,p_column_heading=>'FILE_SIZE'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25817716242373303)
,p_query_column_id=>7
,p_column_alias=>'DD'
,p_column_display_sequence=>6
,p_column_heading=>'Day'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25817831103373303)
,p_query_column_id=>8
,p_column_alias=>'HRMIN'
,p_column_display_sequence=>7
,p_column_heading=>'HR:Min'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25817916041373303)
,p_query_column_id=>9
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'FILE_NAME'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25892622469488532)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25915609857617305)
,p_plug_name=>'Change Folders'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49678584607170474)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25915803539634415)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25915609857617305)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Apply'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25916102509643145)
,p_name=>'P46_FOLDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25915609857617305)
,p_prompt=>'Folder'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select VAR_NAME D,VAR_NAME R',
'from BOA_SCHEMA_VAR_NAMES',
'WHERE COMMENTS IN (''ORACLE-DIR'');'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25916425627735407)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'change folders'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'ALTER_TABLE  VARCHAR2(1000 BYTE);',
'P46_FOLDER   VARCHAR2(100 BYTE);',
'',
'BEGIN ',
'  ',
'P46_FOLDER := :P46_FOLDER;',
'',
'     ',
'RDM_LOAD.BOA_FEES_VALIDATE.BOA_CHANGE_DIRECTORIES ( P46_FOLDER);',
'    ',
'END;'))
,p_process_error_message=>'Failure :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25915803539634415)
,p_process_success_message=>'Success :)'
);
end;
/
prompt --application/pages/page_00047
begin
wwv_flow_api.create_page(
 p_id=>47
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Set up RDM LOAD Definition'
,p_page_mode=>'NORMAL'
,p_step_title=>'Set up RDM LOAD Definition'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151030110756'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25078813478922646)
,p_plug_name=>'Form on BOA LOAD DEFINITIONS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25126307759338155)
,p_plug_name=>'Registered Actions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49678584607170474)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25079006892922651)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25078813478922646)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P47_PID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25079418267922654)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25078813478922646)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692172165170499)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25079226239922651)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25078813478922646)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P47_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25079106556922651)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25078813478922646)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition=>'P47_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25132521244591089)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(25078813478922646)
,p_button_name=>'CHANGE_ACTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Change Action'
,p_button_position=>'TOP'
,p_button_condition=>'P47_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25144731388844567)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(25078813478922646)
,p_button_name=>'CREATE_VAR_NAME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Create New Variable'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25552128130534827)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(25078813478922646)
,p_button_name=>'CHANGE_FLOW_NO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Update Flow No.'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25080013578922666)
,p_branch_action=>'f?p=&APP_ID.:45:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25080221650922671)
,p_name=>'P47_PID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25078813478922646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pid'
,p_source=>'PID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25080431247922684)
,p_name=>'P47_VARIABLE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25078813478922646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Variable Name'
,p_source=>'VARIABLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select var_name d, var_name r',
'from BOA_SCHEMA_VAR_NAMES',
'ORDER BY VAR_NAME',
''))
,p_cSize=>40
,p_cMaxlength=>60
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529958814244088)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25080614555922690)
,p_name=>'P47_OS_PATH_TO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25078813478922646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'To OS PATH'
,p_source=>'OS_PATH_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select Directory_name d, directory_path r ',
'from all_directories',
'union',
'SELECT VAR_NAME D, VAR_NAME_VALUE R',
'FROM BOA_SCHEMA_VAR_NAMES',
'UNION',
'SELECT ''N/A'' D, ''N/A'' R',
'FROM DUAL',
'order by 1',
''))
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529958814244088)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25080809698922690)
,p_name=>'P47_ACTION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(25078813478922646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Action taken'
,p_source=>'ACTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>1000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25123215276069874)
,p_name=>'P47_FILE_PATTERN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25078813478922646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Pattern'
,p_source=>'FILE_PATTERN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT FILE_PATTERN D, FILE_PATTERN R',
'FROM BOA_FILE_PATTERNS',
'ORDER BY CLIENT',
''))
,p_cSize=>30
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529958814244088)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25123732732076963)
,p_name=>'P47_COMMENTS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(25078813478922646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comments'
,p_source=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25126617426342341)
,p_name=>'P47_ACTIONS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(25126307759338155)
,p_prompt=>'Actions'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT   PROGRAM_ACTION R, PROGRAM_NAME_VALUE D',
'FROM BOA_PROGRAM_NAMES;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Action'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25127504830986331)
,p_name=>'P47_EXAMPLE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(25126307759338155)
,p_prompt=>'Example:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>100
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25129203782214746)
,p_name=>'P47_OS_PATH_FROM'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25078813478922646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'From Os Path'
,p_source=>'OS_PATH_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select Directory_name d, directory_path r ',
'from all_directories',
'union',
'SELECT VAR_NAME D, VAR_NAME_VALUE R',
'FROM BOA_SCHEMA_VAR_NAMES',
'UNION',
'SELECT ''N/A'' D, ''N/A'' R',
'FROM DUAL',
'order by 1',
'',
''))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529958814244088)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25133424977660784)
,p_name=>'P47_NEW_ACTION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(25126307759338155)
,p_prompt=>'New Action'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>150
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25244502949077202)
,p_name=>'P47_FLOW_ORDER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(25078813478922646)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flow Order'
,p_source=>'FLOW_ORDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25127811005048749)
,p_name=>'Example:'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_ACTIONS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25128124510048762)
,p_event_id=>wwv_flow_api.id(25127811005048749)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P47_EXAMPLE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select comments ',
' from BOA_PROGRAM_NAMES',
' where program_name_value = :P47_ACTIONS;',
''))
,p_attribute_07=>'P47_ACTIONS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25081228300922695)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_LOAD_DEFINITIONS'
,p_attribute_02=>'BOA_LOAD_DEFINITIONS'
,p_attribute_03=>'P47_PID'
,p_attribute_04=>'PID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25130729921394925)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'OS_STMT  VARCHAR2(2000);',
'',
'BEGIN',
'',
' OS_STMT := CASE WHEN :P47_OS_PATH_TO IN (''N/A'') AND :P47_OS_PATH_FROM NOT IN (''N/A'')  THEN ''/home/rdmload/''||:P47_ACTIONS||''|''||:P47_OS_PATH_FROM||''/actual_file_name''',
'                 WHEN :P47_OS_PATH_TO NOT IN (''N/A'') AND :P47_OS_PATH_FROM IN (''N/A'')  THEN ''/home/rdmload/''||:P47_ACTIONS||''|''||:P47_OS_PATH_TO||''/actual_file_name'' ',
'                 WHEN :P47_OS_PATH_TO IN (''N/A'') AND :P47_OS_PATH_FROM IN (''N/A'') THEN ''/home/rdmload/''||:P47_ACTIONS',
'                 WHEN :P47_OS_PATH_FROM NOT IN (''N/A'') AND  :P47_OS_PATH_TO NOT IN (''N/A'') THEN ''/home/rdmload/''||:P47_ACTIONS||''|''||:P47_OS_PATH_FROM||''/actual_file_name''||''|''||:P47_OS_PATH_TO||''/stage_name'' ',
'            end;     ',
'',
'  INSERT INTO BOA_LOAD_DEFINITIONS (VARIABLE_NAME, OS_PATH_FROM, OS_PATH_TO, FILE_PATTERN, ACTION, COMMENTS, FLOW_ORDER)',
'VALUES (:P47_VARIABLE_NAME,:P47_OS_PATH_FROM,:P47_OS_PATH_TO,:P47_FILE_PATTERN, OS_STMT, :P47_COMMENTS,:P47_FLOW_ORDER);',
'',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25079006892922651)
,p_process_when=>'P47_PID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>'Success'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25131200709452673)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  DELETE FROM BOA_LOAD_DEFINITIONS WHERE PID = :P47_PID;',
'  COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25079226239922651)
,p_process_when=>'P47_PID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Success'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25132706961605845)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Action'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'UPDATE BOA_LOAD_DEFINITIONS ',
'SET ACTION =  :P47_NEW_ACTION',
'WHERE PID  = :P47_PID;',
'',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25132521244591089)
,p_process_when=>'P47_PID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25131702581538416)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE ROW'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'UPDATE_STMT VARCHAR2(2000 BYTE);',
'',
'BEGIN',
'',
'UPDATE_STMT := CASE WHEN :P47_OS_PATH_TO IN (''N/A'') THEN ''/home/rdmload/''||:P47_ACTIONS||''|''||:P47_OS_PATH_FROM||''/''||''stage_name''',
'                    ELSE ''/home/rdmload/''||:P47_ACTIONS||''|''||:P47_OS_PATH_FROM||''/''||''actual_file_name''||''|''||:P47_OS_PATH_TO||''/''||''stage_name'' END;',
'  ',
'UPDATE BOA_LOAD_DEFINITIONS ',
'SET VARIABLE_NAME =  :P47_VARIABLE_NAME,',
'    OS_PATH_FROM  =  :P47_OS_PATH_FROM,',
'    OS_PATH_TO    =  :P47_OS_PATH_TO,',
'    FILE_PATTERN  =  :P47_FILE_PATTERN,',
'    COMMENTS      =  :P47_COMMENTS,',
'    FLOW_ORDER    =  :P47_FLOW_ORDER,',
'    ACTION        =  UPDATE_STMT',
'WHERE PID  = :P47_PID;',
'',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25079106556922651)
,p_process_when=>'P47_PID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25552329085554042)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update_flow_no'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'  update BOA_LOAD_DEFINITIONS set flow_order = :P47_FLOW_ORDER',
'  WHERE PID = :P47_PID;',
'',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25552128130534827)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25081625763922701)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25079226239922651)
);
end;
/
prompt --application/pages/page_00048
begin
wwv_flow_api.create_page(
 p_id=>48
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Manage Load Schema Variables'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage Load Schema Variables'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150928155620'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25089027296485586)
,p_plug_name=>'Manage Load Schema Variables'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PID", ',
'"VAR_NAME",',
'"VAR_NAME_VALUE",',
'"COMMENTS"',
'from "#OWNER#"."BOA_SCHEMA_VAR_NAMES" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25089229989485587)
,p_name=>'Manage Load Schema Variables'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:49:&APP_SESSION.::::P49_PID:#PID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'CGARDNER'
,p_internal_uid=>25089229989485587
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25089306290485588)
,p_db_column_name=>'PID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25089428488485589)
,p_db_column_name=>'VAR_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Var Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VAR_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25089521522485589)
,p_db_column_name=>'VAR_NAME_VALUE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Var Name Value'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VAR_NAME_VALUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25089612303485589)
,p_db_column_name=>'COMMENTS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Comments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25090004116486421)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'250901'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PID:VAR_NAME:VAR_NAME_VALUE:COMMENTS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25107326138457913)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25089822406485589)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25089027296485586)
,p_button_name=>'Create_New_Variable'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Add Variable Name'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25145330920910678)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25089027296485586)
,p_button_name=>'DEFINE_VARIABLES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Define Variables'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:47::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25974224218903810)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(25089027296485586)
,p_button_name=>'LOAD_ORACLE_DIR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Load Oracle Dir'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25974427513942593)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOAD-ORACLE-DIR'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'INSERT INTO BOA_SCHEMA_VAR_NAMES ( VAR_NAME,VAR_NAME_VALUE,COMMENTS) ',
'SELECT DIRECTORY_NAME, DIRECTORY_PATH, ''ORACLE-DIR''',
'FROM ALL_DIRECTORIES;',
'',
'COMMIT;',
'',
'END;'))
,p_process_error_message=>'Failed :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25974224218903810)
,p_process_success_message=>'Success :)'
);
end;
/
prompt --application/pages/page_00049
begin
wwv_flow_api.create_page(
 p_id=>49
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Assign Load Schema Var Names'
,p_page_mode=>'NORMAL'
,p_step_title=>'Assign Load Schema Var Names'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150805083056'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25085728486485571)
,p_plug_name=>'Assign RDM Schema Var Names'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25086014944485573)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25085728486485571)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P49_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25086318933485574)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25085728486485571)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692172165170499)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25085911091485573)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25085728486485571)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P49_PID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25086128878485573)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25085728486485571)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P49_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25086931846485575)
,p_branch_action=>'f?p=&APP_ID.:48:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25087125203485577)
,p_name=>'P49_PID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25085728486485571)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pid'
,p_source=>'PID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25087329844485577)
,p_name=>'P49_VAR_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25085728486485571)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Variable Name'
,p_source=>'VAR_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529958814244088)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25087502560485578)
,p_name=>'P49_VAR_NAME_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25085728486485571)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Var Name Value'
,p_source=>'VAR_NAME_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25087728022485579)
,p_name=>'P49_COMMENTS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(25085728486485571)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comment or additional value'
,p_source=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25088112245485580)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_SCHEMA_VAR_NAMES'
,p_attribute_02=>'BOA_SCHEMA_VAR_NAMES'
,p_attribute_03=>'P49_PID'
,p_attribute_04=>'PID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25088327327485580)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_SCHEMA_VAR_NAMES'
,p_attribute_02=>'BOA_SCHEMA_VAR_NAMES'
,p_attribute_03=>'P49_PID'
,p_attribute_04=>'PID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25088502535485581)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25086128878485573)
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_api.create_page(
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'List O/S Programs'
,p_page_mode=>'NORMAL'
,p_step_title=>'List O/S Programs'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150729130919'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25104204418379936)
,p_plug_name=>'List O/S Programs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PID", ',
'"PROGRAM_ACTION",',
'"PROGRAM_NAME_VALUE",',
'"VERSION_NO",',
'"COMMENTS"',
'from "#OWNER#"."BOA_PROGRAM_NAMES" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25104400931379937)
,p_name=>'List O/S Programs'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:52:&APP_SESSION.::::P52_PID:#PID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'CGARDNER'
,p_internal_uid=>25104400931379937
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25104513316379938)
,p_db_column_name=>'PID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25104621740379939)
,p_db_column_name=>'PROGRAM_ACTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Program Action / Group'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROGRAM_ACTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25104705635379942)
,p_db_column_name=>'PROGRAM_NAME_VALUE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Program Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROGRAM_NAME_VALUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25104806992379942)
,p_db_column_name=>'VERSION_NO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Version No'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'VERSION_NO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25104909052379942)
,p_db_column_name=>'COMMENTS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Comments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25105317256389115)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'251054'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PID:PROGRAM_ACTION:PROGRAM_NAME_VALUE:VERSION_NO:COMMENTS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25106919512427620)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25105121983379942)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25104204418379936)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:52::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00052
begin
wwv_flow_api.create_page(
 p_id=>52
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Add OS Progarms'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add OS Progarms'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150729112454'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25100707335379927)
,p_plug_name=>'Add OS Progarms'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25101002659379929)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25100707335379927)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P52_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25101312746379929)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25100707335379927)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692172165170499)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25100917935379929)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25100707335379927)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P52_PID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25101119258379929)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25100707335379927)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P52_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25101914639379932)
,p_branch_action=>'f?p=&APP_ID.:51:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25102108980379934)
,p_name=>'P52_PID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25100707335379927)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pid'
,p_source=>'PID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25102303821379934)
,p_name=>'P52_PROGRAM_ACTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25100707335379927)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Program Action'
,p_source=>'PROGRAM_ACTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25102523543379934)
,p_name=>'P52_PROGRAM_NAME_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25100707335379927)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Program Name Value'
,p_source=>'PROGRAM_NAME_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25102715403379934)
,p_name=>'P52_VERSION_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(25100707335379927)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Version No'
,p_source=>'VERSION_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25102903321379935)
,p_name=>'P52_COMMENTS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25100707335379927)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comments'
,p_source=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25103310678379935)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_PROGRAM_NAMES'
,p_attribute_02=>'BOA_PROGRAM_NAMES'
,p_attribute_03=>'P52_PID'
,p_attribute_04=>'PID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25103505542379935)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_PROGRAM_NAMES'
,p_attribute_02=>'BOA_PROGRAM_NAMES'
,p_attribute_03=>'P52_PID'
,p_attribute_04=>'PID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25103702277379936)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25101119258379929)
);
end;
/
prompt --application/pages/page_00053
begin
wwv_flow_api.create_page(
 p_id=>53
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'BOA File Patterns'
,p_page_mode=>'NORMAL'
,p_step_title=>'BOA File Patterns'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150821090455'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25113231187057639)
,p_plug_name=>'BOA File Patterns'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PID", ',
'"CLIENT",',
'"FILE_PATTERN",',
'"COMMENTS"',
'from "#OWNER#"."BOA_FILE_PATTERNS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25113413408057639)
,p_name=>'RDM File Patterns'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:54:&APP_SESSION.::::P54_PID:#PID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'CGARDNER'
,p_internal_uid=>25113413408057639
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25113527316057641)
,p_db_column_name=>'PID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25113626965057642)
,p_db_column_name=>'CLIENT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Client'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLIENT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25113730181057642)
,p_db_column_name=>'FILE_PATTERN'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'File Pattern'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILE_PATTERN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25113831768057643)
,p_db_column_name=>'COMMENTS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Comments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25115428777149336)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'251155'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CLIENT:FILE_PATTERN:COMMENTS:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25114303159057643)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25114028705057643)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25113231187057639)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:54::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00054
begin
wwv_flow_api.create_page(
 p_id=>54
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Add RDM File Patterns'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add RDM File Patterns'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150729112737'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25109904333057631)
,p_plug_name=>'Add BOA File Patterns'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25114631351057644)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25110213863057632)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25109904333057631)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P54_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25110529612057632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25109904333057631)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692172165170499)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25110121418057632)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25109904333057631)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P54_PID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25110332050057632)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25109904333057631)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P54_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25111126667057634)
,p_branch_action=>'f?p=&APP_ID.:53:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25111329833057635)
,p_name=>'P54_PID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25109904333057631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pid'
,p_source=>'PID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25111519663057636)
,p_name=>'P54_CLIENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25109904333057631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Client'
,p_source=>'CLIENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529958814244088)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25111725596057636)
,p_name=>'P54_FILE_PATTERN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25109904333057631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Pattern'
,p_source=>'FILE_PATTERN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529958814244088)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25111903392057636)
,p_name=>'P54_COMMENTS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(25109904333057631)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comments'
,p_source=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25112307621057637)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_FILE_PATTERNS'
,p_attribute_02=>'BOA_FILE_PATTERNS'
,p_attribute_03=>'P54_PID'
,p_attribute_04=>'PID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25112502252057637)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_FILE_PATTERNS'
,p_attribute_02=>'BOA_FILE_PATTERNS'
,p_attribute_03=>'P54_PID'
,p_attribute_04=>'PID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25112711661057638)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25110332050057632)
);
end;
/
prompt --application/pages/page_00057
begin
wwv_flow_api.create_page(
 p_id=>57
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'BOA File Watcher Queue'
,p_page_mode=>'NORMAL'
,p_step_title=>'BOA File Watcher Queue'
,p_step_sub_title=>'BOA File Watcher Queue'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150821155148'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25568015112289894)
,p_name=>'BOA File Watcher Queue'
,p_template=>wwv_flow_api.id(49674657155170457)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
' "PID",',
' "STEP_NAME",',
' "INPUT_PATH",',
' "FILE_NAME",',
' "FILE_SIZE",',
' "STAGE_PATH",',
' "STAGE_NAME",',
' "COMPLETED",',
' "ENTRYDTE",',
' "LOADID",',
' "LOADID" AS "Review"',
'from #OWNER#.BOA_FILE_WATCH_QUEUE',
'order by "LOADID", "COMPLETED"'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25568328520289896)
,p_query_column_id=>1
,p_column_alias=>'PID'
,p_column_display_sequence=>2
,p_column_heading=>'PID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25568426803289899)
,p_query_column_id=>2
,p_column_alias=>'STEP_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'STEP_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25568527440289899)
,p_query_column_id=>3
,p_column_alias=>'INPUT_PATH'
,p_column_display_sequence=>4
,p_column_heading=>'INPUT_PATH'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25568603196289899)
,p_query_column_id=>4
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'FILE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25568709637289899)
,p_query_column_id=>5
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>6
,p_column_heading=>'FILE_SIZE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25568805034289899)
,p_query_column_id=>6
,p_column_alias=>'STAGE_PATH'
,p_column_display_sequence=>7
,p_column_heading=>'STAGE_PATH'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25568917709289899)
,p_query_column_id=>7
,p_column_alias=>'STAGE_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'STAGE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25569029649289899)
,p_query_column_id=>8
,p_column_alias=>'COMPLETED'
,p_column_display_sequence=>9
,p_column_heading=>'COMPLETED'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25569107888289899)
,p_query_column_id=>9
,p_column_alias=>'ENTRYDTE'
,p_column_display_sequence=>10
,p_column_heading=>'ENTRYDTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25569208352289899)
,p_query_column_id=>10
,p_column_alias=>'LOADID'
,p_column_display_sequence=>11
,p_column_heading=>'LOADID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25570029993307706)
,p_query_column_id=>11
,p_column_alias=>'Review'
,p_column_display_sequence=>1
,p_column_heading=>'Review'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:58:P58_LOAD_ID:#LOADID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#magnifying_glass_white_bg.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25569412434289900)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00058
begin
wwv_flow_api.create_page(
 p_id=>58
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'BOA_FILE_LOAD_REPORT'
,p_page_mode=>'NORMAL'
,p_step_title=>'BOA_FILE_LOAD_REPORT'
,p_step_sub_title=>'BOA_FILE_LOAD_REPORT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150821155410'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25571132276390030)
,p_name=>'BOA_FILE_LOAD_REPORT_VW'
,p_template=>wwv_flow_api.id(49674657155170457)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
' "FILEID",',
' "QUEUEID",',
' "LOADID",',
' "CLIENT",',
' "FILENAME",',
' "COMPLETED_STEP",',
' "ENTRYDTE",',
' "LOAD_MESSAGE",',
' "PID",',
' "STEP_NAME",',
' "INPUT_PATH",',
' "FILE_NAME",',
' "FILE_SIZE",',
' "STAGE_PATH",',
' "STAGE_NAME",',
' "CURRENT_STEP",',
' "CURRENT_STEP_DTE",',
' "OS_JOBNAME",',
' "ADDITIONAL_INFO",',
' "EXTERNAL_LOG_ID",',
' "OS_MESSAGE"',
'from #OWNER#.BOA_FILE_LOAD_REPORT_VW',
'where "LOADID" = :P58_LOAD_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25571408885390037)
,p_query_column_id=>1
,p_column_alias=>'FILEID'
,p_column_display_sequence=>1
,p_column_heading=>'FILEID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25571530869390037)
,p_query_column_id=>2
,p_column_alias=>'QUEUEID'
,p_column_display_sequence=>2
,p_column_heading=>'QUEUEID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25571613317390037)
,p_query_column_id=>3
,p_column_alias=>'LOADID'
,p_column_display_sequence=>3
,p_column_heading=>'LOADID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25571705119390037)
,p_query_column_id=>4
,p_column_alias=>'CLIENT'
,p_column_display_sequence=>4
,p_column_heading=>'CLIENT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25571827538390037)
,p_query_column_id=>5
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>5
,p_column_heading=>'FILENAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25571932622390037)
,p_query_column_id=>6
,p_column_alias=>'COMPLETED_STEP'
,p_column_display_sequence=>6
,p_column_heading=>'COMPLETED_STEP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25572018364390037)
,p_query_column_id=>7
,p_column_alias=>'ENTRYDTE'
,p_column_display_sequence=>7
,p_column_heading=>'ENTRYDTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25572110753390037)
,p_query_column_id=>8
,p_column_alias=>'LOAD_MESSAGE'
,p_column_display_sequence=>8
,p_column_heading=>'LOAD_MESSAGE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25572202649390037)
,p_query_column_id=>9
,p_column_alias=>'PID'
,p_column_display_sequence=>9
,p_column_heading=>'PID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25572312954390037)
,p_query_column_id=>10
,p_column_alias=>'STEP_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'STEP_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25572421233390037)
,p_query_column_id=>11
,p_column_alias=>'INPUT_PATH'
,p_column_display_sequence=>11
,p_column_heading=>'INPUT_PATH'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25572531644390037)
,p_query_column_id=>12
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>12
,p_column_heading=>'FILE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25572627574390037)
,p_query_column_id=>13
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>13
,p_column_heading=>'FILE_SIZE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25572721971390037)
,p_query_column_id=>14
,p_column_alias=>'STAGE_PATH'
,p_column_display_sequence=>14
,p_column_heading=>'STAGE_PATH'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25572828247390037)
,p_query_column_id=>15
,p_column_alias=>'STAGE_NAME'
,p_column_display_sequence=>15
,p_column_heading=>'STAGE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25572916485390037)
,p_query_column_id=>16
,p_column_alias=>'CURRENT_STEP'
,p_column_display_sequence=>16
,p_column_heading=>'CURRENT_STEP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25573025847390037)
,p_query_column_id=>17
,p_column_alias=>'CURRENT_STEP_DTE'
,p_column_display_sequence=>17
,p_column_heading=>'CURRENT_STEP_DTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25573105154390037)
,p_query_column_id=>18
,p_column_alias=>'OS_JOBNAME'
,p_column_display_sequence=>18
,p_column_heading=>'OS_JOBNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25573220718390037)
,p_query_column_id=>19
,p_column_alias=>'ADDITIONAL_INFO'
,p_column_display_sequence=>19
,p_column_heading=>'ADDITIONAL_INFO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25573318073390037)
,p_query_column_id=>20
,p_column_alias=>'EXTERNAL_LOG_ID'
,p_column_display_sequence=>20
,p_column_heading=>'EXTERNAL_LOG_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25573423593390038)
,p_query_column_id=>21
,p_column_alias=>'OS_MESSAGE'
,p_column_display_sequence=>21
,p_column_heading=>'OS_MESSAGE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25573615162390039)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25574012700403571)
,p_plug_name=>'Load ID'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49678584607170474)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25574308999408550)
,p_name=>'P58_LOAD_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25574012700403571)
,p_prompt=>'Load Id'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
end;
/
prompt --application/pages/page_00060
begin
wwv_flow_api.create_page(
 p_id=>60
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Run unix script'
,p_page_mode=>'NORMAL'
,p_step_title=>'Run unix script'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150918091718'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25840119658190383)
,p_plug_name=>'Setup Job'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25903714352374493)
,p_plug_name=>'SQ1'
,p_parent_plug_id=>wwv_flow_api.id(25840119658190383)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25904229374388245)
,p_plug_name=>'SQ2'
,p_parent_plug_id=>wwv_flow_api.id(25840119658190383)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25904621540395489)
,p_plug_name=>'SQ3'
,p_parent_plug_id=>wwv_flow_api.id(25840119658190383)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25905322626424156)
,p_plug_name=>'SQ5'
,p_parent_plug_id=>wwv_flow_api.id(25840119658190383)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25947515214850022)
,p_plug_name=>'buttons'
,p_parent_plug_id=>wwv_flow_api.id(25840119658190383)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25893729768716553)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25927503561133478)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25947515214850022)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692172165170499)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25945220914738095)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(25947515214850022)
,p_button_name=>'PROCESSES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Processes'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25913024057503257)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(25947515214850022)
,p_button_name=>'LIST_INPUT_FOLDERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Input Folder'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25941106650554207)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(25947515214850022)
,p_button_name=>'LIST_OUTPUT_FOLDERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Output Folder'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25947304347837355)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(25947515214850022)
,p_button_name=>'ACTION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Action'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25927614071133478)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(25947515214850022)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Submit'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25930202114133508)
,p_branch_action=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(25927614071133478)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25928000582133495)
,p_name=>'P60_0_PROCESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25903714352374493)
,p_prompt=>'Process Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25928202127133505)
,p_name=>'P60_0_ACTION_PERFORMED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(25904229374388245)
,p_prompt=>'Action To Perform:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25928428129133505)
,p_name=>'P60_0_INPUT_PATH'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(25904621540395489)
,p_prompt=>'Input Folder:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25928606842133505)
,p_name=>'P60_0_FILE_NAME_IN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25904229374388245)
,p_prompt=>'File Name In:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25928817933133505)
,p_name=>'P60_0_OUTPUT_PATH'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(25904621540395489)
,p_prompt=>'Output Folder:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25929004892133505)
,p_name=>'P60_0_FILE_NAME_OT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(25904229374388245)
,p_prompt=>'File Name Out:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25929227419133506)
,p_name=>'P60_0_CURRENT_STEP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(25905322626424156)
,p_prompt=>'Current Step No.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STEP_#'
,p_lov=>'.'||wwv_flow_api.id(25954625288142417)||'.'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25929430999133506)
,p_name=>'P60_0_NEXT_STEP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(25905322626424156)
,p_prompt=>'Next Step No.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STEP_#'
,p_lov=>'.'||wwv_flow_api.id(25954625288142417)||'.'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25929603794133506)
,p_name=>'P60_0_DEBUG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(25905322626424156)
,p_item_default=>'0'
,p_prompt=>'Debug'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(16100004046559910)||'.'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25929818898133506)
,p_name=>'P60_0_NOTES'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(25905322626424156)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25895720259827410)
,p_name=>'Adhock'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_ADHOCK_PROCESS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25896014307827423)
,p_event_id=>wwv_flow_api.id(25895720259827410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_PROCESS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25897400414854402)
,p_event_id=>wwv_flow_api.id(25895720259827410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_REG_PROCESS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25899221045234474)
,p_name=>'Hide process'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_ADHOCK_PROCESS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25899516836234477)
,p_event_id=>wwv_flow_api.id(25899221045234474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_PROCESS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25899720796239990)
,p_event_id=>wwv_flow_api.id(25899221045234474)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_REG_PROCESS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25930007706133506)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run Stored Procedure'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#OWNER#.BOA_RUN_UNIX_SCRIPT(',
'P60_PROCESS => :P60_0_PROCESS,',
'P60_ACTION_PERFORMED => :P60_0_ACTION_PERFORMED,',
'P60_INPUT_PATH => :P60_0_INPUT_PATH,',
'P60_FILE_NAME_IN => :P60_0_FILE_NAME_IN,',
'P60_OUTPUT_PATH => :P60_0_OUTPUT_PATH,',
'P60_FILE_NAME_OT => :P60_0_FILE_NAME_OT,',
'P60_CURRENT_STEP => :P60_0_CURRENT_STEP,',
'P60_NEXT_STEP => :P60_0_NEXT_STEP,',
'P60_DEBUG => :P60_0_DEBUG,',
'P60_NOTES => :P60_0_NOTES);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25927614071133478)
);
end;
/
prompt --application/pages/page_00065
begin
wwv_flow_api.create_page(
 p_id=>65
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'BOA file watch queue'
,p_page_mode=>'NORMAL'
,p_step_title=>'BOA file watch queue'
,p_step_sub_title=>'BOA file watch queue'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.report-standard th div {',
'font: bold 10px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
'.report-standard td {',
'font: normal 10px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
''))
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150917073627'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25846618130674851)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677978695170472)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25848230866674866)
,p_name=>'BOA file watch queue'
,p_template=>wwv_flow_api.id(49678584607170474)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select *  from BOA_FILE_WATCH_QUEUE_VW',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P65_ROWS'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25848531882674877)
,p_query_column_id=>1
,p_column_alias=>'PID'
,p_column_display_sequence=>1
,p_column_heading=>'PID'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.::P68_PID:#PID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25848609236674882)
,p_query_column_id=>2
,p_column_alias=>'STEP_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'STEP_NAME'
,p_column_hit_highlight=>'&P65_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25848705716674882)
,p_query_column_id=>3
,p_column_alias=>'INPUT_PATH'
,p_column_display_sequence=>3
,p_column_heading=>'INPUT_PATH'
,p_column_hit_highlight=>'&P65_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25848820434674882)
,p_query_column_id=>4
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'FILE_NAME'
,p_column_hit_highlight=>'&P65_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25848906377674882)
,p_query_column_id=>5
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>5
,p_column_heading=>'FILE_SIZE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25849017779674882)
,p_query_column_id=>6
,p_column_alias=>'STAGE_PATH'
,p_column_display_sequence=>6
,p_column_heading=>'OUTPUT_PATH'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'&P65_REPORT_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25849124620674882)
,p_query_column_id=>7
,p_column_alias=>'STAGE_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'OUTPUT_NAME'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'&P65_REPORT_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25849227181674882)
,p_query_column_id=>8
,p_column_alias=>'COMPLETED'
,p_column_display_sequence=>8
,p_column_heading=>'Step Completed'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25849326638674882)
,p_query_column_id=>9
,p_column_alias=>'ENTRYDTE'
,p_column_display_sequence=>9
,p_column_heading=>'ENTRYDTE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25849412805674882)
,p_query_column_id=>10
,p_column_alias=>'LOADID'
,p_column_display_sequence=>10
,p_column_heading=>'LOADID'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25855210844833206)
,p_query_column_id=>11
,p_column_alias=>'OS_JOBNAME'
,p_column_display_sequence=>11
,p_column_heading=>'Os Jobname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25855330558833206)
,p_query_column_id=>12
,p_column_alias=>'ADDITIONAL_INFO'
,p_column_display_sequence=>12
,p_column_heading=>'Additional Info'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25855431726833206)
,p_query_column_id=>13
,p_column_alias=>'EXTERNAL_LOG_ID'
,p_column_display_sequence=>13
,p_column_heading=>'External Log Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25855516628833206)
,p_query_column_id=>14
,p_column_alias=>'OS_MESSAGE'
,p_column_display_sequence=>14
,p_column_heading=>'Os Message'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25853606610744841)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25847304757674856)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25846618130674851)
,p_button_name=>'P65_GO'
,p_button_static_id=>'P65_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Go'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'GO'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25847528456674857)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(25846618130674851)
,p_button_name=>'P65_RESET'
,p_button_static_id=>'P65_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Reset'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'RESET'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25848125819674860)
,p_branch_action=>'f?p=&APP_ID.:65:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25846916730674854)
,p_name=>'P65_REPORT_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25846618130674851)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25847107812674855)
,p_name=>'P65_ROWS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25846618130674851)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P65_Report Row Per Page'
,p_lov=>'.'||wwv_flow_api.id(25843427273674838)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25847718259674858)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GO,P65_REPORT_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25847931409674859)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P65_REPORT_SEARCH,P65_ROWS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25847528456674857)
);
end;
/
prompt --application/pages/page_00066
begin
wwv_flow_api.create_page(
 p_id=>66
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'BOA file load report'
,p_page_mode=>'NORMAL'
,p_step_title=>'BOA file load report'
,p_step_sub_title=>'BOA file load report'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.apexir_WORKSHEET_DATA th div {',
'font: bold 11px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
'.apexir_WORKSHEET_DATA td {',
'font: normal 11px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
''))
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150918094243'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25850207050713145)
,p_plug_name=>'BOA file load report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'     SELECT fileid,  queueid,  loadid,  client,  filename,  completed,  entrydte,  message ',
'     from RDM_LOAD.BOA_FILE_LOAD_QUEUE',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25850318878713145)
,p_name=>'BOA file load report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.::P67_FILEID:#FILEID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>25850318878713145
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25850527419713149)
,p_db_column_name=>'FILEID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Fileid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'FILEID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25850627795713157)
,p_db_column_name=>'QUEUEID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Queueid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'QUEUEID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25850723678713158)
,p_db_column_name=>'LOADID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Loadid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOADID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25850831242713158)
,p_db_column_name=>'CLIENT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Client'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLIENT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25850902367713158)
,p_db_column_name=>'FILENAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Filename'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILENAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25851124495713158)
,p_db_column_name=>'ENTRYDTE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Entrydte'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRYDTE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25957807556207634)
,p_db_column_name=>'COMPLETED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Step Completed'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COMPLETED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25957904351207637)
,p_db_column_name=>'MESSAGE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Load Message'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MESSAGE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25854018038748220)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'258541'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FILEID:QUEUEID:LOADID:CLIENT:ENTRYDTE:MESSAGE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25853816999747899)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00067
begin
wwv_flow_api.create_page(
 p_id=>67
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Edit BOA File Load Report'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit BOA File Load Report'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150918093859'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25860428228553773)
,p_plug_name=>'Edit BOA File Load Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49675875816170458)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25868631926823006)
,p_plug_name=>'SQ1'
,p_parent_plug_id=>wwv_flow_api.id(25860428228553773)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25869230803841553)
,p_plug_name=>'SQ2'
,p_parent_plug_id=>wwv_flow_api.id(25860428228553773)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25870010202873463)
,p_plug_name=>'SQ3'
,p_parent_plug_id=>wwv_flow_api.id(25860428228553773)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25865009734589511)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25860705894553776)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25860428228553773)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P67_FILEID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25861010976553786)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25860428228553773)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692172165170499)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25860620375553776)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25860428228553773)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P67_FILEID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25860830577553776)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25860428228553773)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P67_FILEID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25861605550553792)
,p_branch_action=>'f?p=&APP_ID.:66:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25861818789553800)
,p_name=>'P67_FILEID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25868631926823006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Id'
,p_source=>'FILEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25862005428553825)
,p_name=>'P67_QUEUEID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25868631926823006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Queue Id'
,p_source=>'QUEUEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25862209773553828)
,p_name=>'P67_LOADID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25868631926823006)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Load Id'
,p_source=>'LOADID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25862402249553828)
,p_name=>'P67_CLIENT'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(25869230803841553)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Lable'
,p_source=>'CLIENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25862627453553828)
,p_name=>'P67_FILENAME'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25869230803841553)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Name'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25862829913553828)
,p_name=>'P67_COMPLETED_STEP'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25869230803841553)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Completed Step'
,p_source=>'COMPLETED_STEP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25863011491553829)
,p_name=>'P67_ENTRYDTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(25870010202873463)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entry Date'
,p_source=>'ENTRYDTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25863200106553829)
,p_name=>'P67_LOAD_MESSAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(25870010202873463)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Load Message'
,p_source=>'LOAD_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>3
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25863603926553830)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_FILE_LOAD_QUEUE'
,p_attribute_02=>'BOA_FILE_LOAD_REPORT_VW'
,p_attribute_03=>'P67_FILEID'
,p_attribute_04=>'FILEID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25865331561671461)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
' UPDATE RDM_LOAD.BOA_FILE_LOAD_QUEUE',
' SET  QUEUEID   =  :P67_QUEUEID, ',
'      LOADID    =  :P67_LOADID, ',
'      CLIENT    =  :P67_CLIENT, ',
'      FILENAME  =  :P67_FILENAME, ',
'      COMPLETED =  :P67_COMPLETED_STEP,',
'      ENTRYDTE  =  :P67_ENTRYDTE, ',
'      MESSAGE   =  :P67_LOAD_MESSAGE ',
' WHERE FILEID   =  :P67_FILEID;',
' COMMIT;',
'END;'))
,p_process_error_message=>'Failed :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25860705894553776)
,p_process_success_message=>'Success :)'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25865907713692939)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
' DELETE RDM_LOAD.BOA_FILE_LOAD_QUEUE',
' WHERE FILEID   =  :P67_FILEID;',
' COMMIT;',
'END;'))
,p_process_error_message=>'Failed :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25860830577553776)
,p_process_success_message=>'Success :)'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25866416763723959)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
' INSERT INTO RDM_LOAD.BOA_FILE_LOAD_QUEUE ',
' (FILEID, QUEUEID, LOADID, CLIENT, FILENAME, COMPLETED, ENTRYDTE, MESSAGE)',
' VALUES (:P67_FILEID, ',
'         :P67_QUEUEID, ',
'         :P67_LOADID, ',
'         :P67_CLIENT, ',
'         :P67_FILENAME, ',
'         :P67_COMPLETED_STEP,',
'         :P67_ENTRYDTE, ',
'         :P67_LOAD_MESSAGE);',
'COMMIT; ',
'END;'))
,p_process_error_message=>'Failure :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25860620375553776)
,p_process_success_message=>'Success :)'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25864020425553833)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25860830577553776)
);
end;
/
prompt --application/pages/page_00068
begin
wwv_flow_api.create_page(
 p_id=>68
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Edit File Watch Queue'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit File Watch Queue'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151005100859'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25871729903042331)
,p_plug_name=>'Edit File Watch Queue'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49675875816170458)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25879703669250064)
,p_plug_name=>'SQ1'
,p_parent_plug_id=>wwv_flow_api.id(25871729903042331)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25879918560254391)
,p_plug_name=>'SQ2'
,p_parent_plug_id=>wwv_flow_api.id(25871729903042331)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25880302115287443)
,p_plug_name=>'SQ3'
,p_parent_plug_id=>wwv_flow_api.id(25871729903042331)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25882612513366150)
,p_plug_name=>'SQ4'
,p_parent_plug_id=>wwv_flow_api.id(25871729903042331)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25884627666389442)
,p_plug_name=>'SQ5'
,p_parent_plug_id=>wwv_flow_api.id(25871729903042331)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25876904626042358)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25872017480042332)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25871729903042331)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P68_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25872322380042332)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25871729903042331)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49692172165170499)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25871926521042332)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25871729903042331)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P68_PID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25872128234042332)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25871729903042331)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P68_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25888528387616825)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(25871729903042331)
,p_button_name=>'UPDATE_JOB_INFO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Update Job Info'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(25872922951042337)
,p_branch_action=>'f?p=&APP_ID.:65:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25873128485042338)
,p_name=>'P68_PID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25879703669250064)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Id'
,p_source=>'PID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25873314885042340)
,p_name=>'P68_STEP_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25879703669250064)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Name'
,p_source=>'STEP_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25873526007042340)
,p_name=>'P68_INPUT_PATH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25879918560254391)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Input Path'
,p_source=>'INPUT_PATH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>45
,p_cMaxlength=>200
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25873711004042340)
,p_name=>'P68_FILE_NAME'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(25879918560254391)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Input Name'
,p_source=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25873911883042340)
,p_name=>'P68_FILE_SIZE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(25882612513366150)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Size'
,p_source=>'FILE_SIZE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25874100196042340)
,p_name=>'P68_STAGE_PATH'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25880302115287443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Output Path'
,p_source=>'STAGE_PATH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>45
,p_cMaxlength=>100
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25874309932042341)
,p_name=>'P68_STAGE_NAME'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(25880302115287443)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Output Name'
,p_source=>'STAGE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25874512320042341)
,p_name=>'P68_COMPLETED'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25882612513366150)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Next Step Nbr'
,p_source=>'COMPLETED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STEP_#'
,p_lov=>'.'||wwv_flow_api.id(25954625288142417)||'.'
,p_cSize=>5
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25874731262042341)
,p_name=>'P68_ENTRYDTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(25882612513366150)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entry Date'
,p_source=>'ENTRYDTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>17
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25875130614042356)
,p_name=>'P68_LOADID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25882612513366150)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Load Id'
,p_source=>'LOADID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25875325053042356)
,p_name=>'P68_OS_JOBNAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(25884627666389442)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Os Job Name'
,p_source=>'OS_JOBNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25875530451042356)
,p_name=>'P68_ADDITIONAL_INFO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(25884627666389442)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Additional Info'
,p_source=>'ADDITIONAL_INFO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25875732591042356)
,p_name=>'P68_EXTERNAL_LOG_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(25884627666389442)
,p_use_cache_before_default=>'NO'
,p_prompt=>'External Log Id'
,p_source=>'EXTERNAL_LOG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25875910370042357)
,p_name=>'P68_OS_MESSAGE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(25884627666389442)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Os Message'
,p_source=>'OS_MESSAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(25875030560042352)
,p_validation_name=>'P68_ENTRYDTE must be timestamp'
,p_validation_sequence=>90
,p_validation=>'P68_ENTRYDTE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(25874731262042341)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25876327729042357)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_FILE_WATCH_QUEUE_VW'
,p_attribute_02=>'BOA_FILE_WATCH_QUEUE_VW'
,p_attribute_03=>'P68_PID'
,p_attribute_04=>'PID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25886901497542824)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'      INSERT INTO RDM_LOAD.BOA_FILE_WATCH_QUEUE ',
'       (PID, CLIENT, INPUT_PATH, FILE_NAME, FILE_SIZE, STAGE_PATH, STAGE_NAME, COMPLETED, ENTRYDTE, LOADID)',
'       VALUES (:P68_PID, :P68_STEP_NAME, :P68_INPUT_PATH, :P68_FILE_NAME, :P68_FILE_SIZE, :P68_STAGE_PATH, :P68_STAGE_NAME, :P68_COMPLETED, :P68_ENTRYDTE, :P68_LOADID);',
'       COMMIT; ',
'END;'))
,p_process_error_message=>'Failed :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25871926521042332)
,p_process_success_message=>'Success :)'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25887510810592765)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'      UPDATE RDM_LOAD.BOA_FILE_WATCH_QUEUE ',
'       SET CLIENT   =  :P68_STEP_NAME, ',
'          INPUT_PATH = :P68_INPUT_PATH, ',
'          FILE_NAME  = :P68_FILE_NAME, ',
'          FILE_SIZE  = :P68_FILE_SIZE, ',
'          STAGE_PATH = :P68_STAGE_PATH, ',
'          STAGE_NAME = :P68_STAGE_NAME, ',
'          COMPLETED  = :P68_COMPLETED, ',
'           ENTRYDTE  = :P68_ENTRYDTE, ',
'           LOADID    =:P68_LOADID',
'       WHERE PID =:P68_PID;',
'       COMMIT; ',
'END;'))
,p_process_error_message=>'Failed :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25872017480042332)
,p_process_success_message=>'Success :)'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25888024100606083)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'      DELETE RDM_LOAD.BOA_FILE_WATCH_QUEUE ',
'       WHERE PID =:P68_PID;',
'       COMMIT; ',
'END;'))
,p_process_error_message=>'Failure :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25872128234042332)
,p_process_success_message=>'Success :)'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25888706373771287)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'JOB_STATUS'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  RDM_LOAD.BOA_FEES_VALIDATE.BOA_CHECK_UNIX_JOB_STATUS( :P68_OS_JOBNAME, :P68_PID);',
'',
'END;'))
,p_process_error_message=>'Failed :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25888528387616825)
,p_process_success_message=>'Success :)'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25876703250042357)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25872128234042332)
);
end;
/
prompt --application/pages/page_00070
begin
wwv_flow_api.create_page(
 p_id=>70
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Review folders'
,p_page_mode=>'NORMAL'
,p_step_title=>'Review folders'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150914094324'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25908419462744958)
,p_plug_name=>'File list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
' "OWN_PRIV",',
' "OWN_NUM",',
' "GROUP_NAME",',
' "OWN_NAME",',
' "MON",',
' "FILE_SIZE",',
' "DD",',
' "HRMIN",',
' "FILE_NAME"',
'from #OWNER#.BOA_FILE_LIST_VW',
'where "GROUP_NAME" NOT IN (''rdmloadadm'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25908513056744958)
,p_name=>'File list'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'CGARDNER'
,p_internal_uid=>25908513056744958
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25908714904744976)
,p_db_column_name=>'OWN_PRIV'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Own Priv'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OWN_PRIV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25908806327744982)
,p_db_column_name=>'OWN_NUM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Own Num'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OWN_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25908931965744982)
,p_db_column_name=>'GROUP_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Group Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'GROUP_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25909000753744982)
,p_db_column_name=>'OWN_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Own Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OWN_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25909129984744982)
,p_db_column_name=>'MON'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mon'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25909212983744982)
,p_db_column_name=>'FILE_SIZE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'File Size'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILE_SIZE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25909312457744982)
,p_db_column_name=>'DD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dd'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25909428968744982)
,p_db_column_name=>'HRMIN'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Hrmin'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'HRMIN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25909511907744983)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'File Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILE_NAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25909621194745464)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'259097'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'OWN_PRIV:OWN_NUM:GROUP_NAME:OWN_NAME:MON:FILE_SIZE:DD:HRMIN:FILE_NAME'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00071
begin
wwv_flow_api.create_page(
 p_id=>71
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'List Input Folders'
,p_page_mode=>'NORMAL'
,p_step_title=>'List Input Folders'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151102145000'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25912302108487482)
,p_plug_name=>'List Folders'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PID", ',
'"VAR_NAME",',
'"VAR_NAME_VALUE",',
'"COMMENTS"',
'from "#OWNER#"."BOA_SCHEMA_VAR_NAMES"'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25912417410487482)
,p_name=>'List Folders'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::P60_0_INPUT_PATH:#VAR_NAME_VALUE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#\menu\check2_16x16.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>25912417410487482
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25912601696487489)
,p_db_column_name=>'PID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25912710839487498)
,p_db_column_name=>'VAR_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Var Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VAR_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25912815036487498)
,p_db_column_name=>'VAR_NAME_VALUE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Var Name Value'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'VAR_NAME_VALUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25912908206487498)
,p_db_column_name=>'COMMENTS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Comments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25913316223510493)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'259134'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PID:VAR_NAME:VAR_NAME_VALUE:COMMENTS'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00072
begin
wwv_flow_api.create_page(
 p_id=>72
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'List Output Folders'
,p_page_mode=>'NORMAL'
,p_step_title=>'List Output Folders'
,p_step_sub_title=>'List Output Folders'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151102145018'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25940004842538376)
,p_plug_name=>'List Output Folders'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PID", ',
'"VAR_NAME",',
'"VAR_NAME_VALUE",',
'"COMMENTS"',
'from "#OWNER#"."BOA_SCHEMA_VAR_NAMES"'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25940221571538382)
,p_name=>'List Folders'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::P60_0_OUTPUT_PATH:#VAR_NAME_VALUE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#\menu\check2_16x16.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>25940221571538382
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25940330550538385)
,p_db_column_name=>'PID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25940417211538391)
,p_db_column_name=>'VAR_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Var Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VAR_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25940525674538391)
,p_db_column_name=>'VAR_NAME_VALUE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Var Name Value'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'VAR_NAME_VALUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25940617419538391)
,p_db_column_name=>'COMMENTS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Comments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25940706679538391)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'259408'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PID:VAR_NAME:VAR_NAME_VALUE:COMMENTS'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00073
begin
wwv_flow_api.create_page(
 p_id=>73
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'List Processes'
,p_page_mode=>'NORMAL'
,p_step_title=>'List Processes'
,p_step_sub_title=>'List Processes'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150916122532'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25943802521702413)
,p_plug_name=>'List Processes'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PID", ',
'"VAR_NAME",',
'"VAR_NAME_VALUE",',
'"COMMENTS"',
'from "#OWNER#"."BOA_SCHEMA_VAR_NAMES"'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25944015868702416)
,p_name=>'List Folders'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::P60_0_PROCESS:#VAR_NAME#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#\menu\check2_16x16.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>25944015868702416
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25944111168702420)
,p_db_column_name=>'PID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25944231715702427)
,p_db_column_name=>'VAR_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Var Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VAR_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25944308576702427)
,p_db_column_name=>'VAR_NAME_VALUE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Var Name Value'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VAR_NAME_VALUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25944426518702427)
,p_db_column_name=>'COMMENTS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Comments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25944501117702427)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'259446'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PID:VAR_NAME:VAR_NAME_VALUE:COMMENTS'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00074
begin
wwv_flow_api.create_page(
 p_id=>74
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'List of Programs'
,p_page_mode=>'NORMAL'
,p_step_title=>'List of Programs'
,p_step_sub_title=>'List of Programs'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150916124952'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25945703582796812)
,p_plug_name=>'List of Programs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select   pid, PROGRAM_ACTION,  PROGRAM_NAME_VALUE,  VERSION_NO,  COMMENTS          ',
'  from BOA_PROGRAM_NAMES'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25945811926796812)
,p_name=>'List of Programs'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::P60_0_ACTION_PERFORMED:#PROGRAM_NAME_VALUE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#\menu\check2_16x16.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>25945811926796812
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25946006405796827)
,p_db_column_name=>'PID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25946128875796827)
,p_db_column_name=>'PROGRAM_ACTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Program Action'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROGRAM_ACTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25946218555796827)
,p_db_column_name=>'PROGRAM_NAME_VALUE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Program Name Value'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROGRAM_NAME_VALUE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25946312894796827)
,p_db_column_name=>'VERSION_NO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Version No'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'VERSION_NO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25946424130796828)
,p_db_column_name=>'COMMENTS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Comments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25946816899822123)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'259469'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PID:PROGRAM_ACTION:PROGRAM_NAME_VALUE:VERSION_NO:COMMENTS'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00075
begin
wwv_flow_api.create_page(
 p_id=>75
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'list of file watchers'
,p_page_mode=>'NORMAL'
,p_step_title=>'list of file watchers'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.report-standard th div {',
'font: bold 10px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
'.report-standard td {',
'font: normal 10px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
''))
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150915140128'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25921210874916834)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25921628535922015)
,p_name=>'File Watchers'
,p_template=>wwv_flow_api.id(49674657155170457)
,p_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT OWNER, FILE_WATCHER_NAME, ENABLED, DESTINATION_OWNER, DESTINATION, DIRECTORY_PATH,FILE_NAME, CREDENTIAL_OWNER,  CREDENTIAL_NAME , MIN_FILE_SIZE, LAST_MODIFIED_TIME, COMMENTS',
'   FROM TABLE(RDM_LOAD.BOA_FEES_VALIDATE.BOA_FILE_WATCHER)'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25921914027922033)
,p_query_column_id=>1
,p_column_alias=>'OWNER'
,p_column_display_sequence=>1
,p_column_heading=>'OWNER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25922013679922037)
,p_query_column_id=>2
,p_column_alias=>'FILE_WATCHER_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'FILE_WATCHER_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25922127382922037)
,p_query_column_id=>3
,p_column_alias=>'ENABLED'
,p_column_display_sequence=>3
,p_column_heading=>'ENABLED'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25922228877922037)
,p_query_column_id=>4
,p_column_alias=>'DESTINATION_OWNER'
,p_column_display_sequence=>4
,p_column_heading=>'DESTINATION_OWNER'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25922313750922037)
,p_query_column_id=>5
,p_column_alias=>'DESTINATION'
,p_column_display_sequence=>5
,p_column_heading=>'DESTINATION'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25922415403922037)
,p_query_column_id=>6
,p_column_alias=>'DIRECTORY_PATH'
,p_column_display_sequence=>6
,p_column_heading=>'DIRECTORY_PATH'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25922502194922037)
,p_query_column_id=>7
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'FILE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25922606353922037)
,p_query_column_id=>8
,p_column_alias=>'CREDENTIAL_OWNER'
,p_column_display_sequence=>8
,p_column_heading=>'CREDENTIAL_OWNER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25922729998922037)
,p_query_column_id=>9
,p_column_alias=>'CREDENTIAL_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'CREDENTIAL_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25922816259922037)
,p_query_column_id=>10
,p_column_alias=>'MIN_FILE_SIZE'
,p_column_display_sequence=>10
,p_column_heading=>'MIN_FILE_SIZE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25922902843922037)
,p_query_column_id=>11
,p_column_alias=>'LAST_MODIFIED_TIME'
,p_column_display_sequence=>11
,p_column_heading=>'LAST_MODIFIED_TIME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25923026184922037)
,p_query_column_id=>12
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>12
,p_column_heading=>'COMMENTS'
);
end;
/
prompt --application/pages/page_00080
begin
wwv_flow_api.create_page(
 p_id=>80
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'RDM LOAD LOGS'
,p_page_mode=>'NORMAL'
,p_step_title=>'RDM LOAD LOGS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.apexir_WORKSHEET_DATA th div {',
'font: bold 11px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
'.apexir_WORKSHEET_DATA td {',
'font: normal 11px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
'',
'.report-standard th div {',
'font: bold 11px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
'.report-standard td {',
'font: normal 11px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
'.header th div {',
'font: bold 11px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
''))
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151111133931'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25989409847737100)
,p_plug_name=>'Process log'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25989611840756535)
,p_plug_name=>'Process log'
,p_parent_plug_id=>wwv_flow_api.id(25989409847737100)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT process, sub_process, entrydte, rowcounts, message',
'from(',
'SELECT process, sub_process, entrydte, rowcounts, message',
' FROM RDM_LOAD.BOA_PROCESS_LOG  ',
'ORDER BY ENTRYDTE DESC);'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(25989721554756535)
,p_name=>'Process log'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'CGARDNER'
,p_internal_uid=>25989721554756535
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25989909203756555)
,p_db_column_name=>'PROCESS'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Process'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25990025124756564)
,p_db_column_name=>'SUB_PROCESS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sub Process'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUB_PROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25990114262756564)
,p_db_column_name=>'ENTRYDTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Entrydte'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRYDTE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25990228733756564)
,p_db_column_name=>'ROWCOUNTS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Rowcounts'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'ROWCOUNTS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25990311525756564)
,p_db_column_name=>'MESSAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Message'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'MESSAGE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25990413572757055)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'259905'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROCESS:SUB_PROCESS:ENTRYDTE:ROWCOUNTS:MESSAGE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25991011803803832)
,p_name=>'Billing Load queue'
,p_parent_plug_id=>wwv_flow_api.id(25989409847737100)
,p_template=>wwv_flow_api.id(49674657155170457)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid=>true
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT PID AS EDIT, PID, CLIENT, FILE_NAME, COMPLETED, ENTRYDTE, LOAD_COMPLTE, FILE_TYPE ',
'FROM RDM_LOAD.BOA_BILLING_LOAD_QUEUE    ',
'order by pid desc'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26026007366013093)
,p_query_column_id=>1
,p_column_alias=>'EDIT'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.::P82_PID:#EDIT#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25991316226803846)
,p_query_column_id=>2
,p_column_alias=>'PID'
,p_column_display_sequence=>2
,p_column_heading=>'PID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25991409246803851)
,p_query_column_id=>3
,p_column_alias=>'CLIENT'
,p_column_display_sequence=>3
,p_column_heading=>'CLIENT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25991529980803851)
,p_query_column_id=>4
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'FILE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25991604062803851)
,p_query_column_id=>5
,p_column_alias=>'COMPLETED'
,p_column_display_sequence=>5
,p_column_heading=>'COMPLETED'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25991731693803852)
,p_query_column_id=>6
,p_column_alias=>'ENTRYDTE'
,p_column_display_sequence=>6
,p_column_heading=>'Entry_Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25991828181803852)
,p_query_column_id=>7
,p_column_alias=>'LOAD_COMPLTE'
,p_column_display_sequence=>7
,p_column_heading=>'LOAD_COMPLTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25991902159803852)
,p_query_column_id=>8
,p_column_alias=>'FILE_TYPE'
,p_column_display_sequence=>8
,p_column_heading=>'FILE_TYPE'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25992705541925060)
,p_name=>'Files Processed'
,p_parent_plug_id=>wwv_flow_api.id(25989409847737100)
,p_template=>wwv_flow_api.id(49674657155170457)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select PID AS EDIT, PID, CLIENT, FILE_NAME, RECORDCNT, ENTRY_DATE, COMMENTS ',
' FROM RDM_LOAD.BOFA_FILES_PROCESSED ',
'order by pid desc'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26033217248585854)
,p_query_column_id=>1
,p_column_alias=>'EDIT'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.::P83_PID:#EDIT#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25993020504925062)
,p_query_column_id=>2
,p_column_alias=>'PID'
,p_column_display_sequence=>2
,p_column_heading=>'PID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25993102714925066)
,p_query_column_id=>3
,p_column_alias=>'CLIENT'
,p_column_display_sequence=>3
,p_column_heading=>'CLIENT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25993200910925066)
,p_query_column_id=>4
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'FILE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25993322106925066)
,p_query_column_id=>5
,p_column_alias=>'RECORDCNT'
,p_column_display_sequence=>5
,p_column_heading=>'RECORDCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25993414439925066)
,p_query_column_id=>6
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'ENTRY_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25993512668925066)
,p_query_column_id=>7
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>7
,p_column_heading=>'COMMENTS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25995108667001667)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26199008121077139)
,p_name=>'P80_PROCESS_LOG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25989611840756535)
,p_prompt=>'BOA Process Log'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59547376635485743)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26199312206090414)
,p_name=>'P80_BOA_FILE_LOAD_QUEUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25991011803803832)
,p_prompt=>'Boa File Load Queue'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59547376635485743)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26199621898101076)
,p_name=>'P80_BOA_FILES_LOADED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25992705541925060)
,p_prompt=>'Boa Files Loaded'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59547376635485743)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00081
begin
wwv_flow_api.create_page(
 p_id=>81
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Restart process'
,p_page_mode=>'NORMAL'
,p_step_title=>'Restart process'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(49670770557170447)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151013134321'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26015414230080281)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26016003541105549)
,p_plug_name=>'Execute procedure'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26018830618010913)
,p_plug_name=>'Instructions for restarting a process'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>21
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'<style>',
'body {background-color:white}',
'h4   {color:blue}',
'</style>',
'</head>',
'<body>',
'<h4>Instructions for restarting a process</h4>',
'<ul>',
'  <li>Select a valid process:  XXXXX-STAGE</li>',
'  <li>Put the actual file name in file name field</li>',
'  <li>Debug MUST be set to NO</li>',
'</ul>',
'</body>',
'</html>',
''))
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26021506376353996)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26016003541105549)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Submit'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26016323736112156)
,p_name=>'P81_INPUT_FOLDER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26016003541105549)
,p_prompt=>'Input Folder'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select VAR_NAME_VALUE D, VAR_NAME_VALUE R ',
'from BOA_SCHEMA_VAR_NAMES  ',
'where COMMENTS = ''PROCESS-NAME''',
' AND  VAR_NAME = :P81_PROCESS_NAME'))
,p_lov_cascade_parent_items=>'P81_PROCESS_NAME'
,p_ajax_items_to_submit=>'P81_PROCESS_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 300px;'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529958814244088)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26016514247116550)
,p_name=>'P81_FILE_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26016003541105549)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529958814244088)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26016704326121188)
,p_name=>'P81_FILE_SIZE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26016003541105549)
,p_item_default=>'0'
,p_prompt=>'File Size'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26016925880126362)
,p_name=>'P81_PROCESS_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26016003541105549)
,p_prompt=>'Process Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select VAR_NAME D, VAR_NAME R ',
'from BOA_SCHEMA_VAR_NAMES  ',
'where COMMENTS = ''PROCESS-NAME'''))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529958814244088)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26017114666131554)
,p_name=>'P81_DEBUG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26016003541105549)
,p_prompt=>'Debug'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(16100004046559910)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529958814244088)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(26025029641926807)
,p_validation_name=>'P81_FILE_NAME'
,p_validation_sequence=>10
,p_validation=>'P81_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(26021506376353996)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(26016514247116550)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26015814145099190)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Restart process'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'',
' RDM_LOAD.boa_fees_validate.BOA_FILE_WATCHER( P_directory_path => :P81_INPUT_FOLDER, P_actual_file_name => :P81_FILE_NAME, p_file_size=>:P81_FILE_SIZE, p_file_timestamp=>SYSDATE,  P_CLIENT =>:P81_PROCESS_NAME, P_DEBUG=> :P81_DEBUG );     ',
'',
'end;'))
,p_process_error_message=>'Failure :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26021506376353996)
,p_process_success_message=>'Success :)'
);
end;
/
prompt --application/pages/page_00082
begin
wwv_flow_api.create_page(
 p_id=>82
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Edit Load Queue'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit Load Queue'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151007155044'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26027002041065333)
,p_name=>'Edit-Load-Queue'
,p_template=>wwv_flow_api.id(49674657155170457)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select PID, CLIENT, FILE_NAME, COMPLETED, ENTRYDTE, LOAD_COMPLTE, FILE_TYPE',
'from RDM_LOAD.BOA_BILLING_LOAD_QUEUE ',
'where PID = :P82_PID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26027319959065357)
,p_query_column_id=>1
,p_column_alias=>'PID'
,p_column_display_sequence=>1
,p_column_heading=>'PID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26027432050065357)
,p_query_column_id=>2
,p_column_alias=>'CLIENT'
,p_column_display_sequence=>2
,p_column_heading=>'CLIENT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26027511324065357)
,p_query_column_id=>3
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'FILE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26027613584065357)
,p_query_column_id=>4
,p_column_alias=>'COMPLETED'
,p_column_display_sequence=>4
,p_column_heading=>'COMPLETED'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26027712366065357)
,p_query_column_id=>5
,p_column_alias=>'ENTRYDTE'
,p_column_display_sequence=>5
,p_column_heading=>'ENTRYDTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26027803490065357)
,p_query_column_id=>6
,p_column_alias=>'LOAD_COMPLTE'
,p_column_display_sequence=>6
,p_column_heading=>'LOAD_COMPLTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26027910701065357)
,p_query_column_id=>7
,p_column_alias=>'FILE_TYPE'
,p_column_display_sequence=>7
,p_column_heading=>'FILE_TYPE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26028026628072473)
,p_plug_name=>'Parms'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26034927957668932)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26028601891254554)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26028026628072473)
,p_button_name=>'RESET_PID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Reset Pid'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26029008948266115)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26028026628072473)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Delete Row'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26030132506348531)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26028026628072473)
,p_button_name=>'MARK-COMPLETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Mark-complete'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26029600877304775)
,p_branch_name=>'return '
,p_branch_action=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26028331674077782)
,p_name=>'P82_PID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26028026628072473)
,p_prompt=>'Pid'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26029314535296061)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset pid'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'update RDM_LOAD.bOA_BILLING_LOAD_QUEUE  set completed = 0 where PID = :P82_PID;',
'',
'COMMIT;',
'END;'))
,p_process_error_message=>'Action Failed :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26028601891254554)
,p_process_success_message=>'SUCCESS :)'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26029823932327168)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'delete RDM_LOAD.bOA_BILLING_LOAD_QUEUE  where PID = :P82_PID;',
'',
'COMMIT;',
'END;'))
,p_process_error_message=>'Failed :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26029008948266115)
,p_process_success_message=>'Success :)'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26030315106362483)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'MARK-COMPLETE'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'update RDM_LOAD.bOA_BILLING_LOAD_QUEUE  set completed = 1, LOAD_COMPLTE = ''YES'' where PID = :P82_PID;',
'',
'COMMIT;',
'END;'))
,p_process_error_message=>'Action Failed :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26030132506348531)
,p_process_success_message=>'Success :)'
);
end;
/
prompt --application/pages/page_00083
begin
wwv_flow_api.create_page(
 p_id=>83
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Edit Files Processed'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit Files Processed'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151007163317'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26031417727552496)
,p_plug_name=>'Edit Files Processed'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26034715490665394)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26036405943823442)
,p_name=>'Display data'
,p_template=>wwv_flow_api.id(49674657155170457)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT PID, CLIENT, FILE_NAME, RECORDCNT, ENTRY_DATE, COMMENTS',
'FROM RDM_LOAD.BOFA_FILES_PROCESSED ',
'where  PID = :P83_PID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P83_PID'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26036703732823444)
,p_query_column_id=>1
,p_column_alias=>'PID'
,p_column_display_sequence=>1
,p_column_heading=>'PID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26036813660823444)
,p_query_column_id=>2
,p_column_alias=>'CLIENT'
,p_column_display_sequence=>2
,p_column_heading=>'CLIENT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26036907200823444)
,p_query_column_id=>3
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'FILE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26037017196823444)
,p_query_column_id=>4
,p_column_alias=>'RECORDCNT'
,p_column_display_sequence=>4
,p_column_heading=>'RECORDCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26037125866823444)
,p_query_column_id=>5
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'ENTRY_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26037205734823444)
,p_query_column_id=>6
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>6
,p_column_heading=>'COMMENTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26033613365636412)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26031417727552496)
,p_button_name=>'DELETE_ROW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Delete Row'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26035730783773903)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26031417727552496)
,p_button_name=>'SEARCH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Search'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26034020649645120)
,p_branch_name=>'Return'
,p_branch_action=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26033613365636412)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26031717273555514)
,p_name=>'P83_PID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26031417727552496)
,p_prompt=>'Pid'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26033432281632344)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'DELETE RDM_LOAD.BOFA_FILES_PROCESSED WHERE PID = :P83_PID;',
'COMMIT;',
'',
'END;'))
,p_process_error_message=>'Failure :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26033613365636412)
,p_process_success_message=>'Success :)'
);
end;
/
prompt --application/pages/page_00084
begin
wwv_flow_api.create_page(
 p_id=>84
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Search Files Processed'
,p_page_mode=>'NORMAL'
,p_step_title=>'Search Files Processed'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151007162950'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26038427292895894)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>wwv_flow_api.id(49683365444170483)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26038621189903588)
,p_plug_name=>'searching'
,p_parent_plug_id=>wwv_flow_api.id(26038427292895894)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT PID, CLIENT, FILE_NAME, RECORDCNT, ENTRY_DATE, COMMENTS',
'FROM RDM_LOAD.BOFA_FILES_PROCESSED'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26038720224903588)
,p_name=>'searching'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'CGARDNER'
,p_internal_uid=>26038720224903588
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26038910291903593)
,p_db_column_name=>'PID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26039022726903599)
,p_db_column_name=>'CLIENT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Client'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLIENT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26039108670903599)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'File Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26039221416903599)
,p_db_column_name=>'RECORDCNT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Recordcnt'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'RECORDCNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26039316166903599)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Entry Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26039410730903599)
,p_db_column_name=>'COMMENTS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Comments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26040229416924851)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260403'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PID:CLIENT:FILE_NAME:RECORDCNT:ENTRY_DATE:COMMENTS'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00085
begin
wwv_flow_api.create_page(
 p_id=>85
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Move Loaded File to Loaded '
,p_page_mode=>'NORMAL'
,p_step_title=>'Move Loaded File to Loaded '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.apexir_WORKSHEET_DATA th div {',
'font: bold 11px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
'.apexir_WORKSHEET_DATA td {',
'font: normal 11px/12px "Helvetica Neue",Helvetica,Arial,sans-serif !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151110093149'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26090315666897434)
,p_plug_name=>'Criteria  Needed'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49678584607170474)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'<style>',
'body {background-color:white}',
'h4   {color:blue}',
'</style>',
'</head>',
'<body>',
'<h4> A solution to where files were FILE-LOGGED, shown to be loaded, but are still in STAGE when they should be in LOADED</h4> ',
'<ul>',
'  <li> By selecting icon at the beginning of row: </li>',
'  <li> The Load ID of BOA_FILE_WATCH_QUEUE will equal the File Id </li>',
'  <li> BOA_FILE_LOAD_QUEUE completed will be set to one (1)</li>',
'  <li> BOA_FILE_LOAD_QUEUE MESSAGE will be set to FILE-LOADED</li>',
'</ul>',
'</body>',
'</html>',
''))
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26096310931994810)
,p_plug_name=>'audit_report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49677356183170462)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select a.FILEID, a.QUEUEID, a.LOADID, a.CLIENT as watch_queue_name, a.CLIENT as load_queue_name, a.FILENAME, a.COMPLETED, a.ENTRYDTE, a.MESSAGE, b.COMPLETED as QUEUE_STATUS, b.ENTRYDTE AS QUE_DATE, c.RECORDCNT, c.ENTRY_DATE load_date, c.comments,  D.'
||'COMPLETED as steps_completed',
'from RDM_LOAD.BOA_FILE_LOAD_QUEUE a',
'left join ( select PID, CLIENT, FILE_NAME, COMPLETED, ENTRYDTE  from RDM_LOAD.BOA_BILLING_LOAD_QUEUE ) b on ( B.PID = a.queueid)',
'left Join ( select PID, CLIENT, FILE_NAME, RECORDCNT, ENTRY_DATE, COMMENTS from RDM_LOAD.BOFA_FILES_PROCESSED ) c on ( c.pid = a.loadid) ',
'left join ( select  PID, CLIENT, INPUT_PATH, FILE_NAME, FILE_SIZE, STAGE_PATH, STAGE_NAME, COMPLETED, ENTRYDTE, LOADID  from RDM_LOAD.BOA_FILE_WATCH_QUEUE ) D  ON ( D.FILE_NAME = A.FILENAME) ',
'order by a.fileid desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26096418353994822)
,p_name=>'audit_report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.::P86_FILE_ID,P86_FILE_NAME,P86_LOAD_ID:#FILEID#,#FILENAME#,#LOADID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>26096418353994822
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26096608179994841)
,p_db_column_name=>'FILEID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Fileid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'FILEID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26096726980994849)
,p_db_column_name=>'QUEUEID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Queueid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'QUEUEID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26096818291994849)
,p_db_column_name=>'LOADID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Loadid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOADID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26096902845994849)
,p_db_column_name=>'LOAD_QUEUE_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Load Queue Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOAD_QUEUE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26097021421994850)
,p_db_column_name=>'WATCH_QUEUE_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Watch Queue Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WATCH_QUEUE_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26097109655994850)
,p_db_column_name=>'FILENAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Filename'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILENAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26097226202994850)
,p_db_column_name=>'COMPLETED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Completed'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COMPLETED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26097325943994850)
,p_db_column_name=>'ENTRYDTE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Entrydte'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRYDTE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26097424127994850)
,p_db_column_name=>'MESSAGE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Message'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MESSAGE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26097520979994850)
,p_db_column_name=>'QUEUE_STATUS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Queue Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'QUEUE_STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26097620390994850)
,p_db_column_name=>'QUE_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Que Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'QUE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26097701632994850)
,p_db_column_name=>'RECORDCNT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Recordcnt'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'RECORDCNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26097830263994851)
,p_db_column_name=>'LOAD_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Load Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LOAD_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26097905756994851)
,p_db_column_name=>'COMMENTS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Comments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26098019495994851)
,p_db_column_name=>'STEPS_COMPLETED'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Steps Completed'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STEPS_COMPLETED'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26098124091998557)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'260982'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FILEID:QUEUEID:LOADID:LOAD_QUEUE_NAME:WATCH_QUEUE_NAME:FILENAME:COMPLETED:ENTRYDTE:MESSAGE:QUEUE_STATUS:QUE_DATE:RECORDCNT:LOAD_DATE:COMMENTS:STEPS_COMPLETED'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26141004818002150)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00086
begin
wwv_flow_api.create_page(
 p_id=>86
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Send File to Loaded'
,p_page_mode=>'NORMAL'
,p_step_title=>'Send File to Loaded'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151102110208'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26099228265151248)
,p_plug_name=>'Details of file '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674657155170457)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26101415293261032)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49674087496170455)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7267517659954997)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(49692956546170501)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26099905240182399)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26099228265151248)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Submit'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26100532299218637)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26099228265151248)
,p_button_name=>'SUBMIT_BATCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691963420170499)
,p_button_image_alt=>'Submit Batch'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26100905013228869)
,p_branch_action=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26099529432156837)
,p_name=>'P86_FILE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26099228265151248)
,p_prompt=>'File Id'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26099719296161495)
,p_name=>'P86_FILE_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26099228265151248)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26102613515376886)
,p_name=>'P86_LOAD_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26099228265151248)
,p_prompt=>'Load Id'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(59529455913233803)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26100131344199428)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'update RDM_LOAD.BOA_FILE_LOAD_QUEUE ',
'set completed = 1, MESSAGE = ''FILE-LOADED'' ',
'where   FILEID  = :P86_FILE_ID;',
'',
'commit;',
'',
'UPDATE RDM_LOAD.BOA_FILE_WATCH_QUEUE ',
'SET LOADID = :P86_LOAD_ID',
'WHERE PID =  :P86_FILE_ID;',
'',
'end;'))
,p_process_error_message=>'Failed :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26099905240182399)
,p_process_success_message=>'Success :)'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26100312906212956)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run batch'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'RDM_LOAD.boa_fees_validate.BOA_LOAD_QUEUE_WATCH ( p_debug =>0, p_step_no =>1, p_next_step_no => 2);',
'',
'END;'))
,p_process_error_message=>'Batch process failed :('
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26100532299218637)
,p_process_success_message=>'Batch process submitted :)'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(49668485976170432)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150727123141'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7266721809954979)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49675875816170458)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7267019562954988)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(7266721809954979)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7266804458954982)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7266721809954979)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7266911200954988)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7266721809954979)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(49691184008170497)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7267227066954996)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7267104310954988)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7267429369954997)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7267313232954996)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00175
begin
wwv_flow_api.create_page(
 p_id=>175
,p_user_interface_id=>wwv_flow_api.id(7266204635954931)
,p_name=>'Login-Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login-Page'
,p_step_sub_title=>'Login-Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(49668959098170441)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140827103009'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15650516043152331)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49672874582170452)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15650715978152331)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(49672874582170452)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY_2'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15651908580152335)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(15650715978152331)
,p_button_name=>'P175_LOGIN'
,p_button_static_id=>'P175_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(49691558293170497)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'CENTER'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15653005237152337)
,p_branch_name=>'GO_TO_HOMEPAGE'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(15651908580152335)
,p_branch_sequence=>50
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15650908756152332)
,p_name=>'P175_USERNAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(15650715978152331)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(49691087232170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application user name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15651422073152335)
,p_name=>'P175_PASSWORD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(15650715978152331)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(49691087232170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application password.'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15652120910152336)
,p_name=>'P175_APP_TITLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(15650715978152331)
,p_prompt=>'<font face="Agfa Rotis Semi Serif" size="5" color="gray">Apex Utilities</font>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(49691087232170497)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15652506710152336)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P175_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15652318030152336)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P175_USERNAME,',
'    p_password => :P175_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15652725135152336)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P175_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(18815332652619346)
);
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
