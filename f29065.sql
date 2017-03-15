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
,p_default_application_id=>29065
,p_default_owner=>'RDM'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 29065 - Safeguard Runbook Application (SRA)
--
-- Application Export:
--   Application:     29065
--   Name:            Safeguard Runbook Application (SRA)
--   Date and Time:   12:27 Wednesday March 15, 2017
--   Exported By:     CHRISTIAN.GARDNER
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     69427033981319
--

-- Application Statistics:
--   Pages:                     59
--     Items:                  197
--     Validations:              4
--     Processes:               84
--     Regions:                126
--     Buttons:                108
--     Dynamic Actions:          5
--   Shared Components:
--     Logic:
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 1
--       Lists:                  3
--       Breadcrumbs:            1
--         Entries:             45
--       NavBar Entries:         1
--     Security:
--       Authentication:         3
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                15
--         Region:              31
--         Label:                6
--         List:                20
--         Popup LOV:            1
--         Calendar:             3
--         Breadcrumb:           2
--         Button:               8
--         Report:              10
--       LOVs:                  14
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,29065)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'RDM')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Safeguard Runbook Application (SRA)')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_290629065')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20160911063056'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'version # 1 05/22/2015',
''))
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(26830409198950281)
,p_application_tab_set=>0
,p_logo_image=>'#WORKSPACE_IMAGES#SPI_RGB.jpg'
,p_logo_image_attributes=>'alt="Safeguardproperties"; title="Safeguardproperties"'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 2.0'
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
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160911063056'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(4771122311087189)
,p_name=>'Manage BOA Users'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4771310402087206)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'List User information'
,p_list_item_link_target=>'f?p=&APP_ID.:156:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4771776175087217)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Create End User'
,p_list_item_link_target=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(26840591212010249)
,p_name=>'Manage User List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26840790944010254)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'List User information'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26841105325010265)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'List / Edit User Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(26841402294013423)
,p_name=>'Navigation'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(27851706695679011)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'Manage Security Levels'
,p_list_item_link_target=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level < 2;'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(27007687091803284)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage SRA Users'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::P72_APP_USER:&APP_USER:'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level < 3;',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(27052501261405989)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Manage SRA Apps'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level < 2;',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(26841610523013423)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Corporate Compliance'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(27082115259219916)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'B of A Invoice Reconciliation'
,p_list_item_link_target=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.::::'
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
 p_id=>wwv_flow_api.id(2832970168091109)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(2945399687784853)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(26815300651950271)
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
 p_id=>wwv_flow_api.id(26825092234950279)
,p_icon_sequence=>200
,p_icon_subtext=>'Logout'
,p_icon_target=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.::::'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
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
 p_id=>wwv_flow_api.id(26831816743950283)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_HOME'
,p_tab_text=>'SRA'
,p_tab_step=>1
,p_tab_also_current_for_pages=>'3'
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
 p_id=>wwv_flow_api.id(26825214262950279)
,p_lov_name=>'DATA_LOAD_CHARSET'
,p_lov_query=>'.'||wwv_flow_api.id(26825214262950279)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26825290819950279)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-16 Little Endian'
,p_lov_return_value=>'utf-16le'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26825410578950279)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-16 Big Endian'
,p_lov_return_value=>'utf-16be'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26825491419950279)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'US-ASCII'
,p_lov_return_value=>'us-ascii'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26825612182950279)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Arabic ISO-8859-6'
,p_lov_return_value=>'iso-8859-6'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26825687174950279)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Arabic Windows 1256'
,p_lov_return_value=>'windows-1256'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26825801417950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Chinese Big5'
,p_lov_return_value=>'big5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26825911200950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Chinese GBK'
,p_lov_return_value=>'gbk'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26826016890950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic ISO-8859-5'
,p_lov_return_value=>'iso-8859-5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26826115680950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic KOI8-R'
,p_lov_return_value=>'koi8-r'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26826189456950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic KOI8-U'
,p_lov_return_value=>'koi8-u'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26826296561950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic Windows 1251'
,p_lov_return_value=>'windows-1251'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26826415727950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Eastern European ISO-8859-2'
,p_lov_return_value=>'iso-8859-2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26826502376950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Eastern European Windows 1250'
,p_lov_return_value=>'windows-1250'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26826602706950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Greek ISO-8859-7'
,p_lov_return_value=>'iso-8859-7'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26826687297950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Greek Windows 1253'
,p_lov_return_value=>'windows-1253'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26826814619950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hebrew ISO-8859-8-i'
,p_lov_return_value=>'iso-8859-8-i'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26826886255950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hebrew Windows 1255'
,p_lov_return_value=>'windows-1255'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26827009934950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Japanese EUC'
,p_lov_return_value=>'euc-jp'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26827105578950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Japanese Shift JIS'
,p_lov_return_value=>'shift_jis'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26827187448950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Korean EUC'
,p_lov_return_value=>'euc-kr'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26827310318950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Northern European ISO-8859-4'
,p_lov_return_value=>'iso-8859-4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26827405738950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Northern European Windows 1257'
,p_lov_return_value=>'windows-1257'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26827512699950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Southern European ISO-8859-3'
,p_lov_return_value=>'iso-8859-3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26827586003950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Thai TIS-620'
,p_lov_return_value=>'tis-620'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26827703470950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Turkish ISO-8859-9'
,p_lov_return_value=>'iso-8859-9'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26827803799950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Turkish Windows 1254'
,p_lov_return_value=>'windows-1254'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26827911812950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-8'
,p_lov_return_value=>'utf-8'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26827991684950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Vietnamese Windows 1258'
,p_lov_return_value=>'windows-1258'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26828100406950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Western European ISO-8859-1'
,p_lov_return_value=>'iso-8859-1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26828186407950280)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Western European Windows 1252'
,p_lov_return_value=>'windows-1252'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(26828296608950280)
,p_lov_name=>'DATA_LOAD_OPTION'
,p_lov_query=>'.'||wwv_flow_api.id(26828296608950280)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26828391279950280)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Upload file, comma separated (*.csv) or tab delimited'
,p_lov_return_value=>'UPLOAD'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26828514425950280)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Copy and Paste'
,p_lov_return_value=>'PASTE'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(27084417484383207)
,p_lov_name=>'EMAILOPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(27084417484383207)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27084685272383210)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'To:'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27084986214383210)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'From:'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27085301639383210)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'cc:'
,p_lov_return_value=>'3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27085600415383213)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'exclude'
,p_lov_return_value=>'0'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(27007985882817579)
,p_lov_name=>'EMP STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(27007985882817579)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27008291640817583)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'Active'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27008594854817589)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Inactive'
,p_lov_return_value=>'Inactive'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(26828605867950280)
,p_lov_name=>'FIRST_ROW_OPTION'
,p_lov_query=>'.'||wwv_flow_api.id(26828605867950280)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26828686596950280)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(26828789051950280)
,p_lov_name=>'GCFU_REASON'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SQA_GCFU_REASON as display_value, SQA_GCFU_REASON as return_value ',
'  from SQA_GCFU_REASON',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(26828908609950280)
,p_lov_name=>'LOAN_TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(26828908609950280)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26828994385950281)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ALL'
,p_lov_return_value=>'ALL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26829112776950281)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'REO'
,p_lov_return_value=>'REO'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26829211474950281)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'P&P'
,p_lov_return_value=>'P&P'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(26829301206950281)
,p_lov_name=>'ORDER_OPENED'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ORDER_OPENED as display_value, ORDER_OPENED as return_value ',
'  from SQA_ORDER_OPENED',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(26829402300950281)
,p_lov_name=>'RDM APPS'
,p_lov_query=>'.'||wwv_flow_api.id(26829402300950281)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26829499444950281)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Corporate Compliance Vendor Disputes'
,p_lov_return_value=>'VD'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27081201481195971)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'B of A Invoice Reconciliation'
,p_lov_return_value=>'BOAIR'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(27853987199794429)
,p_lov_name=>'SECURITY-LEVELS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SECURITY_TITLE D, SECURITY_LEVEL R',
'FROM RSA_SECURITY_levels',
'ORDER BY SECURITY_LEVEL',
''))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(26829613465950281)
,p_lov_name=>'SQA_ADDL_ORDER_OPENED'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SQA_ADDL_ORDER_OPENED as display_value, SQA_ADDL_ORDER_OPENED as return_value ',
'  from SQA_ADDL_ORDER_OPENED',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(26829697012950281)
,p_lov_name=>'SQA_FU_REASON'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SQA_FU_REASON as display_value, SQA_FU_REASON as return_value ',
'  from SQA_FU_REASON',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(27085916202383213)
,p_lov_name=>'WORKSPACE'
,p_lov_query=>'.'||wwv_flow_api.id(27085916202383213)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27086191757383213)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Dev Region'
,p_lov_return_value=>'SGDEVWS03'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27086485612383213)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'QA Region'
,p_lov_return_value=>'SGQAWS03'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27086786364383213)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'STAGE'
,p_lov_return_value=>'SGPRODWS03'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27087105051383213)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Production'
,p_lov_return_value=>'SGPRODWS03'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(26829795301950281)
,p_lov_name=>'YES NO'
,p_lov_query=>'.'||wwv_flow_api.id(26829795301950281)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26829895756950281)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(26830004593950281)
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
 p_id=>wwv_flow_api.id(26831494182950282)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(4773745742294936)
,p_parent_id=>wwv_flow_api.id(27100705803774135)
,p_short_name=>'List B of A Users'
,p_link=>'f?p=&APP_ID.:156:&SESSION.::&DEBUG.:::'
,p_page_id=>156
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(4773904960304018)
,p_parent_id=>wwv_flow_api.id(4773745742294936)
,p_short_name=>'Create End User'
,p_link=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.:::'
,p_page_id=>157
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26831893865950283)
,p_parent_id=>0
,p_short_name=>'RSA'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26982109948002548)
,p_parent_id=>wwv_flow_api.id(26982701943036668)
,p_short_name=>'Manage Users'
,p_link=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:::'
,p_page_id=>55
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26982701943036668)
,p_parent_id=>0
,p_short_name=>'Corporate Compliance'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26983294155070681)
,p_parent_id=>wwv_flow_api.id(26982109948002548)
,p_short_name=>'Existing Users'
,p_link=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:::'
,p_page_id=>56
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26984396286100090)
,p_parent_id=>wwv_flow_api.id(26983294155070681)
,p_short_name=>'Edit User'
,p_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:::'
,p_page_id=>59
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26984886784119605)
,p_parent_id=>wwv_flow_api.id(26982109948002548)
,p_short_name=>'List User Tasks'
,p_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26993204850172058)
,p_parent_id=>wwv_flow_api.id(26984886784119605)
,p_short_name=>'Assign Tasks'
,p_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:::'
,p_page_id=>71
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26993986562393247)
,p_parent_id=>wwv_flow_api.id(26982701943036668)
,p_short_name=>'Application processes'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(26994210919397135)
,p_parent_id=>wwv_flow_api.id(26993986562393247)
,p_short_name=>'  '
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27006908669778006)
,p_parent_id=>wwv_flow_api.id(26831893865950283)
,p_short_name=>'List RSA Users'
,p_link=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:::'
,p_page_id=>72
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27007093789784986)
,p_parent_id=>wwv_flow_api.id(27006908669778006)
,p_short_name=>'Add / Edit RSA Users'
,p_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:::'
,p_page_id=>73
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27033895843829250)
,p_parent_id=>wwv_flow_api.id(26982701943036668)
,p_short_name=>'Troubleshooting List'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27034110064837833)
,p_parent_id=>wwv_flow_api.id(27033895843829250)
,p_short_name=>'Add to Guide'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27034791073861832)
,p_parent_id=>wwv_flow_api.id(27033895843829250)
,p_short_name=>'Solution List'
,p_link=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:::'
,p_page_id=>53
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27035201628872112)
,p_parent_id=>wwv_flow_api.id(27034791073861832)
,p_short_name=>'Add Solution'
,p_link=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:::'
,p_page_id=>54
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27039187825410319)
,p_parent_id=>wwv_flow_api.id(27033895843829250)
,p_short_name=>'List Results'
,p_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27053112286420682)
,p_parent_id=>wwv_flow_api.id(26831893865950283)
,p_short_name=>'List RSA Apps'
,p_link=>'f?p=&FLOW_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27089206778105113)
,p_parent_id=>0
,p_short_name=>'B of A IRecon'
,p_link=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:::'
,p_page_id=>102
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27089410216118729)
,p_parent_id=>wwv_flow_api.id(27089206778105113)
,p_short_name=>'Troubleshooting List'
,p_link=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:::'
,p_page_id=>140
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27089594257126202)
,p_parent_id=>wwv_flow_api.id(27089410216118729)
,p_short_name=>'Add to Guide'
,p_link=>'f?p=&APP_ID.:142:&SESSION.::&DEBUG.:::'
,p_page_id=>142
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27089809773134174)
,p_parent_id=>wwv_flow_api.id(27089410216118729)
,p_short_name=>'List Results'
,p_link=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:::'
,p_page_id=>141
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27090093814141523)
,p_parent_id=>wwv_flow_api.id(27089410216118729)
,p_short_name=>'Solution List'
,p_link=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.:::'
,p_page_id=>143
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27090399624154021)
,p_parent_id=>wwv_flow_api.id(27090093814141523)
,p_short_name=>'Add Solution'
,p_link=>'f?p=&APP_ID.:144:&SESSION.::&DEBUG.:::'
,p_page_id=>144
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27100705803774135)
,p_parent_id=>wwv_flow_api.id(27089206778105113)
,p_short_name=>'Manage Users'
,p_link=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:::'
,p_page_id=>155
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27100904712789826)
,p_parent_id=>wwv_flow_api.id(27089206778105113)
,p_short_name=>'Application processes'
,p_link=>'f?p=&APP_ID.:106:&SESSION.::&DEBUG.:::'
,p_page_id=>106
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27101191760811084)
,p_parent_id=>wwv_flow_api.id(27100904712789826)
,p_short_name=>'  '
,p_link=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:::'
,p_page_id=>107
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27393297158005504)
,p_parent_id=>wwv_flow_api.id(27053112286420682)
,p_short_name=>'Add Apps to RSA '
,p_link=>'f?p=&FLOW_ID.:35:&SESSION.'
,p_page_id=>35
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27395915340322924)
,p_parent_id=>wwv_flow_api.id(26982701943036668)
,p_short_name=>'Edit Table of Contents'
,p_link=>'f?p=&FLOW_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27397088152458012)
,p_parent_id=>wwv_flow_api.id(26982701943036668)
,p_short_name=>'Application overview'
,p_link=>'f?p=&FLOW_ID.:5:&SESSION.'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27405594006397590)
,p_parent_id=>wwv_flow_api.id(26983294155070681)
,p_short_name=>'Create End User'
,p_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:::'
,p_page_id=>57
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27409487698958717)
,p_parent_id=>wwv_flow_api.id(27089206778105113)
,p_short_name=>'Edit Table of Contents'
,p_link=>'f?p=&FLOW_ID.:103:&SESSION.'
,p_page_id=>103
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27411314480000569)
,p_parent_id=>wwv_flow_api.id(27089206778105113)
,p_short_name=>'Application overview'
,p_link=>'f?p=&FLOW_ID.:105:&SESSION.'
,p_page_id=>105
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27413091190043901)
,p_parent_id=>wwv_flow_api.id(27089206778105113)
,p_short_name=>'Frequently Asked Questions'
,p_link=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:::'
,p_page_id=>116
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27414511934116897)
,p_parent_id=>wwv_flow_api.id(26982701943036668)
,p_short_name=>'Frequently Asked Questions'
,p_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27423304594957661)
,p_parent_id=>wwv_flow_api.id(27414511934116897)
,p_short_name=>' '
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27424594385053569)
,p_parent_id=>wwv_flow_api.id(27413091190043901)
,p_short_name=>' '
,p_link=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.:::'
,p_page_id=>115
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27843997798485655)
,p_parent_id=>wwv_flow_api.id(26982701943036668)
,p_short_name=>'Tutorials'
,p_link=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:::'
,p_page_id=>74
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27852107977693642)
,p_parent_id=>wwv_flow_api.id(26831893865950283)
,p_short_name=>'Manage Security levels'
,p_link=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:::'
,p_page_id=>76
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27852593947715395)
,p_parent_id=>wwv_flow_api.id(27852107977693642)
,p_short_name=>'Edit Security Levels'
,p_link=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:::'
,p_page_id=>77
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27865193412830100)
,p_short_name=>'Edit Tutorial Pages'
,p_link=>'f?p=&APP_ID.:81:&SESSION.'
,p_page_id=>81
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27876486777374897)
,p_parent_id=>wwv_flow_api.id(27843997798485655)
,p_short_name=>'Instructions'
,p_link=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:::'
,p_page_id=>80
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(28073611441473498)
,p_parent_id=>wwv_flow_api.id(26982701943036668)
,p_short_name=>'Question Categories'
,p_link=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:::'
,p_page_id=>83
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(28073798501479475)
,p_parent_id=>wwv_flow_api.id(28073611441473498)
,p_short_name=>'Edit Question Categories'
,p_link=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
,p_page_id=>84
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(26815413868950271)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26815506677950272)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26815609009950272)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26815716739950272)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26815789157950272)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26815912396950272)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26816012789950273)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26816098538950273)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26816199723950273)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26816296122950273)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26816411724950273)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26816494242950273)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26816615868950274)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26816685886950274)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26816790580950274)
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(2948046301784962)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>22
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(26823591618950278)
,p_template_name=>'Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-default" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>22
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(26823691690950278)
,p_template_name=>'Hot Button (Black)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt5" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>22
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(26823787441950278)
,p_template_name=>'Hot Button (Blue)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt1" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>22
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(26823903268950278)
,p_template_name=>'Hot Button (Yellow)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt4" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>22
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(26824017094950278)
,p_template_name=>'Small Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt2" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'XP Square FFFFFF'
,p_theme_id=>22
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(26824111277950278)
,p_template_name=>'Small Hot Button (Blue)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt3" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>22
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(26824186839950278)
,p_template_name=>'Small Hot Button (Yellow)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt6" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>22
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26816905436950274)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="blank-region">',
'#BODY#',
'<div class="clear"></div>',
'</div>'))
,p_page_plug_template_name=>'Blank Region'
,p_theme_id=>22
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26817001191950274)
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
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26817106197950274)
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
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26817200166950274)
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
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26817291236950275)
,p_layout=>'TABLE'
,p_template=>'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>22
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26817394794950275)
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
,p_theme_id=>22
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26817513221950275)
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
,p_theme_id=>22
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26817608909950275)
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
,p_theme_id=>22
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26817715850950275)
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
,p_theme_id=>22
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26817796175950275)
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
,p_theme_id=>22
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26817889253950275)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'DIV Region with ID copy'
,p_theme_id=>22
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26818005127950275)
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
,p_theme_id=>22
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26818085587950275)
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
,p_theme_id=>22
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Gray Head, white body'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26818212232950275)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="navigation-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'    <h3>#TITLE#</h3>',
'  <div>',
'    #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Navigation Region'
,p_theme_id=>22
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26818311153950275)
,p_layout=>'TABLE'
,p_template=>'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_theme_id=>22
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26818396705950275)
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
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26818510561950275)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_theme_id=>22
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26818586826950275)
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
,p_theme_id=>22
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26818692684950275)
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
,p_theme_id=>22
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26818797263950275)
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
,p_theme_id=>22
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26818885152950275)
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
,p_theme_id=>22
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26819005095950275)
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
,p_theme_id=>22
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26819096791950275)
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
,p_theme_id=>22
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26819205995950275)
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
,p_theme_id=>22
,p_theme_class_id=>10
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26819312307950275)
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
,p_theme_id=>22
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26819401455950275)
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
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26819498545950276)
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
,p_theme_id=>22
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26819604719950276)
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
,p_theme_id=>22
,p_theme_class_id=>3
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26819703582950276)
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
,p_theme_id=>22
,p_theme_class_id=>3
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26819786056950276)
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
,p_theme_id=>22
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(26819894799950276)
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
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26821010080950276)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-alt1" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-default" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_name=>'Button List'
,p_theme_id=>22
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="button-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26821096160950276)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'          <li class="#LIST_STATUS#">',
'            <a href="#LINK#"><span>#TEXT#</span></a>',
'          </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'          <li class="#LIST_STATUS#">',
'            <a href="#LINK#"><span>#TEXT#</span></a>',
'          </li>'))
,p_list_template_name=>'Centered Tab Set'
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26821204067950277)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26821298604950277)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26821401057950277)
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
,p_theme_id=>22
,p_theme_class_id=>4
,p_list_template_before_rows=>'<div class="horizontal-images-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26821496683950277)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>22
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26821616926950277)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Horizontal Tabs Rounded List'
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26821704976950277)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Horizontal Tabs Rounded List (Full Width)'
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26821804003950277)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26821908684950277)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26822013950950277)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26822102168950277)
,p_list_template_current=>'<li class="active"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26822199843950277)
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
,p_theme_id=>22
,p_theme_class_id=>5
,p_list_template_before_rows=>'<div class="vertical-images-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26822297939950277)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>22
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26822404473950277)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>22
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="vertical-sidebar-list">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26822502729950277)
,p_list_template_current=>'<li class="current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>22
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26822605115950277)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets, Alternative'
,p_theme_id=>22
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26822702454950277)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>22
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26822795009950277)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li class="non-current">#TEXT#</li>'
,p_list_template_name=>'Wizard Progress List'
,p_theme_id=>22
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="wizard-progress-list" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_between_items=>'<li class="progress-indicator">&nbsp;</li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(26822893290950277)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Wizard Progress List, Horizontal Train'
,p_theme_id=>22
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
 p_id=>wwv_flow_api.id(26820012085950276)
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
,p_theme_id=>22
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(26820012085950276)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26820114484950276)
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
,p_theme_id=>22
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(26820114484950276)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26820185867950276)
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
,p_theme_id=>22
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(26820185867950276)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26820296638950276)
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
,p_theme_id=>22
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(26820296638950276)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26820389101950276)
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
,p_theme_id=>22
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26820507459950276)
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
,p_theme_id=>22
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(26820507459950276)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26820594274950276)
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
,p_theme_id=>22
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(26820594274950276)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26820714229950276)
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
,p_theme_id=>22
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26820796383950276)
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
,p_theme_id=>22
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(26820912255950276)
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
,p_theme_id=>22
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26822985595950277)
,p_template_name=>'No Label'
,p_template_body1=>'<span class="hidden-label">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>22
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26823113240950277)
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="optional">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>22
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26823205067950277)
,p_template_name=>'Optional with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>22
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26823304176950277)
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999" /> <span class="required">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>22
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26823400647950277)
,p_template_name=>'Required with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUI'
||'RED#" tabindex="999" /> '
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>22
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(26823491865950278)
,p_template_name=>'Safeguard Blue'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #1589FF; font-size: 14px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>22
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(26824299957950278)
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
,p_theme_id=>22
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(26824396330950278)
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>22
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(26824812652950278)
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
,p_theme_id=>22
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(26824496514950278)
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
,p_theme_id=>22
,p_theme_class_id=>1
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(26824590718950278)
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
,p_theme_id=>22
,p_theme_class_id=>2
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(26824689769950278)
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
,p_theme_id=>22
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(26824915343950279)
,p_theme_id=>22
,p_theme_name=>'Bluejay'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(26816199723950273)
,p_error_template=>wwv_flow_api.id(26815789157950272)
,p_printer_friendly_template=>wwv_flow_api.id(26816411724950273)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(26815413868950271)
,p_default_button_template=>wwv_flow_api.id(26823591618950278)
,p_default_region_template=>wwv_flow_api.id(26818885152950275)
,p_default_chart_template=>wwv_flow_api.id(26817796175950275)
,p_default_form_template=>wwv_flow_api.id(26818005127950275)
,p_default_reportr_template=>wwv_flow_api.id(26818885152950275)
,p_default_tabform_template=>wwv_flow_api.id(26818885152950275)
,p_default_wizard_template=>wwv_flow_api.id(26819786056950276)
,p_default_menur_template=>wwv_flow_api.id(26817291236950275)
,p_default_listr_template=>wwv_flow_api.id(26817715850950275)
,p_default_irr_template=>wwv_flow_api.id(26818510561950275)
,p_default_report_template=>wwv_flow_api.id(26820507459950276)
,p_default_label_template=>wwv_flow_api.id(26823205067950277)
,p_default_menu_template=>wwv_flow_api.id(26824299957950278)
,p_default_calendar_template=>wwv_flow_api.id(26824496514950278)
,p_default_list_template=>wwv_flow_api.id(26822502729950277)
,p_default_option_label=>wwv_flow_api.id(26823205067950277)
,p_default_required_label=>wwv_flow_api.id(26823400647950277)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(22),'')
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
 p_id=>wwv_flow_api.id(27000985023741463)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(26830109932950281)
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
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(26830196017950281)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(26830409198950281)
,p_name=>'Application Express Authentication [2]'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
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
 p_id=>wwv_flow_api.id(26825015919950279)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>22
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
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Global Page - Desktop'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151208115744'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26833594134961072)
,p_plug_name=>'CSS OverRide'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'.infoTextRegion.padded {',
'  padding: 8px 0;',
'  margin: 8px 8px 12px 8px;',
'}',
'',
'.infoTextRegion {',
'  background-color: yellow;',
'  padding: 0;',
'}',
'.infoTextRegion p,',
'.infoTextRegion li {',
'  font-size: 12px;',
'  color: #FFFFFF;',
'  padding: 0 0 12px 0;',
'  margin: 0;',
'  line-height: 20px;',
'}',
'.infoTextRegion h3 {',
'  color: blue;',
'  padding: 0;',
'}',
'',
'.infoTextRegion ul,',
'.infoTextRegion ol {',
'margin: 8px 8px 8px 24px !important;',
'padding-bottom: 12px;',
'}',
'.infoTextRegion ul {',
'list-style: disc outside;',
'}',
'.infoTextRegion ol {',
'list-style: decimal outside;',
'}',
'.infoTextRegion li {',
'padding-bottom: 0;',
'}',
'',
'</style>'))
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
 p_id=>wwv_flow_api.id(26833810312961073)
,p_plug_name=>'Global Variables'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26816905436950274)
,p_plug_display_sequence=>30
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26833994108961073)
,p_name=>'P0_PROCESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26833810312961073)
,p_prompt=>'Process'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26834211230961074)
,p_name=>'P0_PROCESS_1'
,p_item_sequence=>10
,p_prompt=>'Process'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151208112304'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26842193552029883)
,p_plug_name=>'Application Menu'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26819401455950275)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_api.id(26841402294013423)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(26822502729950277)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26842493598058266)
,p_plug_name=>'Message'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817106197950274)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26842785869062435)
,p_name=>'P1_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26842493598058266)
,p_prompt=>'You are not an authorized user.  Please contact the application administrator for access.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)'))
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4689327478440882)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET ACCESS LEVEL'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'ACCESS_LEVEL NUMBER;',
'',
'BEGIN',
'',
'SELECT SECURITY_LEVEL',
'  INTO ACCESS_LEVEL',
'  FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME);',
'',
':P0_ACCESS_LEVEL := ACCESS_LEVEL;',
'',
'END;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Edit Table of Contents'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit Table of Contents'
,p_step_sub_title=>'Edit Table of Contents'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151208150755'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4718004889790163)
,p_plug_name=>'Access_level'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(26818885152950275)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26845904930285278)
,p_plug_name=>'Edit Table of Contents'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27395587130322922)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26846513593285285)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26845904930285278)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26846107550285280)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26845904930285278)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26846694310285285)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26845904930285278)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26846289213285285)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26845904930285278)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P2_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26848801262285289)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4718704264927071)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 2'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4718451136811835)
,p_name=>'P2_ACCESS_LEVEL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(4718004889790163)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26846910749285285)
,p_name=>'P2_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26845904930285278)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26847101885285286)
,p_name=>'P2_APP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26845904930285278)
,p_use_cache_before_default=>'NO'
,p_item_default=>'VD'
,p_prompt=>'App'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26847305557285286)
,p_name=>'P2_PAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26845904930285278)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Page'
,p_source=>'PAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26847506642285286)
,p_name=>'P2_AREA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26845904930285278)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Area'
,p_source=>'AREA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26847696462285286)
,p_name=>'P2_TITLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26845904930285278)
,p_use_cache_before_default=>'NO'
,p_prompt=>'PROCESS'
,p_source=>'PROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26847885908285286)
,p_name=>'P2_SUBPROCESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26845904930285278)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sub Process'
,p_source=>'SUBPROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27394500965199995)
,p_name=>'P2_SECURITY_LEVEL'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26845904930285278)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Security Level'
,p_source=>'SECURITY_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SECURITY-LEVELS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SECURITY_TITLE D, SECURITY_LEVEL R',
'FROM RSA_SECURITY_levels',
'ORDER BY SECURITY_LEVEL',
''))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26848115630285288)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_ADMIN_BOOK_PGS'
,p_attribute_02=>'RSA_ADMIN_BOOK_PGS'
,p_attribute_03=>'P2_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26848317528285288)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RSA_ADMIN_BOOK_PGS'
,p_attribute_02=>'RSA_ADMIN_BOOK_PGS'
,p_attribute_03=>'P2_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26848501108285289)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'9'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26846289213285285)
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Corporate Compliance'
,p_page_mode=>'NORMAL'
,p_step_title=>'Corporate Compliance'
,p_step_sub_title=>'Corporate Compliance'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151218134956'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26982885529041509)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27396208086366811)
,p_plug_name=>'Table of Contents'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818885152950275)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26852203727292554)
,p_plug_name=>'VD Table of Contents'
,p_parent_plug_id=>wwv_flow_api.id(27396208086366811)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select a.id, a.page as go, a.page, a.area, a.Process, a.subprocess, A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.APP = ''VD''',
'order by a.process, a.subprocess nulls first;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26852403879292556)
,p_name=>'VD Table of Contents'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'NONE'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>24019919019201584
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26852501759292562)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PAGE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26852592257292568)
,p_db_column_name=>'AREA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Area'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'AREA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26852715951292568)
,p_db_column_name=>'ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Edit line'
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::P2_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level = 1;',
''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26852787964292570)
,p_db_column_name=>'GO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Go'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_PAGE_NO,P0_PROCESS:#GO#,#PROCESS#'
,p_column_linktext=>'<img src="#WORKSPACE_IMAGES#Blue Go Button.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'GO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26852902495292570)
,p_db_column_name=>'PROCESS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Process'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26853006555292570)
,p_db_column_name=>'SUBPROCESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Subprocess'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBPROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27395308858302606)
,p_db_column_name=>'SECURITY_LEVEL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Security Level'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SECURITY_LEVEL'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select pid',
'from rsa_emp_security',
'where upper(login) = upper(:APP_USER) ',
'and security_level = 1'))
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26853103854292570)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'240207'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:GO:AREA:PROCESS:SUBPROCESS:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26853311236292572)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26852203727292554)
,p_button_name=>'EDIT_CONTENTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Add to Table of Contents'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:APP_USER)',
' and security_level = 1;'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Redirect_to_page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Redirect_to_page'
,p_step_sub_title=>'Redirect_to_page'
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
,p_last_upd_yyyymmddhh24miss=>'20150713093515'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26855301912300899)
,p_plug_name=>'go_to'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818885152950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF(:P4_PAGE_NO IS NOT NULL )THEN',
'htp.init;',
'owa_util.redirect_url(''f?p=&APP_ID.:&P4_PAGE_NO.:&APP_SESSION.'');',
'apex_application.stop_apex_engine;',
'',
'END IF;',
'',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26855487586300901)
,p_name=>'P4_PAGE_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26855301912300899)
,p_prompt=>'Page No'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26855714570300901)
,p_name=>'P4_PROCESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26855301912300899)
,p_prompt=>'Process'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Application overview'
,p_page_mode=>'NORMAL'
,p_step_title=>'Application overview'
,p_step_sub_title=>'Application overview'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151208153123'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26857614921306363)
,p_plug_name=>'Variables'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26816905436950274)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
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
 p_id=>wwv_flow_api.id(26857989481306364)
,p_plug_name=>'Application overview'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817889253950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>',
'<h4>This application supports the Q&A Resolution team with the following features.</h4>',
'<ul>',
'  <li>A fully automated loading of vendor disputes from the Vendor Web system</li>',
'  <li>Provides processors the ability to reconcile vendor disputes</li>',
'  <li>Batch process email notifications to vendors</li>',
'  <li>Manually enter vendor disputes</li>',
'  <li>Edit previously closed vendor disputes</li>',
'  <li>Allow managers to include / exclude Vendor codes from processors work queue</li>',
'  <li>System designed to prevent processors from unintentionally processing disputes concurrently </li>',
'</ul>',
'<h4> Application dependences </h4> ',
'<ul>',
'    <li>Vendor Web must be operational</li>',
'    <li>The Oracle database APXP01 (Ohio or Texas ) must be operational </li>',
'    <li>The APEX web server must be up and running</li>',
'</ul>  ',
'</p>'))
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
 p_id=>wwv_flow_api.id(27396796236458011)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4720120099067957)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 5'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26857800082306363)
,p_name=>'P5_PROCESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26857614921306363)
,p_prompt=>'Process'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'application flow and process'
,p_page_mode=>'NORMAL'
,p_step_title=>'application flow and process pg 1'
,p_step_sub_title=>'application flow and process'
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
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151208153223'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26859917425312983)
,p_plug_name=>'Process Flow'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817889253950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'<style>',
'  body {background-color:white}',
'li {',
'  font-size: 12px;',
'  padding: 0 0 0 0;',
'  margin: 0;',
'  line-height: 20px;',
'}',
'  h1    {color:blue}',
'  h2    {color:blue}',
'  h3    {color:blue}',
'  h4    {color:blue}',
'  prc   {color:#1589FF}',
'  O1   {color: green; ',
'        font-size: 11px; ',
'        font-weight: bold; ',
'        font-style:  italic;',
'        font-family : calibri, verdana, sans-serif"  ',
'       }',
'</style>',
'<body>',
'<div style="width:60%">',
'    <div style="background-color:#0000; width:60%">',
'      <h2> Application processes</h2>',
'    </div>  ',
'     <div style="background-color:#0000; height:200px;width:350px;float:left;">',
'      <div><h3>Login</h3></div>',
'   <div> ',
'     <p> ',
'      Entry into the application starts on page 175 where the end user is prompt for login credentials.',
'     After entering valid credentials the end user is redirected to the home page and depending on the privileges assigned to them will be presented the Actions Menu.',
'<p/>',
' <div><h3>Actions Menu</h3></div>',
' <div> ',
'      <p>Each menu item has it''s own process flow</p>',
' </div>',
'  <div>',
'      <ul>',
'          <li>',
'              <b>Batch process Email:</b> Process that notifies the vendor the action taken by the Safeguard Q&A Resolution team on their dispute.',
'           </li>',
'          <li>',
'              <b>Review Disputes:</b> Process Safeguard Q&A Resolution team uses to validate disputes submitted by vendors.          ',
'          </li>',
'          <li>',
'              <b>Manually Enter Disputes:</b> A page where Safeguard Q&A Resolution users can manually enter disputes into the database.',
'          </li>  ',
'          <li>',
'              <b>Review Disputes in Pending Status:</b> Process that Safeguard Q&A Resolution uses to re-evaluate disputes pending photos, paperwork etc.',
'          </li>            ',
'      </ul>',
'    <b>*Note: Review Disputes will be replaced by Review Escalated Disputes for users who have been assigned that task </b>',
'  </div>',
'                  ',
'  </div>',
'</div>',
'',
'</body>',
'</html>'))
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
 p_id=>wwv_flow_api.id(26860095417312984)
,p_plug_name=>'Navation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BEFORE_FOOTER'
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
 p_id=>wwv_flow_api.id(26860485019312986)
,p_plug_name=>'login_pic'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817889253950275)
,p_plug_display_sequence=>40
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
 p_id=>wwv_flow_api.id(26994314963400130)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26860305250312986)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26860095417312984)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Next >'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4720450410073869)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 6'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26860692747312986)
,p_name=>'P6_ACTIONS_MENU'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26860485019312986)
,p_source=>'#WORKSPACE_IMAGES#actions_menu.JPG'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26860885217312987)
,p_name=>'P6_LOGIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26860485019312986)
,p_source=>'#WORKSPACE_IMAGES#cclogin.GIF'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27418685365480349)
,p_name=>'P6_PAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26860095417312984)
,p_item_default=>'1'
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'application flow and process pg 2'
,p_page_mode=>'NORMAL'
,p_step_title=>'application flow and process page 2'
,p_step_sub_title=>'application flow and process page 2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151208153321'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26863090867318888)
,p_plug_name=>'Process Flow'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817106197950274)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'<style>',
'  body {background-color:white}',
'li {',
'  font-size: 12px;',
'  padding: 0 0 0 0;',
'  margin: 0;',
'  line-height: 20px;',
'}',
'  h1    {color:blue}',
'  h2    {color:blue}',
'  h3    {color:blue}',
'  h4    {color:blue}',
'  prc   {color:#1589FF}',
'  O1   {color: green; ',
'        font-size: 11px; ',
'        font-weight: bold; ',
'        font-style:  italic;',
'        font-family : calibri, verdana, sans-serif"  ',
'       }',
'  shft8 { color: red;',
'          font-size: 11px;',
'          font-weight: bold',
'         } ',
'</style>',
'<body>',
'<table width="50%" border="0">',
'  <tr>',
'    <td colspan="1">',
'      <h2>Application processes Cont''d</h2>',
'    </td>',
'  </tr>',
'  <tr valign="top">',
'    <td >',
'      <div style= height:100px;  float:left;">',
'          <div>',
'              <h3>Load Vendor Disputes</h3>',
'          </div>',
'      <div>',
'      <div> ',
'          <p> Purpose: Extract, remove duplicates, reformat and merge disputes from Vendor Web process into the corporate compliance database. Consists of the following sub-processes</p>',
'      </div>',
'  <div>',
'      <ul>',
'          <li>',
'              <prc>Extract Vendor disputes:</prc> <br /> Performed by a materialized view <O1>RDM VENDOR_DISPUTE_V</O1> and a Vendor Web view <O1>VWDATA VENDOR_DISPUTE_V</O1>. <br /> &nbsp; &nbsp; &nbsp;&nbsp; <O1>VWDATA VENDOR_DISPUTE_V</O1> selects'
||' disputes from the past five days.<br /> &nbsp; &nbsp; &nbsp;&nbsp; <O1>RDM VENDOR_DISPUTE_V</O1> refreshes every day at 6:00 AM EST pulling in new disputes from <O1>VWDATA VENDOR_DISPUTE_V</O1>. ',
'           </li>',
'          <li>',
'              <prc>Remove Duplicate Disputes:</prc> <br /> Accomplished by after insert trigger <O1>VENDOR_DISPUTE_V_AI </O1> and procedure <O1>LOAD_VENDOR_DISPUTE_VWDATA </O1>from package <O1> CORPORATE_COMPLIANCE </O1>. <br /> &nbsp;&nbsp;&nbsp;&nb'
||'sp; <O1>VENDOR_DISPUTE_V_AI</O1> removes any duplicates from <O1>RDM VENDOR_DISPUTE_V</O1> while inserting into <O1>CORP_VENDOR_DISPUTE_V</O1>,  <O1>LOAD_VENDOR_DISPUTE_VWDATA</O1> insures disputes are only loaded once from <O1>CORP_VENDOR_DISPUTE_V<'
||'/O1>.              ',
'          </li>',
'          <li>',
'              <prc>Reformat Disputes:</prc> <br /> <O1>LOAD_VENDOR_DISPUTE_VWDATA</O1> converts Vendor web data coming into <O1>CORP_VENDOR_DISPUTE_V</O1> as it inserts into <O1>CORP_VENDOR_DISPUTES_STAGE</O1>. ',
'          </li>  ',
'          <li>',
'             <prc>Merge Disputes:</prc> <br /> <O1>LOAD_VENDOR_DISPUTES</O1> is called by <O1>LOAD_VENDOR_DISPUTE_VWDATA</O1> to split <O1>CORP_VENDOR_DISPUTES_STAGE</O1> into <O1>CORP_VENDOR_DISPUTES</O1> and <O1>CORP_VENDOR_DISPUTE_DETAILS</O1>. Th'
||'e merge of new disputes is complete after <O1>ASSIGN_DISPUTE_NUMBER</O1> renumbers disputes that have the same work order number; ',
'          </li> ',
'                     ',
'      </ul>',
'  </div>',
'  <div>',
'       <shft8>*</shft8><b>NOTE:</b> Database objects are in <O1>Green</O1> ',
'  </div>',
'',
'    </td>',
'  </tr>',
'</table>',
'</body>',
'</html>'))
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
 p_id=>wwv_flow_api.id(26863289757318889)
,p_plug_name=>'Navation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BEFORE_FOOTER'
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
 p_id=>wwv_flow_api.id(26994494662403751)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26863500976318890)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26863289757318889)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Next >'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26863708744318891)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26863289757318889)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'< Previous'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4720699445079726)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 7'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27419196123505778)
,p_name=>'P7_PAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26863289757318889)
,p_item_default=>'2'
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'HTML5'
,p_page_mode=>'NORMAL'
,p_step_title=>'HTML5'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209104738'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27807496719524835)
,p_plug_name=>'SAMPLE'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'<style>',
'body {background-color:lightgrey}',
'h1   {color:blue}',
'p    {color:green}',
'</style>',
'</head>',
'<body>',
'',
'<h1>This is a heading</h1>',
'<p>This is a paragraph.</p>',
'',
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4734728769005402)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 8'))
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Manage frequently asked questions'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage frequently asked questions'
,p_step_sub_title=>'Manage frequently asked questions'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151218133807'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26879509722384242)
,p_plug_name=>'Edit Frequently Asked Questions and Answers'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818005127950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27423413979962746)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26880115689384242)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26879509722384242)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P16_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26879703108384242)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26879509722384242)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26880288015384242)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26879509722384242)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P16_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26879896371384242)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26879509722384242)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P16_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27825913180768795)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(26879509722384242)
,p_button_name=>'RESPOND_TO_USER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Respond To User'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_condition=>'P16_ANSWER'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26882795793384245)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4734997767045447)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 16'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26880489528384243)
,p_name=>'P16_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26879509722384242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26880715458384243)
,p_name=>'P16_APP'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26879509722384242)
,p_use_cache_before_default=>'NO'
,p_item_default=>'VD'
,p_prompt=>'App'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'RDM APPS'
,p_lov=>'.'||wwv_flow_api.id(26829402300950281)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26880898441384243)
,p_name=>'P16_QUESTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26879509722384242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Question'
,p_source=>'QUESTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26881108839384243)
,p_name=>'P16_ANSWER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26879509722384242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer'
,p_source=>'ANSWER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26881315713384243)
,p_name=>'P16_PIC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26879509722384242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pic'
,p_source=>'PIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'LAST_UPDATE'
,p_attribute_06=>'Y'
,p_attribute_07=>'Download'
,p_attribute_08=>'inline'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26881495998384244)
,p_name=>'P16_FILENAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26879509722384242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26881717518384244)
,p_name=>'P16_MIMETYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26879509722384242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26881910340384244)
,p_name=>'P16_LAST_UPDATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(26879509722384242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update'
,p_source=>'LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27823987165774996)
,p_name=>'P16_CREATED_BY'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(26879509722384242)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_USER.'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28074696486571576)
,p_name=>'P16_CATEGORY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(26879509722384242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_source=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT CATEGORIES d, ID R',
'FROM RSA_QUESTION_CATEGORIES',
''))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27798110293677342)
,p_validation_name=>'P16_APP'
,p_validation_sequence=>10
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'     IF ( :P16_APP NOT IN (''VD'')) ',
'     THEN ',
'         RETURN FALSE;',
'     ELSE ',
'         RETURN TRUE;',
'     END IF;',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry but this page only accepts Vendor disputes questions'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(26880715458384243)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26882106278384244)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_ADMIN_FREQ_QUESTIONS'
,p_attribute_02=>'RSA_ADMIN_FREQ_QUESTIONS'
,p_attribute_03=>'P16_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26882285713384244)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RSA_ADMIN_FREQ_QUESTIONS'
,p_attribute_02=>'RSA_ADMIN_FREQ_QUESTIONS'
,p_attribute_03=>'P16_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27819500642991174)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'send email'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin ',
'',
'SEND_EMAIL ( ''RDM'', ''SRA Application'', ''SRA Question'', ''Thank you ''||:APP_USER||'', your question has been sent to the SRA team'');',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26880288015384242)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27825295902716416)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Respond to User'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
' ',
'   SEND_EMAIL ( ''RDM'', ''SRA Application'', ''Answer for your SRA Question'', ''Hello ''||:APP_USER||'', the SRA Team provided a answer to your question in the SRA application '');',
'',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27825913180768795)
,p_process_when=>'P16_ANSWER'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26882510267384245)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'28'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26879896371384242)
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'frequently asked questions pg 1'
,p_page_mode=>'NORMAL'
,p_step_title=>'frequently asked questions pg 1'
,p_step_sub_title=>'frequently asked questions pg 1'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151208153821'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27414200933116896)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27414689551141966)
,p_plug_name=>'Frequently Asked Questions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818885152950275)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26876310875366308)
,p_plug_name=>'frequently asked questions'
,p_parent_plug_id=>wwv_flow_api.id(27414689551141966)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'A.ID, ',
'A.CREATED_BY,',
'A.ID AS PHOTO,',
'A.APP,',
'A.QUESTION,',
'A.ANSWER,',
'dbms_lob.getlength(A.PIC) PIC,',
'B.CATEGORIES',
'from RDM.RSA_ADMIN_FREQ_QUESTIONS A ',
'LEFT JOIN ( SELECT ID,APP, CATEGORIES, QUESTIION_ID FROM RSA_QUESTION_CATEGORIES ) B ON (B.ID = A.CATEGORY)',
'WHERE A.APP = ''VD''',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26876496398366309)
,p_name=>'FREQ_QUESTIONS'
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
,p_detail_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>24044011538275337
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26876601229366310)
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
 p_id=>wwv_flow_api.id(26876698784366310)
,p_db_column_name=>'APP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'App'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26876795150366310)
,p_db_column_name=>'QUESTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Question'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'QUESTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26876893697366310)
,p_db_column_name=>'ANSWER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Answer'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ANSWER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26876995077366310)
,p_db_column_name=>'PIC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Pic'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_format_mask=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::MIMETYPE:FILENAME:::Inline:Download'
,p_tz_dependent=>'N'
,p_static_id=>'PIC'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26877109608366310)
,p_db_column_name=>'PHOTO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Photo'
,p_column_link=>'javascript:popupURL(''f?p=&APP_ID.:60:&SESSION.::&DEBUG.::P60_ID:#PHOTO#'')'
,p_column_linktext=>'<img src="#WORKSPACE_IMAGES#Blue Go Button.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PHOTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27820790618381406)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28074516770546941)
,p_db_column_name=>'CATEGORIES'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Categories'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORIES'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26877188836366310)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'240448'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CATEGORIES:QUESTION:ANSWER:PHOTO:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26877406737366311)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26876310875366308)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:16:P16_CREATED_BY:&P175_USERNAME.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27420904994761454)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26876310875366308)
,p_button_name=>'LOGIN_TO_APP'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Login To App'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:popupURL(''http://10.217.84.48:7778/pls/apex/f?p=2013:175'')'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4721150037109697)
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 17'))
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'List RSA Apps'
,p_page_mode=>'NORMAL'
,p_step_title=>'List RDM Apps'
,p_step_sub_title=>'List RDM Apps'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209105549'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26960497776621962)
,p_plug_name=>'RDM ADMIN APPS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818510561950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"PROCESS",',
'"SUBPROCESS"',
'from "#OWNER#"."RSA_ADMIN_APPS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26960690275621965)
,p_name=>'RDM ADMIN APPS'
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
,p_detail_link=>'f?p=&APP_ID.:35:&APP_SESSION.::::P35_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'CGARDNER'
,p_internal_uid=>24128205415530993
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26960792698621968)
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
 p_id=>wwv_flow_api.id(26960900977621972)
,p_db_column_name=>'APP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'App'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26961003753621972)
,p_db_column_name=>'PROCESS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Process'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26961108707621972)
,p_db_column_name=>'SUBPROCESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Subprocess'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBPROCESS'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26961189122621973)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'241288'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:APP:PROCESS:SUBPROCESS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27052793516420681)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26961398615621974)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26960497776621962)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Add to List'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:35::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4735354458054553)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 34'))
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Add Apps to RSA '
,p_page_mode=>'NORMAL'
,p_step_title=>'Add Apps to RSA '
,p_step_sub_title=>'Add Apps to RSA '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209105645'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26963513903633082)
,p_plug_name=>'RDM Admin Apps Form'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27393001723005501)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26964098913633084)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26963513903633082)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P35_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26963710728633083)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26963513903633082)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26964292547633084)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26963513903633082)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P35_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26963905155633083)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26963513903633082)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P35_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26965993561633103)
,p_branch_action=>'f?p=&APP_ID.:34:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4735653910060074)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 35'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26964504664633084)
,p_name=>'P35_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26963513903633082)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26964687032633095)
,p_name=>'P35_APP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26963513903633082)
,p_use_cache_before_default=>'NO'
,p_prompt=>'App'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26964896390633100)
,p_name=>'P35_PROCESS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26963513903633082)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process'
,p_source=>'PROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26965107756633101)
,p_name=>'P35_SUBPROCESS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26963513903633082)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subprocess'
,p_source=>'SUBPROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26965700939633102)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_ADMIN_APPS'
,p_attribute_02=>'RSA_ADMIN_APPS'
,p_attribute_03=>'P35_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26965299532633101)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RSA_ADMIN_APPS'
,p_attribute_02=>'RSA_ADMIN_APPS'
,p_attribute_03=>'P35_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26965504580633102)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26963905155633083)
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_api.create_page(
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'List Troubleshooting Guide'
,p_page_mode=>'NORMAL'
,p_step_title=>'List Troubleshooting Guide'
,p_step_sub_title=>'List Troubleshooting Guide'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209105809'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27022707042594662)
,p_plug_name=>'List Troubleshooting Guide'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818510561950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID",',
'"ID" AS GO, ',
'"APP",',
'"PAGE",',
'"PROCESS",',
'"SUBPROCESS",',
'"ERRORCODE",',
'"ERRORMESSAGE"',
'from "#OWNER#"."RSA_ADMIN_TROUBLESHOOTING"',
'WHERE "APP" = ''VD'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27022810262594663)
,p_name=>'List Troubleshooting Guide'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.::P52_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_detail_link_condition_type=>'EXISTS'
,p_detail_link_cond=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level = 1;',
''))
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>24190325402503691
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27023011649594676)
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
 p_id=>wwv_flow_api.id(27023096297594681)
,p_db_column_name=>'APP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'App'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27023192425594681)
,p_db_column_name=>'PAGE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PAGE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27023291821594681)
,p_db_column_name=>'PROCESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Process'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27023417296594682)
,p_db_column_name=>'SUBPROCESS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Subprocess'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBPROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27023492585594682)
,p_db_column_name=>'ERRORCODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Errorcode'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ERRORCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27023616604594682)
,p_db_column_name=>'ERRORMESSAGE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errormessage'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ERRORMESSAGE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27036591830256531)
,p_db_column_name=>'GO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Go'
,p_column_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::P51_ID:#GO#'
,p_column_linktext=>'<img src="#WORKSPACE_IMAGES#Blue Go Button.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'GO'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(27023711890596035)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'241913'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROCESS:SUBPROCESS:ERRORCODE:ERRORMESSAGE:GO:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27397612082481580)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27024100425640096)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27022707042594662)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Add New Issue'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:52::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level < 3;'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27024402034706746)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27022707042594662)
,p_button_name=>'ENTER_SOLUTION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Edit / Add Solution'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level = 1;'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4735888247068506)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 50'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26925612108760413)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26922610461760410)
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_api.create_page(
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'List Issue with possible Solutions'
,p_page_mode=>'NORMAL'
,p_step_title=>'List Issue with possible Solutions'
,p_step_sub_title=>'List Issue with possible Solutions'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26815789157950272)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209105932'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26919515783753567)
,p_name=>'Issue with Solutions'
,p_template=>wwv_flow_api.id(26817513221950275)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  a.ID, a.APP, a.PAGE, a.PROCESS, a.SUBPROCESS, a.ERRORCODE, a.ERRORMESSAGE, B.CAUSE, B.SOLUTION',
'from RSA_Admin_TroubleShooting a',
'LEFT JOIN ( SELECT ID, TROUBLESHOOT_ID, APP, PROCESS, SUBPROCESS, SOLUTION, CAUSE',
'             FROM RSA_Admin_issues_solution ) B ON ( B.TROUBLESHOOT_ID  = A.ID)',
'WHERE B.TROUBLESHOOT_ID  = A.ID',
' and  A.id  = :P51_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(26820594274950276)
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
 p_id=>wwv_flow_api.id(26919717619753568)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26919805019753568)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'APP'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26919895465753568)
,p_query_column_id=>3
,p_column_alias=>'PAGE'
,p_column_display_sequence=>3
,p_column_heading=>'PAGE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26920016642753568)
,p_query_column_id=>4
,p_column_alias=>'PROCESS'
,p_column_display_sequence=>4
,p_column_heading=>'PROCESS'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26920103351753568)
,p_query_column_id=>5
,p_column_alias=>'SUBPROCESS'
,p_column_display_sequence=>5
,p_column_heading=>'Sub Process'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26920195053753568)
,p_query_column_id=>6
,p_column_alias=>'ERRORCODE'
,p_column_display_sequence=>6
,p_column_heading=>'Error Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26920287172753568)
,p_query_column_id=>7
,p_column_alias=>'ERRORMESSAGE'
,p_column_display_sequence=>7
,p_column_heading=>'Error Message'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26920411186753568)
,p_query_column_id=>8
,p_column_alias=>'CAUSE'
,p_column_display_sequence=>8
,p_column_heading=>'Probable Cause'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26920492190753568)
,p_query_column_id=>9
,p_column_alias=>'SOLUTION'
,p_column_display_sequence=>9
,p_column_heading=>'Solution '
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26920608823753568)
,p_plug_name=>'Process'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26816905436950274)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26921011697753569)
,p_name=>'Error message'
,p_template=>wwv_flow_api.id(26817513221950275)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_04'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select errormessage AS ERROR_MESSAGE',
'from RSA_Admin_TroubleShooting',
'WHERE ID = :P51_ID;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P51_ID'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(26820296638950276)
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
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26921206936753570)
,p_query_column_id=>1
,p_column_alias=>'ERROR_MESSAGE'
,p_column_display_sequence=>1
,p_column_heading=>'Error Message'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(27037002717331492)
,p_name=>'Module'
,p_template=>wwv_flow_api.id(26817513221950275)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_04'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT A.PROCESS ||'' \ ''||a.SUBPROCESS',
'FROM RSA_ADMIN_TROUBLESHOOTING A',
'WHERE A.ID = :P51_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P51_ID'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(26820507459950276)
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
 p_id=>wwv_flow_api.id(27037808781355042)
,p_query_column_id=>1
,p_column_alias=>'A.PROCESS||''\''||A.SUBPROCESS'
,p_column_display_sequence=>1
,p_column_heading=>'Process \ Subprocess'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27039288659412521)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4736194291076779)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 51'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26920794843753569)
,p_name=>'P51_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26920608823753568)
,p_prompt=>'Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00052
begin
wwv_flow_api.create_page(
 p_id=>52
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Add to Troubleshooting Guide'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add to Troubleshooting Guide'
,p_step_sub_title=>'Add to Troubleshooting Guide'
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
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209110030'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26910989151743520)
,p_plug_name=>'Manage RDM Admin Troubleshooting'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818005127950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27034510580851172)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26911399376743521)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26910989151743520)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P52_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26911788801743521)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26910989151743520)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26911604794743521)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26910989151743520)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P52_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26911212772743520)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26910989151743520)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P52_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26915097349743524)
,p_branch_action=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4736554675082604)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 52'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26911994664743521)
,p_name=>'P52_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26910989151743520)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26912200040743521)
,p_name=>'P52_APP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26910989151743520)
,p_use_cache_before_default=>'NO'
,p_item_default=>'VD'
,p_prompt=>'App'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26912414054743522)
,p_name=>'P52_PAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26910989151743520)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Page'
,p_source=>'PAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26912586828743522)
,p_name=>'P52_PROCESS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26910989151743520)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process'
,p_source=>'PROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select process d, process r',
'from RSA_admin_apps',
'where app = ''VD''',
'GROUP BY PROCESS',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Process'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26912813755743522)
,p_name=>'P52_SUBPROCESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26910989151743520)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subprocess'
,p_source=>'SUBPROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT SUBPROCESS D, SUBPROCESS R',
'FROM RSA_ADMIN_APPS',
'WHERE APP = ''VD''',
' AND  PROCESS = :P52_PROCESS',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Sub Process'
,p_lov_cascade_parent_items=>'P52_PROCESS'
,p_ajax_items_to_submit=>'P52_PROCESS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26913000015743522)
,p_name=>'P52_ERRORCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26910989151743520)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Errorcode'
,p_source=>'ERRORCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26913208617743522)
,p_name=>'P52_ERRORMESSAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26910989151743520)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Error Message'
,p_source=>'ERRORMESSAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26913389117743523)
,p_name=>'P52_CAUSE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(26910989151743520)
,p_prompt=>'Probable Cause'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26913613655743523)
,p_name=>'P52_SOLUTION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(26910989151743520)
,p_prompt=>'Solution'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27017697158478259)
,p_process_sequence=>110
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Read in'
,p_attribute_02=>'RSA_ADMIN_TROUBLESHOOTING'
,p_attribute_03=>'P52_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26913800724743523)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare ',
'',
'pid   number;',
'',
'BEGIN',
'',
'',
'INSERT INTO RSA_Admin_TroubleShooting ( APP, PROCESS, SUBPROCESS, ERRORCODE, ERRORMESSAGE)',
'VALUES ( ''VD'',:P52_PROCESS,:P52_SUBPROCESS,:P52_ERRORCODE,:P52_ERRORMESSAGE)',
'RETURNING ID INTO PID;',
'',
'INSERT INTO RSA_Admin_issues_solution ( APP, PROCESS,  SUBPROCESS, TROUBLESHOOT_ID, SOLUTION, CAUSE)',
'VALUES ( ''VD'',:P52_PROCESS,:P52_SUBPROCESS,PID,:P52_SOLUTION,:P52_CAUSE);',
'commit;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26911604794743521)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26914588552743524)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'   ',
'     UPDATE RSA_Admin_TroubleShooting SET APP       =    :P52_APP, ',
'                                          PROCESS =      :P52_PROCESS,',
'                                          SUBPROCESS =   :P52_SUBPROCESS,',
'                                          ERRORCODE  =   :P52_ERRORCODE,',
'                                          ERRORMESSAGE = :P52_ERRMESSAGE  ',
'          WHERE ID = :P52_ID;',
'                                                ',
'                                               ',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26911399376743521)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26914796166743524)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'   ',
'     delete  RSA_Admin_TroubleShooting  WHERE ID = :P52_ID;',
'                                                ',
'     delete RSA_Admin_issues_solution   where TROUBLESHOOT_ID = :P52_ID;',
'                                               ',
'     COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26911212772743520)
,p_process_when=>'P52_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26914414872743524)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'410'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26911212772743520)
);
end;
/
prompt --application/pages/page_00053
begin
wwv_flow_api.create_page(
 p_id=>53
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Guide Solution List'
,p_page_mode=>'NORMAL'
,p_step_title=>'Guide Solution List'
,p_step_sub_title=>'Add a solution to guide'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209110118'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26908402724737495)
,p_plug_name=>'Process issues'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818510561950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT a.ID, a.TROUBLESHOOT_ID, a.APP, a.PROCESS, a.SUBPROCESS, b.ERRORCODE, b.ERRORMESSAGE,a.SOLUTION, a.CAUSE',
'  FROM RSA_Admin_issues_solution a ',
'  left join ( select  id, ERRORCODE, ERRORMESSAGE from RSA_Admin_TroubleShooting ) b  ',
'   ON ( a.TROUBLESHOOT_ID  = b.ID)',
'WHERE A.APP = ''VD''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26908594742737496)
,p_name=>'Process issues'
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
,p_detail_link=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::P54_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>24076109882646524
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26908689239737496)
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
 p_id=>wwv_flow_api.id(26908793242737496)
,p_db_column_name=>'TROUBLESHOOT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Troubleshoot Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'TROUBLESHOOT_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26908908969737496)
,p_db_column_name=>'APP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'App'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'APP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26908997483737496)
,p_db_column_name=>'PROCESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Process'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26909084949737497)
,p_db_column_name=>'SUBPROCESS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Subprocess'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBPROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26909210438737497)
,p_db_column_name=>'SOLUTION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Solution'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SOLUTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26909310688737497)
,p_db_column_name=>'CAUSE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Cause'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CAUSE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26909396501737497)
,p_db_column_name=>'ERRORCODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Errorcode'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ERRORCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26909494294737497)
,p_db_column_name=>'ERRORMESSAGE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Errormessage'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ERRORMESSAGE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26909596490737497)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'240772'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'APP:PROCESS:SUBPROCESS:CAUSE:SOLUTION:ERRORCODE:ERRORMESSAGE:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27034892141864792)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26909797874737497)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26908402724737495)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Add Solution'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:54::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4736818458087402)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 53'))
);
end;
/
prompt --application/pages/page_00054
begin
wwv_flow_api.create_page(
 p_id=>54
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Rdm Admin Issue Solutions'
,p_page_mode=>'NORMAL'
,p_step_title=>'Rdm Admin Issue Solutions'
,p_step_sub_title=>'Rdm Admin Issue Solutions'
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
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209110220'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27027392612753884)
,p_plug_name=>'Add Issue Solutions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818005127950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27035598468923402)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27027993628753888)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27027392612753884)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P54_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27027607988753887)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27027392612753884)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27028201140753888)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(27027392612753884)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P54_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27027811396753888)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27027392612753884)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P54_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(27030517016753893)
,p_branch_action=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4737171867093607)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 54'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27028390701753888)
,p_name=>'P54_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27027392612753884)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27028617047753891)
,p_name=>'P54_TROUBLESHOOT_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(27027392612753884)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Troubleshoot ID'
,p_source=>'TROUBLESHOOT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ERRORMESSAGE d, id r  ',
'from RSA_Admin_TroubleShooting',
'WHERE PROCESS = :P54_PROCESS',
' AND  SUBPROCESS = :P54_SUBPROCESS',
'ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Assign Solution to Error'
,p_lov_cascade_parent_items=>'P54_PROCESS,P54_SUBPROCESS'
,p_ajax_items_to_submit=>'P54_PROCESS,P54_SUBPROCESS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27028801055753891)
,p_name=>'P54_APP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27027392612753884)
,p_use_cache_before_default=>'NO'
,p_prompt=>'App'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27028997943753892)
,p_name=>'P54_PROCESS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27027392612753884)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process'
,p_source=>'PROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select process d, process r',
'from rsa_admin_apps',
'where app = :P54_APP',
'GROUP BY PROCESS',
'ORDER BY 1',
''))
,p_lov_cascade_parent_items=>'P54_APP'
,p_ajax_items_to_submit=>'P54_APP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27029195029753892)
,p_name=>'P54_SUBPROCESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27027392612753884)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subprocess'
,p_source=>'SUBPROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT SUBPROCESS D, SUBPROCESS R',
'FROM RSA_ADMIN_APPS',
'WHERE APP = :P54_APP',
' AND  PROCESS = :P54_PROCESS',
'ORDER BY 1',
''))
,p_lov_cascade_parent_items=>'P54_PROCESS'
,p_ajax_items_to_submit=>'P54_PROCESS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27029413279753892)
,p_name=>'P54_SOLUTION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(27027392612753884)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Solution'
,p_source=>'SOLUTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27029602075753892)
,p_name=>'P54_CAUSE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(27027392612753884)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Caused by:'
,p_source=>'CAUSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27029798459753893)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_ADMIN_ISSUES_SOLUTION'
,p_attribute_02=>'RSA_ADMIN_ISSUES_SOLUTION'
,p_attribute_03=>'P54_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27029998435753893)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RSA_ADMIN_ISSUES_SOLUTION'
,p_attribute_02=>'RSA_ADMIN_ISSUES_SOLUTION'
,p_attribute_03=>'P54_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27030209651753893)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27027811396753888)
);
end;
/
prompt --application/pages/page_00055
begin
wwv_flow_api.create_page(
 p_id=>55
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Manage Users'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage Users'
,p_step_sub_title=>'Manage Users'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209110439'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26981616124984153)
,p_plug_name=>'Manage Users'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26819401455950275)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_api.id(26840591212010249)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(26822502729950277)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26982399681017208)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4737457101107481)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 55'))
);
end;
/
prompt --application/pages/page_00056
begin
wwv_flow_api.create_page(
 p_id=>56
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'List User information'
,p_page_mode=>'NORMAL'
,p_step_title=>'List User information'
,p_step_sub_title=>'List User information'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209110527'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26932810410794342)
,p_plug_name=>'Personal Information'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APEX_ID",',
'"SGP_ID",',
'"FIRST_NAME",',
'"LAST_NAME",',
'"EMAILADDRESS",',
'"VMID",',
'"ACTIVE",',
'"VMANAGER",',
'"CREATED_BY",',
'"CREATED_DT",',
'"ID" AS PWLINK,',
'"PROCESS_EMAIL",',
'"PROCESS_DISPUTES",',
'"LOAN_TYPE",',
'"WORK_CATEGORY"',
'from "#OWNER#"."CORP_PRIVILEGES" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26933000695794343)
,p_name=>'Personal Information'
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
,p_internal_uid=>24100515835703371
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26933087409794343)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_report_label=>'Edit User'
,p_sync_form_label=>'N'
,p_column_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::P59_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26933188684794343)
,p_db_column_name=>'APEX_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Apex Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APEX_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26933312068794343)
,p_db_column_name=>'SGP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'SGP ID'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'SGP_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26933397463794343)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'First Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIRST_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26933513330794344)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26933592323794344)
,p_db_column_name=>'EMAILADDRESS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Email Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAILADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26933717536794344)
,p_db_column_name=>'VMID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Escalator ID'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VMID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26933805687794344)
,p_db_column_name=>'ACTIVE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Active'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVE'
,p_rpt_named_lov=>wwv_flow_api.id(34599904033878322)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26933888245794345)
,p_db_column_name=>'VMANAGER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Vmanager'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'VMANAGER'
,p_rpt_named_lov=>wwv_flow_api.id(34599904033878322)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26934013492794345)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26934109550794346)
,p_db_column_name=>'CREATED_DT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Created Dt'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_DT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26934192595794346)
,p_db_column_name=>'PROCESS_EMAIL'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Process Email'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_EMAIL'
,p_rpt_named_lov=>wwv_flow_api.id(34599904033878322)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26934311187794346)
,p_db_column_name=>'PROCESS_DISPUTES'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Process Disputes'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_DISPUTES'
,p_rpt_named_lov=>wwv_flow_api.id(34599904033878322)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26934388750794346)
,p_db_column_name=>'LOAN_TYPE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Loan Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_TYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26934500472794346)
,p_db_column_name=>'WORK_CATEGORY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Work Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_CATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26934614035794346)
,p_db_column_name=>'PWLINK'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Edit pw'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24:P24_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PWLINK'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26934687199794346)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'241023'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:APEX_ID:SGP_ID:FIRST_NAME:LAST_NAME:EMAILADDRESS:VMID:ACTIVE:VMANAGER:CREATED_BY:CREATED_DT:PROCESS_EMAIL:PROCESS_DISPUTES:LOAN_TYPE:WORK_CATEGORY:PWLINK'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26983509471076838)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26934911482794347)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26932810410794342)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create End User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:57::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4737749603112271)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 56'))
);
end;
/
prompt --application/pages/page_00057
begin
wwv_flow_api.create_page(
 p_id=>57
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Create End User'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create End User'
,p_step_sub_title=>'Create End User'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209110625'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26937809087803595)
,p_plug_name=>'Create End User'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817200166950274)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27405688335403522)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26938008679803596)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26937809087803595)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P57_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26938196135803596)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26937809087803595)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26938411796803596)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26937809087803595)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P57_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26938612585803596)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26937809087803595)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P57_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26942886522803603)
,p_branch_action=>'f?p=&APP_ID.:56:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4737988189118080)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 57'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26938810252803596)
,p_name=>'P57_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26938986903803597)
,p_name=>'P57_APEX_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apex Id'
,p_source=>'APEX_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'APEX_ID is first.last'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26939197097803597)
,p_name=>'P57_SGP_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sgp Id'
,p_source=>'SGP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26939385704803597)
,p_name=>'P57_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26939614074803597)
,p_name=>'P57_LAST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26939813734803597)
,p_name=>'P57_EMAILADDRESS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emailaddress'
,p_source=>'EMAILADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26940008592803597)
,p_name=>'P57_VMID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vmid'
,p_source=>'VMID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26940187992803598)
,p_name=>'P57_ACTIVE'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active'
,p_source=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(26829795301950281)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26940395396803598)
,p_name=>'P57_VMANAGER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vmanager'
,p_source=>'VMANAGER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26940587378803598)
,p_name=>'P57_CREATED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26940809933803598)
,p_name=>'P57_CREATED_DT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Dt'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26941010875803598)
,p_name=>'P57_PROCESS_EMAIL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Email'
,p_source=>'PROCESS_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26941212096803598)
,p_name=>'P57_PROCESS_DISPUTES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Disputes'
,p_source=>'PROCESS_DISPUTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26941401024803600)
,p_name=>'P57_LOAN_TYPE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loan Type'
,p_source=>'LOAN_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26941613800803600)
,p_name=>'P57_WORK_CATEGORY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Category'
,p_source=>'WORK_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26941788279803600)
,p_name=>'P57_APP_MANAGER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(26937809087803595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'App Manager'
,p_source=>'APP_MANAGER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27834098118851355)
,p_name=>'Apex_id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P57_LAST_NAME,P57_FIRST_NAME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27834393186851362)
,p_event_id=>wwv_flow_api.id(27834098118851355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P57_APEX_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'APEXID  VARCHAR2(100);',
'',
'BEGIN',
'      APEXID := UPPER(:P57_FIRST_NAME||''.''||:P57_LAST_NAME);',
'      ',
'      RETURN APEXID;',
'       ',
'END;',
'',
''))
,p_attribute_07=>'P57_LAST_NAME,P57_FIRST_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26941999241803600)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P57_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26942198902803601)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P57_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26942409583803601)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'INSERT INTO CORP_PRIVILEGES (APEX_ID, ',
'                             SGP_ID, ',
'                             FIRST_NAME, ',
'                             LAST_NAME, ',
'                             EMAILADDRESS, ',
'                             VMID, ',
'                             ACTIVE, ',
'                             VMANAGER, ',
'                             CREATED_BY, ',
'                             CREATED_DT, ',
'                             PROCESS_EMAIL, ',
'                             PROCESS_DISPUTES, ',
'                             LOAN_TYPE, ',
'                             WORK_CATEGORY, ',
'                             APP_MANAGER)',
'VALUES (:P57_APEX_ID, ',
'        :P57_APEX_ID,',
'        :P57_FIRST_NAME,',
'        :P57_LAST_NAME,',
'        :P57_APEX_ID||''@safeguardproperties.com'',',
'        SUBSTR(:P57_FIRST_NAME,1,1)||:P57_LAST_NAME,',
'        :P57_ACTIVE,',
'        0,',
'        :APP_USER,',
'        SYSDATE,',
'        0,',
'        1,',
'        ''ALL'',',
'        ''ALL'',',
'        0);',
'commit;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26938411796803596)
,p_process_success_message=>'User Created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26942607957803601)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'27'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26938612585803596)
);
end;
/
prompt --application/pages/page_00058
begin
wwv_flow_api.create_page(
 p_id=>58
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'List / Edit User Tasks'
,p_page_mode=>'NORMAL'
,p_step_title=>'List / Edit User Tasks'
,p_step_sub_title=>'List / Edit User Tasks'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209120356'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26946807392809939)
,p_plug_name=>'Manage User Tasks'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818510561950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"SGP_ID",',
'"VMANAGER",',
'"PROCESS_EMAIL",',
'"PROCESS_DISPUTES",',
'"LOAN_TYPE",',
'"WORK_CATEGORY"',
'from "#OWNER#"."CORP_PRIVILEGES" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26947013500809939)
,p_name=>'Manage User Tasks'
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
,p_detail_link=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.::P71_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>24114528640718967
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26947116336809939)
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
 p_id=>wwv_flow_api.id(26947707434809940)
,p_db_column_name=>'SGP_ID'
,p_display_order=>2
,p_column_identifier=>'H'
,p_column_label=>'Sgp Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SGP_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26947214040809939)
,p_db_column_name=>'VMANAGER'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Vmanager'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'VMANAGER'
,p_rpt_named_lov=>wwv_flow_api.id(34599904033878322)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26947302609809939)
,p_db_column_name=>'PROCESS_EMAIL'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Process Email'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_EMAIL'
,p_rpt_named_lov=>wwv_flow_api.id(34599904033878322)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26947395211809940)
,p_db_column_name=>'PROCESS_DISPUTES'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Process Disputes'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_DISPUTES'
,p_rpt_named_lov=>wwv_flow_api.id(34599904033878322)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26947502970809940)
,p_db_column_name=>'LOAN_TYPE'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'Loan Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_TYPE'
,p_rpt_named_lov=>wwv_flow_api.id(34600720918902119)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26947606821809940)
,p_db_column_name=>'WORK_CATEGORY'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'Work Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_CATEGORY'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26947803137809940)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'241154'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:VMANAGER:PROCESS_EMAIL:PROCESS_DISPUTES:LOAN_TYPE:WORK_CATEGORY:SGP_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26993493727185846)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4739766091463259)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 58'))
);
end;
/
prompt --application/pages/page_00059
begin
wwv_flow_api.create_page(
 p_id=>59
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Edit End User'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit End User'
,p_step_sub_title=>'Edit End User'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209120445'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26972000371911476)
,p_plug_name=>'Edit End User'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818005127950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26984508131104858)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26972189698911478)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26972000371911476)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P59_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26972408998911479)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26972000371911476)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26972591502911479)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26972000371911476)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P59_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26972789144911480)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26972000371911476)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P59_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26977496245911489)
,p_branch_action=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4740037904468089)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 59'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26972986892911480)
,p_name=>'P59_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26973202956911481)
,p_name=>'P59_APEX_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Network ID'
,p_source=>'APEX_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26973409345911482)
,p_name=>'P59_SGP_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sgp Id'
,p_source=>'SGP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26973592488911482)
,p_name=>'P59_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26973806999911482)
,p_name=>'P59_LAST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26974016074911482)
,p_name=>'P59_EMAILADDRESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Address'
,p_source=>'EMAILADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26974207640911482)
,p_name=>'P59_VMID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Escalate ID'
,p_source=>'VMID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26974387367911482)
,p_name=>'P59_ACTIVE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active User'
,p_source=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(26829795301950281)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26974613166911484)
,p_name=>'P59_VMANAGER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Escalated Disputes'
,p_source=>'VMANAGER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(26829795301950281)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26974813738911484)
,p_name=>'P59_CREATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26975007513911484)
,p_name=>'P59_CREATED_DT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Dt'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26975189516911484)
,p_name=>'P59_PROCESS_EMAIL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Email'
,p_source=>'PROCESS_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(26829795301950281)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26975386929911484)
,p_name=>'P59_PROCESS_DISPUTES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Disputes'
,p_source=>'PROCESS_DISPUTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(26829795301950281)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26975599535911485)
,p_name=>'P59_LOAN_TYPE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loan Type'
,p_source=>'LOAN_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOAN_TYPE'
,p_lov=>'.'||wwv_flow_api.id(26828908609950280)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26975803358911485)
,p_name=>'P59_WORK_CATEGORY'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Category'
,p_source=>'WORK_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT CATEGORY D, CATEGORY R',
'FROM CORP_CATEGORY',
'WHERE  CATEGORY_STATUS  = 0',
'UNION ALL',
'SELECT ''ALL''  D, ''ALL'' R',
'FROM DUAL',
'ORDER BY 1;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Category'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26975991873911485)
,p_name=>'P59_APP_MANAGER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(26972000371911476)
,p_use_cache_before_default=>'NO'
,p_prompt=>'App Manager'
,p_source=>'APP_MANAGER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(26829795301950281)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26976610837911488)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P59_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26976789029911488)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P59_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26977004065911488)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete user'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'DELETE CORP_PRIVILEGES WHERE ID = :P59_ID;',
'COMMIT;',
' ',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26972789144911480)
,p_process_when=>'P59_ID'
,p_process_when_type=>'ITEM_NOT_NULL_OR_ZERO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26977217199911488)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'',
'update CORP_PRIVILEGES ',
'set APEX_ID       = :P59_APEX_ID, ',
'    SGP_ID        = :P59_APEX_ID, ',
'    FIRST_NAME    = :P59_FIRST_NAME, ',
'    LAST_NAME     = :P59_LAST_NAME, ',
'    EMAILADDRESS  = :P59_EMAILADDRESS, ',
'    VMID          = :P59_VMID, ',
'    ACTIVE        = :P59_ACTIVE, ',
'    VMANAGER      = :P59_VMANAGER, ',
'    PROCESS_EMAIL = :P59_PROCESS_EMAIL, ',
'    PROCESS_DISPUTES = :P59_PROCESS_DISPUTES, ',
'    LOAN_TYPE        = :P59_LOAN_TYPE, ',
'    WORK_CATEGORY    = :P59_WORK_CATEGORY, ',
'    APP_MANAGER      = :P59_APP_MANAGER',
'WHERE ID  = :P59_ID;',
'',
'COMMIT;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26972189698911478)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26976413070911488)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'27'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26972789144911480)
);
end;
/
prompt --application/pages/page_00060
begin
wwv_flow_api.create_page(
 p_id=>60
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Display Photo'
,p_page_mode=>'NORMAL'
,p_step_title=>'Display Photo'
,p_step_sub_title=>'Display Photo'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816296122950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150420095159'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26950102484817950)
,p_plug_name=>'Display Photo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = :P60_ID;',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P60_ID'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(26950310824817950)
,p_name=>'Display Photo'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>24117825964726978
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26950402603817950)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26950504358817950)
,p_db_column_name=>'APP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'App'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'APP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26950614563817951)
,p_db_column_name=>'QUESTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Question'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'QUESTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26950694057817951)
,p_db_column_name=>'ANSWER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Answer'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ANSWER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26950802699817951)
,p_db_column_name=>'PIC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Pic'
,p_report_label=>'Photo'
,p_sync_form_label=>'N'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Inline:Download'
,p_tz_dependent=>'N'
,p_static_id=>'PIC'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26950892411817951)
,p_db_column_name=>'FILENAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Filename'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'FILENAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26951013177817951)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mimetype'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'MIMETYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(26951107711817951)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Update'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(26951201401817951)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'241188'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:APP:QUESTION:ANSWER:PIC:FILENAME:MIMETYPE:LAST_UPDATE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26951607912817952)
,p_name=>'P60_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26950102484817950)
,p_prompt=>'Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00061
begin
wwv_flow_api.create_page(
 p_id=>61
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Add Photos'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add Photos'
,p_step_sub_title=>'Add Photos'
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
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209120734'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26953793869826664)
,p_plug_name=>'Form for Photos'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818005127950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26954417377826664)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26953793869826664)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P61_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26954009143826664)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26953793869826664)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:255:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26954616881826664)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(26953793869826664)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P61_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26954214718826664)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(26953793869826664)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P61_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26957101498826672)
,p_branch_action=>'f?p=&APP_ID.:60:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4740335904485032)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 61'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26954816372826670)
,p_name=>'P61_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26953793869826664)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26954985020826670)
,p_name=>'P61_APP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26953793869826664)
,p_use_cache_before_default=>'NO'
,p_prompt=>'App'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26955193981826670)
,p_name=>'P61_QUESTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26953793869826664)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Question'
,p_source=>'QUESTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26955404163826670)
,p_name=>'P61_ANSWER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(26953793869826664)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer'
,p_source=>'ANSWER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26955601118826671)
,p_name=>'P61_PIC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26953793869826664)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pic'
,p_source=>'PIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26955810967826671)
,p_name=>'P61_FILENAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26953793869826664)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26956009805826671)
,p_name=>'P61_MIMETYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26953793869826664)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26956210191826671)
,p_name=>'P61_LAST_UPDATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(26953793869826664)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update'
,p_source=>'LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26956404490826671)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_ADMIN_FREQ_QUESTIONS'
,p_attribute_02=>'RSA_ADMIN_FREQ_QUESTIONS'
,p_attribute_03=>'P61_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26956585317826672)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RSA_ADMIN_FREQ_QUESTIONS'
,p_attribute_02=>'RSA_ADMIN_FREQ_QUESTIONS'
,p_attribute_03=>'P61_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26956802528826672)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'256'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26954214718826664)
);
end;
/
prompt --application/pages/page_00071
begin
wwv_flow_api.create_page(
 p_id=>71
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Assign Tasks'
,p_page_mode=>'NORMAL'
,p_step_title=>'Assign Tasks'
,p_step_sub_title=>'Assign Tasks'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209120829'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26986807651145234)
,p_plug_name=>'Assign Tasks'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26993290133175398)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26986994235145235)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26986807651145234)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P71_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26987185719145236)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(26986807651145234)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(26990706555145262)
,p_branch_action=>'f?p=&APP_ID.:58:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4740593467490536)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 71'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26987406911145237)
,p_name=>'P71_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26986807651145234)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26987598903145238)
,p_name=>'P71_APEX_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26986807651145234)
,p_use_cache_before_default=>'NO'
,p_prompt=>'APEX ID'
,p_source=>'APEX_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26987808337145238)
,p_name=>'P71_SGP_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(26986807651145234)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Safeguard ID'
,p_source=>'SGP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26987991848145238)
,p_name=>'P71_VMID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26986807651145234)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Escalator Id'
,p_source=>'VMID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26988188634145242)
,p_name=>'P71_VMANAGER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(26986807651145234)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Escalated Disputes'
,p_source=>'VMANAGER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;1,No;0'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26988404430145242)
,p_name=>'P71_PROCESS_EMAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(26986807651145234)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Email'
,p_source=>'PROCESS_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;1,No;0'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26988587257145242)
,p_name=>'P71_PROCESS_DISPUTES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(26986807651145234)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Disputes'
,p_source=>'PROCESS_DISPUTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;1,No;0'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26988811437145243)
,p_name=>'P71_LOAN_TYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(26986807651145234)
,p_use_cache_before_default=>'NO'
,p_item_default=>'ALL'
,p_prompt=>'Loan Type'
,p_source=>'LOAN_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOAN_TYPE'
,p_lov=>'.'||wwv_flow_api.id(26828908609950280)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26988995683145243)
,p_name=>'P71_WORK_CATEGORY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(26986807651145234)
,p_use_cache_before_default=>'NO'
,p_item_default=>'ALL'
,p_prompt=>'Work Category'
,p_source=>'WORK_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT CATEGORY D, CATEGORY R',
'FROM CORP_CATEGORY',
'WHERE  CATEGORY_STATUS  = 0',
'UNION ALL',
'SELECT ''ALL''  D, ''ALL'' R',
'FROM DUAL',
'ORDER BY 1;',
''))
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(26989497486145244)
,p_validation_name=>'P71_PROCESS_DISPUTES'
,p_validation_sequence=>10
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    IF ( :P71_PROCESS_DISPUTES = 1 AND :P71_VMANAGER = 1 ) THEN ',
'        RETURN FALSE;',
'    ELSE ',
'        RETURN TRUE;',
'   END IF;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'if escalators need to process disputes create a new user id'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(26986994235145235)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(26988587257145242)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26990200847145250)
,p_name=>'VMID'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_VMID'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26990489502145259)
,p_event_id=>wwv_flow_api.id(26990200847145250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_PROCESS_DISPUTES'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27836495199970210)
,p_event_id=>wwv_flow_api.id(26990200847145250)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P71_VMID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT SUBSTR(FIRST_NAME,1,1)||LAST_NAME ',
'FROM CORP_PRIVILEGES',
'WHERE ID = :P71_ID;'))
,p_attribute_07=>'P71_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26989587190145249)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P71_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26989788076145249)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P71_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'U'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26989998132145249)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'9'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00072
begin
wwv_flow_api.create_page(
 p_id=>72
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'List RSA Users'
,p_page_mode=>'NORMAL'
,p_step_title=>'List RSA Users'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209120909'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4688452932440873)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817106197950274)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27004393014741490)
,p_plug_name=>'List RSA Users'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818510561950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PID", ',
'       "LOGIN",',
'       "SECURITY_LEVEL",',
'       "STATUS",',
'       "DATA_DATE"',
'from "#OWNER#"."RSA_EMP_SECURITY" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27004584925741491)
,p_name=>'List RSA Users'
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
,p_detail_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::P73_PID:#PID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>24172100065650519
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27010888908954317)
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
 p_id=>wwv_flow_api.id(27011012465954318)
,p_db_column_name=>'LOGIN'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Login'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOGIN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27011092900954318)
,p_db_column_name=>'SECURITY_LEVEL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Security Level'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'SECURITY_LEVEL'
,p_rpt_named_lov=>wwv_flow_api.id(27390106823950105)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27011202255954318)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27011301724954318)
,p_db_column_name=>'DATA_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Data Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATA_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(27005995701754125)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'241736'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PID:LOGIN:SECURITY_LEVEL:STATUS:DATA_DATE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27007213409787664)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27005305565741495)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27004393014741490)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:73'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4740929906494532)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 72'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4688531166440874)
,p_name=>'P72_APP_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4688452932440873)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00073
begin
wwv_flow_api.create_page(
 p_id=>73
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Add / Edit RSA Users'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add / Edit RSA Users'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209121009'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27000215395741455)
,p_plug_name=>'Add / Edit RSA Users'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27007393108791214)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27000516536741456)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27000215395741455)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P73_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27000802786741456)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27000215395741455)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27000398798741456)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(27000215395741455)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P73_PID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27000612073741456)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27000215395741455)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P73_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(27001702818741467)
,p_branch_action=>'f?p=&APP_ID.:72:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4741275809500488)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 73'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27001886437741468)
,p_name=>'P73_PID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27000215395741455)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pid'
,p_source=>'PID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27002111847741477)
,p_name=>'P73_LOGIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27000215395741455)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Login'
,p_source=>'LOGIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27002285800741478)
,p_name=>'P73_SECURITY_LEVEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27000215395741455)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Security Level'
,p_source=>'SECURITY_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SECURITY-LEVELS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SECURITY_TITLE D, SECURITY_LEVEL R',
'FROM RSA_SECURITY_levels',
'ORDER BY SECURITY_LEVEL',
''))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27002508048741479)
,p_name=>'P73_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27000215395741455)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMP STATUS'
,p_lov=>'.'||wwv_flow_api.id(27007985882817579)||'.'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27002708073741479)
,p_name=>'P73_DATA_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27000215395741455)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Data Date'
,p_source=>'DATA_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27003494563741480)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_EMP_SECURITY'
,p_attribute_02=>'RSA_EMP_SECURITY'
,p_attribute_03=>'P73_PID'
,p_attribute_04=>'PID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27003699472741481)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RSA_EMP_SECURITY'
,p_attribute_02=>'RSA_EMP_SECURITY'
,p_attribute_03=>'P73_PID'
,p_attribute_04=>'PID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27008913980854076)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' UPDATE RSA_EMP_SECURITY ',
' SET LOGIN = :P73_LOGIN, ',
'     SECURITY_LEVEL = :P73_SECURITY_LEVEL,',
'     STATUS         = :P73_STATUS,',
'     DATA_DATE      = SYSDATE',
'  where pid         = :P73_PID;',
'  COMMIT; ',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27000516536741456)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27009406623870804)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'INSERT INTO RSA_EMP_SECURITY ( LOGIN, SECURITY_LEVEL, STATUS)',
'VALUES (:P73_LOGIN, :P73_SECURITY_LEVEL, :P73_STATUS);',
'',
'COMMIT;',
'',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27000398798741456)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27009995111886479)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' DELETE FROM RSA_EMP_SECURITY WHERE PID = :P73_PID;',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27000612073741456)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27003892976741481)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27000612073741456)
);
end;
/
prompt --application/pages/page_00074
begin
wwv_flow_api.create_page(
 p_id=>74
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'RSA_TUTORIALS'
,p_page_mode=>'NORMAL'
,p_step_title=>'RSA_TUTORIALS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209121056'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27840889966383813)
,p_plug_name=>'TUTORIALS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818510561950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"TITLE",',
'"OVERVIEW",',
'"SEC_LEVEL"',
'from "#OWNER#"."RSA_TUTORIALS" ',
'WHERE "APP" = ''VD''',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27841115504383814)
,p_name=>'TUTORIALS'
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
,p_detail_link=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.::P75_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_detail_link_condition_type=>'EXISTS'
,p_detail_link_cond=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level < 3;',
''))
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>25008630644292842
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27841195932383818)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_link=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.::P80_TUTORIAL_TITLE,P80_TUTORIAL_ID:#TITLE#,#ID#'
,p_column_linktext=>'<img src="#WORKSPACE_IMAGES#Blue Go Button.gif" alt="">'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27841298913383824)
,p_db_column_name=>'APP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'App'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27841416312383824)
,p_db_column_name=>'TITLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Title'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TITLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27841510717383824)
,p_db_column_name=>'OVERVIEW'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Overview'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OVERVIEW'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27841587151383825)
,p_db_column_name=>'SEC_LEVEL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Security Level'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'SEC_LEVEL'
,p_rpt_named_lov=>wwv_flow_api.id(27853987199794429)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(27841989225407025)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'250096'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:APP:TITLE:OVERVIEW:SEC_LEVEL'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27854590302060288)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27841804796383825)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27840889966383813)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:75'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4741565477505176)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 74'))
);
end;
/
prompt --application/pages/page_00075
begin
wwv_flow_api.create_page(
 p_id=>75
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Edit Tutorial list'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit Tutorial list'
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
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209121142'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27837387647383764)
,p_plug_name=>'Edit Tutorial list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818005127950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27837693610383774)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27837387647383764)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P75_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27837991898383774)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27837387647383764)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27837613571383773)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(27837387647383764)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P75_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27837788007383774)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27837387647383764)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P75_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(27838604733383779)
,p_branch_action=>'f?p=&APP_ID.:74:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4741882322509775)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 75'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27838815701383783)
,p_name=>'P75_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27837387647383764)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27838999848383791)
,p_name=>'P75_APP'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27837387647383764)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'RDM APPS'
,p_lov=>'.'||wwv_flow_api.id(26829402300950281)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27839211665383792)
,p_name=>'P75_TITLE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27837387647383764)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_tag_attributes=>'style="width: 400px; height: 15px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27839405619383794)
,p_name=>'P75_OVERVIEW'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27837387647383764)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Overview'
,p_source=>'OVERVIEW'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27839613918383795)
,p_name=>'P75_SEC_LEVEL'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27837387647383764)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Security Level'
,p_source=>'SEC_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SECURITY-LEVELS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SECURITY_TITLE D, SECURITY_LEVEL R',
'FROM RSA_SECURITY_levels',
'ORDER BY SECURITY_LEVEL',
''))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27839998625383796)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_TUTORIALS'
,p_attribute_02=>'RSA_TUTORIALS'
,p_attribute_03=>'P75_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27840215981383800)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RSA_TUTORIALS'
,p_attribute_02=>'RSA_TUTORIALS'
,p_attribute_03=>'P75_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27840412640383801)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27837788007383774)
);
end;
/
prompt --application/pages/page_00076
begin
wwv_flow_api.create_page(
 p_id=>76
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Security Levels'
,p_page_mode=>'NORMAL'
,p_step_title=>'Security Levels'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209121229'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27848513846616120)
,p_plug_name=>'Security levels'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818510561950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "PID", ',
'"SECURITY_TITLE",',
'"SECURITY_LEVEL",',
'"ACTIVE",',
'"DATA_DATE"',
'from "#OWNER#"."RSA_SECURITY_LEVELS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27848715341616122)
,p_name=>'Security levels'
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
,p_detail_link=>'f?p=&APP_ID.:77:&APP_SESSION.::::P77_PID:#PID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'CGARDNER'
,p_internal_uid=>25016230481525150
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27848805572616122)
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
 p_id=>wwv_flow_api.id(27848909932616123)
,p_db_column_name=>'SECURITY_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Security Title'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SECURITY_TITLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27849002255616123)
,p_db_column_name=>'SECURITY_LEVEL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Security Level'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'SECURITY_LEVEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27849091630616123)
,p_db_column_name=>'ACTIVE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Active'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVE'
,p_rpt_named_lov=>wwv_flow_api.id(26829795301950281)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27849196034616123)
,p_db_column_name=>'DATA_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Data Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATA_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(27850700335637351)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'250183'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PID:SECURITY_TITLE:SECURITY_LEVEL:ACTIVE:DATA_DATE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27852194326701854)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27849398226616123)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27848513846616120)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:77'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4742097573514550)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 76'))
);
end;
/
prompt --application/pages/page_00077
begin
wwv_flow_api.create_page(
 p_id=>77
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Edit Security Levels'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit Security Levels'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209121334'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27845002340616112)
,p_plug_name=>'Edit Security Levels'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818005127950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27852688354719040)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27845297712616113)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27845002340616112)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P77_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27845591125616113)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27845002340616112)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27845216119616113)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(27845002340616112)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P77_PID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27845390179616113)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27845002340616112)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P77_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(27846204090616113)
,p_branch_action=>'f?p=&APP_ID.:76:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4742407303520982)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 77'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27846391582616114)
,p_name=>'P77_PID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27845002340616112)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pid'
,p_source=>'PID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27846608383616114)
,p_name=>'P77_SECURITY_TITLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27845002340616112)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Security Title'
,p_source=>'SECURITY_TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27846796947616115)
,p_name=>'P77_SECURITY_LEVEL'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27845002340616112)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Security Level'
,p_source=>'SECURITY_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27847004150616115)
,p_name=>'P77_ACTIVE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27845002340616112)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active'
,p_source=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(26829795301950281)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27847188297616115)
,p_name=>'P77_DATA_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27845002340616112)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Data Date'
,p_source=>'DATA_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27847604738616116)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_SECURITY_LEVELS'
,p_attribute_02=>'RSA_SECURITY_LEVELS'
,p_attribute_03=>'P77_PID'
,p_attribute_04=>'PID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27847785080616116)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RSA_SECURITY_LEVELS'
,p_attribute_02=>'RSA_SECURITY_LEVELS'
,p_attribute_03=>'P77_PID'
,p_attribute_04=>'PID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27848013137616116)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27845390179616113)
);
end;
/
prompt --application/pages/page_00080
begin
wwv_flow_api.create_page(
 p_id=>80
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'List tutorial Steps'
,p_page_mode=>'NORMAL'
,p_step_title=>'List tutorial Steps'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209121448'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27859702720751981)
,p_plug_name=>'List tutorial Steps'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818510561950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "TUTORIAL_ID", ',
'"TUTORIAL_PAGE",',
'"APP",',
'"TITLE",',
'"INSTRUCTION",',
'"TUTORIAL_PAGE" AS PHOTO,',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_TUTORIAL_PAGES" ',
'WHERE "TUTORIAL_ID" = :P80_TUTORIAL_ID',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P80_TUTORIAL_ID'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27859892283751982)
,p_name=>'List tutorial Steps'
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
,p_detail_link=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.::P81_TUTORIAL_ID,P81_TUTORIAL_PAGE:#TUTORIAL_ID#,#TUTORIAL_PAGE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_detail_link_condition_type=>'EXISTS'
,p_detail_link_cond=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level < 3;',
''))
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>25027407423661010
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27859985276751984)
,p_db_column_name=>'TUTORIAL_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tutorial Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'TUTORIAL_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27860085492751985)
,p_db_column_name=>'TUTORIAL_PAGE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tutorial Step'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'TUTORIAL_PAGE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27860209737751985)
,p_db_column_name=>'APP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'App'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27860305455751985)
,p_db_column_name=>'TITLE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Title'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TITLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27860411957751985)
,p_db_column_name=>'INSTRUCTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Instruction'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'INSTRUCTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27860509415751986)
,p_db_column_name=>'PIC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Pic'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_format_mask=>'IMAGE:RSA_TUTORIAL_PAGES:PIC:TUTORIAL_PAGE::::::Inline:Download'
,p_tz_dependent=>'N'
,p_static_id=>'PIC'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27860589965751986)
,p_db_column_name=>'FILENAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Filename'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FILENAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27860695464751986)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Mimetype'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MIMETYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27860813881751986)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Last Update'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27869193198900881)
,p_db_column_name=>'PHOTO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Screen Shot'
,p_column_link=>'javascript:popupURL(''f?p=&APP_ID.:82:&SESSION.::&DEBUG.::P82_TUTORIAL_STEP:#PHOTO#'')'
,p_column_linktext=>'<img src="#WORKSPACE_IMAGES#Blue Go Button.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'PHOTO'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(27869286032901114)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'250369'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'TUTORIAL_PAGE:INSTRUCTION:PHOTO:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27872990215129482)
,p_plug_name=>'Tutorial Title'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>20
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
 p_id=>wwv_flow_api.id(27876710722390865)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27861001233751987)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27859702720751981)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:81::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level < 3;'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4742712670528456)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 80'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27873310253136010)
,p_name=>'P80_TUTORIAL_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27872990215129482)
,p_prompt=>'Tutorial Title:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>100
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27875684873330172)
,p_name=>'P80_TUTORIAL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27872990215129482)
,p_prompt=>'Tutorial Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00081
begin
wwv_flow_api.create_page(
 p_id=>81
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Edit Tutorial Pages'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit Tutorial Pages'
,p_step_sub_title=>'Edit Tutorial Pages'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209121533'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27862088253830079)
,p_plug_name=>'Edit Tutorial Pages'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818005127950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27864989991830100)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27862704348830082)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27862088253830079)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P81_TUTORIAL_PAGE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27862299621830082)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27862088253830079)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27862897754830082)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(27862088253830079)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P81_TUTORIAL_PAGE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27862498435830082)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27862088253830079)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P81_TUTORIAL_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(27866002149830106)
,p_branch_action=>'f?p=&APP_ID.:80:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4743064511532942)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 81'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27863105864830083)
,p_name=>'P81_TUTORIAL_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27862088253830079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tutorial Title:'
,p_source=>'TUTORIAL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select TITLE D, ID R',
'FROM RSA_TUTORIALS',
'WHERE APP = ''VD''',
''))
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27863289722830084)
,p_name=>'P81_TUTORIAL_PAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27862088253830079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tutorial Step'
,p_source=>'TUTORIAL_PAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27863485617830084)
,p_name=>'P81_APP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27862088253830079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'RDM APPS'
,p_lov=>'.'||wwv_flow_api.id(26829402300950281)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27863715869830085)
,p_name=>'P81_TITLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27862088253830079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27863903950830085)
,p_name=>'P81_INSTRUCTION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27862088253830079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Instruction'
,p_source=>'INSTRUCTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27864117485830085)
,p_name=>'P81_PIC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(27862088253830079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pic'
,p_source=>'PIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'LAST_UPDATE'
,p_attribute_06=>'Y'
,p_attribute_07=>'Download'
,p_attribute_08=>'inline'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27864301589830085)
,p_name=>'P81_FILENAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(27862088253830079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27864485165830092)
,p_name=>'P81_MIMETYPE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(27862088253830079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27864694915830092)
,p_name=>'P81_LAST_UPDATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(27862088253830079)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update'
,p_source=>'LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27865298644830101)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_TUTORIAL_PAGES'
,p_attribute_02=>'RSA_TUTORIAL_PAGES'
,p_attribute_03=>'P81_TUTORIAL_ID'
,p_attribute_04=>'TUTORIAL_ID'
,p_attribute_05=>'P81_TUTORIAL_PAGE'
,p_attribute_06=>'TUTORIAL_PAGE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27865490680830102)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RSA_TUTORIAL_PAGES'
,p_attribute_02=>'RSA_TUTORIAL_PAGES'
,p_attribute_03=>'P81_TUTORIAL_ID'
,p_attribute_04=>'TUTORIAL_ID'
,p_attribute_05=>'P81_TUTORIAL_PAGE'
,p_attribute_06=>'TUTORIAL_PAGE'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27865690834830102)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'15'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27862498435830082)
);
end;
/
prompt --application/pages/page_00082
begin
wwv_flow_api.create_page(
 p_id=>82
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Display Tutorial photo'
,p_page_mode=>'NORMAL'
,p_step_title=>'Display Tutorial photo'
,p_step_sub_title=>'Display Tutorial photo'
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
,p_last_upd_yyyymmddhh24miss=>'20150714072609'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(27878110475102862)
,p_name=>'Display Tutorial photo'
,p_template=>wwv_flow_api.id(26817513221950275)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
' "TUTORIAL_ID",',
' "TUTORIAL_PAGE",',
' "APP",',
' "TITLE",',
' "INSTRUCTION",',
' dbms_lob.getlength("PIC") "PIC",',
' "FILENAME",',
' "MIMETYPE",',
' "LAST_UPDATE"',
'from #OWNER#.RSA_TUTORIAL_PAGES',
'WHERE "TUTORIAL_PAGE" = :P82_TUTORIAL_STEP'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P82_TUTORIAL_STEP'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(26820507459950276)
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
 p_id=>wwv_flow_api.id(27878408221102874)
,p_query_column_id=>1
,p_column_alias=>'TUTORIAL_ID'
,p_column_display_sequence=>1
,p_column_heading=>'TUTORIAL_ID'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27878510941102885)
,p_query_column_id=>2
,p_column_alias=>'TUTORIAL_PAGE'
,p_column_display_sequence=>2
,p_column_heading=>'TUTORIAL_PAGE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27878604302102885)
,p_query_column_id=>3
,p_column_alias=>'APP'
,p_column_display_sequence=>3
,p_column_heading=>'APP'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27878716876102885)
,p_query_column_id=>4
,p_column_alias=>'TITLE'
,p_column_display_sequence=>4
,p_column_heading=>'TITLE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27878786971102885)
,p_query_column_id=>5
,p_column_alias=>'INSTRUCTION'
,p_column_display_sequence=>5
,p_column_heading=>'INSTRUCTION'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27878891824102885)
,p_query_column_id=>6
,p_column_alias=>'PIC'
,p_column_display_sequence=>6
,p_column_heading=>'Screen Shot'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_TUTORIAL_PAGES:PIC:TUTORIAL_PAGE::::::Inline:Download'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27879000040102890)
,p_query_column_id=>7
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>7
,p_column_heading=>'FILENAME'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27879101954102890)
,p_query_column_id=>8
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>8
,p_column_heading=>'MIMETYPE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27879211539102890)
,p_query_column_id=>9
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>9
,p_column_heading=>'LAST_UPDATE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27879390278108952)
,p_name=>'P82_TUTORIAL_STEP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27878110475102862)
,p_prompt=>'Tutorial Step'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00083
begin
wwv_flow_api.create_page(
 p_id=>83
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'RSA_QUESTION_CATEGORIES'
,p_page_mode=>'NORMAL'
,p_step_title=>'RSA_QUESTION_CATEGORIES'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209121641'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28068599785923654)
,p_plug_name=>'RSA_QUESTION_CATEGORIES'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818510561950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"CATEGORIES",',
'"QUESTIION_ID"',
'from "#OWNER#"."RSA_QUESTION_CATEGORIES" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(28068812408923655)
,p_name=>'RSA_QUESTION_CATEGORIES'
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
,p_detail_link=>'f?p=&APP_ID.:84:&APP_SESSION.::::P84_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_owner=>'CGARDNER'
,p_internal_uid=>25236327548832683
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28068892632923659)
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
 p_id=>wwv_flow_api.id(28069013397923663)
,p_db_column_name=>'APP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'App'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28069103769923663)
,p_db_column_name=>'CATEGORIES'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Categories'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORIES'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28069201535923663)
,p_db_column_name=>'QUESTIION_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Questiion Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'QUESTIION_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(28070313036953182)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'252379'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:APP:CATEGORIES:QUESTIION_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28073913101483003)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28069388997923663)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(28068599785923654)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:84::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4743332101539721)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 83'))
);
end;
/
prompt --application/pages/page_00084
begin
wwv_flow_api.create_page(
 p_id=>84
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Edit RSA_QUESTION_CATEGORIES'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit RSA_QUESTION_CATEGORIES'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209121730'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28065288237923608)
,p_plug_name=>'Edit RSA_QUESTION_CATEGORIES'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28074091415486212)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28065612557923611)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(28065288237923608)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P84_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28065901069923612)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(28065288237923608)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28065488375923611)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(28065288237923608)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P84_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28065691847923611)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(28065288237923608)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P84_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(28066487158923619)
,p_branch_action=>'f?p=&APP_ID.:83:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4743626558544654)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 84'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28066686597923624)
,p_name=>'P84_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(28065288237923608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28066893570923634)
,p_name=>'P84_APP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(28065288237923608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Application'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28067097223923636)
,p_name=>'P84_CATEGORIES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(28065288237923608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Categories'
,p_source=>'CATEGORIES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>80
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28067305807923638)
,p_name=>'P84_QUESTIION_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(28065288237923608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Questiion Id'
,p_source=>'QUESTIION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28067694446923641)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_QUESTION_CATEGORIES'
,p_attribute_02=>'RSA_QUESTION_CATEGORIES'
,p_attribute_03=>'P84_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28072193924117930)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'add row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
'BEGIN',
'',
'INSERT INTO RSA_QUESTION_CATEGORIES(CATEGORIES)',
'VALUES (:P84_CATEGORIES);',
'',
'COMMIT;',
'',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(28065488375923611)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28072594663146533)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'DELETE RSA_QUESTION_CATEGORIES ',
'WHERE ID = :P84_ID;',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(28065691847923611)
,p_process_when=>'P84_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28068100399923644)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(28065691847923611)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28073091677155187)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'UPDATE RSA_QUESTION_CATEGORIES ',
'SET CATEGORIES = :P84_CATEGORIES',
'WHERE ID = :P84_ID;',
'',
'COMMIT;',
'',
'',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(28065612557923611)
,p_process_when=>'P84_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(26815413868950271)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209121824'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26830698315950282)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818005127950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26830994277950282)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(26830698315950282)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
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
 p_id=>wwv_flow_api.id(4743894742550031)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 101'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26830815063950282)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(26830698315950282)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26830887302950282)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(26830698315950282)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26831216094950282)
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
 p_id=>wwv_flow_api.id(26831086931950282)
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
 p_id=>wwv_flow_api.id(26831390914950282)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26831310045950282)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00102
begin
wwv_flow_api.create_page(
 p_id=>102
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'BOA IRecon'
,p_page_mode=>'NORMAL'
,p_step_title=>'BOA IRecon'
,p_step_sub_title=>'BOA IRecon'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150609110727'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27041307617348202)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27408609179939501)
,p_plug_name=>'Table of Contents'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818885152950275)
,p_plug_display_sequence=>20
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
 p_id=>wwv_flow_api.id(27041505848348205)
,p_plug_name=>'BOA Table of Contents'
,p_parent_plug_id=>wwv_flow_api.id(27408609179939501)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select a.id, a.page as go, a.page, a.area, a.Process, a.subprocess, A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.APP = ''BOAIR''',
'order by a.process, a.subprocess nulls first;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27041685633348206)
,p_name=>'VD Table of Contents'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
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
,p_internal_uid=>24209200773257234
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27041788426348210)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PAGE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27041895379348217)
,p_db_column_name=>'AREA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Area'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'AREA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27042008135348218)
,p_db_column_name=>'ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Id'
,p_column_link=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.::P103_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level = 1;',
''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27042094768348218)
,p_db_column_name=>'GO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Go'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_PAGE_NO,P0_PROCESS:#GO#,#PROCESS#'
,p_column_linktext=>'<img src="#WORKSPACE_IMAGES#Blue Go Button.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'GO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27042193450348218)
,p_db_column_name=>'PROCESS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Process'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27042299992348218)
,p_db_column_name=>'SUBPROCESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Subprocess'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBPROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27408415140919603)
,p_db_column_name=>'SECURITY_LEVEL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Security Level'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SECURITY_LEVEL'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select pid',
'from rsa_emp_security',
'where upper(login) = upper(:APP_USER) ',
'and security_level = 1'))
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(27042388714348219)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'242100'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:GO:AREA:PROCESS:SUBPROCESS:SECURITY_LEVEL'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27042604640348222)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27041505848348205)
,p_button_name=>'EDIT_CONTENTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Add to Table of Contents'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:103::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level = 1;'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00103
begin
wwv_flow_api.create_page(
 p_id=>103
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Edit Table of Contents'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit Table of Contents'
,p_step_sub_title=>'Edit Table of Contents'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209121943'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27043505802356482)
,p_plug_name=>'Edit Table of Contents'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27409210480958717)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27043907946356484)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27043505802356482)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P103_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27044297021356485)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27043505802356482)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27044085989356484)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(27043505802356482)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P103_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27043689555356483)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27043505802356482)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P103_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(27046398647356498)
,p_branch_action=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4744207770557880)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 103'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27044496956356485)
,p_name=>'P103_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27043505802356482)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27044691744356493)
,p_name=>'P103_APP'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27043505802356482)
,p_use_cache_before_default=>'NO'
,p_item_default=>'BOAIR'
,p_prompt=>'App'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27044891210356495)
,p_name=>'P103_PAGE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27043505802356482)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Page'
,p_source=>'PAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'style="width: 50px; height: 15px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27045111059356495)
,p_name=>'P103_AREA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27043505802356482)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Area'
,p_source=>'AREA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27045304730356495)
,p_name=>'P103_TITLE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27043505802356482)
,p_use_cache_before_default=>'NO'
,p_prompt=>'PROCESS'
,p_source=>'PROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27045490097356495)
,p_name=>'P103_SUBPROCESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(27043505802356482)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sub Process'
,p_source=>'SUBPROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27638303834223101)
,p_name=>'P103_SECURITY_LEVEL'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(27043505802356482)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Security Level'
,p_source=>'SECURITY_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SECURITY-LEVELS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SECURITY_TITLE D, SECURITY_LEVEL R',
'FROM RSA_SECURITY_levels',
'ORDER BY SECURITY_LEVEL',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Set Security level'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27046084998356497)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_ADMIN_BOOK_PGS'
,p_attribute_02=>'RSA_ADMIN_BOOK_PGS'
,p_attribute_03=>'P103_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27045700906356496)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RSA_ADMIN_BOOK_PGS'
,p_attribute_02=>'RSA_ADMIN_BOOK_PGS'
,p_attribute_03=>'P103_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27045889842356497)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'9'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27043689555356483)
);
end;
/
prompt --application/pages/page_00104
begin
wwv_flow_api.create_page(
 p_id=>104
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Redirect_to_page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Redirect_to_page'
,p_step_sub_title=>'Redirect_to_page'
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
,p_last_upd_yyyymmddhh24miss=>'20150420082050'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27046992253367817)
,p_plug_name=>'go_to'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818885152950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF(:P104_PAGE_NO IS NOT NULL )THEN',
'htp.init;',
'owa_util.redirect_url(''f?p=&APP_ID.:&P104_PAGE_NO.:&APP_SESSION.'');',
'apex_application.stop_apex_engine;',
'',
'END IF;',
'',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27047196391367819)
,p_name=>'P104_PAGE_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27046992253367817)
,p_prompt=>'Page No'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27047411352367820)
,p_name=>'P104_PROCESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27046992253367817)
,p_prompt=>'Process'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00105
begin
wwv_flow_api.create_page(
 p_id=>105
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Application overview'
,p_page_mode=>'NORMAL'
,p_step_title=>'Application overview'
,p_step_sub_title=>'Application overview'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151216164640'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27048115768372297)
,p_plug_name=>'Variables'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26816905436950274)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
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
 p_id=>wwv_flow_api.id(27048510942372299)
,p_plug_name=>'Application overview'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817889253950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>',
'<h4>This application provides the Safeguard Account department the following functions:</h4>',
'<ul>',
'  <li>Fully automated file watch process for inbound / outbound fees, invoices and return files</li>',
'  <li>Process twenty million transactions to create three (3) data marts, Complete, Rejections and Variance</li>',
'  <li>Reporting to assist the accounting team in researching and reconciliation of invoices</li>',
'  <li>Process work orders that have been service released</li>',
'  <li>Allow the accounting department to manually close out work orders</li>',
'</ul>  ',
'</p>'))
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
 p_id=>wwv_flow_api.id(27410991396000568)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4744502785563146)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 105'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27048293281372298)
,p_name=>'P105_PROCESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27048115768372297)
,p_prompt=>'Process'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00106
begin
wwv_flow_api.create_page(
 p_id=>106
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'application flow and process'
,p_page_mode=>'NORMAL'
,p_step_title=>'application flow and process'
,p_step_sub_title=>'application flow and process'
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
,p_last_upd_yyyymmddhh24miss=>'20151221125713'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27049196623376799)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27049385632376803)
,p_plug_name=>'Process Flow'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817889253950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div style="width:60%">',
'    <div style="background-color:#0000; width:60%">',
'      <h3>Application processes</h3>',
'    </div>',
'  <div style="background-color:#0000; height:200px;width:350px;float:left;">',
'      <div><h3>Login</h3></div>',
'   <div> ',
'     <p> ',
'      Entry into the application starts on page 175 where the end user is prompt for login credentials.',
'      After entering valid credentials the end user is redirected to the home page. <br /> ',
'      At the top right corner of the home page there is a row of TABs, Home, Logs, Summary, Variance, upload and Service Release. ',
'     <p/>',
'   </div>',
' <div><h3>Home</h3></div>',
'      The Home tab returns the end user to the Home page or page number one.',
' <div><h3>Logs</h3></div>',
'      Displays a second row of TABs:   ',
' <div><ul>',
'          <li>',
'              Reports: To be determined           ',
'          </li>',
'          <li>',
'              Load Status:  Provides a listing of files loaded with record count',
'          </li>  ',
'          <li>',
'              Search by File: Useful for determining if a file was loaded, end user can search by any of the fields ',
'          </li>            ',
'      </ul>',
' </div> ',
' <div><h3>Summary</h3></div>',
'      Displays a second row of TABs:',
'      <div>',
'          <ul>',
'              <li>Reports: To be determined</li>',
'              <li>Rejections</li>',
'              <li>Completed</li>',
'              <li>Amount by Source</li>',
'              <li>Search by WO</li>',
'              <li>Search Completed</li>',
'              <li>Create Fees File</li>',
'          </ul>',
'      </div>',
'</div>'))
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27049599351376804)
,p_plug_name=>'Navation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BEFORE_FOOTER'
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
 p_id=>wwv_flow_api.id(27049807635376805)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27049599351376804)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Next >'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4744842178567260)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 106'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27416803401304843)
,p_name=>'P106_PAGENO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27049599351376804)
,p_item_default=>'1'
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>30
,p_cHeight=>1
,p_tag_attributes=>'style="width: 50px; height: 15px"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00107
begin
wwv_flow_api.create_page(
 p_id=>107
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'application flow and process pg 2'
,p_page_mode=>'NORMAL'
,p_step_title=>'application flow and process pg 2'
,p_step_sub_title=>'application flow and process pg 2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151221133516'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27051306212381329)
,p_plug_name=>'Navation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BEFORE_FOOTER'
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
 p_id=>wwv_flow_api.id(27051903778381330)
,p_plug_name=>'Process Flow'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817889253950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div style="width:60%">',
'    <div style="background-color:#0000; width:60%">',
'      <h3>Application processes</h3>',
'    </div>',
'  <div style="background-color:#0000; height:200px;width:350px;float:left;">',
'      <div><h3>Variance</h3></div> ',
'      <lu> ',
'          Displays a second row of TABs:',
'         <li>Reports: To be determined</li>   ',
'	         <li>BOA Variance</li>',
'         <li>	Amount by Source</li>',
' 	        <li>Variance No Balance</li>',
'      </lu>',
'      <div><h3>Upload</h3></div>',
'         Displays a second row of TABs:   ',
'      <div><ul>',
'            <li> Reports that contains the following links</li>',
'            <ul>',
'                <li>Completed</li>',
'                <li>Variance</li>',
'                <li>Rejections</li>',
'                <li>Fees & Invoices</li>',
'                <li>Marked Completed</li>',
'           </ul>',
'           <li>Add Upload by Row</li>',
'          <li>Add Upload by File</li>',
'      </ul>',
' </div> ',
' <div><h3>Service Release</h3></div>',
'      Displays a second row of TABs:',
'      <div>',
'          <ul>',
'              <li>Reports TAB contains:</li>',
'              <ul>',
'                  <li>Pie Chart a break down of service release to Rejections</li>',
'                  <li>Pie Chart of the service release population</li>',
'                  <li>Options for creating a custom report</li>',
'              </ul>',
'              <li>Service Release: List of all accounts that appear in service release</li>',
'          </ul>',
'      </div>',
'</div>'))
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27417817021358090)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27051509349381330)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27051306212381329)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Next >'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27051690587381330)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27051306212381329)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'< Previous'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:106:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4745170978571308)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 107'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27417214375330161)
,p_name=>'P107_PAGENO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27051306212381329)
,p_item_default=>'2'
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00115
begin
wwv_flow_api.create_page(
 p_id=>115
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'Manage frequently asked questions'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage frequently asked questions'
,p_step_sub_title=>'Manage frequently asked questions'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151218141025'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27094295786306083)
,p_plug_name=>'Edit Frequently Asked Questions and Answers'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818005127950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27424710095056251)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27094899530306085)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27094295786306083)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P115_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27094502639306084)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27094295786306083)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27095084862306085)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(27094295786306083)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P115_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27094710937306085)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27094295786306083)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P115_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(27097590796306099)
,p_branch_action=>'f?p=&APP_ID.:116:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4745450267576346)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 115'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4768714090930105)
,p_name=>'P115_CREATED_BY'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(27094295786306083)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_USER.'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823400647950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4769211793945735)
,p_name=>'P115_CATEGORY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(27094295786306083)
,p_prompt=>'Category'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select CATEGORIES as display_value, ID as return_value ',
'  from RSA_QUESTION_CATEGORIES',
' order by 1'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27095294253306085)
,p_name=>'P115_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27094295786306083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27095498930306092)
,p_name=>'P115_APP'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27094295786306083)
,p_use_cache_before_default=>'NO'
,p_item_default=>'BOAIR'
,p_prompt=>'App'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'RDM APPS'
,p_lov=>'.'||wwv_flow_api.id(26829402300950281)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27095690219306092)
,p_name=>'P115_QUESTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27094295786306083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Question'
,p_source=>'QUESTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27095890392306092)
,p_name=>'P115_ANSWER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27094295786306083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer'
,p_source=>'ANSWER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27096093270306092)
,p_name=>'P115_PIC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27094295786306083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pic'
,p_source=>'PIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'LAST_UPDATE'
,p_attribute_06=>'Y'
,p_attribute_07=>'Download'
,p_attribute_08=>'inline'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27096293847306093)
,p_name=>'P115_FILENAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(27094295786306083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27096485402306093)
,p_name=>'P115_MIMETYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(27094295786306083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>300
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27096714904306093)
,p_name=>'P115_LAST_UPDATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(27094295786306083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update'
,p_source=>'LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27804487464958011)
,p_validation_name=>'P115_APP'
,p_validation_sequence=>10
,p_validation=>'P115_APP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(27095498930306092)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(27804697359983819)
,p_validation_name=>'P115_APP'
,p_validation_sequence=>20
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'     IF ( :P115_APP NOT IN (''BOAIR'')) ',
'     THEN ',
'         RETURN FALSE;',
'     ELSE ',
'         RETURN TRUE;',
'     END IF;',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry but this page only accepts BOA IR info'
,p_always_execute=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(27095498930306092)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27096899164306094)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_ADMIN_FREQ_QUESTIONS'
,p_attribute_02=>'RSA_ADMIN_FREQ_QUESTIONS'
,p_attribute_03=>'P115_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27097101954306099)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RSA_ADMIN_FREQ_QUESTIONS'
,p_attribute_02=>'RSA_ADMIN_FREQ_QUESTIONS'
,p_attribute_03=>'P115_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27097313171306099)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'28'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27094710937306085)
);
end;
/
prompt --application/pages/page_00116
begin
wwv_flow_api.create_page(
 p_id=>116
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'frequently asked questions pg 1'
,p_page_mode=>'NORMAL'
,p_step_title=>'frequently asked questions pg 1'
,p_step_sub_title=>'frequently asked questions pg 1'
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
,p_last_upd_yyyymmddhh24miss=>'20151218135906'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27412810275043901)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27415393407171487)
,p_plug_name=>'Frequently Asked Questions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818885152950275)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27092296963293460)
,p_plug_name=>'frequently asked questions'
,p_parent_plug_id=>wwv_flow_api.id(27415393407171487)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'A.ID, ',
'A.CREATED_BY,',
'A.ID AS PHOTO,',
'A.APP,',
'A.QUESTION,',
'A.ANSWER,',
'dbms_lob.getlength(A.PIC) PIC,',
'B.CATEGORIES',
'from RDM.RSA_ADMIN_FREQ_QUESTIONS A ',
'LEFT JOIN ( SELECT ID,APP, CATEGORIES, QUESTIION_ID FROM RSA_QUESTION_CATEGORIES ) B ON (B.ID = A.CATEGORY)',
'WHERE A.APP = ''BOAIR''',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27092517503293466)
,p_name=>'FREQ_QUESTIONS'
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
,p_detail_link=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.::P115_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>24260032643202494
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27092601521293469)
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
 p_id=>wwv_flow_api.id(27092710622293472)
,p_db_column_name=>'APP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'App'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27092795092293472)
,p_db_column_name=>'QUESTION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Question'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'QUESTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27092884964293472)
,p_db_column_name=>'ANSWER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Answer'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ANSWER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27093015072293472)
,p_db_column_name=>'PIC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Pic'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_format_mask=>'IMAGE:RDM_ADMIN_FREQ_QUESTIONS:PIC:ID::MIMETYPE:FILENAME:::Inline:Download'
,p_tz_dependent=>'N'
,p_static_id=>'PIC'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27093105920293472)
,p_db_column_name=>'PHOTO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Photo'
,p_column_link=>'javascript:popupURL(''f?p=&APP_ID.:60:&SESSION.::&DEBUG.::P60_ID:#PHOTO#'')'
,p_column_linktext=>'<img src="#WORKSPACE_IMAGES#Blue Go Button.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PHOTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4766757256914243)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4767432309914251)
,p_db_column_name=>'CATEGORIES'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Categories'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(27093200873293473)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'242608'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'QUESTION:PIC:ANSWER:PHOTO:CREATED_BY:CATEGORIES'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27093386230293476)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27092296963293460)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.:115::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level < 3;'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27421798732882603)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(27092296963293460)
,p_button_name=>'LOGIN_TO_APP'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Login To App'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:popupURL(''http://10.217.84.48:7778/pls/apex/f?p=114:175'')'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4745750999580373)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 116'))
);
end;
/
prompt --application/pages/page_00140
begin
wwv_flow_api.create_page(
 p_id=>140
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'TS1'
,p_name=>'List Troubleshooting Guide'
,p_page_mode=>'NORMAL'
,p_step_title=>'List Troubleshooting Guide'
,p_step_sub_title=>'List Troubleshooting Guide'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209122426'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27053908040438238)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27054112165438239)
,p_plug_name=>'List Troubleshooting Guide'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818510561950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID",',
'"ID" AS GO, ',
'"APP",',
'"PAGE",',
'"PROCESS",',
'"SUBPROCESS",',
'"ERRORCODE",',
'"ERRORMESSAGE"',
'from "#OWNER#"."RSA_ADMIN_TROUBLESHOOTING"',
'where "APP" = ''BOAIR'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27054304790438240)
,p_name=>'List Troubleshooting Guide'
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
,p_detail_link=>'f?p=&APP_ID.:142:&SESSION.::&DEBUG.::P142_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>24221819930347268
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27054408364438240)
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
 p_id=>wwv_flow_api.id(27054490567438240)
,p_db_column_name=>'APP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'App'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27054599345438240)
,p_db_column_name=>'PAGE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PAGE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27054685663438241)
,p_db_column_name=>'PROCESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Process'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27054789722438241)
,p_db_column_name=>'SUBPROCESS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Subprocess'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBPROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27054897030438241)
,p_db_column_name=>'ERRORCODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Errorcode'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ERRORCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27055000616438241)
,p_db_column_name=>'ERRORMESSAGE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errormessage'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ERRORMESSAGE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27055102826438241)
,p_db_column_name=>'GO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Go'
,p_column_link=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.::P141_ID:#GO#'
,p_column_linktext=>'<img src="#WORKSPACE_IMAGES#Blue Go Button.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'GO'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(27055208324438241)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'242228'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'APP:PAGE:PROCESS:SUBPROCESS:ERRORCODE:ERRORMESSAGE:GO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27055389037438241)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27054112165438239)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Add New Issue'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:142:&SESSION.::&DEBUG.:142::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level < 3;'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27055594803438241)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27054112165438239)
,p_button_name=>'ENTER_SOLUTION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Edit / Add Solution'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.:::'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM RSA_EMP_SECURITY',
'WHERE UPPER(LOGIN) = UPPER(:P175_USERNAME)',
' and security_level = 1;'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4746016429586189)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 140'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27055801439438242)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'50'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(26922610461760410)
);
end;
/
prompt --application/pages/page_00141
begin
wwv_flow_api.create_page(
 p_id=>141
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'List Issue with possible Solutions'
,p_page_mode=>'NORMAL'
,p_step_title=>'List Issue with possible Solutions'
,p_step_sub_title=>'List Issue with possible Solutions'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26815789157950272)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209122616'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(27056489509441720)
,p_name=>'Issue with Solutions'
,p_template=>wwv_flow_api.id(26817513221950275)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  a.ID, a.APP, a.PAGE, a.PROCESS, a.SUBPROCESS, a.ERRORCODE, a.ERRORMESSAGE, B.CAUSE, B.SOLUTION',
'from RSA_Admin_TroubleShooting a',
'LEFT JOIN ( SELECT ID, TROUBLESHOOT_ID, APP, PROCESS, SUBPROCESS, SOLUTION, CAUSE',
'             FROM RSA_Admin_issues_solution ) B ON ( B.TROUBLESHOOT_ID  = A.ID)',
'WHERE B.TROUBLESHOOT_ID  = A.ID',
' and  A.id  = :P141_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(26820594274950276)
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
 p_id=>wwv_flow_api.id(27056717138441723)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27056800881441729)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'APP'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27056906698441729)
,p_query_column_id=>3
,p_column_alias=>'PAGE'
,p_column_display_sequence=>3
,p_column_heading=>'PAGE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27056997210441729)
,p_query_column_id=>4
,p_column_alias=>'PROCESS'
,p_column_display_sequence=>4
,p_column_heading=>'PROCESS'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27057114638441729)
,p_query_column_id=>5
,p_column_alias=>'SUBPROCESS'
,p_column_display_sequence=>5
,p_column_heading=>'Sub Process'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27057211514441729)
,p_query_column_id=>6
,p_column_alias=>'ERRORCODE'
,p_column_display_sequence=>6
,p_column_heading=>'Error Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27057316222441729)
,p_query_column_id=>7
,p_column_alias=>'ERRORMESSAGE'
,p_column_display_sequence=>7
,p_column_heading=>'Error Message'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27057398378441729)
,p_query_column_id=>8
,p_column_alias=>'CAUSE'
,p_column_display_sequence=>8
,p_column_heading=>'Probable Cause'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27057517464441729)
,p_query_column_id=>9
,p_column_alias=>'SOLUTION'
,p_column_display_sequence=>9
,p_column_heading=>'Solution '
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27057610898441730)
,p_plug_name=>'Process'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26816905436950274)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(27058004412441734)
,p_name=>'Error message'
,p_template=>wwv_flow_api.id(26817513221950275)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_04'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select errormessage AS ERROR_MESSAGE',
'from RSA_Admin_TroubleShooting',
'WHERE ID = :P141_ID;'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P141_ID'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(26820296638950276)
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
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27058189301441735)
,p_query_column_id=>1
,p_column_alias=>'ERROR_MESSAGE'
,p_column_display_sequence=>1
,p_column_heading=>'Error Message'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(27058288880441735)
,p_name=>'Module'
,p_template=>wwv_flow_api.id(26817513221950275)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_04'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT A.PROCESS ||'' \ ''||a.SUBPROCESS',
'FROM RSA_ADMIN_TROUBLESHOOTING A',
'WHERE A.ID = :P141_ID'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P141_ID'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(26820507459950276)
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
 p_id=>wwv_flow_api.id(27058486710441735)
,p_query_column_id=>1
,p_column_alias=>'A.PROCESS||''\''||A.SUBPROCESS'
,p_column_display_sequence=>1
,p_column_heading=>'Process \ Subprocess'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27058612020441735)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4746318466597253)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 141'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27057786295441730)
,p_name=>'P141_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27057610898441730)
,p_prompt=>'Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
prompt --application/pages/page_00142
begin
wwv_flow_api.create_page(
 p_id=>142
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Add to Troubleshooting Guide'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add to Troubleshooting Guide'
,p_step_sub_title=>'Add to Troubleshooting Guide'
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
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209122651'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27059489534447089)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27059705945447090)
,p_plug_name=>'Manage RDM Admin Troubleshooting'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818005127950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27060089297447091)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27059705945447090)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P142_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27060492231447091)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27059705945447090)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27060315687447091)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(27059705945447090)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P142_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27059903970447091)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27059705945447090)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P142_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(27063588982447105)
,p_branch_action=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4746654918600761)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 142'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27060702576447092)
,p_name=>'P142_APP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27059705945447090)
,p_use_cache_before_default=>'NO'
,p_item_default=>'BOAIR'
,p_prompt=>'App'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27060896415447092)
,p_name=>'P142_PAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27059705945447090)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Page'
,p_source=>'PAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27061092813447092)
,p_name=>'P142_PROCESS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27059705945447090)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process'
,p_source=>'PROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select process d, process r',
'from RSA_admin_apps',
'where app = ''BOAIR''',
'GROUP BY PROCESS',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Process'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27061288587447099)
,p_name=>'P142_SUBPROCESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27059705945447090)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subprocess'
,p_source=>'SUBPROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT SUBPROCESS D, SUBPROCESS R',
'FROM RSA_ADMIN_APPS',
'WHERE APP = ''BOAIR''',
' AND  PROCESS = :P142_PROCESS',
'ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select Sub Process'
,p_lov_cascade_parent_items=>'P142_PROCESS'
,p_ajax_items_to_submit=>'P142_PROCESS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27061486423447099)
,p_name=>'P142_ERRORCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(27059705945447090)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Errorcode'
,p_source=>'ERRORCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27061686350447099)
,p_name=>'P142_ERRORMESSAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(27059705945447090)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Error Message'
,p_source=>'ERRORMESSAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27061896966447100)
,p_name=>'P142_CAUSE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(27059705945447090)
,p_prompt=>'Probable Cause'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27062093105447100)
,p_name=>'P142_SOLUTION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(27059705945447090)
,p_prompt=>'Solution'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27062315734447100)
,p_name=>'P142_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27059705945447090)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27062487621447100)
,p_process_sequence=>110
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Read in'
,p_attribute_02=>'RSA_ADMIN_TROUBLESHOOTING'
,p_attribute_03=>'P142_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27062904540447102)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare ',
'',
'pid   number;',
'',
'BEGIN',
'',
'',
'INSERT INTO RSA_Admin_TroubleShooting ( APP, PROCESS, SUBPROCESS, ERRORCODE, ERRORMESSAGE)',
'VALUES ( ''VD'',:P142_PROCESS,:P142_SUBPROCESS,:P142_ERRORCODE,:P142_ERRORMESSAGE)',
'RETURNING ID INTO PID;',
'',
'INSERT INTO RSA_Admin_issues_solution ( APP, PROCESS,  SUBPROCESS, TROUBLESHOOT_ID, SOLUTION, CAUSE)',
'VALUES ( ''VD'',:P142_PROCESS,:P142_SUBPROCESS,PID,:P142_SOLUTION,:P142_CAUSE);',
'commit;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27060315687447091)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27063101728447102)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'   ',
'     UPDATE RSA_Admin_TroubleShooting SET APP       =    :P142_APP, ',
'                                          PROCESS =      :P142_PROCESS,',
'                                          SUBPROCESS =   :P142_SUBPROCESS,',
'                                          ERRORCODE  =   :P142_ERRORCODE,',
'                                          ERRORMESSAGE = :P142_ERRMESSAGE  ',
'          WHERE ID = :P142_ID;',
'                                                ',
'                                               ',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27060089297447091)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27063285314447105)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'   ',
'     delete  RSA_Admin_TroubleShooting  WHERE ID = :P142_ID;',
'                                                ',
'     delete RSA_Admin_issues_solution   where TROUBLESHOOT_ID = :P142_ID;',
'                                               ',
'     COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27059903970447091)
,p_process_when=>'P142_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27062712090447102)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'410'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27059903970447091)
);
end;
/
prompt --application/pages/page_00143
begin
wwv_flow_api.create_page(
 p_id=>143
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Guide Solution List'
,p_page_mode=>'NORMAL'
,p_step_title=>'Guide Solution List'
,p_step_sub_title=>'Guide Solution List'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209122729'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27064411282470374)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27064596923470375)
,p_plug_name=>'Process issues'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818510561950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT a.ID, a.TROUBLESHOOT_ID, a.APP, a.PROCESS, a.SUBPROCESS, b.ERRORCODE, b.ERRORMESSAGE,a.SOLUTION, a.CAUSE',
'  FROM RSA_Admin_issues_solution a ',
'  left join ( select  id, ERRORCODE, ERRORMESSAGE from RSA_Admin_TroubleShooting ) b  ',
'   ON ( a.TROUBLESHOOT_ID  = b.ID)',
'WHERE A.APP = ''BOAIR''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27064787649470375)
,p_name=>'Process issues'
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
,p_detail_link=>'f?p=&APP_ID.:144:&SESSION.::&DEBUG.::P144_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>24232302789379403
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27064907175470375)
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
 p_id=>wwv_flow_api.id(27064994126470375)
,p_db_column_name=>'TROUBLESHOOT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Troubleshoot Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'TROUBLESHOOT_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27065108906470375)
,p_db_column_name=>'APP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'App'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'APP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27065199112470375)
,p_db_column_name=>'PROCESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Process'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27065301705470376)
,p_db_column_name=>'SUBPROCESS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Subprocess'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBPROCESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27065401867470376)
,p_db_column_name=>'SOLUTION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Solution'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SOLUTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27065501293470376)
,p_db_column_name=>'CAUSE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Cause'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CAUSE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27065608617470376)
,p_db_column_name=>'ERRORCODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Errorcode'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ERRORCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27065698211470376)
,p_db_column_name=>'ERRORMESSAGE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Errormessage'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ERRORMESSAGE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(27065813342470376)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'242334'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'APP:PROCESS:SUBPROCESS:CAUSE:SOLUTION:ERRORCODE:ERRORMESSAGE:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27065999075470376)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27064596923470375)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Add Solution'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:144:&SESSION.::&DEBUG.:144::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4746952516604474)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 143'))
);
end;
/
prompt --application/pages/page_00144
begin
wwv_flow_api.create_page(
 p_id=>144
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Rdm Admin Issue Solutions'
,p_page_mode=>'NORMAL'
,p_step_title=>'Rdm Admin Issue Solutions'
,p_step_sub_title=>'Rdm Admin Issue Solutions'
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
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209122813'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27066903895477033)
,p_plug_name=>'Add Issue Solutions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818005127950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27069306704477039)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27067484967477035)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27066903895477033)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P144_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27067087718477034)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27066903895477033)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27067710800477035)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(27066903895477033)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P144_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27067292238477035)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27066903895477033)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P144_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(27070205783477041)
,p_branch_action=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4747190341608945)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 144'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27067917576477035)
,p_name=>'P144_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27066903895477033)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27068107682477035)
,p_name=>'P144_TROUBLESHOOT_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(27066903895477033)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Troubleshoot ID'
,p_source=>'TROUBLESHOOT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ERRORMESSAGE d, id r  ',
'from RSA_Admin_TroubleShooting',
'WHERE PROCESS = :P144_PROCESS',
' AND  SUBPROCESS = :P144_SUBPROCESS',
'ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Assign Solution to Error'
,p_lov_cascade_parent_items=>'P144_PROCESS,P144_SUBPROCESS'
,p_ajax_items_to_submit=>'P144_PROCESS,P144_SUBPROCESS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27068299223477036)
,p_name=>'P144_APP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27066903895477033)
,p_use_cache_before_default=>'NO'
,p_prompt=>'App'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27068514332477037)
,p_name=>'P144_PROCESS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27066903895477033)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process'
,p_source=>'PROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select process d, process r',
'from rsa_admin_apps',
'where app = :P144_APP',
'GROUP BY PROCESS',
'ORDER BY 1',
''))
,p_lov_cascade_parent_items=>'P144_APP'
,p_ajax_items_to_submit=>'P144_APP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27068707329477038)
,p_name=>'P144_SUBPROCESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27066903895477033)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subprocess'
,p_source=>'SUBPROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT SUBPROCESS D, SUBPROCESS R',
'FROM RSA_ADMIN_APPS',
'WHERE APP = :P144_APP',
' AND  PROCESS = :P144_PROCESS',
'ORDER BY 1',
''))
,p_lov_cascade_parent_items=>'P144_PROCESS'
,p_ajax_items_to_submit=>'P144_PROCESS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27068893452477038)
,p_name=>'P144_SOLUTION'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(27066903895477033)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Solution'
,p_source=>'SOLUTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27069088908477038)
,p_name=>'P144_CAUSE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(27066903895477033)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Caused by:'
,p_source=>'CAUSE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27069496658477040)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_ADMIN_ISSUES_SOLUTION'
,p_attribute_02=>'RSA_ADMIN_ISSUES_SOLUTION'
,p_attribute_03=>'P144_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27069696686477040)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RSA_ADMIN_ISSUES_SOLUTION'
,p_attribute_02=>'RSA_ADMIN_ISSUES_SOLUTION'
,p_attribute_03=>'P144_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27069895807477041)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'54'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27067292238477035)
);
end;
/
prompt --application/pages/page_00155
begin
wwv_flow_api.create_page(
 p_id=>155
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_tab_set=>'T_BOAIRECON'
,p_name=>'Manage Users'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage Users'
,p_step_sub_title=>'Manage Users'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151218143026'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27070701440481040)
,p_plug_name=>'Manage Users'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26819401455950275)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_api.id(4771122311087189)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(26822502729950277)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27070902764481040)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4747530703613204)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 155'))
);
end;
/
prompt --application/pages/page_00156
begin
wwv_flow_api.create_page(
 p_id=>156
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'List User information'
,p_page_mode=>'NORMAL'
,p_step_title=>'List User information'
,p_step_sub_title=>'List User information'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26816199723950273)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151221093753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27071602692484323)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27071816816484324)
,p_plug_name=>'Personal Information'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * ',
'from BOFA_PRIVILEGES',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27071995281484324)
,p_name=>'Personal Information'
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
,p_detail_link=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.::P157_PID:#PID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>24239510421393352
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27072292047484325)
,p_db_column_name=>'SGP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'SGP ID'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'SGP_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27072390278484325)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'First Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIRST_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27072503562484325)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27072585295484325)
,p_db_column_name=>'EMAILADDRESS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Email Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAILADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27083788621369060)
,p_db_column_name=>'PID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Pid'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27083911207369062)
,p_db_column_name=>'APEX_USER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Apex User'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APEX_USER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27084013646369062)
,p_db_column_name=>'MANAGER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Manager'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'MANAGER'
,p_rpt_named_lov=>wwv_flow_api.id(26829795301950281)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27084089328369062)
,p_db_column_name=>'WORK_TABLE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Work Table'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_TABLE'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27084200656369062)
,p_db_column_name=>'WORKSPACE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Workspace'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORKSPACE'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27084305675369063)
,p_db_column_name=>'EMAIL_SENT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Email Sent'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL_SENT'
,p_rpt_named_lov=>wwv_flow_api.id(26829795301950281)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(27073711437484327)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'242413'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SGP_ID:FIRST_NAME:LAST_NAME:EMAILADDRESS:PID:APEX_USER:MANAGER:WORK_TABLE:WORKSPACE:EMAIL_SENT'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27073913342484328)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27071816816484324)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_image_alt=>'Create End User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.:157::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4747807806624090)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 156'))
);
end;
/
prompt --application/pages/page_00157
begin
wwv_flow_api.create_page(
 p_id=>157
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Create End User'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create End User'
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
,p_last_upd_yyyymmddhh24miss=>'20151221093428'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4773996854308853)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817291236950275)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(26831494182950282)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(26824299957950278)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4782631506345839)
,p_plug_name=>'BOFA_PRIVILEGES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817513221950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4783054802345856)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(4782631506345839)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P157_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4783219378345856)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(4782631506345839)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:156:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4782952377345855)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(4782631506345839)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823787441950278)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P157_PID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4783145389345856)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(4782631506345839)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823903268950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P157_PID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4784728687345875)
,p_branch_action=>'f?p=&APP_ID.:156:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4748167175627819)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 157'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4785116677345883)
,p_name=>'P157_PID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4782631506345839)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pid'
,p_source=>'PID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4785572082345911)
,p_name=>'P157_APEX_USER'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(4782631506345839)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apex User'
,p_source=>'APEX_USER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4785909162345914)
,p_name=>'P157_FIRST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(4782631506345839)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4786362504345915)
,p_name=>'P157_LAST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(4782631506345839)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4786713252345915)
,p_name=>'P157_MANAGER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(4782631506345839)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager'
,p_source=>'MANAGER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(26829795301950281)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4787151789345918)
,p_name=>'P157_SGP_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(4782631506345839)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sgp Id'
,p_source=>'SGP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4787573523345918)
,p_name=>'P157_EMAILADDRESS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(4782631506345839)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emailaddress'
,p_source=>'EMAILADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4787971397345918)
,p_name=>'P157_WORK_TABLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(4782631506345839)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Table'
,p_source=>'WORK_TABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'This option is used if the end user is required to create reports'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4788370400345919)
,p_name=>'P157_WORKSPACE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(4782631506345839)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Workspace'
,p_source=>'WORKSPACE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WORKSPACE'
,p_lov=>'.'||wwv_flow_api.id(27085916202383213)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823400647950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'In order to recieve emails this field must match the region that the application ',
'is located in.'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4788736901345919)
,p_name=>'P157_EMAIL_SENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(4782631506345839)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Sent'
,p_source=>'EMAIL_SENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(26829795301950281)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4791791440403957)
,p_name=>'APEX_ID'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P157_FIRST_NAME,P157_LAST_NAME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4792184947403969)
,p_event_id=>wwv_flow_api.id(4791791440403957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P157_APEX_USER'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'FNAME VARCHAR2(100 BYTE);',
'BEGIN ',
'FNAME := :P157_FIRST_NAME||''.''||:P157_LAST_NAME;',
'RETURN FNAME;',
'',
'END;',
''))
,p_attribute_07=>'P157_FIRST_NAME,P157_LAST_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4794415439561440)
,p_event_id=>wwv_flow_api.id(4791791440403957)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P157_EMAILADDRESS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'EMAIL_ADDR VARCHAR2(200 BYTE);',
'',
'BEGIN ',
'',
'EMAIL_ADDR := :P157_FIRST_NAME||''.''||:P157_LAST_NAME||''@safeguardproperties.com'';',
'',
'return EMAIL_ADDR;',
'',
'END;',
'',
''))
,p_attribute_07=>'P157_FIRST_NAME,P157_LAST_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4794847064585943)
,p_event_id=>wwv_flow_api.id(4791791440403957)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P157_SGP_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'SGP_ID  VARCHAR2(100 BYTE);',
'',
'BEGIN',
'',
'SGP_ID := :P157_FIRST_NAME||''.''||:P157_LAST_NAME;',
'',
'RETURN SGP_ID;',
'',
'END;',
''))
,p_attribute_07=>'P157_FIRST_NAME,P157_LAST_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4789534902345925)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from BOFA_PRIVILEGES'
,p_attribute_02=>'BOFA_PRIVILEGES'
,p_attribute_03=>'P157_PID'
,p_attribute_04=>'PID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4789895601345931)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of BOFA_PRIVILEGES'
,p_attribute_02=>'BOFA_PRIVILEGES'
,p_attribute_03=>'P157_PID'
,p_attribute_04=>'PID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4790303062345931)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(4783145389345856)
);
end;
/
prompt --application/pages/page_00175
begin
wwv_flow_api.create_page(
 p_id=>175
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'SRA Login Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'SRA Login Page'
,p_step_sub_title=>'175 Login Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(26815609009950272)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151208140446'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26836392957973678)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817001191950274)
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
 p_id=>wwv_flow_api.id(26838016009973687)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817001191950274)
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
 p_id=>wwv_flow_api.id(26837604777973686)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(26836392957973678)
,p_button_name=>'P175_LOGIN'
,p_button_static_id=>'P175_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
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
 p_id=>wwv_flow_api.id(26838915321973689)
,p_branch_name=>'GO_TO_HOMEPAGE'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(26837604777973686)
,p_branch_sequence=>50
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26836595448973680)
,p_name=>'P175_USERNAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(26836392957973678)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application user name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26837099383973686)
,p_name=>'P175_PASSWORD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(26836392957973678)
,p_prompt=>'&nbspPassword'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application password.'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26837796048973687)
,p_name=>'P175_APP_TITLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(26836392957973678)
,p_prompt=>'<font face="Agfa Rotis Semi Serif" size="5" color="gray">&nbsp&nbsp&nbsp&nbsp&nbsp Safeguard Runbook Application</font>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(26823113240950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26838195779973688)
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
 p_id=>wwv_flow_api.id(26838412073973689)
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
 p_id=>wwv_flow_api.id(26838593865973689)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P175_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00200
begin
wwv_flow_api.create_page(
 p_id=>200
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'EXIT'
,p_page_mode=>'NORMAL'
,p_step_title=>'EXIT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(26815506677950272)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151208143918'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4784236961320373)
,p_plug_name=>'EXIT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26817106197950274)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4784286421320374)
,p_name=>'P200_ALERT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4784236961320373)
,p_prompt=>'Alert'
,p_source=>'#WORKSPACE_IMAGES#alert_warning.gif'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4784411507320375)
,p_name=>'P200_EXIT_LABLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4784236961320373)
,p_prompt=>'Sorry, But you are not authorized to access this page. Return to Application? '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4784573724320376)
,p_name=>'P200_YES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(4784236961320373)
,p_prompt=>'Yes'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;1'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-BOTTOM'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4784604108320377)
,p_name=>'P200_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(4784236961320373)
,p_prompt=>'No'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:NO;1'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26822985595950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4714436662681301)
,p_name=>'GO_HOME'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P200_YES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4714809804681308)
,p_event_id=>wwv_flow_api.id(4714436662681301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P200_YES'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'javascript:redirect(''f?p=&APP_ID.:1:&SESSION.::NO:::'');',
''))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4716458131737866)
,p_name=>'Need to Exit'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P200_NO'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4716857556737866)
,p_event_id=>wwv_flow_api.id(4716458131737866)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P200_NO'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'javascript:redirect(''f?p=&APP_ID.:300:&SESSION.::NO:::'');',
''))
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00300
begin
wwv_flow_api.create_page(
 p_id=>300
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'LOG_OUT'
,p_page_mode=>'NORMAL'
,p_step_title=>'LOG_OUT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151208143406'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4715625616710729)
,p_plug_name=>'Bye'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(26817106197950274)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4716010745722059)
,p_name=>'P300_BYE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4715625616710729)
,p_prompt=>'You Have Successfully logged out of the Application '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(26823491865950278)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00311
begin
wwv_flow_api.create_page(
 p_id=>311
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Report of APEX pages'
,p_page_mode=>'NORMAL'
,p_step_title=>'Report of APEX pages'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151209123222'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4729905394817008)
,p_plug_name=>'Report of APEX pages'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818510561950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"PAGE",',
'"AREA",',
'"PROCESS",',
'"SUBPROCESS",',
'"SECURITY_LEVEL"',
'from "#OWNER#"."RSA_ADMIN_BOOK_PGS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(4730332079817008)
,p_name=>'Report of APEX pages'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:312:&APP_SESSION.::::P312_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">'
,p_owner=>'CHRISTIAN.GARDNER'
,p_internal_uid=>1897847219726036
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4730392203817023)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4730842796817045)
,p_db_column_name=>'APP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'App'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4731229494817049)
,p_db_column_name=>'PAGE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4731589276817049)
,p_db_column_name=>'AREA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Area'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4732067368817050)
,p_db_column_name=>'PROCESS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Process'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4732470629817050)
,p_db_column_name=>'SUBPROCESS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Subprocess'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4732848176817051)
,p_db_column_name=>'SECURITY_LEVEL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Security Level'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(4733733390822560)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'19013'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:APP:PAGE:AREA:PROCESS:SUBPROCESS:SECURITY_LEVEL'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4733266362817051)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(4729905394817008)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:312:&SESSION.::&DEBUG.:312'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4748390768633826)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 311'))
);
end;
/
prompt --application/pages/page_00312
begin
wwv_flow_api.create_page(
 p_id=>312
,p_user_interface_id=>wwv_flow_api.id(26825015919950279)
,p_name=>'Add to RSA_ADMIN_BOOK_PGS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add to RSA_ADMIN_BOOK_PGS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151217150634'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4722638915816922)
,p_plug_name=>'Add to RSA_ADMIN_BOOK_PGS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(26818005127950275)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4723106751816929)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(4722638915816922)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P312_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4723286599816930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(4722638915816922)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:311:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4723023544816929)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(4722638915816922)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P312_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4723204301816929)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(4722638915816922)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(26823591618950278)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P312_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4724899790816938)
,p_branch_action=>'f?p=&APP_ID.:311:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4748734976637471)
,p_branch_name=>'Security Level'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.SECURITY_LEVEL ',
'from RSA_ADMIN_BOOK_PGS a',
'left join ( select LOGIN, SECURITY_LEVEL from rsa_emp_security WHERE UPPER(LOGIN) = UPPER(:APP_USER) ) b on ( a.security_level >= b.security_level)',
'where a.security_level >= b.security_level',
'and a.PAGE = 312'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4725384276816941)
,p_name=>'P312_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4722638915816922)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4725750293816969)
,p_name=>'P312_APP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4722638915816922)
,p_use_cache_before_default=>'NO'
,p_prompt=>'App'
,p_source=>'APP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select APP as display_value, APP as return_value',
'  from ( SELECT APP ',
'         from RSA_ADMIN_APPS',
'         GROUP BY APP)',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4726004993816973)
,p_name=>'P312_PAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(4722638915816922)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Page'
,p_source=>'PAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4726446698816977)
,p_name=>'P312_AREA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(4722638915816922)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Area'
,p_source=>'AREA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4726871485816977)
,p_name=>'P312_PROCESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(4722638915816922)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process'
,p_source=>'PROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727274683816978)
,p_name=>'P312_SUBPROCESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(4722638915816922)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subprocess'
,p_source=>'SUBPROCESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4727622637816978)
,p_name=>'P312_SECURITY_LEVEL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(4722638915816922)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Security Level'
,p_source=>'SECURITY_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SECURITY_TITLE as display_value, SECURITY_LEVEL as return_value ',
'  from RSA_SECURITY_LEVELS',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(26823205067950277)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4728483445816984)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from RSA_ADMIN_BOOK_PGS'
,p_attribute_02=>'RSA_ADMIN_BOOK_PGS'
,p_attribute_03=>'P312_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4728847670816986)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of RSA_ADMIN_BOOK_PGS'
,p_attribute_02=>'RSA_ADMIN_BOOK_PGS'
,p_attribute_03=>'P312_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4729243329816987)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(4723204301816929)
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(27435485617075684)
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
