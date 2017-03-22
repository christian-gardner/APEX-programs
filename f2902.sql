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
,p_default_application_id=>2902
,p_default_owner=>'RDM'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 2902 - Demand Letter
--
-- Application Export:
--   Application:     2902
--   Name:            Demand Letter
--   Date and Time:   07:21 Wednesday March 22, 2017
--   Exported By:     CHRISTIAN.GARDNER
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     69427033981319
--

-- Application Statistics:
--   Pages:                     21
--     Items:                  155
--     Validations:              2
--     Processes:               13
--     Regions:                 67
--     Buttons:                 43
--     Dynamic Actions:         53
--   Shared Components:
--     Logic:
--       Items:                  5
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 1
--       Lists:                  2
--       NavBar Entries:         1
--     Security:
--       Authentication:         2
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                15
--         Region:              30
--         Label:                8
--         List:                20
--         Popup LOV:            1
--         Calendar:             3
--         Breadcrumb:           2
--         Button:               8
--         Report:              10
--       LOVs:                  12
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,2902)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'RDM')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Demand Letter')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_1072902')
,p_application_group=>3409329326592262
,p_application_group_name=>'IT'
,p_application_group_comment=>'IT Aplications.'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20150410072443'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'MM-DD-YYYY'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(35755816611887804)
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
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20150410072443'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(27117707325346903)
,p_name=>'Navigation'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(39851037208189454)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Demand Letter Input/Search'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31583133831413224)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Demand Letter Queuing '
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31583315069421837)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Demand Letter Report'
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM DMD_LTR_EMP_SECURITY',
'WHERE LOGIN = :P175_USERNAME',
'  AND SECURITY_LEVEL = 1'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(31674713776675928)
,p_name=>'Queue Navigation'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31674904839675931)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Assigned Queue'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31675229338675944)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Open Queue'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(34658116163685978)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'All Demand Letters'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT SECURITY_LEVEL',
'',
'FROM DMD_LTR_EMP_SECURITY',
'',
'WHERE LOGIN = UPPER(:P150_USERNAME)',
'AND STATUS = ''ACTIVE''',
'AND SECURITY_LEVEL = 1'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40018729379714118)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Working Queue'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40414007344211446)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Completed Queue'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40022122669747592)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Main Menu'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
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
 p_id=>wwv_flow_api.id(114776824265148)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(27106332413346893)
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
 p_id=>wwv_flow_api.id(27116111088346900)
,p_icon_sequence=>20
,p_icon_subtext=>'Logout'
,p_icon_target=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.::::'
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
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(27226511007798443)
,p_name=>'FSP_PROCESS_STATE_6684125079058931'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(27229109651025117)
,p_name=>'FSP_PROCESS_STATE_6713005998476135'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(27312126784086599)
,p_name=>'FSP_PROCESS_STATE_6766622806564227'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(27311721244085015)
,p_name=>'FSP_PROCESS_STATE_6776010403571296'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(31815923799737801)
,p_name=>'FSP_PROCESS_STATE_6917917867475027'
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
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(39854117700319999)
,p_tab_set=>'Demand Letter'
,p_tab_sequence=>10
,p_tab_name=>'T_DEMANDLETTER'
,p_tab_text=>'Demand Letter'
,p_tab_step=>1
,p_tab_also_current_for_pages=>'2,8,200,7,13'
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
 p_id=>wwv_flow_api.id(33215826180784954)
,p_lov_name=>'ANALYST'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select LOGIN as display_value, LOGIN as return_value ',
'  from DMD_LTR_EMP_SECURITY',
'  where STATUS = ''ACTIVE''',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31699115307548940)
,p_lov_name=>'APPEAL_RECIPIENT'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select APPEAL_RECIPIENT as display_value, APPEAL_RECIPIENT as return_value ',
'  from DMD_LTR_APPEAL_RECIPIENT',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(32729125706100252)
,p_lov_name=>'CLIENTS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select CLIENT_NAME as display_value, CLIENT_NAME as return_value ',
'  from DMD_LTR_CLIENTS',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(32525726028620265)
,p_lov_name=>'DEPARTMENT_RESPONSIBLE'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DEPART_RESP as display_value, DEPART_RESP as return_value ',
'  from DMD_LTR_DEPT_RESP',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31635412096422426)
,p_lov_name=>'DISPUTE_REASON'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPUTE_REASON as display_value, DISPUTE_REASON as return_value ',
'  from DMD_LTR_DISPUTE_REASON',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(32717736877555075)
,p_lov_name=>'EMPLOYEE_STATUS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select STATUS as display_value, STATUS as return_value ',
'  from DMD_LTR_EMP_STATUS',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31700625812620010)
,p_lov_name=>'INTERNAL_RESPONSIBILITY'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select INTERNAL_RESPONSIBILITY as display_value, INTERNAL_RESPONSIBILITY as return_value ',
'  from DMD_LTR_INTER_RESPONSIBILITY',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(40005605278620272)
,p_lov_name=>'P200_Report Row Per Page'
,p_lov_query=>'.'||wwv_flow_api.id(40005605278620272)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40005936682620286)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'10'
,p_lov_return_value=>'10'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40006226825620312)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'15'
,p_lov_return_value=>'15'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40006509996620313)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40006807814620313)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'30'
,p_lov_return_value=>'30'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40007113424620339)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'50'
,p_lov_return_value=>'50'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40007410056620339)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40007709901620339)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'200'
,p_lov_return_value=>'200'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40008020105620339)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40008323267620339)
,p_lov_disp_sequence=>90
,p_lov_disp_value=>'1000'
,p_lov_return_value=>'1000'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(40008633179620339)
,p_lov_disp_sequence=>100
,p_lov_disp_value=>'5000'
,p_lov_return_value=>'5000'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31618912957669713)
,p_lov_name=>'RESPONSIBLE_PARTY'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select RESPONSIBLE_PARTY as display_value, RESPONSIBLE_PARTY as return_value ',
'  from DMD_LTR_RESP_PARTY',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(32113214794111139)
,p_lov_name=>'SECURITY_LEVEL'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SECURITY_LEVEL as display_value, SECURITY_LEVEL as return_value ',
'  from DMD_LTR_SECURITY_LEVEL',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31620324886846456)
,p_lov_name=>'STATUS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select STATUS as display_value, STATUS as return_value ',
'  from DMD_LTR_STATUS',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(32183108368547347)
,p_lov_name=>'WRITE_OFF_REASON'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select WRITE_OFF_REASON as display_value, WRITE_OFF_REASON as return_value ',
'  from DMD_LTR_WRITEOFF_REASON',
' order by 1'))
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
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27106420925346893)
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
 p_id=>wwv_flow_api.id(27106515629346893)
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
 p_id=>wwv_flow_api.id(27106633597346893)
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
 p_id=>wwv_flow_api.id(27106733663346893)
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
 p_id=>wwv_flow_api.id(27106812277346893)
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
 p_id=>wwv_flow_api.id(27106922935346893)
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
 p_id=>wwv_flow_api.id(27107007446346893)
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
 p_id=>wwv_flow_api.id(27107134952346894)
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
 p_id=>wwv_flow_api.id(27107219301346894)
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
 p_id=>wwv_flow_api.id(27107326271346894)
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
 p_id=>wwv_flow_api.id(27107432025346894)
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
 p_id=>wwv_flow_api.id(27107506711346894)
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
 p_id=>wwv_flow_api.id(27107607407346894)
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
 p_id=>wwv_flow_api.id(27107723426346894)
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
 p_id=>wwv_flow_api.id(27107823473346894)
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
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(118358619265282)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27114613016346897)
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
 p_id=>wwv_flow_api.id(27114730271346897)
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
 p_id=>wwv_flow_api.id(27114816989346897)
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
 p_id=>wwv_flow_api.id(27114906437346897)
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
 p_id=>wwv_flow_api.id(27115036182346897)
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
 p_id=>wwv_flow_api.id(27115113613346897)
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
 p_id=>wwv_flow_api.id(27115219702346898)
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
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27107927064346894)
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
 p_id=>wwv_flow_api.id(27108014247346894)
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
 p_id=>wwv_flow_api.id(27108127519346894)
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
 p_id=>wwv_flow_api.id(27108219878346894)
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
 p_id=>wwv_flow_api.id(27108307079346894)
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
 p_id=>wwv_flow_api.id(27108423998346895)
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
 p_id=>wwv_flow_api.id(27108517051346895)
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
 p_id=>wwv_flow_api.id(27108626031346895)
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
 p_id=>wwv_flow_api.id(27108725097346895)
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
 p_id=>wwv_flow_api.id(27108810674346895)
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
 p_id=>wwv_flow_api.id(27108929626346895)
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
 p_id=>wwv_flow_api.id(27109034873346895)
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
 p_id=>wwv_flow_api.id(27109132136346895)
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
 p_id=>wwv_flow_api.id(27109206068346895)
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
 p_id=>wwv_flow_api.id(27109321498346895)
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
 p_id=>wwv_flow_api.id(27109423927346895)
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
 p_id=>wwv_flow_api.id(27109533263346895)
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
 p_id=>wwv_flow_api.id(27109631577346895)
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
 p_id=>wwv_flow_api.id(27109716211346895)
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
 p_id=>wwv_flow_api.id(27109836267346895)
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
 p_id=>wwv_flow_api.id(27109931206346895)
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
 p_id=>wwv_flow_api.id(27110011653346895)
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
 p_id=>wwv_flow_api.id(27110133390346895)
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
 p_id=>wwv_flow_api.id(27110213235346895)
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
 p_id=>wwv_flow_api.id(27110317903346895)
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
 p_id=>wwv_flow_api.id(27110432405346895)
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
 p_id=>wwv_flow_api.id(27110526050346895)
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
 p_id=>wwv_flow_api.id(27110612758346895)
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
 p_id=>wwv_flow_api.id(27110721152346896)
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
 p_id=>wwv_flow_api.id(27110814540346896)
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
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27111907607346896)
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
 p_id=>wwv_flow_api.id(27112021338346896)
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
 p_id=>wwv_flow_api.id(27112133601346896)
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
 p_id=>wwv_flow_api.id(27112213795346896)
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
 p_id=>wwv_flow_api.id(27112336044346896)
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
 p_id=>wwv_flow_api.id(27112429075346896)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>122
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27112521321346896)
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
 p_id=>wwv_flow_api.id(27112605440346896)
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
 p_id=>wwv_flow_api.id(27112707792346897)
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
 p_id=>wwv_flow_api.id(27112816134346897)
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
 p_id=>wwv_flow_api.id(27112931233346897)
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
 p_id=>wwv_flow_api.id(27113011792346897)
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
 p_id=>wwv_flow_api.id(27113122691346897)
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
 p_id=>wwv_flow_api.id(27113235386346897)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>122
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27113331388346897)
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
 p_id=>wwv_flow_api.id(27113429123346897)
,p_list_template_current=>'<li class="current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>122
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27113533826346897)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets, Alternative'
,p_theme_id=>122
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27113625484346897)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>122
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27113731227346897)
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
 p_id=>wwv_flow_api.id(27113812434346897)
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
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27110905621346896)
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
 p_id=>wwv_flow_api.id(27110905621346896)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27111021712346896)
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
 p_id=>wwv_flow_api.id(27111021712346896)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27111133314346896)
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
 p_id=>wwv_flow_api.id(27111133314346896)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27111216128346896)
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
 p_id=>wwv_flow_api.id(27111216128346896)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27111325970346896)
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
 p_id=>wwv_flow_api.id(27111428957346896)
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
 p_id=>wwv_flow_api.id(27111428957346896)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27111525834346896)
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
 p_id=>wwv_flow_api.id(27111525834346896)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27111604998346896)
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
 p_id=>wwv_flow_api.id(27111709030346896)
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
 p_id=>wwv_flow_api.id(27111826243346896)
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
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27113935997346897)
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
 p_id=>wwv_flow_api.id(27114020899346897)
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
 p_id=>wwv_flow_api.id(27114133038346897)
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
 p_id=>wwv_flow_api.id(27114224201346897)
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
 p_id=>wwv_flow_api.id(27114329751346897)
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
 p_id=>wwv_flow_api.id(27114433303346897)
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
 p_id=>wwv_flow_api.id(27114530825346897)
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
 p_id=>wwv_flow_api.id(32622313907253584)
,p_template_name=>'Safeguard Blue'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #1589FF; font-size: 14px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>122
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(27115320218346898)
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
 p_id=>wwv_flow_api.id(27115420054346898)
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
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(27115836015346898)
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
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(27115536832346898)
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
 p_id=>wwv_flow_api.id(27115614040346898)
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
 p_id=>wwv_flow_api.id(27115718330346898)
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
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(27115931255346898)
,p_theme_id=>122
,p_theme_name=>'SafeGuardProperties'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(27107823473346894)
,p_error_template=>wwv_flow_api.id(27106812277346893)
,p_printer_friendly_template=>wwv_flow_api.id(27107432025346894)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(27106420925346893)
,p_default_button_template=>wwv_flow_api.id(27114613016346897)
,p_default_region_template=>wwv_flow_api.id(27109836267346895)
,p_default_chart_template=>wwv_flow_api.id(27108810674346895)
,p_default_form_template=>wwv_flow_api.id(27108929626346895)
,p_default_reportr_template=>wwv_flow_api.id(27109836267346895)
,p_default_tabform_template=>wwv_flow_api.id(27109836267346895)
,p_default_wizard_template=>wwv_flow_api.id(27110721152346896)
,p_default_menur_template=>wwv_flow_api.id(27108307079346894)
,p_default_listr_template=>wwv_flow_api.id(27108725097346895)
,p_default_irr_template=>wwv_flow_api.id(27109423927346895)
,p_default_report_template=>wwv_flow_api.id(27111428957346896)
,p_default_label_template=>wwv_flow_api.id(27114224201346897)
,p_default_menu_template=>wwv_flow_api.id(27115320218346898)
,p_default_calendar_template=>wwv_flow_api.id(27115536832346898)
,p_default_list_template=>wwv_flow_api.id(27113429123346897)
,p_default_option_label=>wwv_flow_api.id(27114224201346897)
,p_default_required_label=>wwv_flow_api.id(27114433303346897)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(122),'')
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
 p_id=>wwv_flow_api.id(27118924740346911)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(27434019089958114)
,p_shortcut_name=>'OK_TO_GET_NEXT_PREV_PK_VALUE'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Are you sure you want to leave this page without saving?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(27116222022346900)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(35755816611887804)
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
 p_id=>wwv_flow_api.id(27116035100346899)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>false
,p_theme_id=>122
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
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
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
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20140506111402'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34724314660963051)
,p_plug_name=>'GLOBAL ID'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34724637485967316)
,p_name=>'P0_USER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(34724314660963051)
,p_prompt=>'User Name'
,p_source=>'P150_USERNAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34724829493986137)
,p_name=>'P0_LOGIN_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(34724314660963051)
,p_prompt=>'Login Id'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN_ID',
'FROM DMD_LTR_EMP_SECURITY',
'WHERE LOGIN = UPPER(:P150_USERNAME)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
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
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'Demand Letter'
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Main Menu'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27107134952346894)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20141124120358'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31582829164403698)
,p_plug_name=>'Main Menu'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109836267346895)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_list_id=>wwv_flow_api.id(27117707325346903)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(27113429123346897)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM DMD_LTR_EMP_SECURITY',
'WHERE LOGIN = :P175_USERNAME'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36138109137651168)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM DMD_LTR_EMP_SECURITY',
'WHERE LOGIN = :P175_USERNAME'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31581614268346305)
,p_branch_name=>'Application Menu'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36139213627670611)
,p_name=>'P1_ACCESS_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(36138109137651168)
,p_prompt=>'You are not an authorized user.  Please contact the application administrator for access.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'You are not an authorized user. Please contact the application administrator for access.	',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'Demand Letter'
,p_name=>'Demand Letter Search and Add'
,p_page_mode=>'NORMAL'
,p_step_title=>'Search / Input'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27107134952346894)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20150224143600'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39858723283126554)
,p_plug_name=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Search or Add Record'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39858918828153654)
,p_plug_name=>'Add Record'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39859126100155748)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108127519346894)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31398020284730198)
,p_plug_name=>'Loan Search Results 2'
,p_parent_plug_id=>wwv_flow_api.id(39859126100155748)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109423927346895)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DMD_LTR_DATA.LOAN_NUM as LOAN_NUM,',
'    DMD_LTR_DATA.DEMAND_LTR_NUM as DEMAND_LTR_NUM,',
'    DMD_LTR_DATA.WORK_ORDER as WORK_ORDER,',
'    DMD_LTR_DATA.CLIENT as CLIENT,',
'    DMD_LTR_DATA.FHA_CASE as FHA_CASE,',
'    DMD_LTR_DATA.STATUS as STATUS,',
'    DMD_LTR_DATA.DISPUTE_REASON as DISPUTE_REASON,',
'    DMD_LTR_DATA.CONVEY_DATE AS CONVEY_DATE,',
'    DMD_LTR_DATA.RESPONSE_DUE_DATE AS RESPONSE_DUE_DATE,',
'    DMD_LTR_DATA.ANALYST AS ANALYST,',
'    DMD_LTR_DATA.DISPUTE_AMOUNT AS DISPUTE_AMOUNT',
' from DMD_LTR_DATA DMD_LTR_DATA',
' WHERE LOAN_NUM = :P2_LOAN',
'    OR FHA_CASE = :P2_FHA_CASE',
' ORDER BY 1,2,3;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_LOAN,P2_FHA_CASE'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31398135071730198)
,p_name=>'Loan Search Results 2'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_LOAN_NUM,P8_DEMAND_LTR_NUM:#LOAN_NUM#,#DEMAND_LTR_NUM#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'TBRYANT'
,p_internal_uid=>10883030259247114
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31398314452730230)
,p_db_column_name=>'LOAN_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Loan Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31398435275730240)
,p_db_column_name=>'DEMAND_LTR_NUM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Demand Ltr Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DEMAND_LTR_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31398534446730240)
,p_db_column_name=>'WORK_ORDER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31398621763730240)
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
 p_id=>wwv_flow_api.id(31398706171730240)
,p_db_column_name=>'FHA_CASE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'FHA Case'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FHA_CASE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31398831672730240)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31623028644996636)
,p_db_column_name=>'DISPUTE_REASON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dispute Reason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_REASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32193811226275251)
,p_db_column_name=>'CONVEY_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Convey Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CONVEY_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32193925548275256)
,p_db_column_name=>'RESPONSE_DUE_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response Due Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'RESPONSE_DUE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32194607763292017)
,p_db_column_name=>'DISPUTE_AMOUNT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Dispute Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32530312102062682)
,p_db_column_name=>'ANALYST'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Analyst'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ANALYST'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31398923747731276)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'108839'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LOAN_NUM:DEMAND_LTR_NUM:WORK_ORDER:CLIENT:FHA_CASE:STATUS:DISPUTE_REASON:CONVEY_DATE:RESPONSE_DUE_DATE:DISPUTE_AMOUNT:ANALYST'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39862730134223164)
,p_plug_name=>'Dispute Reasons'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39860010217179635)
,p_button_sequence=>240
,p_button_plug_id=>wwv_flow_api.id(39858723283126554)
,p_button_name=>'P2_SEARCH'
,p_button_static_id=>'P2_SEARCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Search'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39865119642437708)
,p_button_sequence=>250
,p_button_plug_id=>wwv_flow_api.id(39858723283126554)
,p_button_name=>'P2_CLEAR'
,p_button_static_id=>'P2_CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Clear'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39875619378768804)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_api.id(39858723283126554)
,p_button_name=>'P2_MAIN_MENU'
,p_button_static_id=>'P2_MAIN_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Main Menu'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39866905144461974)
,p_button_sequence=>330
,p_button_plug_id=>wwv_flow_api.id(39858918828153654)
,p_button_name=>'P2_ADD_RECORD'
,p_button_static_id=>'P2_ADD_RECORD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Add Record'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN ',
'FROM DMD_LTR_EMP_SECURITY',
'WHERE LOGIN = :P175_USERNAME',
'  AND SECURITY_LEVEL = 1 '))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27336608781253365)
,p_name=>'P2_LOAN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39858723283126554)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Loan'
,p_source=>'LOAN_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27336823898253365)
,p_name=>'P2_CLIENT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(39858918828153654)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Client'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CLIENTS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select CLIENT_NAME as display_value, CLIENT_NAME as return_value ',
'  from DMD_LTR_CLIENTS',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27337007874253366)
,p_name=>'P2_FHA_CASE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(39858918828153654)
,p_use_cache_before_default=>'NO'
,p_prompt=>'FHA Case'
,p_source=>'FHA_CASE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27337230556253366)
,p_name=>'P2_DISPUTE_REASON_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39862730134223164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Reason 1'
,p_source=>'DISPUTE_REASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISPUTE_REASON'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPUTE_REASON as display_value, DISPUTE_REASON as return_value ',
'  from DMD_LTR_DISPUTE_REASON',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27337410288253366)
,p_name=>'P2_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39858918828153654)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27337613668253366)
,p_name=>'P2_DEMAND_LTR_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39858918828153654)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Demand Ltr Num'
,p_source=>'DEMAND_LTR_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27502517072935670)
,p_name=>'P2_WORK_ORDER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39858918828153654)
,p_prompt=>'Work Order'
,p_source=>'WORK_ORDER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31677325364845432)
,p_name=>'P2_RECEIPT_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(39858918828153654)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Receipt Date'
,p_source=>'RECEIPT_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686335167251092)
,p_name=>'P2_DISPUTE_REASON_2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(39862730134223164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Reason 2'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISPUTE_REASON'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPUTE_REASON as display_value, DISPUTE_REASON as return_value ',
'  from DMD_LTR_DISPUTE_REASON',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686626325255200)
,p_name=>'P2_DISPUTE_REASON_3'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(39862730134223164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Reason 3'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISPUTE_REASON'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPUTE_REASON as display_value, DISPUTE_REASON as return_value ',
'  from DMD_LTR_DISPUTE_REASON',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31686822659256898)
,p_name=>'P2_DISPUTE_REASON_4'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(39862730134223164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Reason 4'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISPUTE_REASON'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPUTE_REASON as display_value, DISPUTE_REASON as return_value ',
'  from DMD_LTR_DISPUTE_REASON',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31687020071258086)
,p_name=>'P2_DISPUTE_REASON_5'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(39862730134223164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Reason 5'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISPUTE_REASON'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPUTE_REASON as display_value, DISPUTE_REASON as return_value ',
'  from DMD_LTR_DISPUTE_REASON',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31687216836259526)
,p_name=>'P2_DISPUTE_REASON_6'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(39862730134223164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Reason 6'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISPUTE_REASON'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPUTE_REASON as display_value, DISPUTE_REASON as return_value ',
'  from DMD_LTR_DISPUTE_REASON',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31687412739261461)
,p_name=>'P2_DISPUTE_REASON_7'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(39862730134223164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Reason 7'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISPUTE_REASON'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPUTE_REASON as display_value, DISPUTE_REASON as return_value ',
'  from DMD_LTR_DISPUTE_REASON',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31687610367262598)
,p_name=>'P2_DISPUTE_REASON_8'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(39862730134223164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Reason 8'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISPUTE_REASON'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPUTE_REASON as display_value, DISPUTE_REASON as return_value ',
'  from DMD_LTR_DISPUTE_REASON',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31687807994263676)
,p_name=>'P2_DISPUTE_REASON_9'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(39862730134223164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Reason 9'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISPUTE_REASON'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPUTE_REASON as display_value, DISPUTE_REASON as return_value ',
'  from DMD_LTR_DISPUTE_REASON',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31688037527265186)
,p_name=>'P2_DISPUTE_REASON_10'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(39862730134223164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Reason 10'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DISPUTE_REASON'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPUTE_REASON as display_value, DISPUTE_REASON as return_value ',
'  from DMD_LTR_DISPUTE_REASON',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32193410641199586)
,p_name=>'P2_ISSUE_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(39858918828153654)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issue Date'
,p_source=>'ISSUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32194137309278293)
,p_name=>'P2_CONVEY_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(39858918828153654)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Convey Date'
,p_source=>'CONVEY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32194415096288662)
,p_name=>'P2_DISPUTE_AMOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(39858918828153654)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Amount'
,p_source=>'DISPUTE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32576532737668312)
,p_name=>'P2_DISPUTE_COMMENTS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(39862730134223164)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Comments'
,p_source=>'DISPUTE_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40380311505825940)
,p_name=>'P2_MCB_CONTACT_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(39858918828153654)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MCB Contact Name'
,p_source=>'MCB_CONTACT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31683123827154671)
,p_name=>'NEXT_DISPUTE_REASON'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31683407453154673)
,p_event_id=>wwv_flow_api.id(31683123827154671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_2'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31683605680154677)
,p_event_id=>wwv_flow_api.id(31683123827154671)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_2'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31688505838300811)
,p_name=>'NEXT_DISPUTE_REASON'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_2'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31688829160300812)
,p_event_id=>wwv_flow_api.id(31688505838300811)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_3'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31693912449352713)
,p_event_id=>wwv_flow_api.id(31688505838300811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_3'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31688936313309655)
,p_name=>'NEXT_DISPUTE_REASON'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_3'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31689210654309662)
,p_event_id=>wwv_flow_api.id(31688936313309655)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_4'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31694228180360608)
,p_event_id=>wwv_flow_api.id(31688936313309655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_4'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31690615104322425)
,p_name=>'NEXT_DISPUTE_REASON'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_4'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31690922461322425)
,p_event_id=>wwv_flow_api.id(31690615104322425)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_5'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31694523867362656)
,p_event_id=>wwv_flow_api.id(31690615104322425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_5'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31691025839325551)
,p_name=>'NEXT_DISPUTE_REASON'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_5'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
end;
/
begin
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31691310728325552)
,p_event_id=>wwv_flow_api.id(31691025839325551)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_6'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31695232481373826)
,p_event_id=>wwv_flow_api.id(31691025839325551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_6'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31691433458327741)
,p_name=>'NEXT_DISPUTE_REASON'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_6'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31691722486327741)
,p_event_id=>wwv_flow_api.id(31691433458327741)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_7'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31695620835379209)
,p_event_id=>wwv_flow_api.id(31691433458327741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_7'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31691807270329678)
,p_name=>'NEXT_DISPUTE_REASON'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_7'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31692131150329679)
,p_event_id=>wwv_flow_api.id(31691807270329678)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_8'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31696111346383625)
,p_event_id=>wwv_flow_api.id(31691807270329678)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_8'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31692214196331626)
,p_name=>'NEXT_DISPUTE_REASON'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_8'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31692529923331626)
,p_event_id=>wwv_flow_api.id(31692214196331626)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_9'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31696637428386720)
,p_event_id=>wwv_flow_api.id(31692214196331626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_9'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31692621122333608)
,p_name=>'NEXT_DISPUTE_REASON'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_9'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31692928696333608)
,p_event_id=>wwv_flow_api.id(31692621122333608)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_10'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31697131606389455)
,p_event_id=>wwv_flow_api.id(31692621122333608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_10'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32592028575074529)
,p_name=>'SHOW_DISPUTE_COMMENTS_REASON_1'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32592326585074531)
,p_event_id=>wwv_flow_api.id(32592028575074529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32593605598280682)
,p_event_id=>wwv_flow_api.id(32592028575074529)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_2'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32594115144326117)
,p_name=>'HIDE_DISPUTE_COMMENTS_REASON_1'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_1'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32594624210326141)
,p_event_id=>wwv_flow_api.id(32594115144326117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32594409836326140)
,p_event_id=>wwv_flow_api.id(32594115144326117)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_2'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32595513374372949)
,p_name=>'SHOW_DISPUTE_COMMENTS_REASON_2'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_2'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32596029856372950)
,p_event_id=>wwv_flow_api.id(32595513374372949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32595833549372950)
,p_event_id=>wwv_flow_api.id(32595513374372949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_3'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32596118915374482)
,p_name=>'HIDE_DISPUTE_COMMENTS_REASON_2'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_2'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32596622767374483)
,p_event_id=>wwv_flow_api.id(32596118915374482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32596406353374483)
,p_event_id=>wwv_flow_api.id(32596118915374482)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_2'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32596808704409430)
,p_name=>'SHOW_DISPUTE_COMMENTS_REASON_3'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_3'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32597311503409435)
,p_event_id=>wwv_flow_api.id(32596808704409430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32597127538409435)
,p_event_id=>wwv_flow_api.id(32596808704409430)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_4'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32597413899410918)
,p_name=>'HIDE_DISPUTE_COMMENTS_REASON_3'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_3'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32597908953410918)
,p_event_id=>wwv_flow_api.id(32597413899410918)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32597710234410918)
,p_event_id=>wwv_flow_api.id(32597413899410918)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_3'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32598528144443457)
,p_name=>'SHOW_DISPUTE_COMMENTS_REASON_4'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_4'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32599008323443458)
,p_event_id=>wwv_flow_api.id(32598528144443457)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32598806677443458)
,p_event_id=>wwv_flow_api.id(32598528144443457)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_5'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32599132646444745)
,p_name=>'HIDE_DISPUTE_COMMENTS_REASON_4'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_4'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32599614851444746)
,p_event_id=>wwv_flow_api.id(32599132646444745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32599409156444746)
,p_event_id=>wwv_flow_api.id(32599132646444745)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_4'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32599922734451342)
,p_name=>'SHOW_DISPUTE_COMMENTS_REASON_5'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_5'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32600410186451343)
,p_event_id=>wwv_flow_api.id(32599922734451342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32600211660451343)
,p_event_id=>wwv_flow_api.id(32599922734451342)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_6'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32600527929452790)
,p_name=>'HIDE_DISPUTE_COMMENTS_REASON_5'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_5'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32601007636452790)
,p_event_id=>wwv_flow_api.id(32600527929452790)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32600827124452790)
,p_event_id=>wwv_flow_api.id(32600527929452790)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_5'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32601307974456507)
,p_name=>'SHOW_DISPUTE_COMMENTS_REASON_6'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_6'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32601836299456508)
,p_event_id=>wwv_flow_api.id(32601307974456507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32601621577456507)
,p_event_id=>wwv_flow_api.id(32601307974456507)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_7'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32601912130457704)
,p_name=>'HIDE_DISPUTE_COMMENTS_REASON_6'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_6'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32602414599457704)
,p_event_id=>wwv_flow_api.id(32601912130457704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32602233947457704)
,p_event_id=>wwv_flow_api.id(32601912130457704)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_6'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32602716763468545)
,p_name=>'SHOW_DISPUTE_COMMENTS_REASON_7'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_7'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32603215902468546)
,p_event_id=>wwv_flow_api.id(32602716763468545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32603014214468545)
,p_event_id=>wwv_flow_api.id(32602716763468545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_8'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32603321957470035)
,p_name=>'HIDE_DISPUTE_COMMENTS_REASON_7'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_7'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32603813352470036)
,p_event_id=>wwv_flow_api.id(32603321957470035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32603629677470036)
,p_event_id=>wwv_flow_api.id(32603321957470035)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_7'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32605010144513952)
,p_name=>'SHOW_DISPUTE_COMMENTS_REASON_8'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_8'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32605519557513953)
,p_event_id=>wwv_flow_api.id(32605010144513952)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32605312571513953)
,p_event_id=>wwv_flow_api.id(32605010144513952)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_9'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32605614993515327)
,p_name=>'HIDE_DISPUTE_COMMENTS_REASON_8'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_8'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32606121546515328)
,p_event_id=>wwv_flow_api.id(32605614993515327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32605905158515328)
,p_event_id=>wwv_flow_api.id(32605614993515327)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_8'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32606410622523500)
,p_name=>'SHOW_DISPUTE_COMMENTS_REASON_9'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_9'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32606909792523501)
,p_event_id=>wwv_flow_api.id(32606410622523500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32606713234523501)
,p_event_id=>wwv_flow_api.id(32606410622523500)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_10'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32607014777524677)
,p_name=>'HIDE_DISPUTE_COMMENTS_REASON_9'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_9'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32607520860524681)
,p_event_id=>wwv_flow_api.id(32607014777524677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32607325605524678)
,p_event_id=>wwv_flow_api.id(32607014777524677)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_9'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32607932785529859)
,p_name=>'SHOW_DISPUTE_COMMENTS_REASON_10'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_10'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32608414205529861)
,p_event_id=>wwv_flow_api.id(32607932785529859)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32608506597531841)
,p_name=>'HIDE_DISPUTE_COMMENTS_REASON_10'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DISPUTE_REASON_10'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'Other (Indicate in Internal Comments)'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32609026267531842)
,p_event_id=>wwv_flow_api.id(32608506597531841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39860206192187862)
,p_name=>'Show Report'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39860010217179635)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31413318046254611)
,p_event_id=>wwv_flow_api.id(39860206192187862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31398020284730198)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31400718656768263)
,p_event_id=>wwv_flow_api.id(39860206192187862)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31398020284730198)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39865334879442147)
,p_name=>'Clear Form'
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39865119642437708)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27370409487468618)
,p_event_id=>wwv_flow_api.id(39865334879442147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_LOAN,P2_CLIENT,P2_FHA_CASE,P2_STATUS,P2_DEMAND_LTR_NUM,P2_WORK_ORDER,P2_RECEIPT_DATE,P2_ISSUE_DATE,P2_CONVEY_DATE,P2_DISPUTE_AMOUNT,P2_DISPUTE_REASON_1,P2_DISPUTE_REASON_2,P2_DISPUTE_REASON_3,P2_DISPUTE_REASON_4,P2_DISPUTE_REASON_5,P2_DISPUTE_REAS'
||'ON_6,P2_DISPUTE_REASON_7,P2_DISPUTE_REASON_8,P2_DISPUTE_REASON_9,P2_DISPUTE_REASON_10,P2_DISPUTE_COMMENTS,P2_MCB_CONTACT_NAME'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31400508329742598)
,p_event_id=>wwv_flow_api.id(39865334879442147)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31398020284730198)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32593420694273685)
,p_event_id=>wwv_flow_api.id(39865334879442147)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_COMMENTS'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32595222142348949)
,p_event_id=>wwv_flow_api.id(39865334879442147)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_2,P2_DISPUTE_REASON_3,P2_DISPUTE_REASON_4,P2_DISPUTE_REASON_5,P2_DISPUTE_REASON_6,P2_DISPUTE_REASON_7,P2_DISPUTE_REASON_8,P2_DISPUTE_REASON_9,P2_DISPUTE_REASON_10'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39867121766466751)
,p_name=>'Add Record'
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39866905144461974)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27410635201199523)
,p_event_id=>wwv_flow_api.id(39867121766466751)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to add this record?'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27402715739997075)
,p_event_id=>wwv_flow_api.id(39867121766466751)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO DMD_LTR_DATA ',
'(LOAN_NUM, CLIENT, FHA_CASE, STATUS, DEMAND_LTR_NUM,RECEIPT_DATE, DISPUTE_REASON, ISSUE_DATE, CONVEY_DATE, DISPUTE_AMOUNT, RESPONSE_DUE_DATE, WORKING, DATA_DATE, DISPUTE_COMMENTS,MCB_CONTACT_NAME)',
'',
'VALUES',
'(:P2_LOAN, :P2_CLIENT, :P2_FHA_CASE, ''Open'', (SELECT COUNT(*) + 1 FROM DMD_LTR_DATA',
'where LOAN_NUM = :P2_LOAN),:P2_RECEIPT_DATE, TRIM(:P2_DISPUTE_REASON_1 ||CASE WHEN :P2_DISPUTE_REASON_2 IS NULL THEN '''' ELSE  '', '' END || ',
'',
':P2_DISPUTE_REASON_2 ||CASE WHEN :P2_DISPUTE_REASON_3 IS NULL THEN '''' ELSE  '', '' END || ',
':P2_DISPUTE_REASON_3 ||CASE WHEN :P2_DISPUTE_REASON_4 IS NULL THEN '''' ELSE  '', '' END || ',
':P2_DISPUTE_REASON_4 ||CASE WHEN :P2_DISPUTE_REASON_5 IS NULL THEN '''' ELSE  '', '' END || ',
':P2_DISPUTE_REASON_5 ||CASE WHEN :P2_DISPUTE_REASON_6 IS NULL THEN '''' ELSE  '', '' END || ',
':P2_DISPUTE_REASON_6 ||CASE WHEN :P2_DISPUTE_REASON_7 IS NULL THEN '''' ELSE  '', '' END || ',
':P2_DISPUTE_REASON_7 ||CASE WHEN :P2_DISPUTE_REASON_8 IS NULL THEN '''' ELSE  '', '' END || ',
':P2_DISPUTE_REASON_8 ||CASE WHEN :P2_DISPUTE_REASON_9 IS NULL THEN '''' ELSE  '', '' END || ',
':P2_DISPUTE_REASON_9 ||CASE WHEN :P2_DISPUTE_REASON_10 IS NULL THEN '''' ELSE  '', '' END || ',
':P2_DISPUTE_REASON_10), ',
'',
':P2_ISSUE_DATE, :P2_CONVEY_DATE, :P2_DISPUTE_AMOUNT, TO_DATE(:P2_ISSUE_DATE, ''MM/DD/YYYY'')+10, ''0'', SYSDATE, :P2_DISPUTE_COMMENTS, :P2_MCB_CONTACT_NAME);'))
,p_attribute_02=>'P2_LOAN,P2_CLIENT,P2_FHA_CASE,P2_STATUS,P2_DEMAND_LTR_NUM,P2_WORK_ORDER,P2_RECEIPT_DATE,P2_DISPUTE_REASON_1,P2_DISPUTE_REASON_2,P2_DISPUTE_REASON_3,P2_DISPUTE_REASON_4,P2_DISPUTE_REASON_5,P2_DISPUTE_REASON_6,P2_DISPUTE_REASON_7,P2_DISPUTE_REASON_8,P2'
||'_DISPUTE_REASON_9,P2_DISPUTE_REASON_10,P2_CONVEY_DATE,P2_ISSUE_DATE,P2_DISPUTE_AMOUNT,P2_DISPUTE_COMMENTS,P2_MCB_CONTACT_NAME'
,p_attribute_03=>'P2_DEMAND_LTR_NUM'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31679226319996889)
,p_event_id=>wwv_flow_api.id(39867121766466751)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31398020284730198)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31678613860941893)
,p_event_id=>wwv_flow_api.id(39867121766466751)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31398020284730198)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27503205630956100)
,p_event_id=>wwv_flow_api.id(39867121766466751)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_LOAN,P2_CLIENT,P2_FHA_CASE,P2_STATUS,P2_DEMAND_LTR_NUM,P2_WORK_ORDER,P2_RECEIPT_DATE,P2_DISPUTE_REASON_1,P2_DISPUTE_REASON_2,P2_DISPUTE_REASON_3,P2_DISPUTE_REASON_4,P2_DISPUTE_REASON_5,P2_DISPUTE_REASON_6,P2_DISPUTE_REASON_7,P2_DISPUTE_REASON_8,P2'
||'_DISPUTE_REASON_9,P2_DISPUTE_REASON_10,P2_ISSUE_DATE,P2_CONVEY_DATE,P2_DISPUTE_AMOUNT,P2_MCB_CONTACT_NAME'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32706319361560559)
,p_event_id=>wwv_flow_api.id(39867121766466751)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_DISPUTE_REASON_2,P2_DISPUTE_REASON_3,P2_DISPUTE_REASON_4,P2_DISPUTE_REASON_5,P2_DISPUTE_REASON_6,P2_DISPUTE_REASON_7,P2_DISPUTE_REASON_8,P2_DISPUTE_REASON_9,P2_DISPUTE_REASON_10'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32830522470302639)
,p_event_id=>wwv_flow_api.id(39867121766466751)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'The demand letter has been added.'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27338525230253367)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of DMD_LTR_DATA'
,p_attribute_02=>'DMD_LTR_DATA'
,p_attribute_03=>'P2_LOAN'
,p_attribute_04=>'LOAN_NUM'
,p_attribute_05=>'P2_DEMAND_LTR_NUM'
,p_attribute_06=>'DEMAND_LTR_NUM'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'Demand Letter'
,p_name=>'Queue Menu'
,p_page_mode=>'NORMAL'
,p_step_title=>'Queue Menu'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27107134952346894)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20141117142702'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31970530929399007)
,p_plug_name=>'Queue Menu'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109836267346895)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_list_id=>wwv_flow_api.id(31674713776675928)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(27113429123346897)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32643236322253478)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34718723797275122)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE WORKING'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'UPDATE DMD_LTR_DATA',
'SET WORKING = NULL',
'WHERE ANALYST IS NULL ',
'      AND WORKING IS NOT NULL;'))
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'T_DEMANDLETTER'
,p_name=>'Demand Letter Assigned Queue'
,p_page_mode=>'NORMAL'
,p_step_title=>'Assigned Queue'
,p_step_sub_title=>'Assigned Queue'
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
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20141125152155'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31662808904763586)
,p_plug_name=>'Demand Letter Assigned Queue Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109423927346895)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DMD_LTR_DATA.LOAN_NUM as LOAN_NUM,',
'    DMD_LTR_DATA.WORK_ORDER as WORK_ORDER,',
'    DMD_LTR_DATA.DEMAND_LTR_NUM as DEMAND_LTR_NUM,',
'    DMD_LTR_DATA.ANALYST as ANALYST,',
'    DMD_LTR_DATA.CLIENT as CLIENT,',
'    DMD_LTR_DATA.FHA_CASE as FHA_CASE,',
'    DMD_LTR_DATA.STATUS as STATUS,',
'    DMD_LTR_DATA.DISPUTE_REASON as DISPUTE_REASON,',
'    DMD_LTR_DATA.CONVEY_DATE AS CONVEY_DATE,',
'    DMD_LTR_DATA.RESPONSE_DUE_DATE AS RESPONSE_DUE_DATE,',
'    DMD_LTR_DATA.DISPUTE_AMOUNT AS DISPUTE_AMOUNT',
' from DMD_LTR_DATA DMD_LTR_DATA ',
' where DMD_LTR_DATA.ANALYST = :P175_USERNAME'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31662914677763586)
,p_name=>'Assigned Queue'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'There are no items in your assigned queue at this time.'
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
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_LOAN_NUM,P8_DEMAND_LTR_NUM:#LOAN_NUM#,#DEMAND_LTR_NUM#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'TBRYANT'
,p_internal_uid=>11147809865280502
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31663114368763594)
,p_db_column_name=>'LOAN_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Loan Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31663227274763595)
,p_db_column_name=>'WORK_ORDER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31663320480763596)
,p_db_column_name=>'ANALYST'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Analyst'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ANALYST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31663429897763596)
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
 p_id=>wwv_flow_api.id(31663521216763596)
,p_db_column_name=>'FHA_CASE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fha Case'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FHA_CASE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31663622837763596)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31666927321906838)
,p_db_column_name=>'DEMAND_LTR_NUM'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Demand Ltr Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DEMAND_LTR_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32195921479392031)
,p_db_column_name=>'DISPUTE_REASON'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dispute Reason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_REASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32196019319392031)
,p_db_column_name=>'CONVEY_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Convey Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CONVEY_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32196112655392031)
,p_db_column_name=>'RESPONSE_DUE_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Response Due Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'RESPONSE_DUE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32196236111392031)
,p_db_column_name=>'DISPUTE_AMOUNT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Dispute Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_AMOUNT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31663735229763754)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111487'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LOAN_NUM:WORK_ORDER:ANALYST:CLIENT:FHA_CASE:STATUS:DEMAND_LTR_NUM:DISPUTE_REASON:CONVEY_DATE:RESPONSE_DUE_DATE:DISPUTE_AMOUNT'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31846318323682966)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_api.id(40023119484821575)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31846318323682966)
,p_button_name=>'P4_QUEUE_MENU'
,p_button_static_id=>'P4_QUEUE_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Queue Menu'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40118514494419368)
,p_name=>'P4_LABEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31846318323682966)
,p_prompt=>'Assigned Queue:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'T_DEMANDLETTER'
,p_name=>'Demand Letter Open Queue'
,p_page_mode=>'NORMAL'
,p_step_title=>'Open Queue'
,p_step_sub_title=>'Report 1'
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
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20141125152215'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31547510695279290)
,p_plug_name=>'Demand Letter Open Queue Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109423927346895)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DMD_LTR_DATA.LOAN_NUM as LOAN_NUM,',
'    DMD_LTR_DATA.WORK_ORDER as WORK_ORDER,',
'    DMD_LTR_DATA.DEMAND_LTR_NUM as DEMAND_LTR_NUM,',
'    DMD_LTR_DATA.ANALYST as ANALYST,',
'    DMD_LTR_DATA.CLIENT as CLIENT,',
'    DMD_LTR_DATA.FHA_CASE as FHA_CASE,',
'    DMD_LTR_DATA.STATUS as STATUS,',
'    DMD_LTR_DATA.DISPUTE_REASON as DISPUTE_REASON,',
'    DMD_LTR_DATA.CONVEY_DATE AS CONVEY_DATE,',
'    DMD_LTR_DATA.RESPONSE_DUE_DATE AS RESPONSE_DUE_DATE,',
'    DMD_LTR_DATA.DISPUTE_AMOUNT AS DISPUTE_AMOUNT',
' from DMD_LTR_DATA DMD_LTR_DATA ',
' where DMD_LTR_DATA.ANALYST IS NULL',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31547614367279290)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'There are no open items in the queue at this time.'
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
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_LOAN_NUM,P8_DEMAND_LTR_NUM,P8_WORK_ORDER:#LOAN_NUM#,#DEMAND_LTR_NUM#,#WORK_ORDER#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_detail_link_condition_type=>'ITEM_IS_NOT_ZERO'
,p_detail_link_cond=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'WORKING',
''))
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'TBRYANT'
,p_internal_uid=>11032509554796206
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31547813917279296)
,p_db_column_name=>'LOAN_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Loan Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31547933433279304)
,p_db_column_name=>'WORK_ORDER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31548037424279304)
,p_db_column_name=>'ANALYST'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Analyst'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ANALYST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31548111257279304)
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
 p_id=>wwv_flow_api.id(31548226232279305)
,p_db_column_name=>'FHA_CASE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fha Case'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FHA_CASE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31548416243279305)
,p_db_column_name=>'DISPUTE_REASON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dispute Reason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_REASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31548527527279305)
,p_db_column_name=>'DISPUTE_AMOUNT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dispute Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31549131686279306)
,p_db_column_name=>'STATUS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31549605578279306)
,p_db_column_name=>'DEMAND_LTR_NUM'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Demand Ltr Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DEMAND_LTR_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32196933950431854)
,p_db_column_name=>'CONVEY_DATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Convey Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CONVEY_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32197012989431855)
,p_db_column_name=>'RESPONSE_DUE_DATE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Response Due Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'RESPONSE_DUE_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31549823899279440)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'110348'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LOAN_NUM:WORK_ORDER:ANALYST:CLIENT:FHA_CASE:DISPUTE_REASON:DISPUTE_AMOUNT:STATUS:DEMAND_LTR_NUM:CONVEY_DATE:RESPONSE_DUE_DATE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31845610227671108)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_api.id(40023405070826834)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31845610227671108)
,p_button_name=>'P5_QUEUE_MENU'
,p_button_static_id=>'P5_QUEUE_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Queue Menu'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40119134322425439)
,p_name=>'P5_LABEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31845610227671108)
,p_prompt=>'Open Queue:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'T_DEMANDLETTER'
,p_name=>'Demand Letter Appeals'
,p_page_mode=>'NORMAL'
,p_step_title=>'Demand Letter Appeals'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20141113084940'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31542311133237301)
,p_plug_name=>'Appeal List 2'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109423927346895)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DMD_LTR_APPEALS.APPEALS as "Appeal Number",',
'    DMD_LTR_APPEALS.APPEAL_DATE as "Appeal Date",',
'    DMD_LTR_APPEALS.APPEAL_ENTERED_DATE as "Appeal Entered Date",',
'    DMD_LTR_APPEALS.APPEAL_COMMENTS as "Appeal Comments",',
'    DMD_LTR_APPEALS.LOAN_NUM as "Loan Number",',
'    DMD_LTR_APPEALS.DEMAND_LTR_NUM as "Demand Letter Number",',
'    DMD_LTR_APPEALS.WORK_ORDER as "Work Order",',
'    DMD_LTR_APPEALS.APPEAL_RECIPIENT as "Appeal Recipient",',
'    DMD_LTR_APPEALS.INTERNAL_RESPONSIBILITY as "Internal Responsibility",',
'    DMD_LTR_APPEALS.APPEAL_RESPONSE_DATE as "Appeal Response Date"',
' from DMD_LTR_APPEALS DMD_LTR_APPEALS ',
' where DMD_LTR_APPEALS.LOAN_NUM =:P6_LOAN_NUM',
'    and DMD_LTR_APPEALS.DEMAND_LTR_NUM =:P6_DEMAND_LTR_NUM',
'  ORDER BY 1,2,3;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31542432433237302)
,p_name=>'Appeal List 2'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_LOAN_NUM,P7_DEMAND_LTR_NUM,P7_APPEALS_1:#Loan Number#,#Demand Letter Number#,#Appeal Number#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'TBRYANT'
,p_internal_uid=>11027327620754218
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31542635771237307)
,p_db_column_name=>'Appeal Number'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Appeal Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'Appeal Number'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31542706858237314)
,p_db_column_name=>'Appeal Date'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Appeal Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'Appeal Date'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31543020945237314)
,p_db_column_name=>'Appeal Comments'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Appeal Comments'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_static_id=>'Appeal Comments'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31654916109848625)
,p_db_column_name=>'Loan Number'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Loan Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'Loan Number'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31655010705848633)
,p_db_column_name=>'Demand Letter Number'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Demand Letter Number'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'Demand Letter Number'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31655115501848633)
,p_db_column_name=>'Work Order'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'Work Order'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31699912922565178)
,p_db_column_name=>'Appeal Recipient'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Appeal Recipient'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'Appeal Recipient'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31703312280823754)
,p_db_column_name=>'Internal Responsibility'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Internal Responsibility'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'Internal Responsibility'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31703413228823755)
,p_db_column_name=>'Appeal Response Date'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Appeal Response Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'Appeal Response Date'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31983836600826432)
,p_db_column_name=>'Appeal Entered Date'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Appeal Entered Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'Appeal Entered Date'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31543213210237873)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'110282'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'Appeal Number:Appeal Date:Appeal Comments:Loan Number:Demand Letter Number:Work Order:Appeal Recipient:Internal Responsibility:Appeal Response Date:Appeal Entered Date'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31591107102879784)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108517051346895)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31526719819416708)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(31591107102879784)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31598212474919217)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(31591107102879784)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_template_id=>wwv_flow_api.id(27113331388346897)
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
 p_id=>wwv_flow_api.id(31701112847634041)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(31591107102879784)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
,p_plug_display_sequence=>40
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
 p_id=>wwv_flow_api.id(32735827345565360)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
,p_plug_display_sequence=>50
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
 p_id=>wwv_flow_api.id(31535522906890647)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31591107102879784)
,p_button_name=>'DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Demand Details'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31526909112416711)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(31591107102879784)
,p_button_name=>'ADD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33617122390740699)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(31591107102879784)
,p_button_name=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31527705062416721)
,p_name=>'P6_APPEALS_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31598212474919217)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Number'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) + 1 AS APPEALS ',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM =:P6_LOAN_NUM',
'    and DEMAND_LTR_NUM =:P6_DEMAND_LTR_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31527914764416722)
,p_name=>'P6_APPEAL_COMMENTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31701112847634041)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Comments'
,p_source=>'APPEAL_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31528313646416722)
,p_name=>'P6_APPEAL_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(31526719819416708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Date'
,p_source=>'APPEAL_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31591721991879791)
,p_name=>'P6_LOAN_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31598212474919217)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loan Num'
,p_source=>'P8_LOAN_NUM'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31591928665879792)
,p_name=>'P6_WORK_ORDER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31598212474919217)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Order'
,p_source=>'P8_WORK_ORDER'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31592116333879796)
,p_name=>'P6_DEMAND_LTR_NUM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31598212474919217)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Demand Ltr Num'
,p_source=>'P8_DEMAND_LTR_NUM'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31699306249553104)
,p_name=>'P6_APPEAL_RECIPIENT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(31526719819416708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Recipient'
,p_source=>'APPEAL_RECIPIENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APPEAL_RECIPIENT'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select APPEAL_RECIPIENT as display_value, APPEAL_RECIPIENT as return_value ',
'  from DMD_LTR_APPEAL_RECIPIENT',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31700807265628570)
,p_name=>'P6_INTERNAL_RESPONSIBILITY'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(31526719819416708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Internal Responsibility'
,p_source=>'INTERNAL_RESPONSIBILITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'INTERNAL_RESPONSIBILITY'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select INTERNAL_RESPONSIBILITY as display_value, INTERNAL_RESPONSIBILITY as return_value ',
'  from DMD_LTR_INTER_RESPONSIBILITY',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31702307241658959)
,p_name=>'P6_APPEAL_RESPONSE_DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(31526719819416708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Response Date'
,p_source=>'APPEAL_RESPONSE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31981720599621204)
,p_name=>'P6_APPEAL_ENTERED_DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(31526719819416708)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Entered Date'
,p_source=>'APPEAL_ENTERED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32636729810115932)
,p_name=>'P6_PAGE_TITLE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(31591107102879784)
,p_prompt=>'<b>Appeal Input:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32736037383565361)
,p_name=>'P6_LOCATION'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(32735827345565360)
,p_prompt=>'Demand Letter Detail -----------> <SPAN STYLE="color: #1589FF;">Appeal Detail</SPAN> -----------> Responsibility Detail'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31534024629815501)
,p_name=>'SUBMIT_APPEAL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(31526909112416711)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32826607572534728)
,p_event_id=>wwv_flow_api.id(31534024629815501)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to add this appeal?'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31534322661815504)
,p_event_id=>wwv_flow_api.id(31534024629815501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO DMD_LTR_APPEALS',
'(LOAN_NUM, DEMAND_LTR_NUM, WORK_ORDER, APPEALS, APPEAL_COMMENTS, APPEAL_DATE, APPEAL_ENTERED_DATE, APPEAL_RECIPIENT, INTERNAL_RESPONSIBILITY, APPEAL_RESPONSE_DATE)',
'',
'VALUES',
'(:P6_LOAN_NUM, :P6_DEMAND_LTR_NUM, :P6_WORK_ORDER, :P6_APPEALS_1, :P6_APPEAL_COMMENTS, :P6_APPEAL_DATE, SYSDATE, :P6_APPEAL_RECIPIENT, :P6_INTERNAL_RESPONSIBILITY, :P6_APPEAL_RESPONSE_DATE);'))
,p_attribute_02=>'P6_APPEALS_1,P6_APPEAL_COMMENTS,P6_APPEAL_DATE,P6_LOAN_NUM,P6_DEMAND_LTR_NUM,P6_WORK_ORDER,P6_APPEAL_RECIPIENT,P6_INTERNAL_RESPONSIBILITY,P6_APPEAL_RESPONSE_DATE'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32527335232965459)
,p_event_id=>wwv_flow_api.id(31534024629815501)
,p_event_result=>'TRUE'
,p_action_sequence=>15
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'UPDATE DMD_LTR_DATA',
'',
'SET WORK_ORDER = :P7_WORK_ORDER',
'',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM;'))
,p_attribute_02=>'P6_WORK_ORDER,P6_LOAN_NUM,P6_DEMAND_LTR_NUM'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31545516831335723)
,p_event_id=>wwv_flow_api.id(31534024629815501)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31542311133237301)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31710933194414915)
,p_event_id=>wwv_flow_api.id(31534024629815501)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_APPEAL_COMMENTS,P6_APPEALS_1,P6_APPEAL_DATE,P6_APPEAL_RECIPIENT,P6_INTERNAL_RESPONSIBILITY,P6_APPEAL_RESPONSE_DATE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31534632765826966)
,p_event_id=>wwv_flow_api.id(31534024629815501)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32826934301537546)
,p_event_id=>wwv_flow_api.id(31534024629815501)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'The appeal has been added.'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(33617317327748739)
,p_name=>'CLEAR'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(33617122390740699)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33617635287748742)
,p_event_id=>wwv_flow_api.id(33617317327748739)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_APPEAL_COMMENTS,P6_APPEAL_DATE,P6_APPEAL_RECIPIENT,P6_APPEAL_ENTERED_DATE,P6_APPEAL_RESPONSE_DATE,P6_INTERNAL_RESPONSIBILITY'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31595434481879813)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of DMD_LTR_APPEALS'
,p_attribute_02=>'DMD_LTR_APPEALS'
,p_attribute_03=>'P6_WORK_ORDER'
,p_attribute_04=>'WORK_ORDER'
,p_attribute_05=>'P6_APPEALS'
,p_attribute_06=>'APPEALS'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'Demand Letter'
,p_name=>'Appeal Details'
,p_page_mode=>'NORMAL'
,p_step_title=>'Appeal Details'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27107134952346894)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20141125144708'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39928935669792121)
,p_plug_name=>'Input Appeal'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108517051346895)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39937530961875876)
,p_plug_name=>'Hidden Values'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>60
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39933225458827033)
,p_button_sequence=>420
,p_button_plug_id=>wwv_flow_api.id(39928935669792121)
,p_button_name=>'P7_SAVE'
,p_button_static_id=>'P7_SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Save'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>true
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39938323127883067)
,p_button_sequence=>430
,p_button_plug_id=>wwv_flow_api.id(39928935669792121)
,p_button_name=>'P7_DEMAND_DETAIL'
,p_button_static_id=>'P7_DEMAND_DETAIL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Demand Detail'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31646832622708924)
,p_name=>'P7_WORK_ORDER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39937530961875876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Order'
,p_source=>'P7_WORK_ORDER'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31647237530708934)
,p_name=>'P7_LOAN_NUM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39937530961875876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loan Num'
,p_source=>'P6_LOAN_NUM'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31647418760708936)
,p_name=>'P7_DEMAND_LTR_NUM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39937530961875876)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Demand Ltr Num'
,p_source=>'P6_DEMAND_LTR_NUM'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39929120889792126)
,p_name=>'P7_APPEAL_ENTERED_DATE'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(39928935669792121)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Entered Date'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT APPEAL_ENTERED_DATE',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P7_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'    AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39929336514792128)
,p_name=>'P7_APPEALS'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(39928935669792121)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Number'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) + 1 AS APPEALS ',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P8_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39929526449792128)
,p_name=>'P7_APPEAL_RECIPIENT'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(39928935669792121)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Recipient'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT APPEAL_RECIPIENT',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P7_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'    AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APPEAL_RECIPIENT'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select APPEAL_RECIPIENT as display_value, APPEAL_RECIPIENT as return_value ',
'  from DMD_LTR_APPEAL_RECIPIENT',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39929718828792131)
,p_name=>'P7_APPEAL_RESPONSE_DATE'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(39928935669792121)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Response Date'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT APPEAL_RESPONSE_DATE',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P7_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'    AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39929937160792131)
,p_name=>'P7_APPEAL_COMMENTS'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(39928935669792121)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Comments'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT APPEAL_COMMENTS',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P7_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'    AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39930112560792131)
,p_name=>'P7_APPEAL_DATE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(39928935669792121)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Date'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT APPEAL_DATE',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P7_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'    AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39930316880792131)
,p_name=>'P7_INTERNAL_RESPONSIBILITY'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(39928935669792121)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Internal Responsibility'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT INTERNAL_RESPONSIBILITY',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P7_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'    AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40108036307105451)
,p_name=>'P7_LABEL'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(39937530961875876)
,p_prompt=>'Input Appeal'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39933522126835541)
,p_name=>'Save Appeal'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39933225458827033)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32826124721390079)
,p_event_id=>wwv_flow_api.id(39933522126835541)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to save this appeal?'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31985106334931606)
,p_event_id=>wwv_flow_api.id(39933522126835541)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO DMD_LTR_APPEALS_AUDIT',
'',
'(LOAN_NUM, DEMAND_LTR_NUM, WORK_ORDER, APPEALS, APPEAL_COMMENTS, APPEAL_DATE, APPEAL_RECIPIENT, APPEAL_RESPONSE_DATE, INTERNAL_RESPONSIBILITY, APPEAL_ENTERED_DATE, AUDIT_DT, AUDIT_USER)',
'',
'SELECT',
'LOAN_NUM, DEMAND_LTR_NUM, WORK_ORDER, APPEALS, APPEAL_COMMENTS, APPEAL_DATE, APPEAL_RECIPIENT, APPEAL_RESPONSE_DATE, INTERNAL_RESPONSIBILITY, APPEAL_ENTERED_DATE, SYSDATE, :P175_USERNAME',
'',
'FROM DMD_LTR_APPEALS',
'',
'WHERE LOAN_NUM = :P8_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM;',
'',
'',
''))
,p_attribute_02=>'P7_APPEALS,P7_APPEAL_COMMENTS,P7_APPEAL_DATE,P7_APPEAL_ENTERED_DATE,P7_APPEAL_RECIPIENT,P7_APPEAL_RESPONSE_DATE,P7_DEMAND_LTR_NUM,P7_INTERNAL_RESPONSIBILITY,P7_LOAN_NUM,P7_WORK_ORDER'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31982616353711673)
,p_event_id=>wwv_flow_api.id(39933522126835541)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO DMD_LTR_APPEALS',
'',
'(LOAN_NUM, DEMAND_LTR_NUM, WORK_ORDER, APPEALS, APPEAL_COMMENTS, APPEAL_DATE, APPEAL_RECIPIENT, APPEAL_RESPONSE_DATE, INTERNAL_RESPONSIBILITY, APPEAL_ENTERED_DATE, ANALYST, DATA_DT)',
'',
'VALUES(:P8_LOAN_NUM, :P8_DEMAND_LTR_NUM, :P7_WORK_ORDER, :P7_APPEALS, :P7_APPEAL_COMMENTS, :P7_APPEAL_DATE, :P7_APPEAL_RECIPIENT, :P7_APPEAL_RESPONSE_DATE, :P7_INTERNAL_RESPONSIBILITY, :P7_APPEAL_ENTERED_DATE, :P175_USERNAME, SYSDATE);',
''))
,p_attribute_02=>'P7_APPEALS,P7_APPEAL_COMMENTS,P7_APPEAL_DATE,P7_APPEAL_ENTERED_DATE,P7_APPEAL_RECIPIENT,P7_APPEAL_RESPONSE_DATE,P7_DEMAND_LTR_NUM,P7_INTERNAL_RESPONSIBILITY,P7_LOAN_NUM,P7_WORK_ORDER,P175_USERNAME'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31984723851862755)
,p_event_id=>wwv_flow_api.id(39933522126835541)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'The appeal has been saved.'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31650335272708942)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of DMD_LTR_APPEALS'
,p_attribute_02=>'DMD_LTR_APPEALS'
,p_attribute_03=>'P7_WORK_ORDER'
,p_attribute_04=>'WORK_ORDER'
,p_attribute_05=>'P7_APPEALS_1'
,p_attribute_06=>'APPEALS'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'Demand Letter'
,p_name=>'Master Detail'
,p_page_mode=>'NORMAL'
,p_step_title=>'Demand Letter Detail'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_step_template=>wwv_flow_api.id(27107134952346894)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20150224143312'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39879313669155047)
,p_plug_name=>'Appeals'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
,p_plug_display_sequence=>210
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39921736747045083)
,p_name=>'Appeals Report'
,p_parent_plug_id=>wwv_flow_api.id(39879313669155047)
,p_template=>wwv_flow_api.id(27107927064346894)
,p_display_sequence=>230
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid=>true
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DMD_LTR_APPEALS.APPEALS as APPEALS,',
'    DMD_LTR_APPEALS.WORK_ORDER as WORK_ORDER,',
'    DMD_LTR_APPEALS.APPEAL_ENTERED_DATE as APPEAL_ENTERED_DATE,',
'    DMD_LTR_APPEALS.APPEAL_DATE as APPEAL_DATE,',
'    DMD_LTR_APPEALS.APPEAL_RECIPIENT as APPEAL_RECIPIENT,',
'    DMD_LTR_APPEALS.APPEAL_RESPONSE_DATE as APPEAL_RESPONSE_DATE,',
'    DMD_LTR_APPEALS.INTERNAL_RESPONSIBILITY as INTERNAL_RESPONSIBILITY,',
'    DMD_LTR_APPEALS.APPEAL_COMMENTS as APPEAL_COMMENTS ',
' from DMD_LTR_APPEALS DMD_LTR_APPEALS',
' where LOAN_NUM = :P8_LOAN_NUM',
'   AND DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM',
' ORDER BY APPEALS ASC'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P8_LOAN_NUM,P8_DEMAND_LTR_NUM'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(27111428957346896)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No appeals'
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
 p_id=>wwv_flow_api.id(39922004817045110)
,p_query_column_id=>1
,p_column_alias=>'APPEALS'
,p_column_display_sequence=>1
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Appeal Number</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39925721838306740)
,p_query_column_id=>2
,p_column_alias=>'WORK_ORDER'
,p_column_display_sequence=>2
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Work Order</SPAN>'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39922126930045113)
,p_query_column_id=>3
,p_column_alias=>'APPEAL_ENTERED_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Entered Date</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39922212837045113)
,p_query_column_id=>4
,p_column_alias=>'APPEAL_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Date</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39922318054045113)
,p_query_column_id=>5
,p_column_alias=>'APPEAL_RECIPIENT'
,p_column_display_sequence=>5
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Recipient</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39922407816045113)
,p_query_column_id=>6
,p_column_alias=>'APPEAL_RESPONSE_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Response Date</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39922516487045114)
,p_query_column_id=>7
,p_column_alias=>'INTERNAL_RESPONSIBILITY'
,p_column_display_sequence=>7
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Internal Responsibility</SPAN>'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39922619777045114)
,p_query_column_id=>8
,p_column_alias=>'APPEAL_COMMENTS'
,p_column_display_sequence=>8
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Comments</SPAN>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39879519210156655)
,p_plug_name=>'Responsibilities'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
,p_plug_display_sequence=>220
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_new_grid_row=>false
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(39923022296097604)
,p_name=>'Responsibilities Report'
,p_parent_plug_id=>wwv_flow_api.id(39879519210156655)
,p_template=>wwv_flow_api.id(27107927064346894)
,p_display_sequence=>240
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DMD_LTR_RESPONSIBILITY.WORK_ORDER as WORK_ORDER,',
'    DMD_LTR_RESPONSIBILITY.RESPONSIBLE_PARTY as RESPONSIBLE_PARTY,',
'    DMD_LTR_RESPONSIBILITY.VENDOR_RESPONSIBLE as VENDOR_RESPONSIBLE,',
'    DMD_LTR_RESPONSIBILITY.WRITE_OFF_AMOUNT as WRITE_OFF_AMOUNT,',
'    DMD_LTR_RESPONSIBILITY.RESPONSIBLE_EMPLOYEE as RESPONSIBLE_EMPLOYEE,',
'    DMD_LTR_RESPONSIBILITY.DEPARTMENT_RESPONSIBLE as DEPARTMENT_RESPONSIBLE,',
'    DMD_LTR_RESPONSIBILITY.CHARGE_BCK_AMOUNT as CHARGE_BCK_AMOUNT,',
'    DMD_LTR_RESPONSIBILITY.CHARGE_BCK_REASON as CHARGE_BCK_REASON,',
'    DMD_LTR_RESPONSIBILITY.APPEALS as APPEALS,',
'    DMD_LTR_RESPONSIBILITY.INTERNAL_RESPONSIBILITY as INTERNAL_RESPONSIBILITY,',
'    DMD_LTR_RESPONSIBILITY.WRITE_OFF_REASON as WRITE_OFF_REASON,',
'    DMD_LTR_RESPONSIBILITY.ENTERED_DT as ENTERED_DT,',
'    DMD_LTR_RESPONSIBILITY.RESPONSIBLE_ID as RESPONSIBLE_ID ',
' from DMD_LTR_RESPONSIBILITY DMD_LTR_RESPONSIBILITY',
' where LOAN_NUM = :P8_LOAN_NUM',
'   AND DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM',
' ORDER BY RESPONSIBLE_ID ASC'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(27111428957346896)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No responsibilties'
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
 p_id=>wwv_flow_api.id(39923311865097606)
,p_query_column_id=>1
,p_column_alias=>'WORK_ORDER'
,p_column_display_sequence=>2
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Work Order</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39923413984097606)
,p_query_column_id=>2
,p_column_alias=>'RESPONSIBLE_PARTY'
,p_column_display_sequence=>3
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Responsible Party</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39923517362097606)
,p_query_column_id=>3
,p_column_alias=>'VENDOR_RESPONSIBLE'
,p_column_display_sequence=>7
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Vendor</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39923624425097606)
,p_query_column_id=>4
,p_column_alias=>'WRITE_OFF_AMOUNT'
,p_column_display_sequence=>4
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Write Off Amount</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39923725256097606)
,p_query_column_id=>5
,p_column_alias=>'RESPONSIBLE_EMPLOYEE'
,p_column_display_sequence=>6
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Employee</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39923829545097606)
,p_query_column_id=>6
,p_column_alias=>'DEPARTMENT_RESPONSIBLE'
,p_column_display_sequence=>8
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Department</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39923928570097606)
,p_query_column_id=>7
,p_column_alias=>'CHARGE_BCK_AMOUNT'
,p_column_display_sequence=>9
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Charge Back Amount</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39924013203097606)
,p_query_column_id=>8
,p_column_alias=>'CHARGE_BCK_REASON'
,p_column_display_sequence=>10
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Charge Back Reason</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39924126566097606)
,p_query_column_id=>9
,p_column_alias=>'APPEALS'
,p_column_display_sequence=>11
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Appeal Number</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39924214493097606)
,p_query_column_id=>10
,p_column_alias=>'INTERNAL_RESPONSIBILITY'
,p_column_display_sequence=>12
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Internal Responsibility</SPAN>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39924315979097606)
,p_query_column_id=>11
,p_column_alias=>'WRITE_OFF_REASON'
,p_column_display_sequence=>5
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Write Off Reason</SPAN>'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39924417352097606)
,p_query_column_id=>12
,p_column_alias=>'ENTERED_DT'
,p_column_display_sequence=>13
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Entered Date</SPAN>'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39924510956097606)
,p_query_column_id=>13
,p_column_alias=>'RESPONSIBLE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'<SPAN STYLE="color: #1589FF;">Responsible Number</SPAN>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39900309672390437)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39912033585548707)
,p_plug_name=>'Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108517051346895)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39879107436153257)
,p_plug_name=>'Details 1'
,p_parent_plug_id=>wwv_flow_api.id(39912033585548707)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
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
 p_id=>wwv_flow_api.id(39880612808192675)
,p_plug_name=>'Details 2'
,p_parent_plug_id=>wwv_flow_api.id(39912033585548707)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>190
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
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
 p_id=>wwv_flow_api.id(39917917411676459)
,p_plug_name=>'Detail Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39891506153285327)
,p_button_sequence=>290
,p_button_plug_id=>wwv_flow_api.id(39879107436153257)
,p_button_name=>'P8_SAVE'
,p_button_static_id=>'P8_SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Save'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>true
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39892629487301543)
,p_button_sequence=>300
,p_button_plug_id=>wwv_flow_api.id(39879107436153257)
,p_button_name=>'P8_ASSIGN'
,p_button_static_id=>'P8_ASSIGN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Assign'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOAN_NUM',
'FROM DMD_LTR_DATA',
'WHERE ANALYST IS NULL',
'  AND LOAN_NUM = :P8_LOAN_NUM',
'  AND DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39896822654356305)
,p_button_sequence=>310
,p_button_plug_id=>wwv_flow_api.id(39879107436153257)
,p_button_name=>'P8_UNASSIGN'
,p_button_static_id=>'P8_UNASSIGN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Unassign'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ANALYST',
'FROM DMD_LTR_DATA',
'WHERE ANALYST = UPPER(:P175_USERNAME)',
'  AND LOAN_NUM = :P8_LOAN_NUM',
'  AND DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39895318714345714)
,p_button_sequence=>330
,p_button_plug_id=>wwv_flow_api.id(39879107436153257)
,p_button_name=>'P8_DELETE'
,p_button_static_id=>'P8_DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Delete'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM DMD_LTR_EMP_SECURITY',
'WHERE LOGIN = :P175_USERNAME',
'  AND SECURITY_LEVEL = 1'))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39901319416421634)
,p_button_sequence=>350
,p_button_plug_id=>wwv_flow_api.id(39900309672390437)
,p_button_name=>'P8_SEARCH_MENU'
,p_button_static_id=>'P8_SEARCH_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Search Menu'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_grid_row_span=>6
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40121231804474499)
,p_button_sequence=>360
,p_button_plug_id=>wwv_flow_api.id(39900309672390437)
,p_button_name=>'P8_QUEUE_MENU'
,p_button_static_id=>'P8_QUEUE_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Queue Menu'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39900026857385858)
,p_button_sequence=>390
,p_button_plug_id=>wwv_flow_api.id(39900309672390437)
,p_button_name=>'P8_MAIN_MENU'
,p_button_static_id=>'P8_MAIN_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Main Menu'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39927112590369187)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39921736747045083)
,p_button_name=>'ADD_APPEAL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Add Appeal'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39928018439418182)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(39923022296097604)
,p_button_name=>'ADD_RESPONSIBILITY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Add Responsibility'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27426933844958098)
,p_name=>'P8_LOAN_NUM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loan Num'
,p_source=>'LOAN_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 15px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27427129422958101)
,p_name=>'P8_DEMAND_LTR_NUM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Demand Ltr Num'
,p_source=>'DEMAND_LTR_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27427332780958105)
,p_name=>'P8_ANALYST'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Analyst'
,p_source=>'ANALYST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27427509165958105)
,p_name=>'P8_CLIENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Client'
,p_source=>'CLIENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CLIENTS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select CLIENT_NAME as display_value, CLIENT_NAME as return_value ',
'  from DMD_LTR_CLIENTS',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27427709116958106)
,p_name=>'P8_FHA_CASE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'FHA Case'
,p_source=>'FHA_CASE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27427920190958106)
,p_name=>'P8_REQUESTOR_CONTACT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Requestor Contact'
,p_source=>'REQUESTOR_CONTACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27428110324958106)
,p_name=>'P8_DISPUTE_REASON'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(39880612808192675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Reasons'
,p_source=>'DISPUTE_REASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>32000
,p_cHeight=>4
,p_new_grid=>true
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27428324205958106)
,p_name=>'P8_DISPUTE_AMOUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39880612808192675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Amount'
,p_source=>'DISPUTE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_new_grid=>true
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27428510763958106)
,p_name=>'P8_DISPUTE_COMMENTS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(39880612808192675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Comments'
,p_source=>'DISPUTE_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>32000
,p_cHeight=>4
,p_new_grid=>true
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27428731279958107)
,p_name=>'P8_ISSUE_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issue Date'
,p_source=>'ISSUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27428923051958107)
,p_name=>'P8_RECEIPT_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Receipt Date'
,p_source=>'RECEIPT_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27429113480958107)
,p_name=>'P8_CONVEY_DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Convey Date'
,p_source=>'CONVEY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27429311361958107)
,p_name=>'P8_RESPONSE_DUE_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Response Due Date'
,p_source=>'RESPONSE_DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27429509054958107)
,p_name=>'P8_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(39880612808192675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select STATUS as display_value, STATUS as return_value ',
'  from DMD_LTR_STATUS',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_new_grid=>true
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27429727491958108)
,p_name=>'P8_APPEALS'
,p_item_sequence=>320
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeals'
,p_source=>'APPEALS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27429926974958108)
,p_name=>'P8_RESPONSIBLE_PARTY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(39880612808192675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Responsible Party'
,p_source=>'RESPONSIBLE_PARTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'RESPONSIBLE_PARTY'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select RESPONSIBLE_PARTY as display_value, RESPONSIBLE_PARTY as return_value ',
'  from DMD_LTR_RESP_PARTY',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27430123938958108)
,p_name=>'P8_DATE_RESOLVED'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Resolved'
,p_source=>'DATE_RESOLVED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27430333486958108)
,p_name=>'P8_MONTH_YEAR_RECEIVED'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(39880612808192675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Month Year Recd'
,p_source=>'MONTH_YEAR_RECEIVED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27430526961958108)
,p_name=>'P8_WORK_ORDER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Order'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT WORK_ORDER',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P8_LOAN_NUM',
'      AND DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27430723699958108)
,p_name=>'P8_COMMENTS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(39880612808192675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Demand Letter Comments'
,p_source=>'COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>32000
,p_cHeight=>4
,p_new_grid=>true
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27436519285958117)
,p_name=>'P8_LOAN_NUM_NEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_prompt=>'P8_LOAN_NUM_NEXT'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27436728887958117)
,p_name=>'P8_LOAN_NUM_PREV'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_prompt=>'P8_LOAN_NUM_PREV'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27436920006958117)
,p_name=>'P8_LOAN_NUM_NEXT2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_prompt=>'P8_LOAN_NUM_NEXT2'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27437133265958117)
,p_name=>'P8_LOAN_NUM_PREV2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_prompt=>'P8_LOAN_NUM_PREV2'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31667309840930086)
,p_name=>'P8_WORKING'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(39880612808192675)
,p_use_cache_before_default=>'NO'
,p_source=>'WORKING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34178721512665973)
,p_name=>'P8_RESCINDED_AMOUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(39880612808192675)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rescinded Amount'
,p_source=>'RESCINDED_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34720136451648749)
,p_name=>'P8_TEST'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Test'
,p_source=>'P0_LOGIN_ID'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34789037560966693)
,p_name=>'P8_DATA_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(39880612808192675)
,p_use_cache_before_default=>'NO'
,p_source=>'DATA_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39901127868396605)
,p_name=>'P8_DISPLAY'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(39900309672390437)
,p_prompt=>'Demand Letter Details'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs'
||'p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n'
||'bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
||'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39906012506464488)
,p_name=>'P8_APPEAL_DATE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(39879313669155047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Date'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT APPEAL_DATE',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P7_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'    AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39906206036467468)
,p_name=>'P8_APPEAL_RECIPIENT'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(39879313669155047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Recipient'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT APPEAL_RECIPIENT',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P7_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'    AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39906431041471081)
,p_name=>'P8_INTERNAL_RESPONSIBILITY'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(39879313669155047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Internal Responsibility'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT INTERNAL_RESPONSIBILITY',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P7_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'    AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39906626727473047)
,p_name=>'P8_APPEAL_RESPONSE_DATE'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(39879313669155047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Response Date'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT APPEAL_RESPONSE_DATE',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P7_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'    AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39906820258476067)
,p_name=>'P8_APPEAL_ENTERED_DATE'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(39879313669155047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Entered Date'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT APPEAL_ENTERED_DATE',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P7_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'    AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39907014219478910)
,p_name=>'P8_APPEAL_COMMENTS'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(39879313669155047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Comments'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT APPEAL_COMMENTS',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P7_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'    AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39907330380486639)
,p_name=>'P8_APPEALS_NBR'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(39879313669155047)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeal Number'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) + 1 AS APPEALS ',
'FROM DMD_LTR_APPEALS',
'where LOAN_NUM = :P7_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39907816997507944)
,p_name=>'P8_DEPARTMENT_RESPONSIBLE'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(39879519210156655)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department Resp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT DEPARTMENT_RESPONSIBLE',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39908012899509899)
,p_name=>'P8_RESPONSIBLE_EMPLOYEE'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(39879519210156655)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Resp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT RESPONSIBLE_EMPLOYEE',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39908208371511982)
,p_name=>'P8_WRITE_OFF_REASON'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(39879519210156655)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Write Off Reason'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT WRITE_OFF_REASON',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39908436825514006)
,p_name=>'P8_WRITE_OFF_AMOUNT'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(39879519210156655)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Write Off Amount'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT WRITE_OFF_AMOUNT',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39908627983518132)
,p_name=>'P8_INTERNAL_RESPONSIBILITY_RESP'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(39879519210156655)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Internal Responsibility'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT INTERNAL_RESPONSIBILITY',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39908823886520021)
,p_name=>'P8_VENDOR_RESPONSIBLE'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(39879519210156655)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Responsible'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT VENDOR_RESPONSIBLE',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39909018710522394)
,p_name=>'P8_CHARGE_BCK_REASON'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(39879519210156655)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Charge Back Reason'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT CHARGE_BCK_REASON',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39909214612524304)
,p_name=>'P8_CHARGE_BCK_AMOUNT'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(39879519210156655)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Charge Back Amt'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT CHARGE_BCK_AMOUNT',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40098536146771336)
,p_name=>'P8_MCB_CONTACT_NAME'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(39879107436153257)
,p_prompt=>'MCB Contact Name'
,p_source=>'MCB_CONTACT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34184528577974429)
,p_name=>'HIDE_RECINDED_AMOUNT'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_STATUS'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'Recinded'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34184807232974429)
,p_event_id=>wwv_flow_api.id(34184528577974429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_RECINDED_AMOUNT'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34185017001974429)
,p_event_id=>wwv_flow_api.id(34184528577974429)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_RECINDED_AMOUNT'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39891717928288711)
,p_name=>'Save Detail Info'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39891506153285327)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27722121897438831)
,p_event_id=>wwv_flow_api.id(39891717928288711)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to make this update?'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31871816191397313)
,p_event_id=>wwv_flow_api.id(39891717928288711)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO DMD_LTR_DATA_AUDIT ',
'(LOAN_NUM, DEMAND_LTR_NUM, WORK_ORDER, ANALYST, CLIENT, FHA_CASE, REQUESTOR_CONTACT, DISPUTE_REASON, DISPUTE_AMOUNT, DISPUTE_COMMENTS, ISSUE_DATE, RECEIPT_DATE, CONVEY_DATE, RESPONSE_DUE_DATE, STATUS, RESPONSIBLE_PARTY, DATE_RESOLVED, MONTH_YEAR_RECE'
||'IVED, COMMENTS, AUDIT_DT, AUDIT_USER, DATA_DATE, RESCINDED_AMOUNT)',
'',
'SELECT ',
'LOAN_NUM, DEMAND_LTR_NUM, WORK_ORDER, ANALYST, CLIENT, FHA_CASE, REQUESTOR_CONTACT, DISPUTE_REASON, DISPUTE_AMOUNT, DISPUTE_COMMENTS, ISSUE_DATE, RECEIPT_DATE, CONVEY_DATE, RESPONSE_DUE_DATE, STATUS, RESPONSIBLE_PARTY, DATE_RESOLVED, MONTH_YEAR_RECEI'
||'VED, COMMENTS, SYSDATE, :P175_USERNAME, DATA_DATE, RESCINDED_AMOUNT',
'',
'FROM DMD_LTR_DATA',
'',
'WHERE LOAN_NUM = :P8_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM;'))
,p_attribute_02=>'P8_LOAN_NUM,P8_DEMAND_LTR_NUM,P8_WORKING,P8_ANALYST,P8_CLIENT,P8_FHA_CASE,P8_REQUESTOR_CONTACT,P8_DISPUTE_REASON,P8_DISPUTE_AMOUNT,P8_DISPUTE_COMMENTS,P8_ISSUE_DATE,P8_RECEIPT_DATE,P8_CONVEY_DATE,P8_RESPONSE_DUE_DATE,P8_STATUS,P8_RESPONSIBLE_PARTY,P8'
||'_DATE_RESOLVED,P8_MONTH_YEAR_RECEIVED,P8_COMMENTS,P8_RESCINDED_AMOUNT'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27721923831402154)
,p_event_id=>wwv_flow_api.id(39891717928288711)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'UPDATE DMD_LTR_DATA',
'',
'SET ',
'LOAN_NUM=:P8_LOAN_NUM, DEMAND_LTR_NUM=:P8_DEMAND_LTR_NUM, WORK_ORDER=:P8_WORK_ORDER, ANALYST=:P8_ANALYST, CLIENT=:P8_CLIENT, FHA_CASE=:P8_FHA_CASE, REQUESTOR_CONTACT=:P8_REQUESTOR_CONTACT, DISPUTE_REASON=:P8_DISPUTE_REASON, DISPUTE_AMOUNT=:P8_DISPUTE'
||'_AMOUNT, DISPUTE_COMMENTS=:P8_DISPUTE_COMMENTS, ISSUE_DATE=:P8_ISSUE_DATE, RECEIPT_DATE=:P8_RECEIPT_DATE, CONVEY_DATE=:P8_CONVEY_DATE, RESPONSE_DUE_DATE=:P8_RESPONSE_DUE_DATE, STATUS=:P8_STATUS, RESPONSIBLE_PARTY=:P8_RESPONSIBLE_PARTY, DATE_RESOLVED='
||':P8_DATE_RESOLVED, MONTH_YEAR_RECEIVED=:P8_MONTH_YEAR_RECEIVED, COMMENTS=:P8_COMMENTS, RESCINDED_AMOUNT = :P8_RESCINDED_AMOUNT',
'',
'WHERE LOAN_NUM = :P8_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM;',
''))
,p_attribute_02=>'P8_LOAN_NUM,P8_DEMAND_LTR_NUM,P8_WORK_ORDER,P8_ANALYST,P8_CLIENT,P8_FHA_CASE,P8_REQUESTOR_CONTACT,P8_DISPUTE_REASON,P8_DISPUTE_AMOUNT,P8_DISPUTE_COMMENTS,P8_ISSUE_DATE,P8_RECEIPT_DATE,P8_CONVEY_DATE,P8_RESPONSE_DUE_DATE,P8_STATUS,P8_RESPONSIBLE_PARTY'
||',P8_DATE_RESOLVED,P8_MONTH_YEAR_RECEIVED,P8_COMMENTS,P8_RESCINDED_AMOUNT'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32471534522475884)
,p_event_id=>wwv_flow_api.id(39891717928288711)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Your update has been saved. '
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39892837452303855)
,p_name=>'Assign'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39892629487301543)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31561410417716917)
,p_event_id=>wwv_flow_api.id(39892837452303855)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'UPDATE DMD_LTR_DATA',
'',
'SET ',
'',
'ANALYST = UPPER(:P175_USERNAME)',
'',
'WHERE ',
'    LOAN_NUM = :P8_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM;',
''))
,p_attribute_02=>'P8_LOAN_NUM,P8_DEMAND_LTR_NUM,P8_ANALYST'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40117411727375131)
,p_event_id=>wwv_flow_api.id(39892837452303855)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'P8_ASSIGN'
,p_attribute_02=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39895527025348085)
,p_name=>'Delete'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39895318714345714)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32742036145842465)
,p_event_id=>wwv_flow_api.id(39895527025348085)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to delete the demand letter?'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32741822856838980)
,p_event_id=>wwv_flow_api.id(39895527025348085)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO DMD_LTR_DATA_AUDIT ',
'(LOAN_NUM, DEMAND_LTR_NUM, WORK_ORDER, ANALYST, CLIENT, FHA_CASE, REQUESTOR_CONTACT, DISPUTE_REASON, DISPUTE_AMOUNT, DISPUTE_COMMENTS, ISSUE_DATE, RECEIPT_DATE, CONVEY_DATE, RESPONSE_DUE_DATE, STATUS, RESPONSIBLE_PARTY, DATE_RESOLVED, MONTH_YEAR_RECE'
||'IVED, COMMENTS, AUDIT_DT, AUDIT_USER, MCB_CONTACT_NAME)',
'',
'SELECT ',
'LOAN_NUM, DEMAND_LTR_NUM, WORK_ORDER, ANALYST, CLIENT, FHA_CASE, REQUESTOR_CONTACT, DISPUTE_REASON, DISPUTE_AMOUNT, DISPUTE_COMMENTS, ISSUE_DATE, RECEIPT_DATE, CONVEY_DATE, RESPONSE_DUE_DATE, STATUS, RESPONSIBLE_PARTY, DATE_RESOLVED, MONTH_YEAR_RECEI'
||'VED, COMMENTS, SYSDATE, UPPER(:P150_USERNAME), MCB_CONTACT_NAME',
'',
'FROM DMD_LTR_DATA',
'',
'WHERE LOAN_NUM = :P8_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM;'))
,p_attribute_02=>'P8_LOAN_NUM,P8_DEMAND_LTR_NUM,P8_WORKING,P8_ANALYST,P8_CLIENT,P8_FHA_CASE,P8_REQUESTOR_CONTACT,P8_DISPUTE_REASON,P8_DISPUTE_AMOUNT,P8_DISPUTE_COMMENTS,P8_ISSUE_DATE,P8_RECEIPT_DATE,P8_CONVEY_DATE,P8_RESPONSE_DUE_DATE,P8_STATUS,P8_RESPONSIBLE_PARTY,P8'
||'_DATE_RESOLVED,P8_MONTH_YEAR_RECEIVED,P8_COMMENTS,P8_MCB_CONTACT_NAME'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32742213463898584)
,p_event_id=>wwv_flow_api.id(39895527025348085)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DELETE ',
'',
'FROM DMD_LTR_DATA',
'',
'WHERE LOAN_NUM = :P8_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM;'))
,p_attribute_02=>'P8_LOAN_NUM,P8_DEMAND_LTR_NUM'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32747808656508547)
,p_event_id=>wwv_flow_api.id(39895527025348085)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_LOAN_NUM,P8_DEMAND_LTR_NUM,P8_WORK_ORDER,P8_ANALYST,P8_CLIENT,P8_DISPUTE_REASON,P8_FHA_CASE,P8_DISPUTE_AMOUNT,P8_REQUESTOR_CONTACT,P8_DISPUTE_COMMENTS,P8_RESPONSE_DUE_DATE,P8_RESPONSIBLE_PARTY,P8_DATE_RESOLVED,P8_MONTH_YEAR_RECEIVED,P8_ISSUE_DATE,'
||'P8_STATUS,P8_APPEALS,P8_COMMENTS,P8_RECEIPT_DATE,P8_CONVEY_DATE,P8_WORKING'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32742406994901612)
,p_event_id=>wwv_flow_api.id(39895527025348085)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'The demand letter has been deleted.'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39897133043359279)
,p_name=>'Unassign'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39896822654356305)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31561632174737160)
,p_event_id=>wwv_flow_api.id(39897133043359279)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'UPDATE DMD_LTR_DATA',
'',
'SET ',
'',
'ANALYST = NULL',
'',
'WHERE ',
'    LOAN_NUM = :P8_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM;',
''))
,p_attribute_02=>'P8_LOAN_NUM,P8_DEMAND_LTR_NUM,P8_ANALYST'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40117821851385580)
,p_event_id=>wwv_flow_api.id(39897133043359279)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'P8_UNASSIGN'
,p_attribute_02=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27433221468958112)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of DMD_LTR_DATA'
,p_attribute_02=>'DMD_LTR_DATA'
,p_attribute_03=>'P8_LOAN_NUM'
,p_attribute_04=>'LOAN_NUM'
,p_attribute_05=>'P8_DEMAND_LTR_NUM'
,p_attribute_06=>'DEMAND_LTR_NUM'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34719429074607774)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE WORKING'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'UPDATE DMD_LTR_DATA',
'SET WORKING = :P0_LOGIN_ID',
'WHERE LOAN_NUM = :P8_LOAN_NUM',
'      AND DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27433022679958111)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from DMD_LTR_DATA'
,p_attribute_02=>'DMD_LTR_DATA'
,p_attribute_03=>'P8_LOAN_NUM'
,p_attribute_04=>'LOAN_NUM'
,p_attribute_05=>'P8_DEMAND_LTR_NUM'
,p_attribute_06=>'DEMAND_LTR_NUM'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'T_INPUT'
,p_name=>'All Demand Letters Queue'
,p_page_mode=>'NORMAL'
,p_step_title=>'All Demand Letters Queue'
,p_step_sub_title=>'All Demand Letters Queue'
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
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20140507104755'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34666729131042336)
,p_plug_name=>'Demand Letter Queue Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109423927346895)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DMD_LTR_DATA.LOAN_NUM as LOAN_NUM,',
'    DMD_LTR_DATA.WORK_ORDER as WORK_ORDER,',
'    DMD_LTR_DATA.DEMAND_LTR_NUM as DEMAND_LTR_NUM,',
'    DMD_LTR_DATA.ANALYST as ANALYST,',
'    DMD_LTR_DATA.CLIENT as CLIENT,',
'    DMD_LTR_DATA.FHA_CASE as FHA_CASE,',
'    DMD_LTR_DATA.STATUS as STATUS,',
'    DMD_LTR_DATA.DISPUTE_REASON as DISPUTE_REASON,',
'    DMD_LTR_DATA.CONVEY_DATE AS CONVEY_DATE,',
'    DMD_LTR_DATA.RESPONSE_DUE_DATE AS RESPONSE_DUE_DATE,',
'    DMD_LTR_DATA.DISPUTE_AMOUNT AS DISPUTE_AMOUNT',
' from DMD_LTR_DATA DMD_LTR_DATA ',
' ORDER BY DMD_LTR_DATA.CLIENT',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(34666932964042337)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'There are no items in the queue at this time.'
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
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:5:P8_LOAN_NUM,P8_DEMAND_LTR_NUM,P8_WORK_ORDER:#LOAN_NUM#,#DEMAND_LTR_NUM#,#WORK_ORDER#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_detail_link_condition_type=>'ITEM_IS_NOT_ZERO'
,p_detail_link_cond=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'WORKING',
''))
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'TBRYANT'
,p_internal_uid=>14151828151559253
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34667015118042337)
,p_db_column_name=>'LOAN_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Loan Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34667113074042337)
,p_db_column_name=>'WORK_ORDER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34667223227042337)
,p_db_column_name=>'ANALYST'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Analyst'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ANALYST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34667305961042338)
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
 p_id=>wwv_flow_api.id(34667414065042338)
,p_db_column_name=>'FHA_CASE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fha Case'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FHA_CASE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34667532180042338)
,p_db_column_name=>'DISPUTE_REASON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dispute Reason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_REASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34667623027042338)
,p_db_column_name=>'DISPUTE_AMOUNT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dispute Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34667710044042338)
,p_db_column_name=>'STATUS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34667832870042338)
,p_db_column_name=>'DEMAND_LTR_NUM'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Demand Ltr Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DEMAND_LTR_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34667907228042338)
,p_db_column_name=>'CONVEY_DATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Convey Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CONVEY_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34668019478042338)
,p_db_column_name=>'RESPONSE_DUE_DATE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Response Due Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'RESPONSE_DUE_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(34668121187042338)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'141531'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LOAN_NUM:WORK_ORDER:ANALYST:CLIENT:FHA_CASE:DISPUTE_REASON:DISPUTE_AMOUNT:STATUS:DEMAND_LTR_NUM:CONVEY_DATE:RESPONSE_DUE_DATE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34668325960042339)
,p_plug_name=>'All Demand Letters Queue:'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
,p_plug_display_sequence=>10
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34669036559056294)
,p_name=>'P9_DMD_LTR_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(34668325960042339)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total number of demand letters:  '
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT COUNT(*)',
'FROM DMD_LTR_DATA',
'WHERE LOAN_NUM IS NOT NULL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_name=>'Queue Admin'
,p_page_mode=>'NORMAL'
,p_step_title=>'Queue Admin'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20140122111208'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32120522704487866)
,p_plug_name=>'Queue Menu'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109836267346895)
,p_plug_display_sequence=>10
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32120730322490032)
,p_plug_name=>'Queue Menu 1'
,p_parent_plug_id=>wwv_flow_api.id(32120522704487866)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108219878346894)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32121510320815376)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(32120522704487866)
,p_button_name=>'SEARCH_LOAN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114613016346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search Loan'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32121020135496736)
,p_name=>'P10_LOAN_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32120730322490032)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loan Num'
,p_source=>'LOAN_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32121231756521738)
,p_name=>'P10_DEMAND_LTR_NUM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32120730322490032)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Demand Ltr Num'
,p_source=>'DEMAND_LTR_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32121437049640836)
,p_name=>'P10_ANALYST'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(32120730322490032)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Analyst'
,p_source=>'ANALYST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'T_DEMANDLETTER'
,p_name=>'Demand Letter Responsiblity'
,p_page_mode=>'NORMAL'
,p_step_title=>'Demand Letter Responsiblity'
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
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20141113084940'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31833930095584583)
,p_plug_name=>'Internal Responsibility'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108517051346895)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31837211041605163)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(31833930095584583)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
,p_plug_display_sequence=>20
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
 p_id=>wwv_flow_api.id(31838421084608064)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(31833930095584583)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_api.id(31844736153650283)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(31833930095584583)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_api.id(32561230805668629)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(31833930095584583)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
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
 p_id=>wwv_flow_api.id(32565519227854474)
,p_plug_name=>'Responsibility Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109423927346895)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'    DMD_LTR_RESPONSIBILITY.WORK_ORDER as WORK_ORDER,',
'    DMD_LTR_RESPONSIBILITY.RESPONSIBLE_ID as RESPONSIBLE_NUMBER,',
'    DMD_LTR_RESPONSIBILITY.INTERNAL_RESPONSIBILITY as INTERNAL_RESPONSIBILITY,',
'    DMD_LTR_RESPONSIBILITY.DEPARTMENT_RESPONSIBLE as DEPARTMENT_RESPONSIBLE,',
'    DMD_LTR_RESPONSIBILITY.RESPONSIBLE_EMPLOYEE as RESPONSIBLE_EMPLOYEE,',
'    DMD_LTR_RESPONSIBILITY.WRITE_OFF_REASON as WRITE_OFF_REASON,',
'    DMD_LTR_RESPONSIBILITY.WRITE_OFF_AMOUNT as WRITE_OFF_AMOUNT,',
'    DMD_LTR_RESPONSIBILITY.VENDOR_RESPONSIBLE as VENDOR_RESPONSIBLE,',
'    DMD_LTR_RESPONSIBILITY.CHARGE_BCK_REASON as CHARGE_BCK_REASON,',
'    DMD_LTR_RESPONSIBILITY.CHARGE_BCK_AMOUNT as CHARGE_BCK_AMOUNT,',
'    DMD_LTR_RESPONSIBILITY.ENTERED_DT as ENTERED_DT',
' from DMD_LTR_RESPONSIBILITY DMD_LTR_RESPONSIBILITY',
' where DMD_LTR_RESPONSIBILITY.LOAN_NUM =:P12_LOAN_NUM',
'    and DMD_LTR_RESPONSIBILITY.DEMAND_LTR_NUM =:P12_DEMAND_LTR_NUM',
' ORDER BY RESPONSIBLE_NUMBER;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(32565633348854474)
,p_name=>'Responsibility Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_RESPONSIBLE_ID:#RESPONSIBLE_NUMBER#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'TBRYANT'
,p_internal_uid=>12050528536371390
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32566206596854499)
,p_db_column_name=>'VENDOR_RESPONSIBLE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Vendor Resp'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VENDOR_RESPONSIBLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32566324992854499)
,p_db_column_name=>'WRITE_OFF_AMOUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Write Off Amt'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'WRITE_OFF_AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32566424388854499)
,p_db_column_name=>'RESPONSIBLE_EMPLOYEE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Resp Emp'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RESPONSIBLE_EMPLOYEE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32566526418854499)
,p_db_column_name=>'DEPARTMENT_RESPONSIBLE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dept Resp'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEPARTMENT_RESPONSIBLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32566626896854499)
,p_db_column_name=>'CHARGE_BCK_AMOUNT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Charge Bck Amt'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CHARGE_BCK_AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32566713167854499)
,p_db_column_name=>'CHARGE_BCK_REASON'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Charge Bck Reason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CHARGE_BCK_REASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32566930195854500)
,p_db_column_name=>'INTERNAL_RESPONSIBILITY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Internal Resp'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INTERNAL_RESPONSIBILITY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32567029526854500)
,p_db_column_name=>'WRITE_OFF_REASON'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Write Off Reason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WRITE_OFF_REASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32567121956854500)
,p_db_column_name=>'ENTERED_DT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Entered Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_DT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32695911470926157)
,p_db_column_name=>'RESPONSIBLE_NUMBER'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Resp ID'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'RESPONSIBLE_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(33621722111100282)
,p_db_column_name=>'WORK_ORDER'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_ORDER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(32567219919854705)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'120522'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'VENDOR_RESPONSIBLE:WRITE_OFF_AMOUNT:RESPONSIBLE_EMPLOYEE:DEPARTMENT_RESPONSIBLE:CHARGE_BCK_AMOUNT:CHARGE_BCK_REASON:INTERNAL_RESPONSIBILITY:WRITE_OFF_REASON:ENTERED_DT:RESPONSIBLE_NUMBER:WORK_ORDER'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32736734318595777)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
,p_plug_display_sequence=>60
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
 p_id=>wwv_flow_api.id(33613223075315181)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(31833930095584583)
,p_button_name=>'DEMAND_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Demand Details'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_LOAN_NUM,P8_DEMAND_LTR_NUM,P8_WORK_ORDER:&P12_LOAN_NUM.,&P12_DEMAND_LTR_NUM.,&P12_WORK_ORDER.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32546112878553829)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(31833930095584583)
,p_button_name=>'ADD_RESPONSIBILITY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32693410213881082)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(31833930095584583)
,p_button_name=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31834529506584586)
,p_name=>'P12_LOAN_NUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31844736153650283)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loan Num'
,p_source=>'P8_LOAN_NUM'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31834737027584587)
,p_name=>'P12_DEMAND_LTR_NUM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31844736153650283)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Demand Ltr Num'
,p_source=>'P8_DEMAND_LTR_NUM'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31834917021584590)
,p_name=>'P12_WORK_ORDER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31844736153650283)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Order'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31837423899605165)
,p_name=>'P12_DATA_DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31838421084608064)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Data Date'
,p_source=>'DATA_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27114433303346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31837629795605166)
,p_name=>'P12_DEPARTMENT_RESPONSIBLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31838421084608064)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department Resp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT DEPARTMENT_RESPONSIBLE',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPARTMENT_RESPONSIBLE'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DEPART_RESP as display_value, DEPART_RESP as return_value ',
'  from DMD_LTR_DEPT_RESP',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31837805510605166)
,p_name=>'P12_RESPONSIBLE_EMPLOYEE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31838421084608064)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Resp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT RESPONSIBLE_EMPLOYEE',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31838008623605166)
,p_name=>'P12_VENDOR_RESPONSIBLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32561230805668629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Responsible'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT VENDOR_RESPONSIBLE',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31838214762605166)
,p_name=>'P12_RESPONSIBLE_PARTY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31837211041605163)
,p_prompt=>'Responsible Party'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT RESPONSIBLE_PARTY',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31838610924608065)
,p_name=>'P12_CHARGE_BCK_AMOUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(32561230805668629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Charge Back Amt'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT CHARGE_BCK_AMOUNT',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31838808524608065)
,p_name=>'P12_CHARGE_BCK_REASON'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(32561230805668629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Charge Back Reason'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT CHARGE_BCK_REASON',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31839014459608066)
,p_name=>'P12_WRITE_OFF_AMOUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31838421084608064)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Write Off Amount'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT WRITE_OFF_AMOUNT',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31858423126026766)
,p_name=>'P12_INTERNAL_RESPONSIBILITY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32561230805668629)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Internal Responsibility'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT INTERNAL_RESPONSIBILITY',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'INTERNAL_RESPONSIBILITY'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select INTERNAL_RESPONSIBILITY as display_value, INTERNAL_RESPONSIBILITY as return_value ',
'  from DMD_LTR_INTER_RESPONSIBILITY',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31986706858083294)
,p_name=>'P12_APPEALS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31844736153650283)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeals'
,p_source=>'P7_APPEALS_1'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32183329059552931)
,p_name=>'P12_WRITE_OFF_REASON'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31838421084608064)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Write Off Reason'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT WRITE_OFF_REASON',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WRITE_OFF_REASON'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select WRITE_OFF_REASON as display_value, WRITE_OFF_REASON as return_value ',
'  from DMD_LTR_WRITEOFF_REASON',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32649422101317058)
,p_name=>'P12_PAGE_TITLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31833930095584583)
,p_prompt=>'<b>Responsibility Detail:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32683627826616700)
,p_name=>'P12_RESPONSIBLE_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31837211041605163)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Responsible Id'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) + 1 AS RESPONSIBLE_ID ',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P12_LOAN_NUM',
'      AND DEMAND_LTR_NUM = :P12_DEMAND_LTR_NUM',
'      AND :P12_RESPONSIBLE_ID IS NOT NULL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32736926785595779)
,p_name=>'P12_LOCATION'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(32736734318595777)
,p_prompt=>'Demand Letter Detail -----------> Appeal Detail -----------> <SPAN STYLE="color: #1589FF;">Responsibility Detail</SPAN>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32546508897597617)
,p_name=>'ADD_RESPONSIBILITY'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(32546112878553829)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32694115808893691)
,p_event_id=>wwv_flow_api.id(32546508897597617)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to add the responsibility?'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32546828080597622)
,p_event_id=>wwv_flow_api.id(32546508897597617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO DMD_LTR_RESPONSIBILITY',
'',
'(APPEALS, DEMAND_LTR_NUM, LOAN_NUM, RESPONSIBLE_PARTY, WORK_ORDER, INTERNAL_RESPONSIBILITY, ENTERED_DT, RESPONSIBLE_ID, DEPARTMENT_RESPONSIBLE, RESPONSIBLE_EMPLOYEE, WRITE_OFF_AMOUNT, WRITE_OFF_REASON, CHARGE_BCK_AMOUNT, CHARGE_BCK_REASON,VENDOR_RESP'
||'ONSIBLE)',
'',
'VALUES ',
'(:P12_APPEALS, :P12_DEMAND_LTR_NUM, :P12_LOAN_NUM, :P12_RESPONSIBLE_PARTY, :P12_WORK_ORDER, :P12_INTERNAL_RESPONSIBILITY, SYSDATE, :P12_RESPONSIBLE_ID, :P12_DEPARTMENT_RESPONSIBLE, :P12_RESPONSIBLE_EMPLOYEE, :P12_WRITE_OFF_AMOUNT, :P12_WRITE_OFF_REAS'
||'ON, :P12_CHARGE_BCK_AMOUNT, :P12_CHARGE_BCK_REASON, :P12_VENDOR_RESPONSIBLE);',
''))
,p_attribute_02=>'P12_APPEALS,P12_CHARGE_BCK_AMOUNT,P12_CHARGE_BCK_REASON,P12_DATA_DATE,P12_DEMAND_LTR_NUM,P12_DEPARTMENT_RESPONSIBLE,P12_INTERNAL_RESPONSIBILITY,P12_LOAN_NUM,P12_RESPONSIBLE_EMPLOYEE,P12_RESPONSIBLE_ID,P12_RESPONSIBLE_PARTY,P12_VENDOR_RESPONSIBLE,P12_'
||'WORK_ORDER,P12_WRITE_OFF_AMOUNT,P12_WRITE_OFF_REASON'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32695326794903863)
,p_event_id=>wwv_flow_api.id(32546508897597617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32565519227854474)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33616210561662388)
,p_event_id=>wwv_flow_api.id(32546508897597617)
,p_event_result=>'TRUE'
,p_action_sequence=>25
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32565519227854474)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32695518383907694)
,p_event_id=>wwv_flow_api.id(32546508897597617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_DEPARTMENT_RESPONSIBLE,P12_INTERNAL_RESPONSIBILITY,P12_VENDOR_RESPONSIBLE,P12_CHARGE_BCK_REASON,P12_RESPONSIBLE_EMPLOYEE,P12_RESPONSIBLE_PARTY,P12_WRITE_OFF_REASON,P12_CHARGE_BCK_AMOUNT,P12_WRITE_OFF_AMOUNT'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32695715364909097)
,p_event_id=>wwv_flow_api.id(32546508897597617)
,p_event_result=>'TRUE'
,p_action_sequence=>35
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32827311835593542)
,p_event_id=>wwv_flow_api.id(32546508897597617)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'The responsibility has been added.'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32693605130887514)
,p_name=>'CLEAR'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(32693410213881082)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32693917365887517)
,p_event_id=>wwv_flow_api.id(32693605130887514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_DEPARTMENT_RESPONSIBLE,P12_INTERNAL_RESPONSIBILITY,P12_VENDOR_RESPONSIBLE,P12_CHARGE_BCK_REASON,P12_RESPONSIBLE_EMPLOYEE,P12_RESPONSIBLE_PARTY,P12_WRITE_OFF_REASON,P12_CHARGE_BCK_AMOUNT,P12_WRITE_OFF_AMOUNT,P12_WORK_ORDER'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'Demand Letter'
,p_name=>'Responsible Party Edit'
,p_page_mode=>'NORMAL'
,p_step_title=>'Responsible Party Edit'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27107134952346894)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20141125151336'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39939513140984260)
,p_plug_name=>'Input Responsibility'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108517051346895)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_new_grid_row=>false
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39946620423062042)
,p_plug_name=>'Hidden Values'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>wwv_flow_api.id(27111428957346896)
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
 p_id=>wwv_flow_api.id(39944411110012066)
,p_button_sequence=>530
,p_button_plug_id=>wwv_flow_api.id(39939513140984260)
,p_button_name=>'P13_SAVE'
,p_button_static_id=>'P13_SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Save'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>true
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39947806123073549)
,p_button_sequence=>540
,p_button_plug_id=>wwv_flow_api.id(39939513140984260)
,p_button_name=>'P13_DEMAND_DETAIL'
,p_button_static_id=>'P13_DEMAND_DETAIL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Demand Detail'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32569006677873434)
,p_name=>'P13_APPEALS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(39946620423062042)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Appeals'
,p_source=>'P12_APPEALS'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32569219212873443)
,p_name=>'P13_LOAN_NUM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39946620423062042)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loan Num'
,p_source=>'P12_LOAN_NUM'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32569410884873444)
,p_name=>'P13_DEMAND_LTR_NUM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39946620423062042)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Demand Ltr Num'
,p_source=>'P12_DEMAND_LTR_NUM'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32569636848873444)
,p_name=>'P13_WORK_ORDER'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(39939513140984260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Order'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT WORK_ORDER',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P12_LOAN_NUM',
'      AND DEMAND_LTR_NUM = :P12_DEMAND_LTR_NUM',
'      AND RESPONSIBLE_ID = :P13_RESPONSIBLE_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32687230660843207)
,p_name=>'P13_RESPONSIBLE_ID'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(39939513140984260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Responsible ID'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) + 1 AS RESPONSIBLE_ID',
'FROM DMD_LTR_RESPONSIBILITY',
'where LOAN_NUM = :P8_LOAN_NUM',
'    and DEMAND_LTR_NUM = :P8_DEMAND_LTR_NUM'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39939704973984262)
,p_name=>'P13_DEPARTMENT_RESPONSIBLE'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(39939513140984260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Department Resp'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPARTMENT_RESPONSIBLE'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DEPART_RESP as display_value, DEPART_RESP as return_value ',
'  from DMD_LTR_DEPT_RESP',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39939927832984263)
,p_name=>'P13_RESPONSIBLE_EMPLOYEE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(39939513140984260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee Resp'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39940112725984263)
,p_name=>'P13_WRITE_OFF_REASON'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(39939513140984260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Write Off Reason'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT WRITE_OFF_REASON',
'FROM DMD_LTR_RESPONSIBILITY',
'WHERE LOAN_NUM = :P7_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P7_DEMAND_LTR_NUM',
'AND APPEALS = :P7_APPEALS_1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WRITE_OFF_REASON'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select WRITE_OFF_REASON as display_value, WRITE_OFF_REASON as return_value ',
'  from DMD_LTR_WRITEOFF_REASON',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39940311098984263)
,p_name=>'P13_WRITE_OFF_AMOUNT'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(39939513140984260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Write Off Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39940519173984264)
,p_name=>'P13_CHARGE_BCK_REASON'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(39939513140984260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Charge Back Reason'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WRITE_OFF_REASON'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select WRITE_OFF_REASON as display_value, WRITE_OFF_REASON as return_value ',
'  from DMD_LTR_WRITEOFF_REASON',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39940730103984264)
,p_name=>'P13_CHARGE_BCK_AMOUNT'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(39939513140984260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Charge Back Amt'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39940905720984264)
,p_name=>'P13_INTERNAL_RESPONSIBILITY_RESP'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(39939513140984260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Internal Responsibility'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'INTERNAL_RESPONSIBILITY'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select INTERNAL_RESPONSIBILITY as display_value, INTERNAL_RESPONSIBILITY as return_value ',
'  from DMD_LTR_INTER_RESPONSIBILITY',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39941134999984264)
,p_name=>'P13_VENDOR_RESPONSIBLE'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(39939513140984260)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Responsible'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40108427033109742)
,p_name=>'P13_LABEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39946620423062042)
,p_prompt=>'Input Responsibility'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39944628772017152)
,p_name=>'Save Responsibility'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39944411110012066)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32828530918721425)
,p_event_id=>wwv_flow_api.id(39944628772017152)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to save the responsibility?'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32700530052219256)
,p_event_id=>wwv_flow_api.id(39944628772017152)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO DMD_LTR_RESPONSIBILITY_AUDIT',
'',
'(APPEALS, CHARGE_BCK_AMOUNT, CHARGE_BCK_REASON, DEMAND_LTR_NUM, DEPARTMENT_RESPONSIBLE, LOAN_NUM, RESPONSIBLE_EMPLOYEE, RESPONSIBLE_PARTY, VENDOR_RESPONSIBLE, WORK_ORDER, WRITE_OFF_AMOUNT, INTERNAL_RESPONSIBILITY, AUDIT_DT, AUDIT_USER, WRITE_OFF_REAS'
||'ON, RESPONSIBLE_ID)',
'',
'SELECT',
'APPEALS, CHARGE_BCK_AMOUNT, CHARGE_BCK_REASON, DEMAND_LTR_NUM, DEPARTMENT_RESPONSIBLE, LOAN_NUM, RESPONSIBLE_EMPLOYEE, RESPONSIBLE_PARTY, VENDOR_RESPONSIBLE, WORK_ORDER, WRITE_OFF_AMOUNT, INTERNAL_RESPONSIBILITY, SYSDATE, :P175_USERNAME, WRITE_OFF_RE'
||'ASON, RESPONSIBLE_ID',
'',
'FROM DMD_LTR_RESPONSIBILITY',
'',
'WHERE LOAN_NUM = :P13_LOAN_NUM',
'AND DEMAND_LTR_NUM = :P13_DEMAND_LTR_NUM',
'AND RESPONSIBLE_ID = :P13_RESPONSIBLE_ID;',
''))
,p_attribute_02=>'P13_APPEALS,P13_CHARGE_BCK_AMOUNT,P13_CHARGE_BCK_REASON,P13_DEMAND_LTR_NUM,P13_DEPARTMENT_RESPONSIBLE,P13_INTERNAL_RESPONSIBILITY,P13_LOAN_NUM,P13_RESPONSIBLE_EMPLOYEE,P13_RESPONSIBLE_PARTY,P13_VENDOR_RESPONSIBLE,P13_WORK_ORDER,P13_WRITE_OFF_AMOUNT,P'
||'13_WRITE_OFF_REASON,P13_RESPONSIBLE_ID,P13_WORK_ORDER'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32700809905261086)
,p_event_id=>wwv_flow_api.id(39944628772017152)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO DMD_LTR_RESPONSIBILITY',
'',
'(APPEALS, CHARGE_BCK_AMOUNT, CHARGE_BCK_REASON, DEMAND_LTR_NUM, DEPARTMENT_RESPONSIBLE, LOAN_NUM, RESPONSIBLE_EMPLOYEE, RESPONSIBLE_PARTY, VENDOR_RESPONSIBLE, WORK_ORDER, WRITE_OFF_AMOUNT, INTERNAL_RESPONSIBILITY, DATA_DT, ANALYST, WRITE_OFF_REASON, '
||'RESPONSIBLE_ID)',
'',
'VALUES(',
':P13_APPEALS, :P13_CHARGE_BCK_AMOUNT, :P13_CHARGE_BCK_REASON, :P8_DEMAND_LTR_NUM, :P13_DEPARTMENT_RESPONSIBLE, :P8_LOAN_NUM, :P13_RESPONSIBLE_EMPLOYEE, :P13_RESPONSIBLE_PARTY, UPPER(:P13_VENDOR_RESPONSIBLE), :P13_WORK_ORDER, :P13_WRITE_OFF_AMOUNT, :P'
||'13_INTERNAL_RESPONSIBILITY, SYSDATE, :P175_USERNAME, :P13_WRITE_OFF_REASON, :P13_RESPONSIBLE_ID);',
'',
''))
,p_attribute_02=>'P13_CHARGE_BCK_AMOUNT,P13_CHARGE_BCK_REASON,P13_DATA_DATE,P13_DEMAND_LTR_NUM,P13_DEPARTMENT_RESPONSIBLE,P13_INTERNAL_RESPONSIBILITY,P13_LOAN_NUM,P13_RESPONSIBLE_EMPLOYEE,P13_RESPONSIBLE_PARTY,P13_VENDOR_RESPONSIBLE,P13_WORK_ORDER,P13_WRITE_OFF_AMOUNT'
||',P13_RESPONSIBLE_ID,P175_USERNAME,P13_LOAN_NUM,P13_DEMAND_LTR_NUM'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32828727036723195)
,p_event_id=>wwv_flow_api.id(39944628772017152)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'The responsibility has been saved.'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_name=>'Demand Letter Working Queue'
,p_page_mode=>'NORMAL'
,p_step_title=>'Working Queue'
,p_step_sub_title=>'Demand Letter Working Queue'
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
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20141125152233'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40019233585723717)
,p_plug_name=>'Demand Letter Working Queue Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109423927346895)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DMD_LTR_DATA.LOAN_NUM as LOAN_NUM,',
'    DMD_LTR_DATA.WORK_ORDER as WORK_ORDER,',
'    DMD_LTR_DATA.DEMAND_LTR_NUM as DEMAND_LTR_NUM,',
'    DMD_LTR_DATA.ANALYST as ANALYST,',
'    DMD_LTR_DATA.CLIENT as CLIENT,',
'    DMD_LTR_DATA.FHA_CASE as FHA_CASE,',
'    DMD_LTR_DATA.STATUS as STATUS,',
'    DMD_LTR_DATA.DISPUTE_REASON as DISPUTE_REASON,',
'    DMD_LTR_DATA.CONVEY_DATE AS CONVEY_DATE,',
'    DMD_LTR_DATA.RESPONSE_DUE_DATE AS RESPONSE_DUE_DATE,',
'    DMD_LTR_DATA.DISPUTE_AMOUNT AS DISPUTE_AMOUNT',
' from DMD_LTR_DATA DMD_LTR_DATA ',
' where DMD_LTR_DATA.ANALYST IS NOT NULL',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(40019421838723720)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'There are no open items in the queue at this time.'
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
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_LOAN_NUM,P8_DEMAND_LTR_NUM,P8_WORK_ORDER:#LOAN_NUM#,#DEMAND_LTR_NUM#,#WORK_ORDER#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_detail_link_condition_type=>'ITEM_IS_NOT_ZERO'
,p_detail_link_cond=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'WORKING',
''))
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'TBRYANT'
,p_internal_uid=>19504317026240636
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40019524662723726)
,p_db_column_name=>'LOAN_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Loan Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40019629560723727)
,p_db_column_name=>'WORK_ORDER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40019724466723727)
,p_db_column_name=>'ANALYST'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Analyst'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ANALYST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40019828287723727)
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
 p_id=>wwv_flow_api.id(40019914571723727)
,p_db_column_name=>'FHA_CASE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fha Case'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FHA_CASE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40020010732723727)
,p_db_column_name=>'DISPUTE_REASON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dispute Reason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_REASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40020119502723727)
,p_db_column_name=>'DISPUTE_AMOUNT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dispute Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40020205547723727)
,p_db_column_name=>'STATUS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40020337329723727)
,p_db_column_name=>'DEMAND_LTR_NUM'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Demand Ltr Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DEMAND_LTR_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40020421261723728)
,p_db_column_name=>'CONVEY_DATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Convey Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CONVEY_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40020510310723728)
,p_db_column_name=>'RESPONSE_DUE_DATE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Response Due Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'RESPONSE_DUE_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(40020634114723728)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'195056'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LOAN_NUM:WORK_ORDER:ANALYST:CLIENT:FHA_CASE:DISPUTE_REASON:DISPUTE_AMOUNT:STATUS:DEMAND_LTR_NUM:CONVEY_DATE:RESPONSE_DUE_DATE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40020834458723731)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_api.id(40021309994733655)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(40020834458723731)
,p_button_name=>'P20_QUEUE_MENU'
,p_button_static_id=>'P20_QUEUE_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Queue Menu'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40119723539430352)
,p_name=>'P20_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40020834458723731)
,p_prompt=>'Working Queue:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_name=>'Demand Letter Completed Queue'
,p_page_mode=>'NORMAL'
,p_step_title=>'Demand Letter Completed Queue'
,p_step_sub_title=>'Demand Letter Completed Queue'
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
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20141125153009'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40414608405222586)
,p_plug_name=>'Demand Letter Completed Queue Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109423927346895)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DMD_LTR_DATA.LOAN_NUM as LOAN_NUM,',
'    DMD_LTR_DATA.WORK_ORDER as WORK_ORDER,',
'    DMD_LTR_DATA.DEMAND_LTR_NUM as DEMAND_LTR_NUM,',
'    DMD_LTR_DATA.ANALYST as ANALYST,',
'    DMD_LTR_DATA.CLIENT as CLIENT,',
'    DMD_LTR_DATA.FHA_CASE as FHA_CASE,',
'    DMD_LTR_DATA.STATUS as STATUS,',
'    DMD_LTR_DATA.DISPUTE_REASON as DISPUTE_REASON,',
'    DMD_LTR_DATA.CONVEY_DATE AS CONVEY_DATE,',
'    DMD_LTR_DATA.RESPONSE_DUE_DATE AS RESPONSE_DUE_DATE,',
'    DMD_LTR_DATA.DISPUTE_AMOUNT AS DISPUTE_AMOUNT,',
'    DMD_LTR_DATA.DATE_RESOLVED AS DATE_RESOLVED',
' from DMD_LTR_DATA DMD_LTR_DATA ',
' where DMD_LTR_DATA.DATE_RESOLVED IS NOT NULL',
' ORDER BY DMD_LTR_DATA.DATE_RESOLVED DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(40414817093222590)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'There are no open items in the queue at this time.'
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
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_LOAN_NUM,P8_DEMAND_LTR_NUM,P8_WORK_ORDER:#LOAN_NUM#,#DEMAND_LTR_NUM#,#WORK_ORDER#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_detail_link_condition_type=>'ITEM_IS_NOT_ZERO'
,p_detail_link_cond=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'WORKING',
''))
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'TBRYANT'
,p_internal_uid=>19899712280739506
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40414907953222591)
,p_db_column_name=>'LOAN_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Loan Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40415037490222592)
,p_db_column_name=>'WORK_ORDER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40415129979222592)
,p_db_column_name=>'ANALYST'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Analyst'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ANALYST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40415217965222592)
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
 p_id=>wwv_flow_api.id(40415336734222592)
,p_db_column_name=>'FHA_CASE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fha Case'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FHA_CASE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40415428801222592)
,p_db_column_name=>'DISPUTE_REASON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dispute Reason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_REASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40415534669222592)
,p_db_column_name=>'DISPUTE_AMOUNT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dispute Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40415605091222593)
,p_db_column_name=>'STATUS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40415731755222593)
,p_db_column_name=>'DEMAND_LTR_NUM'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Demand Ltr Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DEMAND_LTR_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40415837097222593)
,p_db_column_name=>'CONVEY_DATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Convey Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CONVEY_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40415907214222593)
,p_db_column_name=>'RESPONSE_DUE_DATE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Response Due Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'RESPONSE_DUE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40417137511227774)
,p_db_column_name=>'DATE_RESOLVED'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Date Resolved'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_RESOLVED'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(40416014879222594)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'199010'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LOAN_NUM:WORK_ORDER:ANALYST:CLIENT:FHA_CASE:DISPUTE_REASON:DISPUTE_AMOUNT:STATUS:DEMAND_LTR_NUM:CONVEY_DATE:RESPONSE_DUE_DATE:DATE_RESOLVED'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40416227584222595)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_api.id(40416431395222595)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(40416227584222595)
,p_button_name=>'P22_QUEUE_MENU'
,p_button_static_id=>'P22_QUEUE_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Queue Menu'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40416631780222606)
,p_name=>'P22_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40416227584222595)
,p_prompt=>'Completed Queue:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'T_DEMANDLETTER'
,p_name=>'New Detail Loan Search'
,p_page_mode=>'NORMAL'
,p_step_title=>'Demand Letter Search'
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
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20141113084940'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27529623889266961)
,p_plug_name=>'Demand Letter Loan Search'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109836267346895)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27704311392363675)
,p_plug_name=>'Interactive - Work Order Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109423927346895)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "LOAN_NUM", ',
'"DEMAND_LTR_NUM",',
'"STATUS",',
'"ANALYST",',
'"CLIENT",',
'"FHA_CASE",',
'"DISPUTE_REASON",',
'"CONVEY_DATE",',
'"RESPONSE_DUE_DATE",',
'"DISPUTE_AMOUNT"',
'FROM DMD_LTR_DATA',
'WHERE LOAN_NUM = :P34_LOAN_NUM',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P34_LOAN_NUM,P34_DEMAND_LTR_NUM1'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(27704418612363675)
,p_name=>'Interactive - Work Order Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'There is not a loan that meets your search criteria.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'TBRYANT'
,p_internal_uid=>7189313799880591
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27704608577363676)
,p_db_column_name=>'LOAN_NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Loan Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27704736719363676)
,p_db_column_name=>'DEMAND_LTR_NUM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Demand Ltr Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DEMAND_LTR_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27704922857363676)
,p_db_column_name=>'ANALYST'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Analyst'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ANALYST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27705026135363676)
,p_db_column_name=>'CLIENT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Client'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLIENT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(27705130483363676)
,p_db_column_name=>'FHA_CASE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fha Case'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FHA_CASE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32529022817875435)
,p_db_column_name=>'STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32529132797875441)
,p_db_column_name=>'DISPUTE_REASON'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Dispute Reason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_REASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32529220866875441)
,p_db_column_name=>'CONVEY_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Convey Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CONVEY_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32529309706875441)
,p_db_column_name=>'RESPONSE_DUE_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Response Due Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'RESPONSE_DUE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32529429615875441)
,p_db_column_name=>'DISPUTE_AMOUNT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Dispute Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_AMOUNT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(27705833902370200)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'71908'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LOAN_NUM:DEMAND_LTR_NUM:ANALYST:CLIENT:FHA_CASE:STATUS:DISPUTE_REASON:CONVEY_DATE:RESPONSE_DUE_DATE:DISPUTE_AMOUNT'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27532434409279453)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27529623889266961)
,p_button_name=>'SEARCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27534405683489422)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27529623889266961)
,p_button_name=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27530216596266962)
,p_name=>'P34_LOAN_NUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27529623889266961)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loan Number'
,p_source=>'LOAN_NUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27533221297304047)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27532434409279453)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27535504844514392)
,p_event_id=>wwv_flow_api.id(27533221297304047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(27704311392363675)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27533516099304047)
,p_event_id=>wwv_flow_api.id(27533221297304047)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(27704311392363675)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27534631441506272)
,p_name=>'CLEAR_FORM'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27534405683489422)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27535310451511809)
,p_event_id=>wwv_flow_api.id(27534631441506272)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_LOAN_NUM'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27659326115966753)
,p_event_id=>wwv_flow_api.id(27534631441506272)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(27704311392363675)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32711337158259107)
,p_name=>'SHOW_REPORT'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_LOAN_NUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32711614530259110)
,p_event_id=>wwv_flow_api.id(32711337158259107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(27704311392363675)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32712009089264083)
,p_event_id=>wwv_flow_api.id(32711337158259107)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(27704311392363675)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27531631062266964)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of DMD_LTR_DATA'
,p_attribute_02=>'DMD_LTR_DATA'
,p_attribute_03=>'P34_LOAN_NUM'
,p_attribute_04=>'LOAN_NUM'
,p_attribute_05=>'P34_DEMAND_LTR_NUM'
,p_attribute_06=>'DEMAND_LTR_NUM'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_api.create_page(
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'Admin'
,p_name=>'Users'
,p_page_mode=>'NORMAL'
,p_step_title=>'Users'
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
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20141113084751'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32111315864050008)
,p_plug_name=>'Users'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108517051346895)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32111627638053406)
,p_plug_name=>' Find all items for a user:'
,p_parent_plug_id=>wwv_flow_api.id(32111315864050008)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108219878346894)
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
 p_id=>wwv_flow_api.id(32160331722209170)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(32111627638053406)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ANALYST, LOAN_NUM, DEMAND_LTR_NUM, WORK_ORDER, DISPUTE_REASON',
'',
'FROM DMD_LTR_DATA',
'',
'WHERE ANALYST = UPPER(:P50_LOGIN_ITEMS)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P50_LOGIN_ITEMS'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P50_LOGIN_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(32160426006209176)
,p_name=>'Analyst Assigned Items'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'There are no search results for the listed analyst.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_LOAN_NUM,P8_DEMAND_LTR_NUM,P8_ANALYST:#LOAN_NUM#,#DEMAND_LTR_NUM#,#ANALYST#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'TBRYANT'
,p_internal_uid=>11645321193726092
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32160612993209215)
,p_db_column_name=>'ANALYST'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Analyst'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ANALYST'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32160727524209221)
,p_db_column_name=>'LOAN_NUM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Loan Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32160817959209221)
,p_db_column_name=>'DEMAND_LTR_NUM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Demand Ltr Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DEMAND_LTR_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32160916061209221)
,p_db_column_name=>'WORK_ORDER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Work Order'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'WORK_ORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(32161023831209221)
,p_db_column_name=>'DISPUTE_REASON'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Dispute Reason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_REASON'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(32162235447229173)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'116472'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ANALYST:LOAN_NUM:DEMAND_LTR_NUM:WORK_ORDER:DISPUTE_REASON'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32164024506311112)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(32111315864050008)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108219878346894)
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_api.id(32480214333846362)
,p_plug_name=>'Security Levels Text Boxes'
,p_parent_plug_id=>wwv_flow_api.id(32164024506311112)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
,p_plug_display_sequence=>10
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32710023390236167)
,p_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(32164024506311112)
,p_template=>wwv_flow_api.id(27109836267346895)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DMD_LTR_EMP_SECURITY.LOGIN as LOGIN,',
'    DMD_LTR_EMP_SECURITY.SECURITY_LEVEL as SECURITY_LEVEL,',
'    DMD_LTR_EMP_SECURITY.STATUS as STATUS ',
' from DMD_LTR_EMP_SECURITY DMD_LTR_EMP_SECURITY'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(27111525834346896)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
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
 p_id=>wwv_flow_api.id(32710318751236175)
,p_query_column_id=>1
,p_column_alias=>'LOGIN'
,p_column_display_sequence=>1
,p_column_heading=>'Login'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32710427720236180)
,p_query_column_id=>2
,p_column_alias=>'SECURITY_LEVEL'
,p_column_display_sequence=>2
,p_column_heading=>'Security Level'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32723936730590853)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39848332990154959)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_api.id(32111315864050008)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
,p_plug_display_sequence=>50
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
 p_id=>wwv_flow_api.id(39848921478170571)
,p_plug_name=>'Buttons 2'
,p_parent_plug_id=>wwv_flow_api.id(32111315864050008)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
,p_plug_display_sequence=>60
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32169730326483156)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39848332990154959)
,p_button_name=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear All'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39849105332175363)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(39848921478170571)
,p_button_name=>'P50_MAIN_MENU'
,p_button_static_id=>'P50_MAIN_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Main Menu'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32115215274182323)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(32111627638053406)
,p_button_name=>'FIND_ITEMS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Find Items'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32709513216223830)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(32164024506311112)
,p_button_name=>'ALL_USERS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'All Users'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32165427404345278)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(32164024506311112)
,p_button_name=>'FIND_USER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Find User'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32115428433186060)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(32164024506311112)
,p_button_name=>'SAVE_USER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save User'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32120015385457357)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(32164024506311112)
,p_button_name=>'ADD_USER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32111926477060140)
,p_name=>'P50_LOGIN_ITEMS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32111627638053406)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Login'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>15
,p_cHeight=>1
,p_new_grid=>true
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32112121516062437)
,p_name=>'P50_SECURITY_LEVEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(32480214333846362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Current Security Level'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT SECURITY_LEVEL',
'FROM DMD_LTR_EMP_SECURITY',
'WHERE LOGIN = :P50_LOGIN_ACCESS'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>15
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32112634012071839)
,p_name=>'P50_LEVEL_DEFINITION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(32480214333846362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Level Definition'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LEVEL_DEFINITION',
'FROM DMD_LTR_SECURITY_LEVEL',
'WHERE SECURITY_LEVEL = :P50_SECURITY_LEVEL'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>15
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32164337337325497)
,p_name=>'P50_LOGIN_ACCESS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32480214333846362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Login'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>15
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32189530846007905)
,p_name=>'P50_NEW_SECURITY_LEVEL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(32480214333846362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Security Level'
,p_source=>'ADD_SECURITY_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SECURITY_LEVEL'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SECURITY_LEVEL as display_value, SECURITY_LEVEL as return_value ',
'  from DMD_LTR_SECURITY_LEVEL',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32475014852335746)
,p_name=>'P50_LEVEL_DEF_ADMIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(32480214333846362)
,p_prompt=>'1 = Admin'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32475428642344507)
,p_name=>'P50_LEVEL_DEF_INPUT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(32480214333846362)
,p_prompt=>'2 = Input Analyst'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32475620447348273)
,p_name=>'P50_LEVEL_DEF_ANA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(32480214333846362)
,p_prompt=>'3 = Research Analyst'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32630116266803185)
,p_name=>'P50_PAGE_TITLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(32111315864050008)
,p_prompt=>'<b><U>Administration:</U></b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32716132157526861)
,p_name=>'P50_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32480214333846362)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMPLOYEE_STATUS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select STATUS as display_value, STATUS as return_value ',
'  from DMD_LTR_EMP_STATUS',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>15
,p_cMaxlength=>15
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32908512896263357)
,p_name=>'P50_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32111627638053406)
,p_prompt=>'<U>Find all items for a user:</U>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(32899709158292737)
,p_validation_name=>'VAL SAVE BUTTON'
,p_validation_sequence=>10
,p_validation=>'P50_STATUS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please make sure that all of the fields are populated before you save.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(32115428433186060)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(32716132157526861)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32161116269214134)
,p_name=>'FIND_USER'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(32115215274182323)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32161409925214146)
,p_event_id=>wwv_flow_api.id(32161116269214134)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32160331722209170)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32162709388232086)
,p_event_id=>wwv_flow_api.id(32161116269214134)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32160331722209170)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32167613134411905)
,p_name=>'FIND_USER'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(32165427404345278)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>':P50_LOGIN_ACCESS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32507611769476561)
,p_event_id=>wwv_flow_api.id(32167613134411905)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Please enter valid search information.'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32901509047429516)
,p_event_id=>wwv_flow_api.id(32167613134411905)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'window.onerror = function () ',
'{',
'   alert("Please enter a valid login ID.");',
'}'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32167906526411905)
,p_event_id=>wwv_flow_api.id(32167613134411905)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT SECURITY_LEVEL, SECURITY_LEVEL, STATUS',
'',
'INTO :P50_SECURITY_LEVEL, :P50_NEW_SECURITY_LEVEL, :P50_STATUS',
'',
'FROM DMD_LTR_EMP_SECURITY',
'',
'WHERE LOGIN = UPPER(:P50_LOGIN_ACCESS);'))
,p_attribute_02=>'P50_LOGIN_ACCESS'
,p_attribute_03=>'P50_LOGIN_ACCESS,P50_SECURITY_LEVEL,P50_NEW_SECURITY_LEVEL,P50_STATUS'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32169907601485986)
,p_name=>'CLEAR'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(32169730326483156)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32170216765485987)
,p_event_id=>wwv_flow_api.id(32169907601485986)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_LOGIN_ACCESS,P50_LOGIN_ITEMS,P50_SECURITY_LEVEL,P50_LEVEL_DEFINITION,P50_ADD_LOGIN,P50_ADD_SECURITY_LEVEL,P50_NEW_SECURITY_LEVEL,P50_STATUS'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32490827365119921)
,p_event_id=>wwv_flow_api.id(32169907601485986)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32160331722209170)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32713135590282202)
,p_event_id=>wwv_flow_api.id(32169907601485986)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32710023390236167)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32188915181002544)
,p_name=>'ADD_USER'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(32120015385457357)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32190023932026259)
,p_event_id=>wwv_flow_api.id(32188915181002544)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to add the new employee?'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32189205881002547)
,p_event_id=>wwv_flow_api.id(32188915181002544)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO DMD_LTR_EMP_SECURITY',
'',
'(LOGIN, SECURITY_LEVEL, STATUS, NEW_PW_FLAG, PASSWORD, DATA_DATE)',
'',
'VALUES (UPPER(:P50_LOGIN_ACCESS), :P50_NEW_SECURITY_LEVEL, :P50_STATUS, 1, ''PASSWORD1'',SYSDATE);'))
,p_attribute_02=>'P50_LOGIN_ACCESS,P50_NEW_SECURITY_LEVEL,P50_STATUS'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32493314185156429)
,p_event_id=>wwv_flow_api.id(32188915181002544)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_ADD_LOGIN,P50_LEVEL_DEF_ADMIN,P50_LOGIN_ACCESS,P50_LOGIN_ITEMS,P50_ADD_SECURITY_LEVEL,P50_LEVEL_DEFINITION,P50_LEVEL_DEF_INPUT,P50_LEVEL_DEF_ANA,P50_SECURITY_LEVEL,P50_NEW_SECURITY_LEVEL,P50_STATUS'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32493511813157486)
,p_event_id=>wwv_flow_api.id(32188915181002544)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32160331722209170)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32723429410579102)
,p_event_id=>wwv_flow_api.id(32188915181002544)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32710023390236167)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32190232328045385)
,p_name=>'UPDATE_USER'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(32115428433186060)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32897807772609724)
,p_event_id=>wwv_flow_api.id(32190232328045385)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO DMD_LTR_EMP_SECURITY_AUDIT',
'(LOGIN, SECURITY_LEVEL, STATUS, PASSWORD, NEW_PW_FLAG, AUDIT_DT, AUDIT_USER, DATA_DATE)',
'',
'SELECT ',
'LOGIN, SECURITY_LEVEL, STATUS, PASSWORD, NEW_PW_FLAG, SYSDATE, UPPER(:P150_USERNAME), DATA_DATE',
'',
'FROM DMD_LTR_EMP_SECURITY',
'',
'WHERE LOGIN = UPPER(:P50_LOGIN_ACCESS);',
''))
,p_attribute_02=>'P50_LOGIN_ACCESS,P50_STATUS,P50_SECURITY_LEVEL'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32190532049045385)
,p_event_id=>wwv_flow_api.id(32190232328045385)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'UPDATE DMD_LTR_EMP_SECURITY',
'',
'SET ',
'SECURITY_LEVEL = :P50_NEW_SECURITY_LEVEL, STATUS = :P50_STATUS, DATA_DATE = SYSDATE',
'',
'WHERE LOGIN = UPPER(:P50_LOGIN_ACCESS);'))
,p_attribute_02=>'P50_ADD_LOGIN,P50_NEW_SECURITY_LEVEL,P50_LOGIN_ACCESS,P50_STATUS'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32190823045057037)
,p_event_id=>wwv_flow_api.id(32190232328045385)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to save the employee update?'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32492926477150710)
,p_event_id=>wwv_flow_api.id(32190232328045385)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_ADD_LOGIN,P50_LEVEL_DEF_ADMIN,P50_LOGIN_ACCESS,P50_LOGIN_ITEMS,P50_ADD_SECURITY_LEVEL,P50_LEVEL_DEFINITION,P50_LEVEL_DEF_INPUT,P50_LEVEL_DEF_ANA,P50_SECURITY_LEVEL,P50_NEW_SECURITY_LEVEL,P50_STATUS'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32493121733152886)
,p_event_id=>wwv_flow_api.id(32190232328045385)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32160331722209170)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32724425072611450)
,p_event_id=>wwv_flow_api.id(32190232328045385)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32710023390236167)
,p_stop_execution_on_error=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32898326713646565)
,p_event_id=>wwv_flow_api.id(32190232328045385)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'The employee has been saved.'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32713307207288278)
,p_name=>'SHOW_ALL_USERS'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(32709513216223830)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32713609721288278)
,p_event_id=>wwv_flow_api.id(32713307207288278)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32710023390236167)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(27106420925346893)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20140725113247'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27116515065346901)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108929626346895)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27116816290346901)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(27116515065346901)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114613016346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(32807826944921333)
,p_branch_name=>'GO_TO_NEW_PW'
,p_branch_action=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'',
'FROM DMD_LTR_EMP_SECURITY',
'',
'WHERE LOGIN = UPPER(:P101_USERNAME)',
'AND PASSWORD = UPPER(:P101_PASSWORD)',
'AND STATUS = ''ACTIVE''',
'AND NEW_PW_FLAG = 1'))
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(32808033870923266)
,p_branch_name=>'GO_TO_HOMEPAGE'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'',
'FROM DMD_LTR_EMP_SECURITY',
'',
'WHERE LOGIN = UPPER(:P101_USERNAME)',
'AND STATUS = ''ACTIVE''',
'AND PASSWORD = UPPER(:P101_PASSWORD)',
'AND NEW_PW_FLAG IS NULL'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27116625951346901)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27116515065346901)
,p_prompt=>'Username'
,p_source=>'LOGIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27116732281346901)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27116515065346901)
,p_prompt=>'Password'
,p_source=>'PASSWORD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(32807734920918636)
,p_validation_name=>'P101_USER_PW'
,p_validation_sequence=>10
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'',
'FROM DMD_LTR_EMP_SECURITY',
'',
'WHERE LOGIN = UPPER(:P101_USERNAME)',
'AND STATUS = ''ACTIVE''',
'AND PASSWORD <> UPPER(TRIM(:P101_PASSWORD))'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'Please enter a valid password.'
,p_always_execute=>'Y'
,p_only_for_changed_rows=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00155
begin
wwv_flow_api.create_page(
 p_id=>155
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_name=>'New Password'
,p_page_mode=>'NORMAL'
,p_step_title=>'New Password'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27106633597346893)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20140411085210'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32779627583417285)
,p_plug_name=>'Password Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
,p_plug_display_sequence=>20
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
 p_id=>wwv_flow_api.id(32782412972583321)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>' '
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32780422925417302)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(32779627583417285)
,p_button_name=>'P155_LOGIN'
,p_button_static_id=>'P155_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(32783807960609418)
,p_branch_name=>'GO_TO_HOME'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'',
'FROM DMD_LTR_EMP_SECURITY',
'',
'WHERE LOGIN = UPPER(:P150_USERNAME)',
'AND STATUS = ''ACTIVE''',
'AND PASSWORD = UPPER(:P155_CONFIRM_PASSWORD)',
'AND NEW_PW_FLAG IS NULL'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32779806125417294)
,p_name=>'P155_NEW_PASSWORD'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32779627583417285)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Password:'
,p_source=>'LOGIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32780010893417299)
,p_name=>'P155_CONFIRM_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32779627583417285)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Confirm Password:'
,p_source=>'PASSWORD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32782916814590145)
,p_name=>'P155_PAGE_MESSAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(32782412972583321)
,p_prompt=>' Please enter a new password.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32784209818629703)
,p_name=>'SAVE_PASSWORD'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(32780422925417302)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(33583416283178989)
,p_event_id=>wwv_flow_api.id(32784209818629703)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO DMD_LTR_EMP_SECURITY_AUDIT',
'',
'(LOGIN, SECURITY_LEVEL, STATUS, PASSWORD, NEW_PW_FLAG, AUDIT_DT, AUDIT_USER)',
'',
'SELECT',
'LOGIN, SECURITY_LEVEL, STATUS, PASSWORD, NEW_PW_FLAG, SYSDATE, UPPER(:P150_USERNAME)',
'',
'FROM DMD_LTR_EMP_SECURITY',
'',
'WHERE LOGIN = UPPER(:P150_USERNAME);',
''))
,p_attribute_02=>'P155_CONFIRM_PASSWORD,P155_LOGIN,P155_NEW_PASSWORD'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32784524427629710)
,p_event_id=>wwv_flow_api.id(32784209818629703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'UPDATE DMD_LTR_EMP_SECURITY',
'',
'SET PASSWORD = UPPER(:P155_CONFIRM_PASSWORD), NEW_PW_FLAG = NULL',
'',
'WHERE LOGIN = UPPER(:P150_USERNAME)',
'AND STATUS = ''ACTIVE'';'))
,p_attribute_02=>'P155_CONFIRM_PASSWORD,P155_NEW_PASSWORD'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00175
begin
wwv_flow_api.create_page(
 p_id=>175
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESK_TOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(27106633597346893)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20150410072443'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36108517638366957)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
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
 p_id=>wwv_flow_api.id(36126929673439530)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27108014247346894)
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
 p_id=>wwv_flow_api.id(35784516178327623)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(36108517638366957)
,p_button_name=>'P175_LOGIN'
,p_button_static_id=>'P175_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114613016346897)
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
 p_id=>wwv_flow_api.id(35787217237373118)
,p_branch_name=>'GO_TO_HOMEPAGE'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(35784516178327623)
,p_branch_sequence=>50
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35784105089327621)
,p_name=>'P175_USERNAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(36108517638366957)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application user name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35784318047327623)
,p_name=>'P175_PASSWORD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(36108517638366957)
,p_prompt=>'&nbspPassword'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application password.'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36108829128372158)
,p_name=>'P175_APP_TITLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(36108517638366957)
,p_prompt=>'<font face="Agfa Rotis Semi Serif" size="5" color="gray">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspDemand Letter</font>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(27114133038346897)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35784925718327626)
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
 p_id=>wwv_flow_api.id(35784718291327624)
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
 p_id=>wwv_flow_api.id(35785110025327627)
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
,p_user_interface_id=>wwv_flow_api.id(27116035100346899)
,p_tab_set=>'Demand Letter'
,p_name=>'Demand Letter Report'
,p_page_mode=>'NORMAL'
,p_step_title=>'Report'
,p_step_sub_title=>'Bid Output'
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
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20141124120236'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40008824306620339)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27109631577346895)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(40010422335620389)
,p_name=>'Bid Results'
,p_template=>wwv_flow_api.id(27110213235346895)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from (',
'select ',
' "ANALYST",',
' "APPEALS",',
' "CLIENT",',
' "COMMENTS",',
' "CONVEY_DATE",',
' "DATA_DATE",',
' "DATE_RESOLVED",',
' "DEMAND_LTR_NUM",',
' "DISPUTE_AMOUNT",',
' "DISPUTE_COMMENTS",',
' "DISPUTE_REASON",',
' "FHA_CASE",',
' "ISSUE_DATE",',
' "LOAN_NUM",',
' "MONTH_YEAR_RECEIVED",',
' "RECEIPT_DATE",',
' "REQUESTOR_CONTACT",',
' "RESCINDED_AMOUNT",',
' "RESPONSE_DUE_DATE",',
' "RESPONSIBLE_PARTY",',
' "STATUS",',
' "WORK_ORDER",',
' "WORKING",',
' "APPEAL_COMMENTS",',
' "APPEAL_DATE",',
' "APPEAL_ENTERED_DATE",',
' "APPEAL_RECIPIENT",',
' "APPEAL_RESPONSE_DATE",',
' "APP_APPEALS",',
' "APP_INTERNAL_RESPONS",',
' "APP_WORK_ORDER",',
' "RESP_APPEALS",',
' "CHARGE_BCK_AMOUNT",',
' "CHARGE_BCK_REASON",',
' "DEPARTMENT_RESPONSIBLE",',
' "ENTERED_DT",',
' "RESP_INTERNAL_RESPONS",',
' "RESPONSIBLE_EMPLOYEE",',
' "RESPONSIBLE_ID",',
' "VENDOR_RESPONSIBLE",',
' "RESP_WORK_ORDER",',
' "WRITE_OFF_AMOUNT",',
' "WRITE_OFF_REASON"',
'from #OWNER#.VW_DMD_LTR_OUTPUT)',
'where (',
' instr(upper("ANALYST"),upper(nvl(:P200_REPORT_SEARCH,"ANALYST"))) > 0  or',
' instr(upper("CLIENT"),upper(nvl(:P200_REPORT_SEARCH,"CLIENT"))) > 0  or',
' instr(upper("DISPUTE_COMMENTS"),upper(nvl(:P200_REPORT_SEARCH,"DISPUTE_COMMENTS"))) > 0  or',
' instr(upper("DISPUTE_REASON"),upper(nvl(:P200_REPORT_SEARCH,"DISPUTE_REASON"))) > 0  or',
' instr(upper("FHA_CASE"),upper(nvl(:P200_REPORT_SEARCH,"FHA_CASE"))) > 0  or',
' instr(upper("REQUESTOR_CONTACT"),upper(nvl(:P200_REPORT_SEARCH,"REQUESTOR_CONTACT"))) > 0  or',
' instr(upper("RESPONSIBLE_PARTY"),upper(nvl(:P200_REPORT_SEARCH,"RESPONSIBLE_PARTY"))) > 0  or',
' instr(upper("STATUS"),upper(nvl(:P200_REPORT_SEARCH,"STATUS"))) > 0  or',
' instr(upper("WORKING"),upper(nvl(:P200_REPORT_SEARCH,"WORKING"))) > 0  or',
' instr(upper("APPEAL_RECIPIENT"),upper(nvl(:P200_REPORT_SEARCH,"APPEAL_RECIPIENT"))) > 0  or',
' instr(upper("APP_INTERNAL_RESPONS"),upper(nvl(:P200_REPORT_SEARCH,"APP_INTERNAL_RESPONS"))) > 0  or',
' instr(upper("CHARGE_BCK_REASON"),upper(nvl(:P200_REPORT_SEARCH,"CHARGE_BCK_REASON"))) > 0  or',
' instr(upper("DEPARTMENT_RESPONSIBLE"),upper(nvl(:P200_REPORT_SEARCH,"DEPARTMENT_RESPONSIBLE"))) > 0  or',
' instr(upper("RESP_INTERNAL_RESPONS"),upper(nvl(:P200_REPORT_SEARCH,"RESP_INTERNAL_RESPONS"))) > 0  or',
' instr(upper("RESPONSIBLE_EMPLOYEE"),upper(nvl(:P200_REPORT_SEARCH,"RESPONSIBLE_EMPLOYEE"))) > 0  or',
' instr(upper("VENDOR_RESPONSIBLE"),upper(nvl(:P200_REPORT_SEARCH,"VENDOR_RESPONSIBLE"))) > 0  or',
' instr(upper("WRITE_OFF_REASON"),upper(nvl(:P200_REPORT_SEARCH,"WRITE_OFF_REASON"))) > 0 ',
')',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(27111428957346896)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P200_ROWS'
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
 p_id=>wwv_flow_api.id(40010707884620394)
,p_query_column_id=>1
,p_column_alias=>'ANALYST'
,p_column_display_sequence=>1
,p_column_heading=>'ANALYST'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40010811963620401)
,p_query_column_id=>2
,p_column_alias=>'APPEALS'
,p_column_display_sequence=>3
,p_column_heading=>'APPEALS'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40010918108620402)
,p_query_column_id=>3
,p_column_alias=>'CLIENT'
,p_column_display_sequence=>4
,p_column_heading=>'CLIENT'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40011007181620402)
,p_query_column_id=>4
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>5
,p_column_heading=>'COMMENTS'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40011131246620402)
,p_query_column_id=>5
,p_column_alias=>'CONVEY_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'CONVEY_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40011215644620402)
,p_query_column_id=>6
,p_column_alias=>'DATA_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'DATA_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40011318663620402)
,p_query_column_id=>7
,p_column_alias=>'DATE_RESOLVED'
,p_column_display_sequence=>8
,p_column_heading=>'DATE_RESOLVED'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40011407274620402)
,p_query_column_id=>8
,p_column_alias=>'DEMAND_LTR_NUM'
,p_column_display_sequence=>9
,p_column_heading=>'DEMAND_LTR_NUM'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40011526786620402)
,p_query_column_id=>9
,p_column_alias=>'DISPUTE_AMOUNT'
,p_column_display_sequence=>10
,p_column_heading=>'DISPUTE_AMOUNT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40011637000620402)
,p_query_column_id=>10
,p_column_alias=>'DISPUTE_COMMENTS'
,p_column_display_sequence=>11
,p_column_heading=>'DISPUTE_COMMENTS'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40011718104620402)
,p_query_column_id=>11
,p_column_alias=>'DISPUTE_REASON'
,p_column_display_sequence=>12
,p_column_heading=>'DISPUTE_REASON'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40011828655620402)
,p_query_column_id=>12
,p_column_alias=>'FHA_CASE'
,p_column_display_sequence=>13
,p_column_heading=>'FHA_CASE'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40011909108620402)
,p_query_column_id=>13
,p_column_alias=>'ISSUE_DATE'
,p_column_display_sequence=>14
,p_column_heading=>'ISSUE_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40012022456620402)
,p_query_column_id=>14
,p_column_alias=>'LOAN_NUM'
,p_column_display_sequence=>2
,p_column_heading=>'LOAN_NUM'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40012123766620402)
,p_query_column_id=>15
,p_column_alias=>'MONTH_YEAR_RECEIVED'
,p_column_display_sequence=>15
,p_column_heading=>'MONTH_YEAR_RECEIVED'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40012216665620402)
,p_query_column_id=>16
,p_column_alias=>'RECEIPT_DATE'
,p_column_display_sequence=>16
,p_column_heading=>'RECEIPT_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40012306832620402)
,p_query_column_id=>17
,p_column_alias=>'REQUESTOR_CONTACT'
,p_column_display_sequence=>17
,p_column_heading=>'REQUESTOR_CONTACT'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40012410930620402)
,p_query_column_id=>18
,p_column_alias=>'RESCINDED_AMOUNT'
,p_column_display_sequence=>18
,p_column_heading=>'RESCINDED_AMOUNT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40012532355620402)
,p_query_column_id=>19
,p_column_alias=>'RESPONSE_DUE_DATE'
,p_column_display_sequence=>19
,p_column_heading=>'RESPONSE_DUE_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40012606662620402)
,p_query_column_id=>20
,p_column_alias=>'RESPONSIBLE_PARTY'
,p_column_display_sequence=>20
,p_column_heading=>'RESPONSIBLE_PARTY'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40012718443620402)
,p_query_column_id=>21
,p_column_alias=>'STATUS'
,p_column_display_sequence=>21
,p_column_heading=>'STATUS'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40012832451620402)
,p_query_column_id=>22
,p_column_alias=>'WORK_ORDER'
,p_column_display_sequence=>22
,p_column_heading=>'WORK_ORDER'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40012916431620402)
,p_query_column_id=>23
,p_column_alias=>'WORKING'
,p_column_display_sequence=>23
,p_column_heading=>'WORKING'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40013023700620402)
,p_query_column_id=>24
,p_column_alias=>'APPEAL_COMMENTS'
,p_column_display_sequence=>24
,p_column_heading=>'APPEAL_COMMENTS'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40013105592620402)
,p_query_column_id=>25
,p_column_alias=>'APPEAL_DATE'
,p_column_display_sequence=>25
,p_column_heading=>'APPEAL_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40013225023620402)
,p_query_column_id=>26
,p_column_alias=>'APPEAL_ENTERED_DATE'
,p_column_display_sequence=>26
,p_column_heading=>'APPEAL_ENTERED_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40013325630620402)
,p_query_column_id=>27
,p_column_alias=>'APPEAL_RECIPIENT'
,p_column_display_sequence=>27
,p_column_heading=>'APPEAL_RECIPIENT'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40013434748620403)
,p_query_column_id=>28
,p_column_alias=>'APPEAL_RESPONSE_DATE'
,p_column_display_sequence=>28
,p_column_heading=>'APPEAL_RESPONSE_DATE'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40013517001620403)
,p_query_column_id=>29
,p_column_alias=>'APP_APPEALS'
,p_column_display_sequence=>29
,p_column_heading=>'APP_APPEALS'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40013622652620403)
,p_query_column_id=>30
,p_column_alias=>'APP_INTERNAL_RESPONS'
,p_column_display_sequence=>30
,p_column_heading=>'APP_INTERNAL_RESPONS'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40013712503620403)
,p_query_column_id=>31
,p_column_alias=>'APP_WORK_ORDER'
,p_column_display_sequence=>31
,p_column_heading=>'APP_WORK_ORDER'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40013817965620403)
,p_query_column_id=>32
,p_column_alias=>'RESP_APPEALS'
,p_column_display_sequence=>32
,p_column_heading=>'RESP_APPEALS'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40013928292620403)
,p_query_column_id=>33
,p_column_alias=>'CHARGE_BCK_AMOUNT'
,p_column_display_sequence=>33
,p_column_heading=>'CHARGE_BCK_AMOUNT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40014031885620403)
,p_query_column_id=>34
,p_column_alias=>'CHARGE_BCK_REASON'
,p_column_display_sequence=>34
,p_column_heading=>'CHARGE_BCK_REASON'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40014125007620403)
,p_query_column_id=>35
,p_column_alias=>'DEPARTMENT_RESPONSIBLE'
,p_column_display_sequence=>35
,p_column_heading=>'DEPARTMENT_RESPONSIBLE'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40014233324620403)
,p_query_column_id=>36
,p_column_alias=>'ENTERED_DT'
,p_column_display_sequence=>36
,p_column_heading=>'ENTERED_DT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40014316873620403)
,p_query_column_id=>37
,p_column_alias=>'RESP_INTERNAL_RESPONS'
,p_column_display_sequence=>37
,p_column_heading=>'RESP_INTERNAL_RESPONS'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40014413627620403)
,p_query_column_id=>38
,p_column_alias=>'RESPONSIBLE_EMPLOYEE'
,p_column_display_sequence=>38
,p_column_heading=>'RESPONSIBLE_EMPLOYEE'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40014515060620403)
,p_query_column_id=>39
,p_column_alias=>'RESPONSIBLE_ID'
,p_column_display_sequence=>39
,p_column_heading=>'RESPONSIBLE_ID'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40014631403620403)
,p_query_column_id=>40
,p_column_alias=>'VENDOR_RESPONSIBLE'
,p_column_display_sequence=>40
,p_column_heading=>'VENDOR_RESPONSIBLE'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40014721024620403)
,p_query_column_id=>41
,p_column_alias=>'RESP_WORK_ORDER'
,p_column_display_sequence=>41
,p_column_heading=>'RESP_WORK_ORDER'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40014810186620404)
,p_query_column_id=>42
,p_column_alias=>'WRITE_OFF_AMOUNT'
,p_column_display_sequence=>42
,p_column_heading=>'WRITE_OFF_AMOUNT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40014936286620404)
,p_query_column_id=>43
,p_column_alias=>'WRITE_OFF_REASON'
,p_column_display_sequence=>43
,p_column_heading=>'WRITE_OFF_REASON'
,p_column_hit_highlight=>'&P200_REPORT_SEARCH.'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40015411585648972)
,p_plug_name=>'Bid Results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
,p_plug_display_sequence=>40
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40379405908709617)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27107927064346894)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40009512365620355)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(40008824306620339)
,p_button_name=>'P200_GO'
,p_button_static_id=>'P200_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
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
 p_id=>wwv_flow_api.id(40009734160620357)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(40008824306620339)
,p_button_name=>'P200_RESET'
,p_button_static_id=>'P200_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Reset'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'RESET'
,p_request_source_type=>'STATIC'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40015924876662272)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(40008824306620339)
,p_button_name=>'P200_MAIN_MENU'
,p_button_static_id=>'P200_MAIN_MENU'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27114816989346897)
,p_button_image_alt=>'Main Menu'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(40010326438620380)
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40009120679620347)
,p_name=>'P200_REPORT_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40008824306620339)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40009327709620352)
,p_name=>'P200_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40008824306620339)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P200_Report Row Per Page'
,p_lov=>'.'||wwv_flow_api.id(40005605278620272)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27114224201346897)
,p_item_template_options=>'#DEFAULT#'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40380109220720659)
,p_name=>'P200_LABEL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(40379405908709617)
,p_prompt=>'Demand Letter Report'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(32622313907253584)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40009914924620358)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GO,P200_REPORT_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40010120977620376)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P200_REPORT_SEARCH,P200_ROWS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(40009734160620357)
);
end;
/
prompt --application/deployment/definition
begin
null;
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
