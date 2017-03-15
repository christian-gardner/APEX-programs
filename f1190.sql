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
,p_default_application_id=>1190
,p_default_owner=>'RDM'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 1190 - IRecon File Query Utility
--
-- Application Export:
--   Application:     1190
--   Name:            IRecon File Query Utility
--   Date and Time:   12:31 Wednesday March 15, 2017
--   Exported By:     CHRISTIAN.GARDNER
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     69427033981319
--

-- Application Statistics:
--   Pages:                     25
--     Items:                   95
--     Computations:             1
--     Validations:              6
--     Processes:               38
--     Regions:                 80
--     Buttons:                 49
--     Dynamic Actions:          4
--   Shared Components:
--     Logic:
--       Items:                  1
--       Data Loading:           1
--     Navigation:
--       Lists:                  8
--       Breadcrumbs:            1
--         Entries:             19
--       NavBar Entries:         2
--     Security:
--       Authentication:         4
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                15
--         Region:              30
--         Label:               17
--         List:                20
--         Popup LOV:            1
--         Calendar:             3
--         Breadcrumb:           2
--         Button:               8
--         Report:              10
--       LOVs:                   9
--       Shortcuts:              1
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,1190)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'RDM')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'IRecon File Query Utility')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_1181190')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20150129070803'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(37510026377985841)
,p_application_tab_set=>0
,p_logo_image=>'#WORKSPACE_IMAGES#SPI_RGB.jpg'
,p_logo_image_attributes=>'alt="Safeguardproperties"; title="Safeguardproperties"'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150129070803'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(21431802387722110)
,p_name=>'Main'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21432203805730078)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage Users'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  PID',
'FROM BOA_SELF_SERV_USERS ',
'WHERE  UPPER(APEX_USER) = UPPER(:P175_USERNAME)',
'and PRIV_LEVEL = 4'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21669212550363084)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Process File Query'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(21598307808563531)
,p_name=>'Data Load Process Train - Load Report Source'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21598726518563538)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Data Load Source'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21599011625563542)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Data / Table Mapping'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21599312209563542)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Data Validation'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21599624986563542)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Data Load Results'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(21735724796581205)
,p_name=>'Create Predefined Report'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21736127011585364)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Create Predefined Report'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(21737700742687826)
,p_name=>'Upload File Query'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21738028650691023)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Upload File Query'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(21738612694729063)
,p_name=>'cleanup work table'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21738900589734344)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Edit File Query'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(21743415342146097)
,p_name=>'Preview Predefined Report'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21743715124153036)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Review Predefined Report Query'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(21754124617943492)
,p_name=>'Manage Library'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21754431937950378)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Review Predefined Report'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(21754502631974963)
,p_name=>'Update Predefined Report'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21755020051986312)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Update Predefined Report Library'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21758206470250808)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Review Predefined Report Query Library'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
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
 p_id=>wwv_flow_api.id(114003724265148)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(36244947376571091)
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
 p_id=>wwv_flow_api.id(36255733999571147)
,p_icon_sequence=>10
,p_icon_image=>'#WORKSPACE_IMAGES#Home.png'
,p_icon_subtext=>'Home'
,p_icon_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_icon_image_alt=>'Home'
,p_icon_height=>26
,p_icon_width=>25
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'1'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(36255833811571149)
,p_icon_sequence=>20
,p_icon_image=>'#WORKSPACE_IMAGES#Exit.png'
,p_icon_subtext=>'Logout'
,p_icon_target=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.::::'
,p_icon_image_alt=>'Logout'
,p_icon_height=>22
,p_icon_width=>25
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'1'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_IN_CONDITION'
,p_begins_on_new_line=>'YES'
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
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(21592524400492716)
,p_name=>'FSP_PROCESS_STATE_21584828312276258'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
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
 p_id=>wwv_flow_api.id(21605115165563573)
,p_lov_name=>'DATA_LOAD_CHARSET'
,p_lov_query=>'.'||wwv_flow_api.id(21605115165563573)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21605429902563575)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-16 Little Endian'
,p_lov_return_value=>'utf-16le'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21605703544563575)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-16 Big Endian'
,p_lov_return_value=>'utf-16be'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21606009649563575)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'US-ASCII'
,p_lov_return_value=>'us-ascii'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21606312429563575)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Arabic ISO-8859-6'
,p_lov_return_value=>'iso-8859-6'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21606620641563576)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Arabic Windows 1256'
,p_lov_return_value=>'windows-1256'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21606923177563576)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Chinese Big5'
,p_lov_return_value=>'big5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21607219127563576)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Chinese GBK'
,p_lov_return_value=>'gbk'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21607502426563576)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic ISO-8859-5'
,p_lov_return_value=>'iso-8859-5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21607829065563576)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic KOI8-R'
,p_lov_return_value=>'koi8-r'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21608118237563576)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic KOI8-U'
,p_lov_return_value=>'koi8-u'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21608410337563577)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic Windows 1251'
,p_lov_return_value=>'windows-1251'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21608718179563577)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Eastern European ISO-8859-2'
,p_lov_return_value=>'iso-8859-2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21609028081563577)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Eastern European Windows 1250'
,p_lov_return_value=>'windows-1250'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21609332522563577)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Greek ISO-8859-7'
,p_lov_return_value=>'iso-8859-7'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21609622474563577)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Greek Windows 1253'
,p_lov_return_value=>'windows-1253'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21609915964563577)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hebrew ISO-8859-8-i'
,p_lov_return_value=>'iso-8859-8-i'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21610215645563577)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hebrew Windows 1255'
,p_lov_return_value=>'windows-1255'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21610504663563577)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Japanese EUC'
,p_lov_return_value=>'euc-jp'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21610829592563578)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Japanese Shift JIS'
,p_lov_return_value=>'shift_jis'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21611111516563578)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Korean EUC'
,p_lov_return_value=>'euc-kr'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21611415321563578)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Northern European ISO-8859-4'
,p_lov_return_value=>'iso-8859-4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21611730950563578)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Northern European Windows 1257'
,p_lov_return_value=>'windows-1257'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21612026699563578)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Southern European ISO-8859-3'
,p_lov_return_value=>'iso-8859-3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21612308920563578)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Thai TIS-620'
,p_lov_return_value=>'tis-620'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21612628014563578)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Turkish ISO-8859-9'
,p_lov_return_value=>'iso-8859-9'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21612917910563578)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Turkish Windows 1254'
,p_lov_return_value=>'windows-1254'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21613206099563578)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-8'
,p_lov_return_value=>'utf-8'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21613501775563579)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Vietnamese Windows 1258'
,p_lov_return_value=>'windows-1258'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21613830102563579)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Western European ISO-8859-1'
,p_lov_return_value=>'iso-8859-1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21614128195563579)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Western European Windows 1252'
,p_lov_return_value=>'windows-1252'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(21601409549563550)
,p_lov_name=>'DATA_LOAD_OPTION'
,p_lov_query=>'.'||wwv_flow_api.id(21601409549563550)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21601711518563553)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Upload file, comma separated (*.csv) or tab delimited'
,p_lov_return_value=>'UPLOAD'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21602003641563559)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Copy and Paste'
,p_lov_return_value=>'PASTE'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(21440931233862836)
,p_lov_name=>'END USER PRIV'
,p_lov_query=>'.'||wwv_flow_api.id(21440931233862836)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21441215760862840)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'End User'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21441528550862843)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Developer'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21441818973862843)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Approver'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21442123652862843)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Admin'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(21604109780563571)
,p_lov_name=>'FIRST_ROW_OPTION'
,p_lov_query=>'.'||wwv_flow_api.id(21604109780563571)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21604407985563572)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(21468918054407810)
,p_lov_name=>'REPORT PAGE'
,p_lov_query=>'.'||wwv_flow_api.id(21468918054407810)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21469209044407811)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Weekly Reports'
,p_lov_return_value=>'501'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(21466322248361718)
,p_lov_name=>'REPORT REQUEST TYPES'
,p_lov_query=>'.'||wwv_flow_api.id(21466322248361718)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21466614392361718)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'System Generated Report'
,p_lov_return_value=>'5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21466905252361718)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'PreDefined Report'
,p_lov_return_value=>'6'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21467220698361719)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Custom Report'
,p_lov_return_value=>'7'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(21467518270398396)
,p_lov_name=>'REPORT STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(21467518270398396)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21467821365398397)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Created'
,p_lov_return_value=>'Created'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21468116799398397)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Approved'
,p_lov_return_value=>'Approved'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21468407210398397)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'In Library'
,p_lov_return_value=>'IN_LIBRARY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21468726370398397)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Modified'
,p_lov_return_value=>'Updated'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21695830593299348)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Source Loaded'
,p_lov_return_value=>'Source Loaded'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(21442324916879985)
,p_lov_name=>'WORK SPACE'
,p_lov_query=>'.'||wwv_flow_api.id(21442324916879985)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21442628206879986)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Dev Region'
,p_lov_return_value=>'SGDEVWS03'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21442918037879986)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'QA Region'
,p_lov_return_value=>'SGQAWS03'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21443220922889258)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Prod Region'
,p_lov_return_value=>'SGPRODWS03'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(21443427171918473)
,p_lov_name=>'YESNO'
,p_lov_query=>'.'||wwv_flow_api.id(21443427171918473)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21443720967918474)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21444021579918474)
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
 p_id=>wwv_flow_api.id(36257350025571176)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21439808500788713)
,p_parent_id=>wwv_flow_api.id(36278724019083554)
,p_short_name=>'Manage Users'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21440030485793639)
,p_parent_id=>wwv_flow_api.id(21439808500788713)
,p_short_name=>'Modify Users'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21460205290308099)
,p_parent_id=>wwv_flow_api.id(21667523420335101)
,p_short_name=>'List Predefined Reports'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21460912538308101)
,p_parent_id=>wwv_flow_api.id(21460205290308099)
,p_short_name=>'Modify Predefined Report'
,p_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21484418540396864)
,p_parent_id=>wwv_flow_api.id(21460912538308101)
,p_short_name=>'Manage Library'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21485111865396869)
,p_parent_id=>wwv_flow_api.id(21484418540396864)
,p_short_name=>'Edit Predefined Report in Library'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21594117068517112)
,p_parent_id=>0
,p_short_name=>'Remove Reports'
,p_link=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::'
,p_page_id=>91
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21600508877563544)
,p_parent_id=>wwv_flow_api.id(21667523420335101)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21619219812563591)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:12:&SESSION.'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21621402122563592)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21628310828563605)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:14:&SESSION.'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21667523420335101)
,p_parent_id=>wwv_flow_api.id(36278724019083554)
,p_short_name=>'Process File Query'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21710729055613198)
,p_parent_id=>wwv_flow_api.id(21667523420335101)
,p_short_name=>'Predefined code'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21711425080613200)
,p_parent_id=>wwv_flow_api.id(21710729055613198)
,p_short_name=>'Edit File Query in Pre-Defined Table'
,p_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_page_id=>19
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21718128722775922)
,p_parent_id=>wwv_flow_api.id(21667523420335101)
,p_short_name=>'edit work table'
,p_link=>'f?p=&APP_ID.:20:&SESSION.'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21718801777775923)
,p_parent_id=>wwv_flow_api.id(21718128722775922)
,p_short_name=>'Edit File Query in Work Table'
,p_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21751820859885714)
,p_parent_id=>wwv_flow_api.id(21667523420335101)
,p_short_name=>'Review Library Reports'
,p_link=>'f?p=&APP_ID.:22:&SESSION.'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21752524164885720)
,p_parent_id=>wwv_flow_api.id(21751820859885714)
,p_short_name=>'Edit File Query in Library'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(36278724019083554)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(36245033532571098)
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36245153772571105)
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36245226080571105)
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36245337964571106)
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36245455712571106)
,p_theme_id=>101
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
'<img src="#IMAGE#" alt= "#ALT#" height="HEIGHT#" width= "#WIDTH# />#TEXT#</a></div>',
''))
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
 p_id=>wwv_flow_api.id(36245541606571106)
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36245637903571107)
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36245740395571107)
,p_theme_id=>101
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
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(36245833768571107)
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36245927654571107)
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36246054518571107)
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36246145902571107)
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36246248131571108)
,p_theme_id=>101
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
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">',
'<img src="#IMAGE#" alt= "#ALT#" height="HEIGHT#" width= "#WIDTH# />#TEXT#</a></div>',
''))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(36246332302571108)
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36246425472571108)
,p_theme_id=>101
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
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">',
'<img src="#IMAGE#" alt= "#ALT#" height="HEIGHT#" width= "#WIDTH# />#TEXT#</a></div>',
''))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(121670327265283)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>101
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(36254255386571135)
,p_template_name=>'Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-default" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>101
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(36254338800571136)
,p_template_name=>'Hot Button (Black)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt5" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>101
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(36254423790571137)
,p_template_name=>'Hot Button (Blue)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt1" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>101
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(36254541697571137)
,p_template_name=>'Hot Button (Yellow)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt4" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>101
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(36254629158571137)
,p_template_name=>'Small Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt2" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'XP Square FFFFFF'
,p_theme_id=>101
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(36254748683571137)
,p_template_name=>'Small Hot Button (Blue)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt3" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>101
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(36254842002571137)
,p_template_name=>'Small Hot Button (Yellow)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt6" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>101
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36246533856571111)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="blank-region">',
'#BODY#',
'<div class="clear"></div>',
'</div>'))
,p_page_plug_template_name=>'Blank Region'
,p_theme_id=>101
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36246653781571117)
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
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36246740875571117)
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
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36246825258571117)
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
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36246956150571117)
,p_layout=>'TABLE'
,p_template=>'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>101
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36247029056571117)
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
,p_theme_id=>101
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36247136604571117)
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
,p_theme_id=>101
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36247252336571118)
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
,p_theme_id=>101
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36247332101571118)
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
,p_theme_id=>101
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36247452340571118)
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
,p_theme_id=>101
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36247544647571118)
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
,p_theme_id=>101
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36247654522571118)
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
,p_theme_id=>101
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Gray Head, white body'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36247739299571118)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="navigation-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'    <h3>#TITLE#</h3>',
'  <div>',
'    #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Navigation Region'
,p_theme_id=>101
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36247855738571118)
,p_layout=>'TABLE'
,p_template=>'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_theme_id=>101
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36247930520571119)
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
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36248036355571119)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_theme_id=>101
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36248134402571119)
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
,p_theme_id=>101
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36248237052571119)
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
,p_theme_id=>101
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36248336925571119)
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
,p_theme_id=>101
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36248454922571119)
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
,p_theme_id=>101
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36248551433571119)
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
,p_theme_id=>101
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36248653209571119)
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
,p_theme_id=>101
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36248741855571119)
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
,p_theme_id=>101
,p_theme_class_id=>10
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36248825277571119)
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
,p_theme_id=>101
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36248940980571119)
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
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36249055528571120)
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
,p_theme_id=>101
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36249153058571120)
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
,p_theme_id=>101
,p_theme_class_id=>3
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36249226658571120)
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
,p_theme_id=>101
,p_theme_class_id=>3
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36249337389571120)
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
,p_theme_id=>101
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(36249436874571120)
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
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36250555438571127)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-alt1" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-default" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_name=>'Button List'
,p_theme_id=>101
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="button-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(36250635623571129)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'          <li class="#LIST_STATUS#">',
'            <a href="#LINK#"><span>#TEXT#</span></a>',
'          </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'          <li class="#LIST_STATUS#">',
'            <a href="#LINK#"><span>#TEXT#</span></a>',
'          </li>'))
,p_list_template_name=>'Centered Tab Set'
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36250748278571129)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36250834363571129)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36250950163571129)
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
,p_theme_id=>101
,p_theme_class_id=>4
,p_list_template_before_rows=>'<div class="horizontal-images-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(36251038249571130)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>101
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(36251154032571130)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Horizontal Tabs Rounded List'
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36251232617571130)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Horizontal Tabs Rounded List (Full Width)'
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36251348916571130)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36251440962571130)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36251528916571130)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36251641086571130)
,p_list_template_current=>'<li class="active"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36251756454571130)
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
,p_theme_id=>101
,p_theme_class_id=>5
,p_list_template_before_rows=>'<div class="vertical-images-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(36251843394571130)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>101
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(36251942661571130)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>101
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="vertical-sidebar-list">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(36252047687571130)
,p_list_template_current=>'<li class="current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>101
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(36252142187571131)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets, Alternative'
,p_theme_id=>101
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(36252247443571131)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>101
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(36252330114571131)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li class="non-current">#TEXT#</li>'
,p_list_template_name=>'Wizard Progress List'
,p_theme_id=>101
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="wizard-progress-list" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_between_items=>'<li class="progress-indicator">&nbsp;</li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(36252447438571131)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Wizard Progress List, Horizontal Train'
,p_theme_id=>101
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
 p_id=>wwv_flow_api.id(36249552799571121)
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
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(36249552799571121)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(36249647624571123)
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
,p_theme_id=>101
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(36249647624571123)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(36249746731571124)
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
,p_theme_id=>101
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(36249746731571124)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(36249826805571124)
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
,p_theme_id=>101
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(36249826805571124)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(36249945856571124)
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
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(36250025133571124)
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
,p_theme_id=>101
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(36250025133571124)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(36250147724571124)
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
,p_theme_id=>101
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(36250147724571124)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(36250244286571124)
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
,p_theme_id=>101
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(36250354077571124)
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
,p_theme_id=>101
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(36250433201571124)
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
,p_theme_id=>101
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36252540315571132)
,p_template_name=>'Blue-Label-16'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #0000FF; font-size: 16px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36252624712571133)
,p_template_name=>'BlueRequired'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #0404B4; font-size: 14px; font-family : calibri, verdana, sans-serif"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999"/>',
''))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>101
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36252741660571133)
,p_template_name=>'LiteBlueLabel'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #0000FF; font-size: 14px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36252829762571133)
,p_template_name=>'No Label'
,p_template_body1=>'<span class="hidden-label">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36252928052571133)
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="optional">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36253051431571133)
,p_template_name=>'Optional with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36253131640571133)
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999" /> <span class="required">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36253254950571133)
,p_template_name=>'Required with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUI'
||'RED#" tabindex="999" /> '
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36253339710571133)
,p_template_name=>'Safeguard Blue'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #1589FF; font-size: 14px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36253432313571133)
,p_template_name=>'Safeguard Blue 16px'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #1589FF; font-size: 16px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36253543880571133)
,p_template_name=>'Safeguard Blue Reqd'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #1589FF; font-size: 14px; font-family : calibri, verdana, sans-serif"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999"/>',
''))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>101
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36253646010571133)
,p_template_name=>'blueLable'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #0404B4; font-size: 14px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36253740451571133)
,p_template_name=>'italic-10px'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #000000; font-size: 10px; font-style: italic; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36253824016571133)
,p_template_name=>'italic-10px-Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #000000; font-size: 10px; font-style: italic; font-family : calibri, verdana, sans-serif"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999"/>'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36253931461571133)
,p_template_name=>'italic-14px'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #000000; font-size: 14px; font-style: italic; font-family : courier, courier-new, serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36254052647571133)
,p_template_name=>'italic-14px-green'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #135429; font-size: 14px; font-style: italic; font-family : courier, courier-new, serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(36254150221571133)
,p_template_name=>'italic-16px'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #000000; font-size: 16px; font-style: italic; font-family : courier, courier-new, serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(36254937211571137)
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
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(36255044084571138)
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>101
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(36255451010571142)
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
,p_theme_id=>101
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(36255125714571139)
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
,p_theme_id=>101
,p_theme_class_id=>1
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(36255256196571140)
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
,p_theme_id=>101
,p_theme_class_id=>2
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(36255326795571141)
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
,p_theme_id=>101
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(36255548671571145)
,p_theme_id=>101
,p_theme_name=>'SafeGuard'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(36245455712571106)
,p_error_template=>wwv_flow_api.id(36245455712571106)
,p_printer_friendly_template=>wwv_flow_api.id(36246054518571107)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(36245033532571098)
,p_default_button_template=>wwv_flow_api.id(36254255386571135)
,p_default_region_template=>wwv_flow_api.id(36248454922571119)
,p_default_chart_template=>wwv_flow_api.id(36247452340571118)
,p_default_form_template=>wwv_flow_api.id(36247544647571118)
,p_default_reportr_template=>wwv_flow_api.id(36248454922571119)
,p_default_tabform_template=>wwv_flow_api.id(36248454922571119)
,p_default_wizard_template=>wwv_flow_api.id(36249337389571120)
,p_default_menur_template=>wwv_flow_api.id(36246956150571117)
,p_default_listr_template=>wwv_flow_api.id(36247332101571118)
,p_default_irr_template=>wwv_flow_api.id(36248036355571119)
,p_default_report_template=>wwv_flow_api.id(36250025133571124)
,p_default_label_template=>wwv_flow_api.id(36253051431571133)
,p_default_menu_template=>wwv_flow_api.id(36254937211571137)
,p_default_calendar_template=>wwv_flow_api.id(36255125714571139)
,p_default_list_template=>wwv_flow_api.id(36252047687571130)
,p_default_option_label=>wwv_flow_api.id(36253051431571133)
,p_default_required_label=>wwv_flow_api.id(36253254950571133)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(101),'')
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
 p_id=>wwv_flow_api.id(21433400458751095)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(36255947389571150)
,p_name=>'Application Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(36256056327571150)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(36256254722571152)
,p_name=>'Application Express Authentication [2]'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(37510026377985841)
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
prompt --application/shared_components/data_loading/tables/boa_self_serv_work
begin
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(21598107440563522)
,p_name=>'Load Report Source'
,p_owner=>'#OWNER#'
,p_table_name=>'BOA_SELF_SERV_WORK'
,p_unique_column_1=>'PID'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(36255633232571146)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>101
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:175:&SESSION.'
,p_global_page_id=>0
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
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Global Page - Desktop'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140826153932'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36274932802960108)
,p_plug_name=>'Welcome'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36248134402571119)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36275241288975480)
,p_name=>'P0_APP_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36274932802960108)
,p_prompt=>'Welcome:'
,p_source=>'P44_USER_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150126173104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21440126984804856)
,p_plug_name=>'Menu'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247739299571118)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(21431802387722110)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(36252047687571130)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  PID  ',
'FROM BOA_SELF_SERV_USERS ',
'WHERE  UPPER(APEX_USER) = UPPER(:P175_USERNAME);'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36277930373083542)
,p_plug_name=>'homePageReg'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246740875571117)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_row_template=>wwv_flow_api.id(57495061701756421)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  PID  ',
'FROM BOA_SELF_SERV_USERS ',
'WHERE  UPPER(APEX_USER) = UPPER(:P175_USERNAME);'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(36278128738083543)
,p_name=>'BOAF_SQL'
,p_parent_plug_id=>wwv_flow_api.id(36277930373083542)
,p_template=>wwv_flow_api.id(36246740875571117)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(ENTRY_DT, ''MM-DD-YYYY'') || '' at '' || TO_CHAR(ENTRY_DT, ''HH:MI AM'') || '' - '' || ENTRY_INFO AS NEWS_ALERTS ',
'FROM NEWS_ALERTS',
'WHERE APPL = ''IRFQU''',
'ORDER BY ENTRY_DT DESC'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  PID  ',
'FROM BOA_SELF_SERV_USERS ',
'WHERE  UPPER(APEX_USER) = UPPER(:P175_USERNAME);'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
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
 p_id=>wwv_flow_api.id(36278335502083545)
,p_query_column_id=>1
,p_column_alias=>'NEWS_ALERTS'
,p_column_display_sequence=>1
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Invoice Reconciliation- In The News</SPAN'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36278537666083553)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  PID  ',
'FROM BOA_SELF_SERV_USERS ',
'WHERE  UPPER(APEX_USER) = UPPER(:P175_USERNAME);'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37508443462948608)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246740875571117)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  PID  ',
'FROM BOA_SELF_SERV_USERS ',
'WHERE  UPPER(APEX_USER) = UPPER(:P175_USERNAME);'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37508828774954282)
,p_name=>'P1_ACCESS_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(37508443462948608)
,p_prompt=>'You are not an authorized user.  Please contact the application administrator for access.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  PID  ',
'FROM BOA_SELF_SERV_USERS ',
'WHERE  UPPER(APEX_USER) = UPPER(:P175_USERNAME);'))
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(21664223978093873)
,p_computation_sequence=>10
,p_computation_item=>'P0_APP_USER'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'P175_USERNAME'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Manage Users'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage Users'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150116094923'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21437030613751117)
,p_plug_name=>'Manage Users'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36248036355571119)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PID", ',
'"APEX_USER",',
'"FIRST_NAME",',
'"LAST_NAME",',
'"PRIV_LEVEL",',
'"EMAILADDRESS",',
'"WORKSPACE",',
'CASE WHEN EMAIL_SENT = 1 THEN ''YES'' ELSE ''NO'' END AS EMAIL_SENT',
'from "#OWNER#"."BOA_SELF_SERV_USERS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(21437203749751117)
,p_name=>'Manage Users'
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
,p_detail_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_PID:#PID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>21437203749751117
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21437327990751120)
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
 p_id=>wwv_flow_api.id(21437401132751121)
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
 p_id=>wwv_flow_api.id(21437525917751121)
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
 p_id=>wwv_flow_api.id(21437619909751122)
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
 p_id=>wwv_flow_api.id(21437725195751122)
,p_db_column_name=>'PRIV_LEVEL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Priv Level'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'PRIV_LEVEL'
,p_rpt_named_lov=>wwv_flow_api.id(21440931233862836)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21437807241751122)
,p_db_column_name=>'EMAILADDRESS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Emailaddress'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAILADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21437904691751122)
,p_db_column_name=>'WORKSPACE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Workspace'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORKSPACE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21444301704928544)
,p_db_column_name=>'EMAIL_SENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Email Sent'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL_SENT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(21438411092752949)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'214385'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PID:APEX_USER:FIRST_NAME:LAST_NAME:PRIV_LEVEL:EMAILADDRESS:WORKSPACE:EMAIL_SENT'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21440604736817327)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21438229823751123)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21437030613751117)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Modify Self Serv Users'
,p_page_mode=>'NORMAL'
,p_step_title=>'Modify Self Serv Users'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150116100055'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21432631929751089)
,p_plug_name=>'Modify Self Serv Users'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247544647571118)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21440426076814057)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21432912392751092)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21432631929751089)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P3_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21433218724751092)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21432631929751089)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254842002571137)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21432819062751092)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(21432631929751089)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P3_PID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21433022939751092)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21432631929751089)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21434113840751098)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21434309556751099)
,p_name=>'P3_PID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21432631929751089)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pid'
,p_source=>'PID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21434502615751104)
,p_name=>'P3_APEX_USER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21432631929751089)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apex User'
,p_source=>'APEX_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253543880571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21434728799751105)
,p_name=>'P3_FIRST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21432631929751089)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21434907156751105)
,p_name=>'P3_LAST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(21432631929751089)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21435109733751105)
,p_name=>'P3_PRIV_LEVEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(21432631929751089)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User''s Priv Level'
,p_source=>'PRIV_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'END USER PRIV'
,p_lov=>'.'||wwv_flow_api.id(21440931233862836)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253543880571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21435317712751106)
,p_name=>'P3_EMAILADDRESS'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(21432631929751089)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Address'
,p_source=>'EMAILADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253543880571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21435506017751106)
,p_name=>'P3_WORKSPACE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(21432631929751089)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region Email is Sent'
,p_source=>'WORKSPACE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WORK SPACE'
,p_lov=>'.'||wwv_flow_api.id(21442324916879985)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21435717923751106)
,p_name=>'P3_EMAIL_SENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(21432631929751089)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Receive Email'
,p_source=>'EMAIL_SENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(21443427171918473)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(21446211347000052)
,p_validation_name=>'P3_APEX_USER'
,p_validation_sequence=>10
,p_validation=>'P3_APEX_USER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(21434502615751104)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(21446404446003243)
,p_validation_name=>'P3_PRIV_LEVEL'
,p_validation_sequence=>20
,p_validation=>'P3_PRIV_LEVEL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(21435109733751105)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(21446630097006581)
,p_validation_name=>'P3_EMAILADDRESS'
,p_validation_sequence=>30
,p_validation=>'P3_EMAILADDRESS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(21435317712751106)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21436107489751107)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_SELF_SERV_USERS'
,p_attribute_02=>'BOA_SELF_SERV_USERS'
,p_attribute_03=>'P3_PID'
,p_attribute_04=>'PID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21436308471751107)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_SELF_SERV_USERS'
,p_attribute_02=>'BOA_SELF_SERV_USERS'
,p_attribute_03=>'P3_PID'
,p_attribute_04=>'PID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21436525417751108)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21433022939751092)
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'List Predefined Reports'
,p_page_mode=>'NORMAL'
,p_step_title=>'List Predefined Reports'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150128134141'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21458405579308094)
,p_plug_name=>'List Reports Requested'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36248036355571119)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.ID, ',
'A.REQUEST_TITLE,',
'A.ACTIVE,',
'A.STATUS,',
'A.CREATED_DT,',
'A.CREATED_BY,',
'A.UPDATED_DT,',
'A.UPDATED_BY,',
'A.SCHEDULE,',
'A.REPEAT,',
'A.SOURCE_DEFINED,',
'CASE WHEN B.PID IS NULL THEN ''No list assigned'' else b.file_name end as NAMEOFLIST,',
'CASE WHEN B.LOADED = 1 THEN ''WO file loaded'' else ''WO file Not loaded'' end as loaded, ',
'REPORT_PAGE as REPORT_PAGE_NO',
'from RDM.BOA_DATA_REQUESTS A',
'LEFT JOIN ( SELECT PID, LOADED, FILE_NAME FROM BOA_SELF_SERV_WO_LISTS) B ON ( B.PID = A.NAMEOFLIST) ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(21458601809308095)
,p_name=>'List Reports Requested'
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
,p_detail_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>21458601809308095
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21458723937308095)
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
 p_id=>wwv_flow_api.id(21458825682308096)
,p_db_column_name=>'REQUEST_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Request Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REQUEST_TITLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21458932287308097)
,p_db_column_name=>'ACTIVE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Active'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVE'
,p_rpt_named_lov=>wwv_flow_api.id(21443427171918473)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21459023957308097)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_rpt_named_lov=>wwv_flow_api.id(21467518270398396)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21459125717308097)
,p_db_column_name=>'CREATED_DT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created Dt'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_DT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21459201121308097)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21459302428308097)
,p_db_column_name=>'UPDATED_DT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated Dt'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'UPDATED_DT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21459423463308097)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UPDATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21459527443308098)
,p_db_column_name=>'SCHEDULE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Scheduled to Run'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'SCHEDULE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21459615601308098)
,p_db_column_name=>'REPEAT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Repeat name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REPEAT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21459722895308098)
,p_db_column_name=>'SOURCE_DEFINED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Source Defined'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'SOURCE_DEFINED'
,p_rpt_named_lov=>wwv_flow_api.id(21466322248361718)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21469608326533139)
,p_db_column_name=>'NAMEOFLIST'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Nameoflist'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NAMEOFLIST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21469730146533140)
,p_db_column_name=>'LOADED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Loaded'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOADED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21469823853533141)
,p_db_column_name=>'REPORT_PAGE_NO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Report Page No'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'REPORT_PAGE_NO'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(21464606140319189)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'214647'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:REQUEST_TITLE:ACTIVE:STATUS:CREATED_DT:CREATED_BY:UPDATED_DT:UPDATED_BY:SCHEDULE:REPEAT:SOURCE_DEFINED:NAMEOFLIST:LOADED:REPORT_PAGE_NO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21460408677308099)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21460127205308099)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21458405579308094)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Modify Predefined Report'
,p_page_mode=>'NORMAL'
,p_step_title=>'Modify Predefined Report'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150128140153'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21453307958308083)
,p_plug_name=>'Modify Predefined Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247544647571118)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21460731981308100)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21453625173308085)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21453307958308083)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21453928434308085)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21453307958308083)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254842002571137)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21453528921308085)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(21453307958308083)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21745708200503520)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(21453307958308083)
,p_button_name=>'ADD_TO_LIBRARY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
,p_button_image_alt=>'Add To Library'
,p_button_position=>'REGION_TEMPLATE_CREATE2'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21453729851308085)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21453307958308083)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P5_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21454512871308088)
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(21453625173308085)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21746729633602086)
,p_branch_name=>'GO TO LIBRARY'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(21745708200503520)
,p_branch_sequence=>11
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21454702902308089)
,p_name=>'P5_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21453307958308083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21454908330308090)
,p_name=>'P5_REQUEST_TITLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21453307958308083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Title'
,p_source=>'REQUEST_TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21455130305308090)
,p_name=>'P5_ACTIVE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21453307958308083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active'
,p_source=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(21443427171918473)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21455307525308091)
,p_name=>'P5_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(21453307958308083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REPORT STATUS'
,p_lov=>'.'||wwv_flow_api.id(21467518270398396)||'.'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21455522838308091)
,p_name=>'P5_CREATED_DT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(21453307958308083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Dt'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21455706228308091)
,p_name=>'P5_CREATED_BY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(21453307958308083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21455919883308091)
,p_name=>'P5_UPDATED_DT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(21453307958308083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated Dt'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21456132005308091)
,p_name=>'P5_UPDATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(21453307958308083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21456318924308091)
,p_name=>'P5_SCHEDULE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(21453307958308083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Schedule'
,p_source=>'SCHEDULE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21456509384308092)
,p_name=>'P5_REPEAT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(21453307958308083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Repeat Name'
,p_source=>'REPEAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21456723391308092)
,p_name=>'P5_SOURCE_DEFINED'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(21453307958308083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Source Defined'
,p_source=>'SOURCE_DEFINED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REPORT REQUEST TYPES'
,p_lov=>'.'||wwv_flow_api.id(21466322248361718)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21456928024308092)
,p_name=>'P5_NAMEOFLIST'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(21453307958308083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nameoflist'
,p_source=>'NAMEOFLIST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT FILE_NAME D, PID R',
'  FROM BOA_SELF_SERV_WO_LISTS',
' ORDER BY FILE_NAME '))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21457105591308093)
,p_name=>'P5_REPORT_PAGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(21453307958308083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Report Page'
,p_source=>'REPORT_PAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REPORT PAGE'
,p_lov=>'.'||wwv_flow_api.id(21468918054407810)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21457500765308093)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_DATA_REQUESTS'
,p_attribute_02=>'BOA_DATA_REQUESTS'
,p_attribute_03=>'P5_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21477404126198483)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'insert into  RDM.BOA_DATA_REQUESTS ( REQUEST_TITLE, ACTIVE, STATUS, CREATED_DT, CREATED_BY, SCHEDULE, SOURCE_DEFINED, NAMEOFLIST, REPORT_PAGE)',
'values (:P5_REQUEST_TITLE, :P5_ACTIVE, :P5_STATUS, SYSDATE, :APP_USER, :P5_SCHEDULE, :P5_SOURCE_DEFINED, :P5_NAMEOFLIST, :P5_REPORT_PAGE);',
'',
'commit;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21453528921308085)
,p_process_success_message=>'Request created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21477820234240975)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'update RDM.BOA_DATA_REQUESTS ',
'set REQUEST_TITLE    = :P5_REQUEST_TITLE, ',
'           ACTIVE    = :P5_ACTIVE, ',
'           STATUS    = :P5_STATUS,',
'           UPDATED_DT = SYSDATE, ',
'           UPDATED_BY = :APP_USER, ',
'           SCHEDULE  = :P5_SCHEDULE, ',
'           SOURCE_DEFINED = :P5_SOURCE_DEFINED,',
'            NAMEOFLIST    = :P5_NAMEOFLIST,',
'            REPORT_PAGE   = :P5_REPORT_PAGE',
'WHERE ID = :P5_ID;',
'            ',
'commit;',
'',
'IF  ( upper(:P5_STATUS) = ''APPROVED'') THEN ',
'',
'INSERT INTO BOA_SELF_SERV_LIBR (ID, REQUEST_TITLE, REPORT_TYPE, REPORT_PAGE)',
'SELECT ID, REQUEST_TITLE, SOURCE_DEFINED,  REPORT_PAGE',
'FROM  BOA_DATA_REQUESTS',
'WHERE NOT EXISTS ( SELECT 1 ',
'                   FROM BOA_SELF_SERV_LIBR ',
'                   WHERE BOA_SELF_SERV_LIBR.ID = :P5_ID);                   ',
'COMMIT;',
'',
'update RDM.BOA_DATA_REQUESTS ',
'        SET STATUS    = ''IN_LIBRARY''',
'       WHERE ID = :P5_ID;',
'            ',
'commit;',
'',
'',
'END IF;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21453625173308085)
,p_process_when=>'P5_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Request updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21478322789251180)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'DELETE RDM.BOA_DATA_REQUESTS WHERE ID = :P5_ID;',
'            ',
'commit;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21453729851308085)
,p_process_when=>'P5_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21746020115592133)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add to Library'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' DELETE BOA_SELF_SERV_LIBR WHERE ID = :P5_ID;',
' COMMIT;',
'',
' INSERT INTO BOA_SELF_SERV_LIBR (ID, REQUEST_TITLE, REPORT_TYPE, REPORT_PAGE)',
' SELECT ID, REQUEST_TITLE, SOURCE_DEFINED,  REPORT_PAGE',
' FROM  BOA_DATA_REQUESTS',
' WHERE ID = :P5_ID;                   ',
' COMMIT;',
'',
' update RDM.BOA_DATA_REQUESTS SET STATUS    = ''IN_LIBRARY'' WHERE ID = :P5_ID;            ',
' commit;',
'',
' DELETE FROM BOA_SELF_SERV_LIBR_SRC WHERE REQUEST_ID = :P5_ID;',
' COMMIT;',
'',
' INSERT INTO BOA_SELF_SERV_LIBR_SRC ( STMT_NO,  STMT_LINE,  REQUEST_ID)',
' SELECT STMT_NO,  STMT_LINE,  REQUEST_ID FROM BOA_SELF_SERV_PREDEF WHERE REQUEST_ID = :P5_ID;',
' COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21745708200503520)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21457907676308094)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21453729851308085)
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Manage Library'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage Library'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150127115002'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21483520794396857)
,p_plug_name=>'Manage Library'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36248036355571119)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.ID, ',
'A.REQUEST_TITLE,',
'A.REQUEST_DISCRIPTION,',
'A.REPORT_TYPE,',
'A.PRIMARY_KEYS,',
'A.REPORT_PAGE',
'from RDM.BOA_SELF_SERV_LIBR A',
'LEFT JOIN ( SELECT ID FROM BOA_DATA_REQUESTS WHERE STATUS = ''IN_LIBRARY'') B ON (A.ID = B.ID) ',
'WHERE A.ID = B.ID  ',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(21483708785396858)
,p_name=>'Manage Library'
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
,p_detail_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>21483708785396858
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21483809208396861)
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
 p_id=>wwv_flow_api.id(21483925685396864)
,p_db_column_name=>'REQUEST_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Request Title'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REQUEST_TITLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21484029333396864)
,p_db_column_name=>'REQUEST_DISCRIPTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Request Discription'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REQUEST_DISCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21484102241396864)
,p_db_column_name=>'REPORT_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Report Type'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'REPORT_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21484218879396864)
,p_db_column_name=>'PRIMARY_KEYS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Primary Keys'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRIMARY_KEYS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21484320518396864)
,p_db_column_name=>'REPORT_PAGE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Report Page'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'REPORT_PAGE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(21486832476528296)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'214869'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:REQUEST_TITLE:REQUEST_DISCRIPTION:REPORT_TYPE:PRIMARY_KEYS:REPORT_PAGE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21484611682396865)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Edit Predefined Report in Library'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit Predefined Report in Library'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150128140651'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21480005031396836)
,p_plug_name=>'SELF_SERV_LIBR from'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247544647571118)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21484925145396869)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21480217369396841)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21480005031396836)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21480512513396841)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21480005031396836)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254842002571137)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21480321258396841)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21480005031396836)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21481027812396846)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21481215458396849)
,p_name=>'P7_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21480005031396836)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21481401620396853)
,p_name=>'P7_REQUEST_TITLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21480005031396836)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Title'
,p_source=>'REQUEST_TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21481629921396854)
,p_name=>'P7_REQUEST_DISCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21480005031396836)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Discription'
,p_source=>'REQUEST_DISCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21481808368396855)
,p_name=>'P7_REPORT_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(21480005031396836)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Report Type'
,p_source=>'REPORT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21482013416396855)
,p_name=>'P7_PRIMARY_KEYS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(21480005031396836)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Primary Keys'
,p_source=>'PRIMARY_KEYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253543880571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21482214548396855)
,p_name=>'P7_REPORT_PAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(21480005031396836)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Report Page'
,p_source=>'REPORT_PAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21488410012641431)
,p_name=>'P7_DISPLAY_REPORT_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(21480005031396836)
,p_prompt=>'Report Type'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare ',
'',
'REPORT_TYPE VARCHAR2(100 BYTE);',
'',
'BEGIN',
'',
'REPORT_TYPE := CASE WHEN :P7_REPORT_TYPE = 6 THEN ''PreDefined Report'' ',
'                    when :P7_REPORT_TYPE = 5 THEN ''System Generated''',
'                    when :P7_REPORT_TYPE = 7 THEN ''Custom Report''',
'                    else ''Unknown'' end;',
'                    ',
'return report_type;',
'',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21490611398792715)
,p_name=>'P7_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(21480005031396836)
,p_prompt=>'Status'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT STATUS',
'FROM BOA_DATA_REQUESTS',
'WHERE ID = :P7_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REPORT STATUS'
,p_lov=>'.'||wwv_flow_api.id(21467518270398396)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(21490914620806400)
,p_validation_name=>'P7_STATUS'
,p_validation_sequence=>10
,p_validation=>'P7_STATUS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(21480217369396841)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(21490611398792715)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21482606181396856)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_SELF_SERV_LIBR'
,p_attribute_02=>'BOA_SELF_SERV_LIBR'
,p_attribute_03=>'P7_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21482817625396856)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_SELF_SERV_LIBR'
,p_attribute_02=>'BOA_SELF_SERV_LIBR'
,p_attribute_03=>'P7_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21491011389825011)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE STATUS'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'     UPDATE BOA_DATA_REQUESTS SET STATUS = :P7_STATUS ',
'            WHERE ID = :P7_ID;',
'           COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21480217369396841)
,p_process_when=>'P7_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21483025384396856)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21480321258396841)
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Data Load Source'
,p_page_mode=>'NORMAL'
,p_step_title=>'Data Load Source'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150128151428'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21600301681563543)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21600732635563547)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(21598307808563531)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(36252330114571131)
,p_translate_title=>'N'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21600815448563548)
,p_plug_name=>'Data Load Source'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(36249337389571120)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21615211625563581)
,p_plug_name=>'Globalization'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(36249337389571120)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21657527140666656)
,p_plug_name=>'Assign a Report Id'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246825258571117)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21601108775563549)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21600815448563548)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254541697571137)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21601209661563550)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21600815448563548)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254423790571137)
,p_button_image_alt=>'Next >'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:apex.widget.textareaClob.upload(''P11_COPY_PASTE'', ''NEXT'');'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21618404723563589)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(21601209661563550)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21602315924563559)
,p_name=>'P11_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21600815448563548)
,p_item_default=>'PASTE'
,p_prompt=>'Import From'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION'
,p_lov=>'.'||wwv_flow_api.id(21601409549563550)||'.'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT-TOP'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21602406732563560)
,p_name=>'P11_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21600815448563548)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Name of the file to upload'
,p_attribute_01=>'WWV_FLOW_FILES'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21603210687563569)
,p_name=>'P11_SEPARATOR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21600815448563548)
,p_item_default=>'\t'
,p_prompt=>'Separator'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253543880571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Identify a column separator character. Use <code>\t</code> for tab separators.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21603728596563569)
,p_name=>'P11_ENCLOSED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(21600815448563548)
,p_item_default=>'"'
,p_prompt=>'Optionally Enclosed By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Enter a delimiter character. You can use this character to delineate the starting and ending boundary of a data value. If you specify a delimiter character, Data Workshop ignores whitespace occurring before the starting and ending boundary of a data '
||'value. You can also use this option to enclose a data value with the specified delimiter character.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21604723984563572)
,p_name=>'P11_FIRST_ROW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(21600815448563548)
,p_item_default=>'Y'
,p_prompt=>'First Row has Column Names'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'FIRST_ROW_OPTION'
,p_lov=>'.'||wwv_flow_api.id(21604109780563571)||'.'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Select this box if your data contains column names in the first row.'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21614425697563580)
,p_name=>'P11_CHAR_SET'
,p_is_required=>true
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(21600815448563548)
,p_item_default=>'UTF-8'
,p_prompt=>'File Character Set'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATA_LOAD_CHARSET'
,p_lov=>'.'||wwv_flow_api.id(21605115165563573)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'DATA_LOAD.CHAR_SET_ITEM_HELP'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21614922598563581)
,p_name=>'P11_STOP_START_TABLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(21600815448563548)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21615031282563581)
,p_name=>'P11_COPY_PASTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(21600815448563548)
,p_prompt=>'Copy and Paste Delimited Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>10
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(36253254950571133)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21615501679563583)
,p_name=>'P11_CURRENCY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21615211625563581)
,p_item_default=>'$'
,p_prompt=>'Currency Symbol'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select value',
'  from nls_session_parameters',
' where parameter = ''NLS_CURRENCY'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'If your data contains international currency symbol, enter it here. For example, if your data has "&euro;1,234.56" or "&yen;1,234.56", enter "&euro;" or "&yen;".  Otherwise the data will not load correctly.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21616026750563583)
,p_name=>'P11_GROUP_SEPARATOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21615211625563581)
,p_prompt=>'Group Separator'
,p_source=>'apex_application.get_nls_group_separator'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>A group separator is a character that separates integer groups, for example to show thousands and millions.</p>',
'<p>Any character can be the group separator. The character specified must be single-byte, and the group separator must be different from any other decimal character. The character can be a space, but cannot be a numeric character or any of the follow'
||'ing:</p>',
'<ul class="noIndent">',
'<li>plus (+)</li>',
'<li>hyphen (-)</li> ',
'<li>less than sign (<)</li>',
'<li>greater than sign (>)</li> ',
'</ul>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21616509417563583)
,p_name=>'P11_DECIMAL_CHARACTER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21615211625563581)
,p_prompt=>'Decimal Character'
,p_source=>'apex_application.get_nls_decimal_separator'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>The decimal character separates the integer and decimal parts of a number.</p>',
'<p> Any character can be the decimal character. The character specified must be single-byte, and the decimal character must be different from group separator. The character can be a space, but cannot be any numeric character or any of the following c'
||'haracters:</p>',
'<ul class="noIndent">',
'<li>plus (+)</li>',
'<li>hyphen (-)</li> ',
'<li>less than sign (<)</li>',
'<li>greater than sign (>)</li> ',
'</ul>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21657819148670748)
,p_name=>'P11_REPORT_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(21657527140666656)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Report Id'
,p_source=>'P90_REQUEST_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ID D, ID R',
'FROM BOA_DATA_REQUESTS',
'ORDER BY ID',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Report ID'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21662202954966962)
,p_name=>'P11_REPORT_TITLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(21657527140666656)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Report Title'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT REQUEST_TITLE D, REQUEST_TITLE R',
'FROM BOA_DATA_REQUESTS',
'where id = :P11_REPORT_ID',
''))
,p_lov_cascade_parent_items=>'P11_REPORT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21676821909784118)
,p_name=>'P11_PIN_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(21657527140666656)
,p_prompt=>'Pin Id'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'center'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(21603030814563565)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P11_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'N'
,p_validation_condition=>'P11_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(21601209661563550)
,p_associated_item=>wwv_flow_api.id(21602406732563560)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21677019315816428)
,p_name=>'SET PID'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_REPORT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21677303710816432)
,p_event_id=>wwv_flow_api.id(21677019315816428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_PIN_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'P_ID   NUMBER;',
'',
'BEGIN',
'    INSERT INTO BOA_SELF_SERV_WORK(STMT_NO, STMT_LINE, REQUEST_ID) ',
'    VALUES (-1, :P175_USERNAME, :P11_REPORT_ID  )',
'    RETURNING PID INTO P_ID;',
'    RETURN P_ID;',
'END;'))
,p_attribute_07=>'P11_REPORT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21616905084563584)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21617218460563586)
,p_event_id=>wwv_flow_api.id(21616905084563584)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_COPY_PASTE'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21617410099563588)
,p_event_id=>wwv_flow_api.id(21616905084563584)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_COPY_PASTE'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21617518212563588)
,p_name=>'Import from File'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21617807073563588)
,p_event_id=>wwv_flow_api.id(21617518212563588)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_FILE_NAME'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21618004228563588)
,p_event_id=>wwv_flow_api.id(21617518212563588)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_FILE_NAME'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21618230297563589)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PARSE_UPLOADED_DATA'
,p_process_name=>'Parse Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(21598107440563522)
,p_attribute_02=>'P11_IMPORT_FROM'
,p_attribute_03=>'P11_SEPARATOR'
,p_attribute_04=>'P11_ENCLOSED_BY'
,p_attribute_05=>'P11_FIRST_ROW'
,p_attribute_06=>'P11_CURRENCY'
,p_attribute_07=>'P11_GROUP_SEPARATOR'
,p_attribute_08=>'P11_DECIMAL_CHARACTER'
,p_attribute_09=>'P11_FILE_NAME'
,p_attribute_10=>'P11_COPY_PASTE'
,p_attribute_11=>'P11_CHAR_SET'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21601209661563550)
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Data / Table Mapping'
,p_page_mode=>'NORMAL'
,p_step_title=>'Data / Table Mapping'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<style>',
'  .rc-content-main {height: 400px; overflow: auto !important;}',
'</style> '))
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150128090633'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21619022114563590)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21619420326563591)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(21598307808563531)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(36252330114571131)
,p_translate_title=>'N'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21619531383563591)
,p_plug_name=>'Data / Table Mapping'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(36249337389571120)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_DATA_UPLOAD_COLUMN_MAPPING'
,p_plug_query_row_template=>1
,p_attribute_01=>wwv_flow_api.id(21598107440563522)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21619816401563591)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21619531383563591)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254842002571137)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21620103911563591)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21619531383563591)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
,p_button_image_alt=>'Next >'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21620004026563591)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21619531383563591)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
,p_button_image_alt=>'< Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21620628155563592)
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(21620103911563591)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21620409397563592)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PREPARE_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(21598107440563522)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21620103911563591)
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Data Validation'
,p_page_mode=>'NORMAL'
,p_step_title=>'Data Validation'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150128090650'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21621228111563592)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21621619361563593)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(21598307808563531)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(36252330114571131)
,p_translate_title=>'N'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21621724238563593)
,p_name=>'Data Validation'
,p_template=>wwv_flow_api.id(36249337389571120)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       c049 as action,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c049 in (''INSERT'',''UPDATE'', ''FAILED'')',
' order by seq_id'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_headings=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21622025056563597)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21622128320563599)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21622208253563599)
,p_query_column_id=>3
,p_column_alias=>'C001'
,p_column_display_sequence=>3
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21622313074563599)
,p_query_column_id=>4
,p_column_alias=>'C002'
,p_column_display_sequence=>4
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21622430108563599)
,p_query_column_id=>5
,p_column_alias=>'C003'
,p_column_display_sequence=>5
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21622508419563599)
,p_query_column_id=>6
,p_column_alias=>'C004'
,p_column_display_sequence=>6
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21622624131563599)
,p_query_column_id=>7
,p_column_alias=>'C005'
,p_column_display_sequence=>7
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21622723275563599)
,p_query_column_id=>8
,p_column_alias=>'C006'
,p_column_display_sequence=>8
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21622807777563599)
,p_query_column_id=>9
,p_column_alias=>'C007'
,p_column_display_sequence=>9
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21622917924563600)
,p_query_column_id=>10
,p_column_alias=>'C008'
,p_column_display_sequence=>10
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21623031653563600)
,p_query_column_id=>11
,p_column_alias=>'C009'
,p_column_display_sequence=>11
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21623127129563600)
,p_query_column_id=>12
,p_column_alias=>'C010'
,p_column_display_sequence=>12
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21623205839563600)
,p_query_column_id=>13
,p_column_alias=>'C011'
,p_column_display_sequence=>13
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21623302019563600)
,p_query_column_id=>14
,p_column_alias=>'C012'
,p_column_display_sequence=>14
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21623424663563600)
,p_query_column_id=>15
,p_column_alias=>'C013'
,p_column_display_sequence=>15
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21623512762563600)
,p_query_column_id=>16
,p_column_alias=>'C014'
,p_column_display_sequence=>16
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21623629310563600)
,p_query_column_id=>17
,p_column_alias=>'C015'
,p_column_display_sequence=>17
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21623706202563600)
,p_query_column_id=>18
,p_column_alias=>'C016'
,p_column_display_sequence=>18
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21623812391563600)
,p_query_column_id=>19
,p_column_alias=>'C017'
,p_column_display_sequence=>19
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21623909961563600)
,p_query_column_id=>20
,p_column_alias=>'C018'
,p_column_display_sequence=>20
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21624013585563600)
,p_query_column_id=>21
,p_column_alias=>'C019'
,p_column_display_sequence=>21
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21624100363563600)
,p_query_column_id=>22
,p_column_alias=>'C020'
,p_column_display_sequence=>22
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21624211833563600)
,p_query_column_id=>23
,p_column_alias=>'C021'
,p_column_display_sequence=>23
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21624332420563600)
,p_query_column_id=>24
,p_column_alias=>'C022'
,p_column_display_sequence=>24
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21624401688563600)
,p_query_column_id=>25
,p_column_alias=>'C023'
,p_column_display_sequence=>25
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21624501422563600)
,p_query_column_id=>26
,p_column_alias=>'C024'
,p_column_display_sequence=>26
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21624604095563600)
,p_query_column_id=>27
,p_column_alias=>'C025'
,p_column_display_sequence=>27
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21624710845563600)
,p_query_column_id=>28
,p_column_alias=>'C026'
,p_column_display_sequence=>28
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21624800300563600)
,p_query_column_id=>29
,p_column_alias=>'C027'
,p_column_display_sequence=>29
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21624914267563600)
,p_query_column_id=>30
,p_column_alias=>'C028'
,p_column_display_sequence=>30
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21625025723563600)
,p_query_column_id=>31
,p_column_alias=>'C029'
,p_column_display_sequence=>31
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21625131269563600)
,p_query_column_id=>32
,p_column_alias=>'C030'
,p_column_display_sequence=>32
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21625221445563600)
,p_query_column_id=>33
,p_column_alias=>'C031'
,p_column_display_sequence=>33
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21625315252563600)
,p_query_column_id=>34
,p_column_alias=>'C032'
,p_column_display_sequence=>34
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21625425337563600)
,p_query_column_id=>35
,p_column_alias=>'C033'
,p_column_display_sequence=>35
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21625529685563601)
,p_query_column_id=>36
,p_column_alias=>'C034'
,p_column_display_sequence=>36
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21625613919563601)
,p_query_column_id=>37
,p_column_alias=>'C035'
,p_column_display_sequence=>37
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21625722295563601)
,p_query_column_id=>38
,p_column_alias=>'C036'
,p_column_display_sequence=>38
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21625817031563601)
,p_query_column_id=>39
,p_column_alias=>'C037'
,p_column_display_sequence=>39
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21625911038563601)
,p_query_column_id=>40
,p_column_alias=>'C038'
,p_column_display_sequence=>40
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21626027469563601)
,p_query_column_id=>41
,p_column_alias=>'C040'
,p_column_display_sequence=>41
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21626117058563601)
,p_query_column_id=>42
,p_column_alias=>'C041'
,p_column_display_sequence=>42
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21626229816563601)
,p_query_column_id=>43
,p_column_alias=>'C042'
,p_column_display_sequence=>43
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21626309204563601)
,p_query_column_id=>44
,p_column_alias=>'C043'
,p_column_display_sequence=>44
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21626418909563601)
,p_query_column_id=>45
,p_column_alias=>'C044'
,p_column_display_sequence=>45
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21626525416563601)
,p_query_column_id=>46
,p_column_alias=>'C045'
,p_column_display_sequence=>46
,p_column_heading=>'C045'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21626704023563601)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21621724238563593)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254842002571137)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21627028081563601)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21621724238563593)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
,p_button_image_alt=>'Load Data'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21626923379563601)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21621724238563593)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
,p_button_image_alt=>'< Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21627522263563602)
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(21627028081563601)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21627307449563602)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_LOAD_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(21598107440563522)
,p_attribute_02=>'P14_INSERT_COUNT'
,p_attribute_03=>'P14_UPDATE_COUNT'
,p_attribute_04=>'P14_ERROR_COUNT'
,p_attribute_05=>'P14_REVIEW_COUNT'
,p_process_error_message=>'Data Loading Failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21627028081563601)
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Data Load Results'
,p_page_mode=>'NORMAL'
,p_step_title=>'Data Load Results'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150128090736'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21628130685563603)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21628532344563605)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(21598307808563531)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(36252330114571131)
,p_translate_title=>'N'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21628626510563605)
,p_plug_name=>'Data Load Results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(36249337389571120)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21630002172563607)
,p_name=>'Failed Records'
,p_template=>wwv_flow_api.id(36249337389571120)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       c049 as action,',
'       c048 as error,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c047 in (''FAILED'') ',
' order by seq_id'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'P14_ERROR_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_headings=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21630301802563609)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21630404456563609)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21630510286563609)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21630603935563609)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21630732364563609)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21630801410563609)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21630915356563609)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21631025744563609)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21631109179563609)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21631217974563609)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21631302731563610)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21631424535563610)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21631515531563610)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21631600401563610)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21631707940563610)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21631802803563610)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21631914555563610)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21632006754563610)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21632113543563610)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21632232040563610)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21632328286563610)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21632423954563610)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21632519799563610)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21632610682563610)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21632708557563610)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21632800193563610)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21632927850563610)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21633028076563610)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21633109003563610)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21633209763563610)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21633328592563610)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21633414522563610)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21633505913563610)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21633624985563610)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21633708514563611)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21633828052563611)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21633909947563611)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21634031507563611)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21634100141563611)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21634221853563611)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21634313065563611)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21634427173563611)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21634524510563611)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21634616996563611)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21634719482563611)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21634818152563611)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21634918863563611)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21635015906563611)
,p_name=>'Records Changed by Another User.'
,p_template=>wwv_flow_api.id(36249337389571120)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       c049 as action,',
'       c048 as error,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c049 in (''REVIEW'') ',
' order by seq_id'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'P14_REVIEW_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_headings=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21635322962563613)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21635424180563613)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21635517756563613)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21635618011563613)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21635729086563613)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21635807705563613)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21635906555563613)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21636003336563613)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21636131256563614)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21636221615563614)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21636303700563614)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21636424536563614)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21636506436563614)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21636610346563614)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21636725159563614)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21636801561563614)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21636902796563614)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21637006869563614)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21637126140563614)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21637219201563614)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21637302255563614)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21637400973563614)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21637516461563614)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21637613137563614)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21637727309563614)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21637808059563614)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21637922386563614)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21638002090563614)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21638128274563614)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21638201553563614)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21638329069563614)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21638413103563614)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21638520961563614)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21638611015563615)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21638721367563615)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21638810205563615)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21638910914563615)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21639016279563615)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21639127786563615)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21639222055563615)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21639310383563615)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21639405239563615)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21639523184563615)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21639625173563615)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21639711835563615)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21639822230563615)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21639920972563615)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21677928366847394)
,p_plug_name=>'P14_PIN_ID'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21628907909563605)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21628626510563605)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254541697571137)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21629000940563606)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21628626510563605)
,p_button_name=>'FINISH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254423790571137)
,p_button_image_alt=>'Finish'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21629319638563606)
,p_name=>'P14_INSERT_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21628626510563605)
,p_prompt=>'Inserted Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_attributes=>'class="fielddata"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21629529608563606)
,p_name=>'P14_UPDATE_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21628626510563605)
,p_prompt=>'Updated Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_attributes=>'class="fielddata"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21629702829563606)
,p_name=>'P14_ERROR_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21628626510563605)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Failed Row(s):'
,p_source=>'select count(*) c from apex_collections where collection_name = ''LOAD_CONTENT'' and c047 = ''FAILED'''
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_attributes=>'class="fielddata"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21629910207563607)
,p_name=>'P14_REVIEW_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(21628626510563605)
,p_prompt=>'To be Reviewed Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_attributes=>'class="fielddata"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21678316024862821)
,p_name=>'P14_PIN_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(21677928366847394)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Pin ID '
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'P_ID   NUMBER;',
'',
'BEGIN',
'    INSERT INTO BOA_SELF_SERV_WORK(STMT_NO, STMT_LINE, REQUEST_ID) ',
'    VALUES (-1, :P175_USERNAME, :P11_REPORT_ID  )',
'    RETURNING PID INTO P_ID;',
'    RETURN P_ID;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'center'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Load File Query'
,p_page_mode=>'NORMAL'
,p_step_title=>'Review Work Table'
,p_step_sub_title=>'Review Work Table'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150128150945'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21667307386335099)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21667617951335103)
,p_plug_name=>'Review Work Table'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36248036355571119)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select BOA_SELF_SERV_WORK.STMT_NO as STMT_NO,',
'    BOA_SELF_SERV_WORK.STMT_LINE as STMT_LINE,',
'    BOA_SELF_SERV_WORK.REQUEST_ID as REQUEST_ID,',
'    BOA_SELF_SERV_WORK.PID as PID ',
' from BOA_SELF_SERV_WORK BOA_SELF_SERV_WORK'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(21667702047335103)
,p_name=>'Review Work Table'
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
,p_internal_uid=>21667702047335103
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21667928464335105)
,p_db_column_name=>'STMT_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Stmt No'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STMT_NO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21668023040335108)
,p_db_column_name=>'STMT_LINE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Stmt Line'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STMT_LINE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21668100053335108)
,p_db_column_name=>'REQUEST_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Request Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'REQUEST_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21668203432335108)
,p_db_column_name=>'PID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(21668421553353491)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'216685'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'STMT_NO:STMT_LINE:REQUEST_ID:PID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(21681109029945886)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'REQ / RPT Count'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'216812'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'STMT_NO:STMT_LINE:REQUEST_ID:PID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(21681300651945886)
,p_report_id=>wwv_flow_api.id(21681109029945886)
,p_group_by_columns=>'REQUEST_ID'
,p_function_01=>'COUNT'
,p_function_column_01=>'REQUEST_ID'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21670505510490783)
,p_plug_name=>'Follow the steps listed below to create a predefined report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246653781571117)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21740504457982103)
,p_plug_name=>'Outer border'
,p_parent_plug_id=>wwv_flow_api.id(21670505510490783)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_api.id(21674416732579162)
,p_plug_name=>'Remove_old_data'
,p_parent_plug_id=>wwv_flow_api.id(21740504457982103)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21674925521591125)
,p_plug_name=>'Truncate Work Table'
,p_parent_plug_id=>wwv_flow_api.id(21674416732579162)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
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
 p_id=>wwv_flow_api.id(21724101941874501)
,p_plug_name=>'delete Report id'
,p_parent_plug_id=>wwv_flow_api.id(21674416732579162)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21681616910967079)
,p_plug_name=>'Assign Report ID '
,p_parent_plug_id=>wwv_flow_api.id(21740504457982103)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21723820333832532)
,p_plug_name=>'Select Report from Dropdown'
,p_parent_plug_id=>wwv_flow_api.id(21681616910967079)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246825258571117)
,p_plug_display_sequence=>90
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
 p_id=>wwv_flow_api.id(21689930593709039)
,p_plug_name=>'Move from BOA Self Serv Work Table'
,p_parent_plug_id=>wwv_flow_api.id(21740504457982103)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>42
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21740003662849456)
,p_plug_name=>'button'
,p_parent_plug_id=>wwv_flow_api.id(21689930593709039)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>130
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
 p_id=>wwv_flow_api.id(21742313732079394)
,p_plug_name=>' .'
,p_parent_plug_id=>wwv_flow_api.id(21740003662849456)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246653781571117)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21712304702732724)
,p_plug_name=>'clean up work '
,p_parent_plug_id=>wwv_flow_api.id(21740504457982103)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21739023907741729)
,p_plug_name=>'Edit File Query'
,p_parent_plug_id=>wwv_flow_api.id(21712304702732724)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(21738612694729063)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(36252047687571130)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21726005722998577)
,p_plug_name=>'Load Query File'
,p_parent_plug_id=>wwv_flow_api.id(21740504457982103)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>45
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
 p_id=>wwv_flow_api.id(21738105721698695)
,p_plug_name=>'Upload'
,p_parent_plug_id=>wwv_flow_api.id(21726005722998577)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(21737700742687826)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(36252047687571130)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21733431666479130)
,p_plug_name=>'Create Report Request'
,p_parent_plug_id=>wwv_flow_api.id(21740504457982103)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21736417440598008)
,p_plug_name=>'Use Link'
,p_parent_plug_id=>wwv_flow_api.id(21733431666479130)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(21735724796581205)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(36252047687571130)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21743212441135814)
,p_plug_name=>'Review PreDefined'
,p_parent_plug_id=>wwv_flow_api.id(21740504457982103)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>55
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21743901406160982)
,p_plug_name=>'Review PreDefined'
,p_parent_plug_id=>wwv_flow_api.id(21743212441135814)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(21743415342146097)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(36252047687571130)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21746810839844871)
,p_plug_name=>'mange library'
,p_parent_plug_id=>wwv_flow_api.id(21740504457982103)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>170
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21755323110009230)
,p_plug_name=>'Manage Library'
,p_parent_plug_id=>wwv_flow_api.id(21746810839844871)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>180
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(21754502631974963)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(36252047687571130)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21682325960998131)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21723820333832532)
,p_button_name=>'ASSIGN_REPORT_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254423790571137)
,p_button_image_alt=>'Assign'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21674118548560721)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21724101941874501)
,p_button_name=>'P16_DELETE'
,p_button_static_id=>'P16_DELETE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
,p_button_image_alt=>'Delete Report ID'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.::P91_REQUEST_ID:&P16_REPORT_ID.'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21675910377643547)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21674925521591125)
,p_button_name=>'Truncate'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254423790571137)
,p_button_image_alt=>'Truncate'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21690624696981677)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21742313732079394)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254423790571137)
,p_button_image_alt=>'Register File Query'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21671405538503076)
,p_name=>'P16_REPORT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21724101941874501)
,p_prompt=>'Report Id'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT REQUEST_ID D, REQUEST_ID R',
'FROM BOA_SELF_SERV_WORK',
'GROUP BY REQUEST_ID'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21675407392608544)
,p_name=>'P16_TRUNCATE_WORK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21674925521591125)
,p_prompt=>'Truncate Work Table'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21682120670982186)
,p_name=>'P16_ASSIGN_REPORT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(21681616910967079)
,p_prompt=>'4) Assign Report ID to Query File'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36254150221571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21682919961058456)
,p_name=>'P16_START_PID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(21723820333832532)
,p_prompt=>'Start Point'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT MIN(PID) D, MIN(PID) R ',
'FROM BOA_SELF_SERV_WORK ',
'WHERE REQUEST_ID = :P16_REPORT_TO_ASSIGN;'))
,p_lov_cascade_parent_items=>'P16_REPORT_TO_ASSIGN'
,p_ajax_items_to_submit=>'P16_REPORT_TO_ASSIGN'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21683111335062483)
,p_name=>'P16_END_PID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(21723820333832532)
,p_prompt=>'End Point'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT MAX(PID) FROM BOA_SELF_SERV_WORK ',
'WHERE REQUEST_ID = :P16_REPORT_TO_ASSIGN;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select max(pid) d, Max(pid) r',
'from BOA_SELF_SERV_WORK',
'WHERE REQUEST_ID = :P16_REPORT_TO_ASSIGN;'))
,p_lov_cascade_parent_items=>'P16_REPORT_TO_ASSIGN'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21684904168126571)
,p_name=>'P16_REPORT_TO_ASSIGN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21723820333832532)
,p_prompt=>'Report To Assign'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT REQUEST_ID D, REQUEST_ID R',
'FROM BOA_SELF_SERV_WORK',
'GROUP BY REQUEST_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Report ID'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(36253543880571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21690319232955108)
,p_name=>'P16_MOVE_FROM_WORK'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(21689930593709039)
,p_prompt=>'6) Register File Query to System for Approval'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36254150221571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21712909963749444)
,p_name=>'P16_CLEAN_UP_WORK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(21712304702732724)
,p_prompt=>'5) Remove Unwanted Data From Query File'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(36254150221571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21725010746909295)
,p_name=>'P16_REMOVE_OLD_REPORT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(21674416732579162)
,p_prompt=>'2) Remove Old Reports from Work Table'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36254150221571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21726402895019306)
,p_name=>'P16_LOAD_FILE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(21726005722998577)
,p_prompt=>'3) Using APEX Data Load, Upload Query File'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36254150221571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21728930148173709)
,p_name=>'P16_SYSTEM_CAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21723820333832532)
,p_prompt=>'System calculates start & end points'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36254052647571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21735530486553415)
,p_name=>'P16_CREATE_REPORT_REQUEST'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(21733431666479130)
,p_prompt=>'1) Create Predefined Report  '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36254150221571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21744731692190890)
,p_name=>'P16_REVIEW_REG_RPT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(21743212441135814)
,p_prompt=>'7) Review Registered File Query'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36254150221571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21753708023931135)
,p_name=>'P16_MANAGE_LIBRARY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(21746810839844871)
,p_prompt=>'8) Manage Report Library'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36254150221571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21759531276497608)
,p_name=>'P16_REPORT_FOLLOWS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(21667617951335103)
,p_prompt=>'Report From the Work Table Follows'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253432313571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21692204507193461)
,p_name=>'Move From Work'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(21690624696981677)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21676229555658570)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Truncate Work Table'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
' ',
'     EXECUTE IMMEDIATE ''TRUNCATE TABLE BOA_SELF_SERV_WORK DROP STORAGE'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21675910377643547)
,p_process_success_message=>'Table Cleared'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21682518042024163)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'        UPDATE BOA_SELF_SERV_WORK SET REQUEST_ID = :P16_REPORT_TO_ASSIGN',
'        WHERE REQUEST_ID IS NULL ',
'         AND  PID BETWEEN :P16_START_PID AND :P16_END_PID;',
'        COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21682325960998131)
,p_process_success_message=>'Assigned'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21692026099133434)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'move'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'DELETE FROM BOA_SELF_SERV_PREDEF WHERE REQUEST_ID = :P16_REPORT_TO_ASSIGN;',
'COMMIT;',
'',
'INSERT INTO BOA_SELF_SERV_PREDEF (  STMT_NO,STMT_LINE, REQUEST_ID)',
'SELECT STMT_NO,STMT_LINE, REQUEST_ID ',
'FROM  BOA_SELF_SERV_WORK ',
'WHERE REQUEST_ID = :P16_REPORT_TO_ASSIGN;',
'COMMIT;',
'',
' DELETE FROM  BOA_SELF_SERV_WORK  WHERE REQUEST_ID = :P16_REPORT_TO_ASSIGN;',
'COMMIT;',
'',
'UPDATE BOA_DATA_REQUESTS SET STATUS = ''Source Loaded'' WHERE ID = :P16_REPORT_TO_ASSIGN;',
'',
'COMMIT;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21690624696981677)
,p_process_success_message=>'Move completed'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Predefined code'
,p_page_mode=>'NORMAL'
,p_step_title=>'Predefined code'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150127143024'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21709928400613194)
,p_plug_name=>'predefined code'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36248036355571119)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "STMT_NO", ',
'"STMT_LINE",',
'"REQUEST_ID"',
'from "#OWNER#"."BOA_SELF_SERV_PREDEF" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(21710129231613195)
,p_name=>'predefined code'
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
,p_detail_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::P19_STMT_NO,P19_REQUEST_ID:#STMT_NO#,#REQUEST_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>21710129231613195
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21710214346613197)
,p_db_column_name=>'STMT_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Stmt No'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'STMT_NO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21710306518613197)
,p_db_column_name=>'STMT_LINE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Stmt Line'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STMT_LINE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21710425360613197)
,p_db_column_name=>'REQUEST_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Request Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'REQUEST_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(21711517544613427)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'217116'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'STMT_NO:STMT_LINE:REQUEST_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21710926485613198)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21710630473613197)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21709928400613194)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Form on BOA_SELF_SERV_PREDEF'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on BOA_SELF_SERV_PREDEF'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150127142507'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21706615236613168)
,p_plug_name=>'Form on BOA_SELF_SERV_PREDEF'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247544647571118)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21711227040613200)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21706905099613169)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21706615236613168)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P19_STMT_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21707200029613170)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21706615236613168)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21706813058613169)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(21706615236613168)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P19_STMT_NO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21707026045613169)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21706615236613168)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P19_STMT_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21707819747613171)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21708001673613172)
,p_name=>'P19_STMT_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21706615236613168)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Stmt No'
,p_source=>'STMT_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21708218320613172)
,p_name=>'P19_REQUEST_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21706615236613168)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Id'
,p_source=>'REQUEST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21708404823613176)
,p_name=>'P19_STMT_LINE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21706615236613168)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Stmt Line'
,p_source=>'STMT_LINE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21709015167613178)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_SELF_SERV_PREDEF'
,p_attribute_02=>'BOA_SELF_SERV_PREDEF'
,p_attribute_03=>'P19_STMT_NO'
,p_attribute_04=>'STMT_NO'
,p_attribute_05=>'P19_REQUEST_ID'
,p_attribute_06=>'REQUEST_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21709220767613179)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_SELF_SERV_PREDEF'
,p_attribute_02=>'BOA_SELF_SERV_PREDEF'
,p_attribute_03=>'P19_STMT_NO'
,p_attribute_04=>'STMT_NO'
,p_attribute_05=>'P19_REQUEST_ID'
,p_attribute_06=>'REQUEST_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21709431726613179)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21707026045613169)
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'edit work table'
,p_page_mode=>'NORMAL'
,p_step_title=>'edit work table'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150127150743'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21717226458775920)
,p_plug_name=>'Edit work table'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36248036355571119)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PID", ',
'"STMT_NO",',
'"STMT_LINE",',
'"REQUEST_ID"',
'from "#OWNER#"."BOA_SELF_SERV_WORK" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(21717400530775920)
,p_name=>'Edit work table'
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
,p_detail_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_PID:#PID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>21717400530775920
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21717522589775921)
,p_db_column_name=>'PID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'PID'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21717826095775922)
,p_db_column_name=>'REQUEST_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Request ID'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'REQUEST_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21721127036820937)
,p_db_column_name=>'STMT_LINE'
,p_display_order=>5
,p_column_identifier=>'F'
,p_column_label=>'Stmt Line'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STMT_LINE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21721019606820932)
,p_db_column_name=>'STMT_NO'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Stmt No'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STMT_NO'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(21720313238801453)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'217204'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PID:REQUEST_ID:STMT_NO:STMT_LINE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21718324089775922)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21718020856775922)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21717226458775920)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Form on BOA_SELF_SERV_WORK'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on BOA_SELF_SERV_WORK'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150127145618'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21713600543775913)
,p_plug_name=>'Form on BOA_SELF_SERV_WORK'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247544647571118)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21718625549775923)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21713923821775914)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21713600543775913)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P21_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21714209302775915)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21713600543775913)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21713829056775914)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(21713600543775913)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P21_PID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21714010873775914)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21713600543775913)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P21_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21714815123775916)
,p_branch_action=>'f?p=&APP_ID.:20:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21715023467775917)
,p_name=>'P21_PID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21713600543775913)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pid'
,p_source=>'PID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21715230673775917)
,p_name=>'P21_STMT_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21713600543775913)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Stmt No'
,p_source=>'STMT_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21715429199775918)
,p_name=>'P21_STMT_LINE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21713600543775913)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Stmt Line'
,p_source=>'STMT_LINE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21715620513775918)
,p_name=>'P21_REQUEST_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(21713600543775913)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Id'
,p_source=>'REQUEST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21716330610775919)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_SELF_SERV_WORK'
,p_attribute_02=>'BOA_SELF_SERV_WORK'
,p_attribute_03=>'P21_PID'
,p_attribute_04=>'PID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21716532213775920)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_SELF_SERV_WORK'
,p_attribute_02=>'BOA_SELF_SERV_WORK'
,p_attribute_03=>'P21_PID'
,p_attribute_04=>'PID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21716724551775920)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21714010873775914)
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Review Library Report Query'
,p_page_mode=>'NORMAL'
,p_step_title=>'Review Library Report Querys'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150128141320'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21750928743885700)
,p_plug_name=>'Review Library Reports'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36248036355571119)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ROWID", ',
'"STMT_NO",',
'"STMT_LINE",',
'"REQUEST_ID"',
'from "#OWNER#"."BOA_SELF_SERV_LIBR_SRC" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(21751107096885701)
,p_name=>'Review Library Reports'
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
,p_detail_link=>'f?p=&APP_ID.:23:&APP_SESSION.::::P23_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">'
,p_owner=>'CGARDNER'
,p_internal_uid=>21751107096885701
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21751218421885708)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ROWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21751312901885713)
,p_db_column_name=>'STMT_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Stmt No'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'STMT_NO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21751427821885713)
,p_db_column_name=>'STMT_LINE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Stmt Line'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STMT_LINE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21751509664885714)
,p_db_column_name=>'REQUEST_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Request Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'REQUEST_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(21752624869886822)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'217527'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROWID:STMT_NO:STMT_LINE:REQUEST_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21752028362885714)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21751708146885714)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21750928743885700)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Edit File Query in Library'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on BOA_SELF_SERV_LIBR_SRC'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(36245833768571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150128132604'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21747322120885675)
,p_plug_name=>'Form on BOA_SELF_SERV_LIBR_SRC'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247544647571118)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21752304324885719)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21747610397885678)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21747322120885675)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P23_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21747902297885678)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21747322120885675)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21747519192885678)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(21747322120885675)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P23_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21747729305885678)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21747322120885675)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P23_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21748524666885681)
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21748708967885682)
,p_name=>'P23_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21747322120885675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21748911550885686)
,p_name=>'P23_STMT_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21747322120885675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Stmt No'
,p_source=>'STMT_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21749124943885686)
,p_name=>'P23_STMT_LINE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21747322120885675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Stmt Line'
,p_source=>'STMT_LINE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21749324598885687)
,p_name=>'P23_REQUEST_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(21747322120885675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Id'
,p_source=>'REQUEST_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21750025436885687)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOA_SELF_SERV_LIBR_SRC'
,p_attribute_02=>'BOA_SELF_SERV_LIBR_SRC'
,p_attribute_03=>'P23_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21750217773885688)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOA_SELF_SERV_LIBR_SRC'
,p_attribute_02=>'BOA_SELF_SERV_LIBR_SRC'
,p_attribute_03=>'P23_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21750431913885689)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21747729305885678)
);
end;
/
prompt --application/pages/page_00044
begin
wwv_flow_api.create_page(
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'LOGIN_PAGE'
,p_page_mode=>'NORMAL'
,p_step_title=>'LOGIN_PAGE'
,p_step_sub_title=>'LOGIN_PAGE'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245033532571098)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140625072547'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36262138051611816)
,p_plug_name=>'logo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246533856571111)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'AFTER_HEADER'
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
 p_id=>wwv_flow_api.id(36262527343611817)
,p_plug_name=>'LOGIN_REGION'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36263355168611819)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(36262527343611817)
,p_button_name=>'P44_LOGIN'
,p_button_static_id=>'P44_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254748683571137)
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(36264049014611825)
,p_branch_name=>'Redirect_to_pg01'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::P0_APP_USER:&P44_USER_NAME.'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(36263355168611819)
,p_branch_sequence=>10
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  SELECT ID ',
'      FROM BOFA_USER_SECURITY ',
'      WHERE USER_NAME =  :P44_USER_NAME',
'      AND   PW        =  :P44_PASSWORD',
'      and   CHANGE_PW = 0;'))
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(36264236354611828)
,p_branch_name=>'Redirect_to_pg48'
,p_branch_action=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:48:P48_USER_NAME:&P44_USER_NAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(36263355168611819)
,p_branch_sequence=>20
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    SELECT ID ',
'      FROM BOFA_USER_SECURITY',
'      WHERE USER_NAME =  :P44_USER_NAME',
'      AND   PW        =  :P44_PASSWORD',
'      and   CHANGE_PW = 1;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36262346463611817)
,p_name=>'P44_LOGO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(36262138051611816)
,p_prompt=>'Logo'
,p_source=>'#WORKSPACE_IMAGES#SPI_RGB.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36252829762571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36262723838611818)
,p_name=>'P44_USER_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(36262527343611817)
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36262933365611819)
,p_name=>'P44_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36262527343611817)
,p_prompt=>'B of A Fees and Invoices'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-TOP'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253432313571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36263148707611819)
,p_name=>'P44_MESSAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(36262527343611817)
,p_item_default=>'Please enter user name and password and click the login button'
,p_prompt=>'Message'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="font-weight:bold;color:red" '
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36252829762571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36263547304611819)
,p_name=>'P44_PASSWORD'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(36262527343611817)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253432313571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(36263832338611820)
,p_validation_name=>'P44_USER_NAME'
,p_validation_sequence=>10
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'     DECLARE ',
'     ',
'      VAR_NUM NUMBER;',
'    BEGIN  ',
'      SELECT COUNT(*) ',
'      INTO VAR_NUM ',
'      FROM BOFA_USER_SECURITY ',
'      WHERE USER_NAME =  :P44_USER_NAME',
'      AND   PW        =  :P44_PASSWORD;',
'      ',
'    IF ( VAR_NUM = 1 ) THEN ',
'        RETURN TRUE;',
'    ELSE ',
'       RETURN FALSE;',
'    END IF;',
'   END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'USER NAME / PASSWORD not valid '
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(36263355168611819)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(36262723838611818)
,p_error_display_location=>'ON_ERROR_PAGE'
);
end;
/
prompt --application/pages/page_00046
begin
wwv_flow_api.create_page(
 p_id=>46
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'LOGOUT_PAGE'
,p_page_mode=>'NORMAL'
,p_step_title=>'LOGOUT_PAGE'
,p_step_sub_title=>'LOGOUT_PAGE'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245033532571098)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140625072924'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36272044336633570)
,p_plug_name=>'logo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246533856571111)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36272239991633571)
,p_name=>'P46_LOGOUT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36272044336633570)
,p_prompt=>'You Have Successfully logged out of the Application '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253432313571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00048
begin
wwv_flow_api.create_page(
 p_id=>48
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Change Password'
,p_page_mode=>'NORMAL'
,p_step_title=>'Change Password'
,p_step_sub_title=>'Change Password'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245033532571098)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140625072651'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36266850447618254)
,p_plug_name=>'Change Password'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247136604571117)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36268428217618256)
,p_plug_name=>'Logo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246533856571111)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'AFTER_HEADER'
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
 p_id=>wwv_flow_api.id(36267633945618255)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(36266850447618254)
,p_button_name=>'P48_SUBMIT'
,p_button_static_id=>'P48_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
,p_button_image_alt=>'Submit'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(36269349617618259)
,p_branch_name=>'Redirect_to_pg44'
,p_branch_action=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::P44_MESSAGE:Please login with new passord&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(36267633945618255)
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P48_RETCODE'
,p_branch_condition_text=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36267046337618255)
,p_name=>'P48_RETCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(36266850447618254)
,p_item_default=>'0'
,p_prompt=>'Retcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36252829762571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36267254292618255)
,p_name=>'P48_CONFIRM_PASSWORD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(36266850447618254)
,p_prompt=>'Confirm Password:'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36267431091618255)
,p_name=>'P48_MESSAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(36266850447618254)
,p_prompt=>'System Message:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>70
,p_cMaxlength=>100
,p_cHeight=>1
,p_tag_attributes=>'style="font-weight:bold;color:red" '
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36267825799618255)
,p_name=>'P48_NEW_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(36266850447618254)
,p_prompt=>'New Password:'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36268055728618256)
,p_name=>'P48_USER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36266850447618254)
,p_prompt=>'User Name:'
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36268256105618256)
,p_name=>'P48_CURRENT_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(36266850447618254)
,p_prompt=>'Current password:'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253339710571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36268633774618256)
,p_name=>'P48_LOGO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(36268428217618256)
,p_prompt=>'Logo'
,p_source=>'#WORKSPACE_IMAGES#SPI_RGB.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36252829762571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36268825261618256)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDATE_PW'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BOA_FEES.VALIDATE_PW( P_USER_NAME => :P48_USER_NAME,',
'                                  P_OLD_PWD   => :P48_CURRENT_PASSWORD,',
'                                  P_NEW_PWD1  => :P48_NEW_PASSWORD,',
'                                  P_NEW_PWD2  => :P48_CONFIRM_PASSWORD,',
'                                  P_MESSAGE   => :P48_MESSAGE,',
'                                  P_RETCODE   => :P48_RETCODE);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36267633945618255)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36269040196618257)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'App User'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'APEX_APPLICATION.G_USER := :P13_USER_NAME;',
'',
'End;'))
);
end;
/
prompt --application/pages/page_00091
begin
wwv_flow_api.create_page(
 p_id=>91
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Remove Request'
,p_page_mode=>'NORMAL'
,p_step_title=>'Remove Request'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(36245740395571107)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150127080653'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21584227227247600)
,p_plug_name=>'Remove Request from Work Table'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36248454922571119)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
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
 p_id=>wwv_flow_api.id(21584401516259039)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(21584227227247600)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246825258571117)
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
 p_id=>wwv_flow_api.id(21595230680522893)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246956150571117)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(36257350025571176)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(36254937211571137)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21585010913290130)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21584227227247600)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254842002571137)
,p_button_image_alt=>'Remove Request ?'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21586506373336174)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(21584227227247600)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254842002571137)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21586400192327436)
,p_branch_name=>'Return'
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21584701966265897)
,p_name=>'P91_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21584401516259039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Request Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(36253543880571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21584828312276258)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove Request'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'DELETE BOA_SELF_SERV_WORK WHERE REQUEST_ID = :P91_REQUEST_ID;',
'COMMIT;',
'',
'END;'))
,p_process_error_message=>'oops..'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21585010913290130)
,p_process_success_message=>'Deleted'
,p_process_is_stateful_y_n=>'Y'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(36245033532571098)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20140625071900'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36256531140571161)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36247544647571118)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36256838242571172)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(36256531140571161)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
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
 p_id=>wwv_flow_api.id(36256644232571166)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36256531140571161)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36256747604571172)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(36256531140571161)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(36253051431571133)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36257051338571176)
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
 p_id=>wwv_flow_api.id(36256942106571172)
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
 p_id=>wwv_flow_api.id(36257246741571176)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36257137453571176)
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
,p_user_interface_id=>wwv_flow_api.id(36255633232571146)
,p_name=>'Login-Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login-Page'
,p_step_sub_title=>'Login-Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(36245226080571105)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150116091026'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37505028947935621)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246533856571111)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37506632278935624)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(36246533856571111)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37506255288935624)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(37505028947935621)
,p_button_name=>'P175_LOGIN'
,p_button_static_id=>'P175_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(36254255386571135)
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
 p_id=>wwv_flow_api.id(37507530639935626)
,p_branch_name=>'GO_TO_HOMEPAGE'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(37506255288935624)
,p_branch_sequence=>50
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37505230817935621)
,p_name=>'P175_USERNAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(37505028947935621)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(36252928052571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application user name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37505725586935623)
,p_name=>'P175_PASSWORD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(37505028947935621)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(36252928052571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application password.'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37506455222935624)
,p_name=>'P175_APP_TITLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(37505028947935621)
,p_prompt=>'<font face="Agfa Rotis Semi Serif" size="5" color="gray">IRecon File Query Utility</font>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(36252928052571133)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37506823850935624)
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
 p_id=>wwv_flow_api.id(37507029045935625)
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
 p_id=>wwv_flow_api.id(37507250672935625)
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
 p_id=>wwv_flow_api.id(21655907701632630)
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
