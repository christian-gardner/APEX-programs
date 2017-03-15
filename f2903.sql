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
,p_default_application_id=>2903
,p_default_owner=>'RDM'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 2903 - Project Incident Tracker
--
-- Application Export:
--   Application:     2903
--   Name:            Project Incident Tracker
--   Date and Time:   12:29 Wednesday March 15, 2017
--   Exported By:     CHRISTIAN.GARDNER
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     69427033981319
--

-- Application Statistics:
--   Pages:                     12
--     Items:                  176
--     Validations:              1
--     Processes:               15
--     Regions:                121
--     Buttons:                 17
--     Dynamic Actions:         16
--   Shared Components:
--     Logic:
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 3
--       Lists:                  1
--       Breadcrumbs:            1
--         Entries:              2
--       NavBar Entries:         1
--     Security:
--       Authentication:         2
--     User Interface:
--       Themes:                 4
--       Templates:
--         Page:                33
--         Region:              76
--         Label:               16
--         List:                53
--         Popup LOV:            3
--         Calendar:             9
--         Breadcrumb:           6
--         Button:              16
--         Report:              28
--       LOVs:                   8
--       Shortcuts:              1
--       Plug-ins:               1
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,2903)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'RDM')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Project Incident Tracker')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_10229031092903')
,p_application_group=>3409329326592262
,p_application_group_name=>'IT'
,p_application_group_comment=>'IT Aplications.'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20170124083413'
,p_bookmark_checksum_function=>'MD5'
,p_max_session_idle_sec=>3600
,p_on_max_idle_timeout_url=>'10.217.84.48:7778/pls/apex/f?p=102'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'MM-DD-YY'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(45579128996474256)
,p_application_tab_set=>0
,p_logo_image=>'#WORKSPACE_IMAGES#SPI_RGB.jpg'
,p_logo_image_attributes=>'alt="Safeguardproperties"; title="Safeguardproperties"'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 2.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20170124083413'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(33366648750463198)
,p_name=>'Navigation'
,p_list_status=>'PUBLIC'
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
 p_id=>wwv_flow_api.id(9419929413191236)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(9534238349456182)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(33355335538463177)
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
 p_id=>wwv_flow_api.id(37442546904353922)
,p_icon_sequence=>10
,p_icon_subtext=>'| Log Out'
,p_icon_target=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:1:::'
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
 p_id=>wwv_flow_api.id(34635439556053477)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_HOME'
,p_tab_text=>'Home'
,p_tab_step=>1
,p_tab_plsql_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM PRJ_EMP_SECURITY',
'WHERE LOGIN = :P175_USERNAME'))
,p_display_condition_type=>'EXISTS'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(33367145500463200)
,p_tab_set=>'TS1'
,p_tab_sequence=>20
,p_tab_name=>'T_PRIORITY_ALL'
,p_tab_text=>'PIT'
,p_tab_step=>5
,p_tab_plsql_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM PRJ_EMP_SECURITY',
'WHERE LOGIN = :P175_USERNAME'))
,p_display_condition_type=>'EXISTS'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(37453735331799805)
,p_tab_set=>'TS1'
,p_tab_sequence=>30
,p_tab_name=>'T_REPORTPAGE'
,p_tab_text=>'Report Page'
,p_tab_step=>4
,p_tab_plsql_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM PRJ_EMP_SECURITY',
'WHERE LOGIN = :P175_USERNAME'))
,p_display_condition_type=>'EXISTS'
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
 p_id=>wwv_flow_api.id(34265949176379418)
,p_lov_name=>'ASSIGNMENT'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FULL_NAME as d, FULL_NAME as r ',
'  from PRJ_ASSIGNMENTS ',
' order by d nulls first'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(42633638765588666)
,p_lov_name=>'EXECUTIVE'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select EXECUTIVE as display_value, EXECUTIVE as return_value ',
'  from PRJ_EXECUTIVE',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(34008652628832735)
,p_lov_name=>'HEALTH'
,p_lov_query=>'.'||wwv_flow_api.id(34008652628832735)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(34008943604832736)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'G'
,p_lov_return_value=>'G'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(34009244834832741)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Y'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(34009539885832742)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'R'
,p_lov_return_value=>'R'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(34001925678631956)
,p_lov_name=>'ITGROUP'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ITGROUP as display_value, ITGROUP as return_value ',
'  from PRJ_IT_GROUP',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(34001634304628010)
,p_lov_name=>'REQGROUP'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select REQGROUP as display_value, REQGROUP as return_value ',
'  from PRJ_REQ_GROUP',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(37486944018578857)
,p_lov_name=>'SERVICE LINES'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SVC_LINE as display_value, SVC_LINE as return_value ',
'  from PRJ_SVC_LINE',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(37487741406610443)
,p_lov_name=>'SHIRT_SIZE'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SHIRT_SIZE as display_value, SHIRT_SIZE as return_value ',
'  from PRJ_SHIRT_SIZE',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(34229540150752463)
,p_lov_name=>'STATUS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPLAY as display_value, DISPLAY as return_value ',
'  from PRJ_STATUS_ORDER',
' order by SORT_ORDER'))
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
 p_id=>wwv_flow_api.id(33366145858463193)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(33366747175463199)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(33377450834463213)
,p_parent_id=>wwv_flow_api.id(33366747175463199)
,p_option_sequence=>20
,p_short_name=>'Priority All'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.'
,p_page_id=>2
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(33355429614463177)
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
 p_id=>wwv_flow_api.id(33355522903463178)
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
 p_id=>wwv_flow_api.id(33355653691463178)
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
 p_id=>wwv_flow_api.id(33355743210463178)
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
 p_id=>wwv_flow_api.id(33355844480463178)
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
 p_id=>wwv_flow_api.id(33355934989463178)
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
 p_id=>wwv_flow_api.id(33356040088463179)
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
 p_id=>wwv_flow_api.id(33356137215463179)
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
 p_id=>wwv_flow_api.id(33356242172463179)
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
 p_id=>wwv_flow_api.id(33356350361463179)
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
 p_id=>wwv_flow_api.id(33356445859463179)
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
 p_id=>wwv_flow_api.id(33356551333463179)
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
 p_id=>wwv_flow_api.id(33356644721463179)
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
 p_id=>wwv_flow_api.id(33356730812463179)
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
 p_id=>wwv_flow_api.id(33356826868463180)
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
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35006623248440516)
,p_theme_id=>13
,p_name=>'Login'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_13/theme_4_0.css" type="text/css" />',
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
'<title>#TITLE#</title>',
'</head>',
'<body #ONLOAD#><noscript>&MSG_JSCRIPT.</noscript>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="t13Logo2">#LOGO#</div>',
'<div class="t13Sep"><br/></div>',
'<div id="t13BreadcrumbTop">&nbsp;</div>',
'<div class="t13BreadcrumbRegion"><br /></div>',
'<a name="SkipRepNav"></a>',
'<div id="t13MessageHolder">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div class="t13BodyMargin">',
'<table border="0" cellspacing="0" cellpadding="0" align="center" width="600">',
'<tr><td>',
'#REGION_POSITION_02##REGION_POSITION_04##BODY#',
'</td>',
'</tr>',
'</table>',
'<div style="float:right;">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13NewBottom"><div class="t13NewBottom1">&BROWSER_LANGUAGE.</div><div class="t13NewBottom2">&MSG_COPYRIGHT.</div><br style="clear:both;"/>',
'</div>',
'#FORM_CLOSE#',
'<a name="END"><br /></a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t13SuccessMessage">#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t13Notification">#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t13NavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35006822986440518)
,p_theme_id=>13
,p_name=>'No Tabs'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_13/theme_4_0.css" type="text/css" />',
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
'<title>#TITLE#</title>',
'</head>',
'<body #ONLOAD#><noscript>&MSG_JSCRIPT.</noscript>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td valign="top"><a id="t13Logo2" href="#">#LOGO#</a><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t13BreadcrumbTop">&nbsp;</div>',
'<table class="t13Layout" cellpadding="0" cellspacing="0" border="0" summary="" width="100%">',
'<tr>',
'<td class="t13BreadcrumbRegion"><div class="t13Breadcrumbs">#REGION_POSITION_01#<span id="t13Customize">#CUSTOMIZE#</span></div></td>',
'</table>',
'<a name="SkipRepNav"></a>',
'<div id="t13MessageHolder">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div class="t13BodyMargin">',
'<table summary="" cellpadding="0" cellspacing="0" border="0" height="70%">',
'<tr>',
'<td valign="top" width="100%">#BODY##REGION_POSITION_02##REGION_POSITION_04#</td>',
'<td class="t13ColumnSep"><div class="t13ColumnSep"><br /></div></td>',
'<td valign="top"><div style="float:right;">#REGION_POSITION_03#</div></td>',
'</tr>',
'</table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13NewBottom"><div id="t13User">&USER.</div><div class="t13NewBottom1">&BROWSER_LANGUAGE.</div>',
'<div class="t13NewBottom2">&MSG_COPYRIGHT.</div>',
'<br style="clear:both;"/>',
'</div>',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'<a name="END"><br /></a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13SuccessMessage">#SUCCESS_MESSAGE#</div>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13Notification">#MESSAGE#</div>',
''))
,p_navigation_bar=>'<div id="t13NavBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t13NavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width=""'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13WizardRegion" summary="" cellpadding="0" cellspacing="0" border="0" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle"></th>',
'<th class="t13RegionButtons">',
'<a href="#BACK_LINK#" class="t13ButtonAlternative1">#OK#</a>',
'</th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td colspan="2" class="t13RegionBody">',
'',
'  <p>#MESSAGE#</p>',
'  <strong>#ADDITIONAL_INFO#</strong>',
'  <br />',
'  <br />',
'  <div class="error_technical_info">#TECHNICAL_INFO#</div>',
'',
'</td>',
'</tr>',
'</tbody>',
'</table>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35007125916440519)
,p_theme_id=>13
,p_name=>'No Tabs with Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_13/theme_4_0.css" type="text/css" />',
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
'<title>#TITLE#</title>',
'</head>',
'<body #ONLOAD#><noscript>&MSG_JSCRIPT.</noscript>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td valign="top"><a id="t13Logo2" href="#">#LOGO#</a><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t13BreadcrumbTop">&nbsp;</div>',
'<table class="t13Layout" cellpadding="0" cellspacing="0" border="0" summary="" width="100%">',
'<tr>',
'<td class="t13BreadcrumbRegion"><div class="t13Breadcrumbs">#REGION_POSITION_01#<span id="t13Customize">#CUSTOMIZE#</span></div></td>',
'</table>',
'<a name="SkipRepNav"></a>',
'<div id="t13MessageHolder">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div class="t13BodyMargin">',
'<table summary="" cellpadding="0" cellspacing="0" border="0" height="70%">',
'<tr>',
'<td valign="top">#REGION_POSITION_02#</td>',
'<td class="t13ColumnSep"><div class="t13ColumnSep"><br /></div></td>',
'<td valign="top" width="100%">#BODY##REGION_POSITION_04#</td>',
'<td class="t13ColumnSep"><div class="t13ColumnSep"><br /></div></td>',
'<td valign="top"><div style="float:right;">#REGION_POSITION_03#</div></td>',
'</tr>',
'</table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13NewBottom"><div id="t13User">&USER.</div><div class="t13NewBottom1">&BROWSER_LANGUAGE.</div>',
'<div class="t13NewBottom2">&MSG_COPYRIGHT.</div>',
'<br style="clear:both;"/>',
'</div>',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'<a name="END"><br /></a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13SuccessMessage">#SUCCESS_MESSAGE#</div>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13Notification">#MESSAGE#</div>',
''))
,p_navigation_bar=>'<div id="t13NavBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t13NavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width=""'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35007445796440519)
,p_theme_id=>13
,p_name=>'One Level Tabs'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_13/theme_4_0.css" type="text/css" />',
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
'<title>#TITLE#</title>',
'</head>',
'<body #ONLOAD#><noscript>&MSG_JSCRIPT.</noscript>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td valign="top"><a id="t13Logo2" href="#">#LOGO#</a><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t13PageTabs"><table cellpadding="0" cellspacing="0" border="0" summary="" class="t13PageTabs"><tbody><tr>#TAB_CELLS#</tr></tbody></table>',
'</div>',
'<div id="t13BreadcrumbTop">&nbsp;</div>',
'<table class="t13Layout" cellpadding="0" cellspacing="0" border="0" summary="" width="100%">',
'<tr>',
'<td class="t13BreadcrumbRegion"><div class="t13Breadcrumbs">#REGION_POSITION_01#<span id="t13Customize">#CUSTOMIZE#</span></div></td>',
'</table>',
'<a name="SkipRepNav"></a>',
'<div id="t13MessageHolder">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div class="t13BodyMargin">',
'<table summary="" cellpadding="0" cellspacing="0" border="0" height="70%">',
'<tr>',
'<td valign="top" width="100%">#BODY##REGION_POSITION_02##REGION_POSITION_04#</td>',
'<td class="t13ColumnSep"><div class="t13ColumnSep"><br /></div></td>',
'<td valign="top"><div style="float:right;">#REGION_POSITION_03#</div></td>',
'</tr>',
'</table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13NewBottom"><div id="t13User">&USER.</div><div class="t13NewBottom1">&BROWSER_LANGUAGE.</div>',
'<div class="t13NewBottom2">&MSG_COPYRIGHT.</div>',
'<br style="clear:both;"/>',
'</div>',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'<a name="END"><br /></a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13SuccessMessage">#SUCCESS_MESSAGE#</div>',
''))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="OnL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnL.png" alt="" /></td>',
'<td class="OnC"><span>#TAB_LABEL#</span></td>',
'<td class="OnR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnR.png" alt="" /></td>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="OffL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffL.png" alt="" /></td>',
'<td class="OffC"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td class="OffR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffR.png" alt="" /></td>'))
,p_top_non_curr_tab_font_attr=>'class="parenttabtextoff"'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13Notification">#MESSAGE#</div>',
''))
,p_navigation_bar=>'<div id="t13NavBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t13NavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35007735296440519)
,p_theme_id=>13
,p_name=>'One Level Tabs with Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_13/theme_4_0.css" type="text/css" />',
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
'<title>#TITLE#</title>',
'</head>',
'<body #ONLOAD#><noscript>&MSG_JSCRIPT.</noscript>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td valign="top"><a id="t13Logo2" href="#">#LOGO#</a><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t13PageTabs"><table cellpadding="0" cellspacing="0" border="0" summary="" class="t13PageTabs"><tbody><tr>#TAB_CELLS#</tr></tbody></table>',
'</div>',
'<div id="t13BreadcrumbTop">&nbsp;</div>',
'<table class="t13Layout" cellpadding="0" cellspacing="0" border="0" summary="" width="100%">',
'<tr>',
'<td class="t13BreadcrumbRegion"><div class="t13Breadcrumbs">#REGION_POSITION_01#<span id="t13Customize">#CUSTOMIZE#</span></div></td>',
'</table>',
'<a name="SkipRepNav"></a>',
'<div id="t13MessageHolder">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div class="t13BodyMargin">',
'<table summary="" cellpadding="0" cellspacing="0" border="0" height="70%">',
'<tr>',
'<td valign="top">#REGION_POSITION_02#</td>',
'<td class="t13ColumnSep"><div class="t13ColumnSep"><br /></div></td>',
'<td valign="top" width="100%">#BODY##REGION_POSITION_04#</td>',
'<td class="t13ColumnSep"><div class="htmldbColumnSep"><br /></div></td>',
'<td valign="top"><div style="float:right;">#REGION_POSITION_03#</div></td>',
'</tr>',
'</table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13NewBottom"><div id="t13User">&USER.</div><div class="t13NewBottom1">&BROWSER_LANGUAGE.</div>',
'<div class="t13NewBottom2">&MSG_COPYRIGHT.</div>',
'<br style="clear:both;"/>',
'</div>',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'<a name="END"><br /></a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13SuccessMessage">#SUCCESS_MESSAGE#</div>',
''))
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="OnL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnL.png" alt="" /></td>',
'<td class="OnC"><span>#TAB_LABEL#</span></td>',
'<td class="OnR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnR.png" alt="" /></td>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="OffL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffL.png" alt="" /></td>',
'<td class="OffC"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td class="OffR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffR.png" alt="" /></td>',
''))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13Notification">#MESSAGE#</div>',
''))
,p_navigation_bar=>'<div id="t13NavBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t13NavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35008026978440519)
,p_theme_id=>13
,p_name=>'Popup'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_13/theme_4_0.css" type="text/css" />',
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
'<title>#TITLE#</title>',
'</head>',
'<body #ONLOAD#><noscript>&MSG_JSCRIPT.</noscript>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top"><div class="t13messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td'
||'>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t13success">#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t13notification">#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t13NavigationBar">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35008336119440520)
,p_theme_id=>13
,p_name=>'Printer Friendly'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_13/theme_4_0.css" type="text/css" />',
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
'<title>#TITLE#</title>',
'</head>',
'<body #ONLOAD#><noscript>&MSG_JSCRIPT.</noscript>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td valign="top">#LOGO##REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#REGION_POSITION_08#</td>',
'</table>',
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top">',
'<div style="border:1px solid black;">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'#BODY##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>',
'#REGION_POSITION_05#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t13success">#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t13notification">#MESSAGE#</div>'
,p_navigation_bar=>'<div id="t13NavBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t13NavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35008644554440521)
,p_theme_id=>13
,p_name=>'Two Level Tabs'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_13/theme_4_0.css" type="text/css" />',
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
'<title>#TITLE#</title>',
'</head>',
'<body #ONLOAD#><noscript>&MSG_JSCRIPT.</noscript>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td valign="top"><a id="t13Logo2" href="#">#LOGO#</a><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t13PageTabs"><table cellpadding="0" cellspacing="0" border="0" summary="" class="t13PageTabs"><tbody><tr>#PARENT_TAB_CELLS#</tr></tbody></table>',
'</div>',
'<div id="t13BreadcrumbTop2"><div>#TAB_CELLS#</div></div>',
'<table class="t13Layout" cellpadding="0" cellspacing="0" border="0" summary="" width="100%">',
'<tr>',
'<td class="t13BreadcrumbRegion"><div class="t13Breadcrumbs">#REGION_POSITION_01#</div><span id="t13Customize">#CUSTOMIZE#</span></td>',
'</table>',
'<a name="SkipRepNav"></a>',
'<div id="t13MessageHolder">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div class="t13BodyMargin">',
'<table summary="" cellpadding="0" cellspacing="0" border="0" height="70%">',
'<tr>',
'<td valign="top" width="100%">#BODY##REGION_POSITION_02##REGION_POSITION_04#</td>',
'<td class="t13ColumnSep"><div class="t13ColumnSep"><br /></div></td>',
'<td valign="top"><div style="float:right;">#REGION_POSITION_03#</div></td>',
'</tr>',
'</table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13NewBottom"><div id="t13User">&USER.</div><div class="t13NewBottom1">&BROWSER_LANGUAGE.</div>',
'<div class="t13NewBottom2">&MSG_COPYRIGHT.</div>',
'<br style="clear:both;"/>',
'</div>',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'<a name="END"><br /></a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t13SuccessMessage">#SUCCESS_MESSAGE#</div>'
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<span class="OnC">#TAB_LABEL#</span><b>|</b>',
''))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<span class="OffC"><a href="#TAB_LINK#">#TAB_LABEL#</a></span><b>|</b>',
''))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="OnL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnL.png" alt="" /></td>',
'<td class="OnC"><span>#TAB_LABEL#</span></td>',
'<td class="OnR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnR.png" alt="" /></td>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="OffL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffL.png" alt="" /></td>',
'<td class="OffC"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td class="OffR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffR.png" alt="" /></td>',
''))
,p_notification_message=>'<div class="t13Notification">#MESSAGE#</div>'
,p_navigation_bar=>'<div id="t13NavBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t13NavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="2" width=""'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35008933988440521)
,p_theme_id=>13
,p_name=>'Two Level Tabs with Sidebar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_13/theme_4_0.css" type="text/css" />',
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
'<title>#TITLE#</title>',
'</head>',
'<body #ONLOAD#><noscript>&MSG_JSCRIPT.</noscript>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td valign="top"><a id="t13Logo2" href="#">#LOGO#</a><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<div id="t13PageTabs"><table cellpadding="0" cellspacing="0" border="0" summary="" class="t13PageTabs"><tbody><tr>#PARENT_TAB_CELLS#</tr></tbody></table>',
'</div>',
'<div id="t13BreadcrumbTop2"><div>#TAB_CELLS#</div></div>',
'<table class="t13Layout" cellpadding="0" cellspacing="0" border="0" summary="" width="100%">',
'<tr>',
'<td class="t13BreadcrumbRegion"><div class="t13Breadcrumbs">#REGION_POSITION_01#</div><span id="t13Customize">#CUSTOMIZE#</span></td>',
'</table>',
'<a name="SkipRepNav"></a>',
'<div id="t13MessageHolder">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div class="t13BodyMargin">',
'<table summary="" cellpadding="0" cellspacing="0" border="0" height="70%">',
'<tr>',
'<td valign="top">#REGION_POSITION_02#</td>',
'<td class="t13ColumnSep"><div class="t13ColumnSep"><br /></div></td>',
'<td valign="top" width="100%">#BODY##REGION_POSITION_04#</td>',
'<td class="t13ColumnSep"><div class="t13ColumnSep"><br /></div></td>',
'<td valign="top"><div style="float:right;">#REGION_POSITION_03#</div></td>',
'</tr>',
'</table>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t13NewBottom"><div id="t13User">&USER.</div><div class="t13NewBottom1">&BROWSER_LANGUAGE.</div>',
'<div class="t13NewBottom2">&MSG_COPYRIGHT.</div>',
'<br style="clear:both;"/>',
'</div>',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'<a name="END"><br /></a>',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t13SuccessMessage">#SUCCESS_MESSAGE#</div>'
,p_current_tab=>'<span class="OnC">#TAB_LABEL#</span><b>|</b>'
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<span class="OffC"><a href="#TAB_LINK#">#TAB_LABEL#</a></span><b>|</b>',
''))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="OnL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnL.png" alt="" /></td>',
'<td class="OnC"><span>#TAB_LABEL#</span></td>',
'<td class="OnR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnR.png" alt="" /></td>'))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="OffL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffL.png" alt="" /></td>',
'<td class="OffC"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td class="OffR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffR.png" alt="" /></td>'))
,p_notification_message=>'<div class="t13Notification">#MESSAGE#</div>'
,p_navigation_bar=>'<div id="t13NavBar">#BAR_BODY#</div>'
,p_navbar_entry=>'<a href="#LINK#" class="t13NavLink">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width=""'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br />',
'<br />',
'<pre>#MESSAGE#</pre>',
'<a href="#BACK_LINK#">#RETURN_TO_APPLICATION#</a>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35026642051578437)
,p_theme_id=>8
,p_name=>'Login'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_8/theme_4_0.css" type="text/css" />',
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
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t8messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'<table border="0" summary="" width="600" style="" align="center">',
'<tr>',
'<td align="center">',
'',
'#BODY#',
'',
'</td>',
'</tr>',
'</table>',
'',
'',
''))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>'<div class="t8success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t8notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_region_table_cattributes=>'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" '
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35026845511578437)
,p_theme_id=>8
,p_name=>'No Tabs'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
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
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_8/theme_4_0.css" type="text/css" />',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- BEGIN HEADER height="51" -->',
'<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr><td class="t8TopBar" valign="top"><table border="0" cellpadding="0" cellspacing="0" summary=""><tr>',
'<td valign="top"><div id="t8Logo">#LOGO#</div>#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr></table></td></tr>',
'<tr><td class="t8TopBarBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="11" alt="" /></td></tr>',
'</table>',
'<table width="100%" height="90%" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr> ',
'<td width="100%" style="background-color:#E5E5DC" align="center" valign="top"><table width="98%" height="98%" border="0" align="center" cellpadding="0" cellspacing="0" summary="">',
'<tr> ',
'<td height="21" colspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'#REGION_POSITION_01#',
'<tr> ',
'<td height="7" colspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td width="26" height="100%"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="26" height="1" alt="" /></td>',
'<td align="center" valign="top" style="background-color:BFBFB8" width="100%" class="t8contentborder"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top" align="center"><div class="t8messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_02##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table></td>',
'<td width="26" height="100%"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="26" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td height="41" align="right" valign="middle" colspan="3" class="t8copyright"><span class="t8User">&APP_USER.</span><!-- Copyright --><span class="t8Customize">#CUSTOMIZE#</span></td>',
'</tr>',
'</table>',
'</td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t8PageBottom"><img src="#IMAGE_PREFIX#themes/theme_8/t3bottom_bg_stripe.gif" alt="" /></div>',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t8success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t8notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'<div class="t8NavigationBar"><table border="0" cellspacing="0" cellpadding="0" summary=""><tr>#BAR_BODY#</tr></table></div>'
,p_navbar_entry=>'<td><a href="#LINK#">#TEXT#</a>&nbsp;&nbsp;</td>'
,p_region_table_cattributes=>'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" '
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8FormRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />',
'',
'</div><div style="float:right;margin-left:45px;">',
'',
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8ButtonAlternative1">',
'    <tr>',
'      <td class="t8C">',
'        <a href="#BACK_LINK#" class="t8C">#OK#</a>',
'      </td>',
'    </tr>',
'  </table>',
'',
'</div></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody">',
'',
'  <p>#MESSAGE#</p>',
'  <strong>#ADDITIONAL_INFO#</strong>',
'  <br />',
'  <br />',
'  <div class="error_technical_info">#TECHNICAL_INFO#</div>',
'',
'',
'</td>',
'</tr>',
'</table>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35027125257578438)
,p_theme_id=>8
,p_name=>'No Tabs with Side Bar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
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
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_8/theme_4_0.css" type="text/css" />',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- BEGIN HEADER height="51" -->',
'<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr><td class="t8TopBar" valign="top"><table border="0" cellpadding="0" cellspacing="0" summary=""><tr>',
'<td valign="top"><div id="t8Logo">#LOGO#</div>#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr></table></td></tr>',
'<tr><td class="t8TopBarBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="11" alt="" /></td></tr>',
'</table>',
'<table width="100%" height="90%" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td height="4" style="background-color:E5E5DC; border-right: 1px #BFBFB8;"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="4" style="background-color:BFBFB8"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="4" style="background-color:BFBFB8"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td align="left" valign="top" class="t8NavBar"><!-- BEGIN LEFT NAV -->#REGION_POSITION_02#<!-- END LEFT NAV --></td>',
'<td width="1" style="background-color:FFFFFF"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td width="100%" align="center" valign="top">',
'<!-- BEGIN FRAME -->',
'<table width="98%" height="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="t8contentborder" style="margin-top: 5px;background-color:#E5E5DC" summary="">',
'<tr> ',
'<td height="21" colspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'#REGION_POSITION_01#',
'<tr> ',
'<td height="7" colspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td width="26" height="100%"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="26" height="1" alt="" /></td>',
'<td align="center" valign="top" style="background-color:BFBFB8" width="100%" class="t8contentborder"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top" align="center"><div class="t8messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table></td>',
'<td width="26" height="100%"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="26" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td height="41" align="right" valign="middle" colspan="3" class="t8copyright"><span class="t8User">&APP_USER.</span><!-- Copyright --><span class="t8Customize">#CUSTOMIZE#</span></td>',
'</tr>',
'</table>',
'</td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t8PageBottom"><img src="#IMAGE_PREFIX#themes/theme_8/t3bottom_bg_stripe.gif" alt="" /></div>',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t8success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t8notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'<div class="t8NavigationBar"><table border="0" cellspacing="0" cellpadding="0" summary=""><tr>#BAR_BODY#</tr></table></div>'
,p_navbar_entry=>'<td><a href="#LINK#">#TEXT#</a>&nbsp;&nbsp;</td>'
,p_region_table_cattributes=>'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" '
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
 p_id=>wwv_flow_api.id(35027438851578439)
,p_theme_id=>8
,p_name=>'One Level Tabs'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
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
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_8/theme_4_0.css" type="text/css" />',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- BEGIN HEADER height="51" -->',
'<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr><td class="t8TopBar" valign="top"><table border="0" cellpadding="0" cellspacing="0" summary=""><tr>',
'<td valign="top"><div id="t8Logo">#LOGO#</div>#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr></table>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%"><tr>#TAB_CELLS#<td width="100%"><br/></td></tr></table></td></tr>',
'<tr><td class="t8TopBarBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="11" alt="" /></td></tr>',
'</table>',
'<!-- END HEADER -->',
'<!-- BEGIN BODY -->',
'<table width="100%" height="90%" border="0" cellpadding="0" cellspacing="0" summary="">',
'<!-- tr>',
'<td height="4" style="background-color:#BFBFB8"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr -->',
'<tr> ',
'<td width="100%" align="center" valign="top" style="background-color:#E5E5DC;">',
'<!-- BEGIN FRAME -->',
'<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0" summary="">',
'<tr> ',
'<td colspan="3" height="21"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'#REGION_POSITION_01#',
'<tr> ',
'<td colspan="3" height="7"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td width="26" height="100%"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="26" height="1" alt="" /></td>',
'<td align="center" valign="top" style="background-color:#BFBFB8" class="t8contentborder"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top"><div ',
'class="t8messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_02##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table></td>',
'<td width="26" height="100%"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="26" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<!-- BEGIN COPYRIGHT -->',
'<td colspan="3" height="41" align="right" valign="middle" style="background-color:#E5E5DC" class="t8copyright"><span class="t8User">&APP_USER.</span><!-- Copyright --><span class="t8Customize">#CUSTOMIZE#</span></td>',
'<!-- END COPYRIGHT -->',
'</tr>',
'</table>',
'<!-- END FRAME -->',
'</td>',
'</tr>',
'</table>',
'<!-- END BODY -->'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t8PageBottom"><img src="#IMAGE_PREFIX#themes/theme_8/t3bottom_bg_stripe.gif" alt="" /></div>',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t8success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td style="padding-left:5px;"><table height="18"  cellpadding="0" cellspacing="0" border="0" summary="" class="t8standardtabcurrent">',
'<tr> ',
'<td width="2" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_lit_left.gif" width="2" height="18" alt=""/></td>',
'<td width="17" height="2" colspan="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td height="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td width="2" height="18" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_lit_right.gif" width="2" height="18" alt=""/></td>',
'</tr>',
'<tr> ',
'<td width="14" height="14" class="t8TabL"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="14" height="14" alt=""/></td>',
'<td width="1" class="t8TabM"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="14" alt=""/></td>',
'<td height="14" class="t8TabR"><span class="t8btn">#TAB_LABEL#</span></td>',
'</tr>',
'<tr> ',
'<td width="17" height="2" colspan="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td height="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1"  alt=""/></td>',
'</tr>',
'</table></td>',
''))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td style="padding-left:5px;"><table height="18"  cellpadding="0" cellspacing="0" border="0" class="t8standardtab" summary="">',
'<tr> ',
'<td width="2" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_orange_left.gif" width="2" height="18" alt=""/></td>',
'<td width="17" height="2" colspan="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td height="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td width="2" height="18" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_orange_right.gif" width="2" height="18" alt=""/></td>',
'</tr>',
'<tr> ',
'<td width="14" height="14" class="t8TabL"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="14" height="14" alt=""/></td>',
'<td width="1" class="t8TabM"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="14" alt=""/></td>',
'<td height="14" class="t8TabR"><a href="#TAB_LINK#" class="t8btn">#TAB_LABEL#</a></td>',
'</tr>',
'<tr> ',
'<td width="17" height="2" colspan="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td height="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'</tr>',
'</table></td>'))
,p_notification_message=>'<div class="t8notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'<div class="t8NavigationBar"><table border="0" cellspacing="0" cellpadding="0" summary=""><tr>#BAR_BODY#</tr></table></div>'
,p_navbar_entry=>'<td><a href="#LINK#">#TEXT#</a>&nbsp;&nbsp;</td>'
,p_region_table_cattributes=>'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" '
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35027726925578440)
,p_theme_id=>8
,p_name=>'One Level Tabs with Side Bar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
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
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_8/theme_4_0.css" type="text/css" />',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!-- BEGIN HEADER height="51" -->',
'<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr><td class="t8TopBar" valign="top"><table border="0" cellpadding="0" cellspacing="0" summary=""><tr>',
'<td valign="top"><div id="t8Logo">#LOGO#</div>#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr></table>',
'<table border="0" cellpadding="0" cellspacing="0" summary="" width="100%">',
'<tr>#TAB_CELLS#<td width="100%"><br/></td></tr></table></td></tr>',
'<tr><td class="t8TopBarBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="11" alt="" /></td></tr>',
'</table>',
'<!-- END HEADER -->',
'<!-- BEGIN BODY -->',
'<table width="100%" height="90%" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr> ',
'<td class="t8NavBar" valign="top"><!-- BEGIN LEFT NAV -->#REGION_POSITION_02#<!-- END LEFT NAV --></td>',
'<td width="1" style="background-color:#E5E5DC"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td width="100%" align="center" valign="top">',
'<!-- BEGIN FRAME -->',
'<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="background-color:#E5E5DC" summary="">',
'<tr> ',
'<td height="21" colspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'#REGION_POSITION_01#',
'<tr> ',
'<td height="7" colspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td width="26" height="100%"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="26" height="1" alt="" /></td>',
'<td align="center" valign="top" width="100%" style="background-color:#BFBFB8" class="t8contentborder"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top"><div class="t8messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table></td>',
'<td width="26" height="100%"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="26" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td height="41" align="right" valign="middle" colspan="3" class="t8copyright"><span class="t8User">&APP_USER.</span><!-- Copyright --><span class="t8Customize">#CUSTOMIZE#</span></td>',
'</tr>',
'</table>',
'<!-- END FRAME -->',
'</td>',
'</tr>',
'</table>',
'<!-- END BODY -->'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t8PageBottom"><img src="#IMAGE_PREFIX#themes/theme_8/t3bottom_bg_stripe.gif" alt="" /></div>',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t8success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td style="padding-left:5px;"><table height="18"  cellpadding="0" cellspacing="0" border="0" summary="" class="t8standardtabcurrent">',
'<tr> ',
'<td width="2" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_lit_left.gif" width="2" height="18" alt=""/></td>',
'<td width="17" height="2" colspan="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td height="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td width="2" height="18" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_lit_right.gif" width="2" height="18" alt=""/></td>',
'</tr>',
'<tr> ',
'<td width="14" height="14" class="t8TabL"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="14" height="14" alt=""/></td>',
'<td width="1" class="t8TabM"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="14" alt=""/></td>',
'<td height="14" class="t8TabR"><span class="t8btn">#TAB_LABEL#</span></td>',
'</tr>',
'<tr> ',
'<td width="17" height="2" colspan="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td height="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1"  alt=""/></td>',
'</tr>',
'</table></td>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td style="padding-left:5px;"><table height="18"  cellpadding="0" cellspacing="0" border="0" class="t8standardtab" summary="">',
'<tr> ',
'<td width="2" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_orange_left.gif" width="2" height="18" alt=""/></td>',
'<td width="17" height="2" colspan="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td height="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td width="2" height="18" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_orange_right.gif" width="2" height="18" alt=""/></td>',
'</tr>',
'<tr> ',
'<td width="14" height="14" class="t8TabL"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="14" height="14" alt=""/></td>',
'<td width="1" class="t8TabM"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="14" alt=""/></td>',
'<td height="14" class="t8TabR"><a href="#TAB_LINK#" class="t8btn">#TAB_LABEL#</a></td>',
'</tr>',
'<tr> ',
'<td width="17" height="2" colspan="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td height="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'</tr>',
'</table></td>'))
,p_notification_message=>'<div class="t8notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t8NavigationBar"><table border="0" cellspacing="0" cellpadding="0" summary=""><tr>#BAR_BODY#</tr></table></div>',
''))
,p_navbar_entry=>'<td><a href="#LINK#">#TEXT#</a>&nbsp;&nbsp;</td>'
,p_region_table_cattributes=>'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" '
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35028038867578440)
,p_theme_id=>8
,p_name=>'Popup'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
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
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_8/theme_4_0.css" type="text/css" />',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top"><div class="t8messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t8success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t8notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'<div class="t8NavigationBar">#BAR_BODY#</div>'
,p_region_table_cattributes=>'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" '
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35028327729578440)
,p_theme_id=>8
,p_name=>'Printer Friendly'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
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
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_8/theme_4_0.css" type="text/css" />',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td valign="top">#LOGO##REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#REGION_POSITION_08#</td>',
'</table>',
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top">',
'<div style="border:1px solid black;">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'#BODY##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>',
'#REGION_POSITION_05#'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t8success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t8notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'<div class="t8NavigationBar">#BAR_BODY#</div>'
,p_region_table_cattributes=>'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" '
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35028651456578441)
,p_theme_id=>8
,p_name=>'Two Level Tabs'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
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
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_8/theme_4_0.css" type="text/css" />',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" height="51" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr valign="middle"> ',
'<td height="28" class="t8TopBar" valign="top"><div id="t8Logo">#LOGO#</div><table border="0" cellpadding="0" cellspacing="0" align="left" valign="top" summary=""><tr><td><br /></td>#PARENT_TAB_CELLS#</tr></table><br />#REGION_POSITION_06#</td>',
'<td width="100%" class="t8TopBar" valign="top">#REGION_POSITION_07#</td>',
'<td height="28" class="t8TopBar" align="right" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'<tr> ',
'<td colspan="3" class="t8TopBarBottom"><img src="#IMAGE_PREFIX#themes/theme_8/t3top_bg_stripe.gif" alt="" /></td>',
'</tr>',
'<tr>',
'<td colspan="3" class="t8ChildTabs"><table border="0" cellpadding="0" cellspacing="0" align="left" summary=""><tr><td><br /></td>#TAB_CELLS#</tr></table></td>',
'</tr>',
'</table>',
'<table width="100%" height="90%" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td height="4" style="background-color:E5E5DC; border-right: 1px #BFBFB8;"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="4" style="background-color:BFBFB8"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""  /></td>',
'<td height="4" style="background-color:BFBFB8"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td width="1" style="background-color:FFFFFF"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td width="100%" align="center" valign="top">',
'   <!-- BEGIN FRAME -->',
'<table height="98%" border="0" align="center" cellpadding="0" cellspacing="0" style="background-color:E5E5DC;" summary="">',
'<tr> ',
'<td height="21" colspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'<!-- BEGIN TITLE -->#REGION_POSITION_01#<!-- END TITLE -->',
'<tr> ',
'<td colspan="3" height="7"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td width="26" height="100%"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="26" height="1" alt="" /></td>',
'<td align="center" valign="top" width="100%" style="background-color:BFBFB8" class="t8contentborder"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top"><div class="t8messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_02##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table></td>',
'<td width="26" height="100%"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="26" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td height="41" align="right" valign="middle" colspan="3" class="t8copyright"><span class="t8User">&APP_USER.</span><!-- Copyright --><span class="t8Customize">#CUSTOMIZE#</span></td>',
'</tr>',
'</table>',
'</td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t8PageBottom"><img src="#IMAGE_PREFIX#themes/theme_8/t3bottom_bg_stripe.gif" alt="" /></div>',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t8success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td style="padding-left:5px;"><table height="18"  cellpadding="0" cellspacing="0" border="0" summary="" class="t8standardtabcurrent">',
'<tr> ',
'<td width="2" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_lit_left.gif" width="2" height="18" alt=""/></td>',
'<td width="17" height="2" colspan="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td width="2" height="18" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_lit_right.gif" width="2" height="18" alt="" /></td>',
'</tr>',
'<tr> ',
'<td width="14" height="14" class="t8TabL"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="14" height="14" alt="" /></td>',
'<td width="1" class="t8TabM"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="14" alt="" /></td>',
'<td height="14" class="t8TabR"><span class="t8btn">#TAB_LABEL#</span></td>',
'</tr>',
'<tr> ',
'<td width="17" height="2" colspan="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1"  alt="" /></td>',
'</tr>',
'</table></td>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td style="padding-left:5px;"><table height="18"  cellpadding="0" cellspacing="0" border="0" class="t8standardtab">',
'<tr> ',
'<td width="2" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_orange_left.gif" width="2" height="18" alt=""/></td>',
'<td width="17" height="2" colspan="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td width="2" height="18" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_orange_right.gif" width="2" height="18" alt="" /></td>',
'</tr>',
'<tr> ',
'<td width="14" height="14" class="t8TabL"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="14" height="14" alt="" /></td>',
'<td width="1" class="t8TabM"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="14" alt="" /></td>',
'<td height="14" class="t8TabR"><a href="#TAB_LINK#" class="t8btn">#TAB_LABEL#</a></td>',
'</tr>',
'<tr> ',
'<td width="17" height="2" colspan="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'</table></td>',
''))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td style="padding-left:5px;"><table height="18"  cellpadding="0" cellspacing="0" border="0" summary="" class="t8standardtabcurrent">',
'<tr> ',
'<td width="2" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_lit_left.gif" width="2" height="18" alt=""/></td>',
'<td width="17" height="2" colspan="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td width="2" height="18" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_lit_right.gif" width="2" height="18" alt="" /></td>',
'</tr>',
'<tr> ',
'<td width="14" height="14" class="t8TabL"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="14" height="14" alt="" /></td>',
'<td width="1" class="t8TabM"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="14" alt="" /></td>',
'<td height="14" class="t8TabR"><span class="t8btn">#TAB_LABEL#</span></td>',
'</tr>',
'<tr> ',
'<td width="17" height="2" colspan="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1"  alt=""/></td>',
'</tr>',
'</table></td>'))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td style="padding-left:5px;"><table height="18"  cellpadding="0" cellspacing="0" border="0" class="t8standardtab" summary="">',
'<tr> ',
'<td width="2" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_orange_left.gif" width="2" height="18" alt="" /></td>',
'<td width="17" height="2" colspan="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td width="2" height="18" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_orange_right.gif" width="2" height="18" alt="" /></td>',
'</tr>',
'<tr> ',
'<td width="14" height="14" class="t8TabL"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="14" height="14" alt="" /></td>',
'<td width="1" class="t8TabM"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="14" alt="" /></td>',
'<td height="14" class="t8TabR"><a href="#TAB_LINK#" class="t8btn">#TAB_LABEL#</a></td>',
'</tr>',
'<tr> ',
'<td width="17" height="2" colspan="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'</table></td>'))
,p_notification_message=>'<div class="t8notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'<div class="t8NavigationBar"><table border="0" cellspacing="0" cellpadding="0" summary=""><tr>#BAR_BODY#</tr></table></div>'
,p_navbar_entry=>'<td><a href="#LINK#">#TEXT#</a>&nbsp;&nbsp;</td>'
,p_region_table_cattributes=>'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" '
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(35028933314578441)
,p_theme_id=>8
,p_name=>'Two Level Tabs with Side Bar'
,p_is_popup=>false
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
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
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_8/theme_4_0.css" type="text/css" />',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#',
''))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table width="100%" height="51" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr valign="middle"> ',
'<td height="28" class="t8TopBar" valign="top"><div id="t8Logo">#LOGO#</div><table border="0" cellpadding="0" cellspacing="0" align="left" valign="top" summary=""><tr><td><br /></td>#PARENT_TAB_CELLS#</tr></table><br />#REGION_POSITION_06#</td>',
'<td width="100%" class="t8TopBar" valign="top">#REGION_POSITION_07#</td>',
'<td height="28" class="t8TopBar" align="right" valign="top">#NAVIGATION_BAR#<br />#REGION_POSITION_08#</td>',
'</tr>',
'<tr> ',
'<td colspan="3" class="t8TopBarBottom"><img src="#IMAGE_PREFIX#themes/theme_8/t3top_bg_stripe.gif" alt="" /></td>',
'</tr>',
'<tr>',
'<td colspan="3" class="t8ChildTabs"><table border="0" cellpadding="0" cellspacing="0" align="left" summary=""><tr><td><br /></td>#TAB_CELLS#</tr></table></td>',
'</tr>',
'</table>',
'<table width="100%" height="90%" border="0" cellpadding="0" cellspacing="0" summary="">',
'<tr>',
'<td height="4" style="background-color:#E5E5DC; border-right: 1px #BFBFB8 solid;"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="4" style="background-color:#BFBFB8"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="4" style="background-color:#BFBFB8"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td class="t8NavBar" valign="top"><!-- BEGIN LEFT NAV -->#REGION_POSITION_02#<!-- END LEFT NAV --></td>',
'<td width="1" style="background-color:#FFFFFF"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td width="100%" align="center" valign="top">',
'<!-- BEGIN FRAME -->',
'<table width="98%" height="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="t8contentborder" style="margin-top: 5px;" summary="">',
'<tr> ',
'<td width="26" height="21" style="background-color:#E5E5DC"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="21" style="background-color:#E5E5DC"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td width="26" height="21" style="background-color:#E5E5DC"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'#REGION_POSITION_01#',
'<tr> ',
'<td width="26" height="7" style="background-color:#E5E5DC"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="7" style="background-color:#E5E5DC"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td width="26" height="7" style="background-color:#E5E5DC"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td width="26" height="100%" style="background-color:#E5E5DC"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="26" height="1" alt="" /></td>',
'<td align="center" valign="top" style="background-color:#BFBFB8" class="t8contentborder"><table style="background-color:#BFBFB8"  summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top"><div class="t8messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table></td>',
'<td width="26" height="100%" style="background-color:#E5E5DC"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="26" height="1" alt="" /></td>',
'</tr>',
'<tr> ',
'<td height="41" style="background-color:#E5E5DC"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<!-- BEGIN COPYRIGHT -->',
'<td height="41" align="right" valign="middle" style="background-color:#E5E5DC" class="t8copyright"><span class="t8User">&APP_USER.</span><!-- Copyright --><span class="t8Customize">#CUSTOMIZE#</span></td>',
'<!-- END COPYRIGHT -->',
'<td height="41" style="background-color:#E5E5DC"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>',
'</table>',
'<!-- END FRAME -->',
'</td>',
'</tr>',
'</table>',
'<!-- END BODY -->'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t8PageBottom"><img src="#IMAGE_PREFIX#themes/theme_8/t3bottom_bg_stripe.gif" alt="" /></div>',
'#REGION_POSITION_05#',
'#FORM_CLOSE# ',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t8success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td style="padding-left:5px;"><table height="18"  cellpadding="0" cellspacing="0" border="0" summary="" class="t8standardtabcurrent">',
'<tr> ',
'<td width="2" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_lit_left.gif" width="2" height="18" alt=""/></td>',
'<td width="17" height="2" colspan="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td width="2" height="18" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_lit_right.gif" width="2" height="18" alt="" /></td>',
'</tr>',
'<tr> ',
'<td width="14" height="14" class="t8TabL"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="14" height="14" alt="" /></td>',
'<td width="1" class="t8TabM"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="14" alt="" /></td>',
'<td height="14" class="t8TabR"><span class="t8btn">#TAB_LABEL#</span></td>',
'</tr>',
'<tr> ',
'<td width="17" height="2" colspan="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1"  alt="" /></td>',
'</tr>',
'</table></td>'))
,p_non_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td style="padding-left:5px;"><table height="18"  cellpadding="0" cellspacing="0" border="0" class="t8standardtab" summary="">',
'<tr> ',
'<td width="2" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_orange_left.gif" width="2" height="18" alt=""/></td>',
'<td width="17" height="2" colspan="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td height="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td width="2" height="18" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_orange_right.gif" width="2" height="18" alt=""/></td>',
'</tr>',
'<tr> ',
'<td width="14" height="14" class="t8TabL"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="14" height="14" alt=""/></td>',
'<td width="1" class="t8TabM"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="14" alt=""/></td>',
'<td height="14" class="t8TabR"><a href="#TAB_LINK#" class="t8btn">#TAB_LABEL#</a></td>',
'</tr>',
'<tr> ',
'<td width="17" height="2" colspan="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td height="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'</tr>',
'</table></td>'))
,p_top_current_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td style="padding-left:5px;"><table height="18"  cellpadding="0" cellspacing="0" border="0" summary="" class="t8standardtabcurrent">',
'<tr> ',
'<td width="2" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_lit_left.gif" width="2" height="18" alt=""/></td>',
'<td width="17" height="2" colspan="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td width="2" height="18" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_lit_right.gif" width="2" height="18" alt="" /></td>',
'</tr>',
'<tr> ',
'<td width="14" height="14" class="t8TabL"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="14" height="14" alt="" /></td>',
'<td width="1" class="t8TabM"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="14" alt="" /></td>',
'<td height="14" class="t8TabR"><span class="t8btn">#TAB_LABEL#</span></td>',
'</tr>',
'<tr> ',
'<td width="17" height="2" colspan="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td height="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1"  alt=""/></td>',
'</tr>',
'</table></td>'))
,p_top_non_curr_tab=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td style="padding-left:5px;"><table height="18"  cellpadding="0" cellspacing="0" border="0" class="t8standardtab" summary="">',
'<tr> ',
'<td width="2" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_orange_left.gif" width="2" height="18" alt=""/></td>',
'<td width="17" height="2" colspan="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td height="2" class="t8TabTop"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td width="2" height="18" rowspan="3"><img src="#IMAGE_PREFIX#themes/theme_8/t3btn_orange_right.gif" width="2" height="18" alt=""/></td>',
'</tr>',
'<tr> ',
'<td width="14" height="14" class="t8TabL"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="14" height="14" alt=""/></td>',
'<td width="1" class="t8TabM"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="14" alt=""/></td>',
'<td height="14" class="t8TabR"><a href="#TAB_LINK#" class="t8btn">#TAB_LABEL#</a></td>',
'</tr>',
'<tr> ',
'<td width="17" height="2" colspan="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'<td height="2" class="t8TabBottom"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt=""/></td>',
'</tr>',
'</table></td>'))
,p_notification_message=>'<div class="t8notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'<div class="t8NavigationBar"><table border="0" cellspacing="0" cellpadding="0" summary=""><tr>#BAR_BODY#</tr></table></div>'
,p_navbar_entry=>'<td><a href="#LINK#">#TEXT#</a>&nbsp;&nbsp;</td>'
,p_region_table_cattributes=>'width="100%" border="0" cellpadding="0" cellspacing="0" summary="" '
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(9543160759456318)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>22
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(33363449191463184)
,p_template_name=>'Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-default" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span >#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>22
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(33363552027463184)
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
 p_id=>wwv_flow_api.id(33363635568463185)
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
 p_id=>wwv_flow_api.id(33363728507463185)
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
 p_id=>wwv_flow_api.id(33363834047463185)
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
 p_id=>wwv_flow_api.id(33363942769463185)
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
 p_id=>wwv_flow_api.id(33364030157463185)
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
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(35024452803440544)
,p_template_name=>'Button'
,p_template=>'<input type="button" onclick="#JAVASCRIPT#" value="#LABEL#" class="t13Button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" />'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>13
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(35024652745440545)
,p_template_name=>'Button, Alternative 1'
,p_template=>'<a href="#LINK#" class="t13ButtonAlternative1" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>13
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(35024827106440546)
,p_template_name=>'Button, Alternative 2'
,p_template=>'<a href="#LINK#" class="t13ButtonAlternative2" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>13
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(35025039316440546)
,p_template_name=>'Button, Alternative 3'
,p_template=>'<a href="#LINK#" class="t13ButtonAlternative3" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_theme_id=>13
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(35044145071578457)
,p_template_name=>'Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8Button" height="18">',
'  <tr>',
'    <td class="t8C">',
'      <a href="#LINK#" class="t8C" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL#</a>',
'    </td>',
'  </tr>',
'</table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>8
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(35044321850578457)
,p_template_name=>'Button, Alternative 1'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8ButtonAlternative1">',
'    <tr>',
'      <td class="t8C">',
'        <a href="#LINK#" class="t8C" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL#</a>',
'      </td>',
'    </tr>',
'  </table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>8
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(35044539157578457)
,p_template_name=>'Button, Alternative 2'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8ButtonAlternative2">',
'  <tr>',
'    <td class="t8C">',
'      <a href="#LINK#" class="t8C" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">#LABEL#</a>',
'    </td>',
'  </tr>',
'</table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>8
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(35044728928578457)
,p_template_name=>'Button, Alternative 3'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8ButtonAlternative3">',
'<tr>',
'<td valign="middle"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" style="margin-left:3px;margin-right:3px;" alt=""/></a></td>',
'<td class="t8R"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" alt="" width="14" height="14" /></td>',
'<td class="t8C"><a href="#LINK#" class="t8C">#LABEL#</a></td>',
'<td class="t8L"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" alt="" width="14" height="14" /></td>',
'</tr>',
'</table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_theme_id=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(33356941403463180)
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
 p_id=>wwv_flow_api.id(33357040036463180)
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
 p_id=>wwv_flow_api.id(33357144896463180)
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
 p_id=>wwv_flow_api.id(33357253099463180)
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
 p_id=>wwv_flow_api.id(33357343280463180)
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
 p_id=>wwv_flow_api.id(33357441164463180)
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
 p_id=>wwv_flow_api.id(33357552034463180)
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
 p_id=>wwv_flow_api.id(33357634130463180)
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
 p_id=>wwv_flow_api.id(33357742614463180)
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
 p_id=>wwv_flow_api.id(33357842955463180)
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
 p_id=>wwv_flow_api.id(33357949179463181)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">',
'#BODY#<div class="clear" style="background-color:yellow;"></div></div></div></div>',
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
 p_id=>wwv_flow_api.id(33358048054463181)
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
 p_id=>wwv_flow_api.id(33358142828463181)
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
 p_id=>wwv_flow_api.id(33358230767463181)
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
 p_id=>wwv_flow_api.id(33358326064463181)
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
 p_id=>wwv_flow_api.id(33358427650463181)
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
 p_id=>wwv_flow_api.id(33358547654463181)
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
 p_id=>wwv_flow_api.id(33358648361463181)
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
 p_id=>wwv_flow_api.id(33358743387463181)
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
 p_id=>wwv_flow_api.id(33358831581463181)
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
 p_id=>wwv_flow_api.id(33358951423463181)
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
 p_id=>wwv_flow_api.id(33359053644463181)
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
 p_id=>wwv_flow_api.id(33359143801463181)
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
 p_id=>wwv_flow_api.id(33359251014463181)
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
 p_id=>wwv_flow_api.id(33359348353463181)
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
 p_id=>wwv_flow_api.id(33359428169463182)
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
 p_id=>wwv_flow_api.id(33359537748463182)
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
 p_id=>wwv_flow_api.id(33359622383463182)
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
 p_id=>wwv_flow_api.id(33359722964463182)
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
 p_id=>wwv_flow_api.id(33359836265463182)
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
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35009224329440523)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13BorderlessRegion" cellspacing="0" cellpadding="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle">#TITLE#</th>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td colspan="2" class="t13RegionBody">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Borderless Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>13
,p_theme_class_id=>7
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35009527260440525)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t13BracketedRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td><table cellpadding="0" cellspacing="0" border="0" summary="" width="100%">',
'<tr>',
'<td class="t13bracket"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif" height="5" width="1" alt="" /></td>',
'<td rowspan="3" class="t13RegionBody">',
'<div class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>#BODY#</td>',
'<td class="t13bracket"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif" height="5" width="1" alt="" /></td>',
'</tr>',
'<tr>',
'<td><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif" height="48" width="1" alt="" /></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif" height="48" width="1" alt="" /></td>',
'</tr>',
'<tr>',
'<td class="t13bracket"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif" height="5" width="1" alt="" /></td>',
'<td class="t13bracket"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif" height="5" width="1" alt="" /></td>',
'</tr>',
'</table></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>13
,p_theme_class_id=>18
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35009836275440525)
,p_layout=>'TABLE'
,p_template=>'<div  id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>13
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35010149949440525)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13ButtonRegionwithTitle" cellspacing="0" cellpadding="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle">#TITLE#</th>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'</table>#BODY#'))
,p_page_plug_template_name=>'Button Region with Title'
,p_theme_id=>13
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35010449509440525)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13ButtonRegionwithoutTitle" cellspacing="0" cellpadding="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'</table>#BODY#'))
,p_page_plug_template_name=>'Button Region without Title'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>13
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35010744740440526)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13ListRegionwithIcon" cellspacing="0" cellpadding="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle">#TITLE#</th>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td colspan="2" class="t13RegionBody"><table summary="" cellpadding="0" cellspacing="0" border="0">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_13/images/report_icon.png" alt="" /></td>',
'<td valign="top">#BODY#</td>',
'</tr>',
'</table></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Chart List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>13
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35011046806440526)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13ChartRegion" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle">#TITLE#</th>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td colspan="2" class="t13RegionBody">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Chart Region'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>13
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35011329651440526)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13FormRegion" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle">#TITLE#</th>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td colspan="2" class="t13RegionBody">#BODY#<img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif" height="1" width="500" alt="" /></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Form Region'
,p_theme_id=>13
,p_theme_class_id=>8
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Form Region is shimed out a minimum of 600px'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35011647707440527)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13FormRegion" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle">#TITLE#<img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#REGION_ID#Body'')" style="margin:0 5px;" class="pseudoButtonInactive" /></th>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'<tbody id="#REGION_ID#Body" style="display:none;">',
'<tr>',
'<td colspan="2" class="t13RegionBody">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>13
,p_theme_class_id=>1
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35011952701440527)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13NavigationRegion" border="0" cellpadding="0" cellspacing="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t13RegionBody">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Navigation Region'
,p_theme_id=>13
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35012223786440527)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13NavigationRegionAlternative1" border="0" cellpadding="0" cellspacing="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader"><tr><th class="t13RegionTitle">#TITLE#</th></tr></thead>',
'<tr>',
'<td class="t13RegionBody">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_theme_id=>13
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35012522971440527)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13RegionWithoutButtonTitle" cellspacing="0" cellpadding="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tbody>',
'<tr>',
'<td colspan="2" class="t13RegionBody">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>',
'',
''))
,p_page_plug_template_name=>'Region without Buttons and Title'
,p_theme_id=>13
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35012830433440527)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13RegionWithoutTitle" cellspacing="0" cellpadding="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td class="t13RegionBody">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>',
'',
''))
,p_page_plug_template_name=>'Region without Title'
,p_theme_id=>13
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35013129199440528)
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
,p_theme_id=>13
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35013432987440528)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13ListRegionwithIcon" cellspacing="0" cellpadding="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle">#TITLE#</th>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td colspan="2" class="t13RegionBody"><table summary="" cellpadding="0" cellspacing="0" border="0">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_13/report.gif""/></td>',
'<td valign="top">#BODY#</td>',
'</tr>',
'</table></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Report List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>13
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35013750177440528)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13ReportRegion" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle">#TITLE#</th>',
'<th class="t13RegionButtons" valign="bottom">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td colspan="2" class="t13RegionBody">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Reports Region'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>13
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35014037398440528)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13ReportRegion" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# width="100%">',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle">#TITLE#</th>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td colspan="2" class="t13RegionBody">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Reports Region 100% Width'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>13
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35014325089440528)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13ReportRegionAlt1" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle">#TITLE#</th>',
'<th class="t13RegionButtons" valign="bottom">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td colspan="2" class="t13RegionBody">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Reports Region, Alternative 1'
,p_plug_table_bgcolor=>'#FFFFFF'
,p_theme_id=>13
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#FFFFFF'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35014640255440528)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" class="t13Sidebar" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead>',
'<tr>',
'<th class="L"><br /></th>',
'<th class="C">#TITLE#</th>',
'<th class="R"><br /></th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td colspan="3" class="B">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_plug_table_bgcolor=>'#F7F7E7'
,p_theme_id=>13
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#F7F7E7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'Y'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35014945769440528)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" class="t13SidebarAlt1" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead>',
'<tr><th class="L"><br /></th><th class="C">#TITLE#</th><th class="R"><br /></th></tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td colspan="3" class="B">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_plug_table_bgcolor=>'#F7F7E7'
,p_theme_id=>13
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#F7F7E7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35015240853440528)
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
'          #CLOSE##COPY##DELETE##CHANGE##EDIT##PREVIOUS##NEXT##CREATE##EXPAND#',
'        </div>',
'        <div class="clear"></div>',
'      </div>',
'    </div>',
'  </div>',
'  <div class="rc-bottom">',
'    <div class="rc-bottom-r"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Top Bar'
,p_theme_id=>13
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35015523804440529)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13WizardRegion" summary="" cellpadding="0" cellspacing="0" border="0" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle">#TITLE#</th>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td colspan="2" class="t13RegionBody">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region'
,p_theme_id=>13
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35015846026440529)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="t13WizardRegion" summary="" cellpadding="0" cellspacing="0" border="0" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<thead class="t13RegionHeader">',
'<tr>',
'<th class="t13RegionTitle">#TITLE#</th>',
'<th class="t13RegionButtons">#CLOSE#&nbsp;&nbsp;#PREVIOUS##NEXT#&nbsp;#DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</th>',
'</tr>',
'</thead>',
'<tbody class="Confirm">',
'<tr>',
'<td colspan="2" class="t13RegionBody">#BODY#</td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_theme_id=>13
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35029238763578443)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8BorderlessRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />#TITLE#</div><div style="float:right;margin-left:45px;">#CLOSE#&nbsp;&nb'
||'sp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody" colspan="2">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Borderless Region'
,p_theme_id=>8
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35029525459578444)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8BracketedRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />#TITLE#</div><div style="float:right;margin-left:45px;">#CLOSE#&nbsp;&nb'
||'sp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody" colspan="2">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_theme_id=>8
,p_theme_class_id=>18
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35029846378578444)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr> ',
'<td style="background-color:E5E5DC"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'<td align="left" valign="middle" style="background-color:BFBFB8" class="t8BreadCrumbRegion"><div class="t8BreadcrumbHolder" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1'
||'" alt="" /></td>',
'<td style="background-color:E5E5DC"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="1" height="1" alt="" /></td>',
'</tr>'))
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>8
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35030150028578444)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8ButtonRegionwithTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr><td class="t8RegionHeader"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />#TITLE#</td></tr>',
'<tr><td class="t8ButtonHolder" style="margin:5px;">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#<img src="#IMAGE_PREFIX#themes/theme_5/1px_trans.gif" alt="" style="display:block;" width="600" hei'
||'ght="1" /></td></tr>',
'</table>#BODY#',
''))
,p_page_plug_template_name=>'Button Region with Title'
,p_theme_id=>8
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35030425286578444)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8ButtonRegionwithoutTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr><td class="t8ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#<img src="#IMAGE_PREFIX#themes/theme_8/1px_trans.gif" alt="" width="600" height="1" style="display:block;"/></td></tr>',
'</table>',
'#BODY#'))
,p_page_plug_template_name=>'Button Region without Title'
,p_theme_id=>8
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35030743453578444)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8ListRegionwithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />#TITLE#</div><div style="float:right;margin-left:45px;">#CLOSE#&nbsp;&nb'
||'sp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody" colspan="2"><table cellpadding="0" cellspacing="0" border="0" summary="" ><tr><td valign="top"><img src="#IMAGE_PREFIX#themes/theme_8/images/report_icon.png" alt="" /></td>',
'<td>#BODY#</td></tr></table></td>',
'</tr>',
'</table>',
''))
,p_page_plug_template_name=>'Chart List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>8
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35031025611578445)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8ChartRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />#TITLE#</div><div style="float:right;margin-left:45px;">#CLOSE#&nbsp;&nb'
||'sp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Chart Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>8
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35031351216578445)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8FormRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />#TITLE#</div><div style="float:right;margin-left:45px;">#CLOSE#&nbsp;&nb'
||'sp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody">#BODY#<img src="#IMAGE_PREFIX#themes/theme_8/1px_trans.gif" alt="" width="600" height="1" /></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Form Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>8
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35031631741578445)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8HideandShowRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />#TITLE#<a style="margin-left:5px;" href="javascript:hideShow(''region#REG'
||'ION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_8/showhide_hidden.gif'',''#IMAGE_PREFIX#themes/theme_8/showhide_show.gif'');" class="htmldbHideShowMinLink"><img src="#IMAGE_PREFIX#themes/theme_8/showhide_hidden.gif" ',
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a></div><div style="float:right;margin-left:45px;">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody"><div id="region#REGION_SEQUENCE_ID#" class="t8Hide">#BODY#</div></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_theme_id=>8
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35031929808578445)
,p_layout=>'TABLE'
,p_template=>'<div class="t8NavigationRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region'
,p_theme_id=>8
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35032243824578445)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8NavigationRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader">#TITLE#</td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_theme_id=>8
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35032546520578446)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8RegionwithoutButtonsandTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" width="300"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" /></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_theme_id=>8
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35032846551578446)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8RegionwithoutTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" /></div><div style="float:right;margin-left:45px;">#CLOSE#&nbsp;&nbsp;&nbs'
||'p;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Region without Title'
,p_theme_id=>8
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35033129778578446)
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
,p_theme_id=>8
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35033447944578446)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8ListRegionwithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />#TITLE#</div><div style="float:right;margin-left:45px;">#CLOSE#&nbsp;&nb'
||'sp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody"><table cellpadding="0" cellspacing="0" border="0" summary="" ><tr><td valign="top"><img src="#IMAGE_PREFIX#themes/theme_8/report.gif" alt="" /></td>',
'<td>#BODY#</td></tr></table></td>',
'</tr>',
'</table>',
''))
,p_page_plug_template_name=>'Report List'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>8
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35033747299578446)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8ReportsRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />#TITLE#</div><div style="float:right;margin-left:45px;">#CLOSE#&nbsp;&nb'
||'sp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Reports Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>8
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35034030407578446)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8ReportsRegion100Width" width="100%" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />#TITLE#</div><div style="float:right;margin-left:45px;">#CLOSE#&nbsp;&nb'
||'sp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Reports Region 100% Width'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>8
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35034347841578447)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8ReportsRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />#TITLE#</div><div style="float:right;margin-left:45px;">#CLOSE#&nbsp;&nb'
||'sp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div></td>',
'</tr>',
'<tr><td class="t8RegionBody">#BODY#</td></tr>',
'</table>'))
,p_page_plug_template_name=>'Reports Region, Alternative 1'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>8
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35034643470578447)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" class="t8SidebarRegion" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader">#TITLE#</td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>8
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
 p_id=>wwv_flow_api.id(35034944956578447)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" class="t8SidebarRegionAlternative1" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader">#TITLE#</td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>8
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35035249716578447)
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
'          #CLOSE##COPY##DELETE##CHANGE##EDIT##PREVIOUS##NEXT##CREATE##EXPAND#',
'        </div>',
'        <div class="clear"></div>',
'      </div>',
'    </div>',
'  </div>',
'  <div class="rc-bottom">',
'    <div class="rc-bottom-r"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Top Bar'
,p_theme_id=>8
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35035537065578447)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8WizardRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />#TITLE#</div><div style="float:right;margin-left:45px;">#CLOSE#&nbsp;&nb'
||'sp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region'
,p_theme_id=>8
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(35035839652578447)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t8WizardRegionwithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t8RegionHeader" valign="top"><div style="float:left;"><img src="#IMAGE_PREFIX#themes/theme_8/t8bullet01.gif" width="10" height="10" alt="" style="margin-right:5px;" />#TITLE#</div><div style="float:right;margin-left:45px;">#CLOSE#&nbsp;&nb'
||'sp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div></td>',
'</tr>',
'<tr>',
'<td class="t8RegionBody"><table summary="" cellpadding="0" cellspacing="0" border="0">',
'<tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_8/t8iconwizard.gif" alt=""/></td>',
'<td width="100%" valign="top">#BODY#</td>',
'</tr>',
'</table></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_theme_id=>8
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
 p_id=>wwv_flow_api.id(33360923666463183)
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
 p_id=>wwv_flow_api.id(33361024612463183)
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
 p_id=>wwv_flow_api.id(33361148382463183)
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
 p_id=>wwv_flow_api.id(33361241606463183)
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
 p_id=>wwv_flow_api.id(33361331008463183)
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
 p_id=>wwv_flow_api.id(33361423199463183)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>22
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33361550480463183)
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
 p_id=>wwv_flow_api.id(33361628665463183)
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
 p_id=>wwv_flow_api.id(33361746732463183)
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
 p_id=>wwv_flow_api.id(33361849883463183)
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
 p_id=>wwv_flow_api.id(33361944269463183)
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
 p_id=>wwv_flow_api.id(33362029609463183)
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
 p_id=>wwv_flow_api.id(33362126721463184)
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
 p_id=>wwv_flow_api.id(33362222759463184)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>22
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33362336213463184)
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
 p_id=>wwv_flow_api.id(33362449597463184)
,p_list_template_current=>'<li class="current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>22
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33362538204463184)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets, Alternative'
,p_theme_id=>22
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33362639948463184)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>22
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(33362749460463184)
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
 p_id=>wwv_flow_api.id(33362833905463184)
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
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35018840174440536)
,p_list_template_current=>'<a href="#LINK#" class="t13Current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Button List'
,p_theme_id=>13
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="t13ButtonList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35019127412440537)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Menu with Sublist'
,p_theme_id=>13
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#themes/theme_13/menu_open_right.gif" /></a'
||'></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#themes/theme_13/menu_open_right.gif" /></a'
||'></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35019440333440537)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_theme_id=>13
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35019730860440538)
,p_list_template_current=>'<td class="t13current"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/><br />#TEXT#</td>'
,p_list_template_noncurrent=>'<td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" border="0" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>'
,p_list_template_name=>'Horizontal Images with Label List'
,p_theme_id=>13
,p_theme_class_id=>4
,p_list_template_before_rows=>'<table class="t13HorizontalImageswithLabelList" cellpadding="0" border="0" cellspacing="0" summary=""><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35020028853440538)
,p_list_template_current=>'<a href="#LINK#" class="t13current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>13
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="t13HorizontalLinksList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35020349926440538)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="OnL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnL.png" alt="" /></td>',
'<td class="OnC"><a href="#LINK#">#TEXT#</a></td>',
'<td class="OnR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOnR.png" alt="" /></td>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="OffL"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffL.png" alt="" /></td>',
'<td class="OffC"><a href="#LINK#">#TEXT#</a></td>',
'<td class="OffR"><img src="#IMAGE_PREFIX#themes/theme_13/tabOffR.png" alt="" /></td>',
''))
,p_list_template_name=>'Page Tab Navigation'
,p_theme_id=>13
,p_theme_class_id=>0
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t13PageTabs">',
'<tbody>',
'<tr>',
''))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
'</tbody>',
'</table>'))
,p_list_template_comment=>'This is the list template to simulate tabs in the builder application'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35020626839440538)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></di'
||'v>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt=""  /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></d'
||'iv>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_theme_id=>13
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,'''
||'#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_item_templ_noncurr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#menu/brush_bx_128x128.png" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,'''
||'#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35020934359440538)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_name=>'Pull Down Menu with Image (Custom 1)'
,p_theme_id=>13
,p_theme_class_id=>9
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_'
||'ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_item_templ_noncurr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_'
||'ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35021229949440540)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td valign="bottom" class="t13SepL"><img src="#IMAGE_PREFIX#themes/theme_13/tab_list_left_cap.gif" alt="" /></td>',
'<td class="t13CurrentListTab"><a class="t13CurrentListTab" href="#LINK#">#TEXT#</a></td>',
'<td valign="bottom" class="t13SepR"><img src="#IMAGE_PREFIX#themes/theme_13/tab_list_right_cap.gif" alt="" /></td>'))
,p_list_template_noncurrent=>'<td><a href="#LINK#">#TEXT#</a></td>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>13
,p_theme_class_id=>7
,p_list_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0"  summary="" width="100%" class="t13TabbedNavigationList"><tbody><tr><td class="t13LeftTabList">&nbsp;&nbsp;&nbsp;&nbsp;</td>'
,p_list_template_after_rows=>'<td class="t13EndCap" width="100%">&nbsp;</td></tr></tbody></table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35021524253440540)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tree List'
,p_theme_id=>13
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="htmlTree">'
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
 p_id=>wwv_flow_api.id(35021842971440540)
,p_list_template_current=>'<tr><td class="t13current"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>'
,p_list_template_noncurrent=>'<tr><td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# />#TEXT#</a></td></tr>'
,p_list_template_name=>'Vertical Images List'
,p_theme_id=>13
,p_theme_class_id=>5
,p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="t13VerticalImagesList">'
,p_list_template_after_rows=>'</table>'
);
end;
/
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35022122774440542)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_name=>'Vertical Images List (Custom 2)'
,p_theme_id=>13
,p_theme_class_id=>10
,p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="5" summary="" >'
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
''))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35022438695440542)
,p_list_template_current=>'<li class="t13current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>13
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="t13VerticalOrderedList">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35022747329440542)
,p_list_template_current=>'<a class="t13current" href="#LINK#">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>13
,p_theme_class_id=>19
,p_list_template_before_rows=>'<div class="t13VerticalSidebarList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35023032639440542)
,p_list_template_current=>'<li class="t13current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered Links without Bullets'
,p_theme_id=>13
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t13VerticalUnorderedLinkswithoutBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35023322180440543)
,p_list_template_current=>'<li class="t13current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>13
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="t13VerticalUnorderedListwithBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35023632861440543)
,p_list_template_current=>'<div class="t13WizCurrent">#TEXT#</div>'
,p_list_template_noncurrent=>'<div class="t13WizNon">#TEXT#</div>'
,p_list_template_name=>'Wizard Progress List'
,p_theme_id=>13
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="t13WizBar">'
,p_list_template_after_rows=>'</div>'
,p_between_items=>'<div class="t13WizArrow"><img src="#IMAGE_PREFIX#arrow_down.gif" width="7" height="6" alt="Down" /></div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35038831014578452)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="t8C">#TEXT#</td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" alt="" width="14" height="14" /></td>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<td class="t8C"><a href="#" class="t8C">#TEXT#</a></td>',
'<td><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" alt="" width="14" height="14" /></td>',
''))
,p_list_template_name=>'Button List'
,p_theme_id=>8
,p_theme_class_id=>6
,p_list_template_before_rows=>'<table class="t8ButtonList" summary="" cellpadding="0" cellspacing="0" border="0"><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35039135714578452)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Menu with Sublist'
,p_theme_id=>8
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35039435270578452)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_theme_id=>8
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
 p_id=>wwv_flow_api.id(35039725686578453)
,p_list_template_current=>'<td class="t8current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#/><br />#TEXT#</td>'
,p_list_template_noncurrent=>'<td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>'
,p_list_template_name=>'Horizontal Images with Label List'
,p_theme_id=>8
,p_theme_class_id=>4
,p_list_template_before_rows=>'<table cellspacing="0" cellpadding="0" border="0" class="t8HorizontalImageswithLabelList" summary=""><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35040050617578453)
,p_list_template_current=>'<span class="t8current">#TEXT#</span>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>8
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="t8HorizontalLinksList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35040327888578453)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt=""  /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_theme_id=>8
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',fa'
||'lse)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_item_templ_noncurr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',fa'
||'lse)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35040644079578453)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# alt="" /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# alt="" /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image (Custom 1)'
,p_theme_id=>8
,p_theme_class_id=>9
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# alt="" /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,'
||'''#LIST_ITEM_ID#'',false)" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_item_templ_noncurr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# alt="" /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,'
||'''#LIST_ITEM_ID#'',false)" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35040932893578454)
,p_list_template_current=>'<li><a class="t8current" href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>8
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t8TabbedNavigationList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35041253701578454)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tree List'
,p_theme_id=>8
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="htmlTree">'
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
 p_id=>wwv_flow_api.id(35041526136578454)
,p_list_template_current=>'<tr><td class="t8current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /><br/>#TEXT#</td></tr>'
,p_list_template_noncurrent=>'<tr><td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /><br/>#TEXT#</a></td></tr>'
,p_list_template_name=>'Vertical Images List'
,p_theme_id=>8
,p_theme_class_id=>5
,p_list_template_before_rows=>'<table cellpadding="0" cellspacing="0" border="0" summary="0" class="t8VerticalImagesList">'
,p_list_template_after_rows=>'</table>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35041842405578454)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_name=>'Vertical Images List (Custom 2)'
,p_theme_id=>8
,p_theme_class_id=>10
,p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="5" summary="" >'
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
''))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35042152674578454)
,p_list_template_current=>'<li class="t8current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>8
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="t8VerticalOrderedList">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35042426352578455)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr align="center" valign="middle"> ',
'<td width="15" height="25" align="left"><img src="#IMAGE_PREFIX#themes/theme_8/t3left_nav_mark_orange.gif" width="10" height="13" alt="" /></td>',
'<td class="t8lefthot">#TEXT#</td>',
'</tr>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr align="center" valign="middle"> ',
'<td width="15" align="left"><img src="#IMAGE_PREFIX#themes/theme_8/t3left_nav_mark_gray.gif" width="10" height="13" alt="" /></td>',
'<td height="25" class="t8leftnavtable"><a href="#LINK#">#TEXT#</a></td>',
'</tr>'))
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>8
,p_theme_class_id=>19
,p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" style="background-color:#e5e5dc;" summary="">'
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr> ',
'<td height="4" align="left" style="background-color:BFBFB8" colspan="2"><img src="#IMAGE_PREFIX#themes/theme_8/spacer.gif" width="170" height="1" alt="0" /></td>',
'</tr>',
'</table>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35042732824578455)
,p_list_template_current=>'<li class="t8VerticalUnorderedListwithBullets"><span class="t8current">#TEXT#</span></li>'
,p_list_template_noncurrent=>'<li class="t8VerticalUnorderedListwithBullets"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>8
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="t8VerticalUnorderedListwithBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35043043016578455)
,p_list_template_current=>'<li class="t8current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullet'
,p_theme_id=>8
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t8VerticalUnorderedListwithoutBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(35043344814578455)
,p_list_template_current=>'<tr><td class="t8current">#TEXT#<br /><img src="#IMAGE_PREFIX#themes/theme_8/t8arrowdown01.gif" alt="Down" /></td></tr>'
,p_list_template_noncurrent=>'<tr><td>#TEXT#<br /><img src="#IMAGE_PREFIX#themes/theme_8/t8arrowdown01.gif" alt="Down" /></td></tr>'
,p_list_template_name=>'Wizard Progress List'
,p_theme_id=>8
,p_theme_class_id=>17
,p_list_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t8WizardProgressList">'
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr><td>&DONE.</td></tr>',
'</table>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33359944627463182)
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
 p_id=>wwv_flow_api.id(33359944627463182)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33360045271463182)
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
 p_id=>wwv_flow_api.id(33360045271463182)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33360131173463182)
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
 p_id=>wwv_flow_api.id(33360131173463182)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33360244364463182)
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
 p_id=>wwv_flow_api.id(33360244364463182)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33360338113463182)
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
 p_id=>wwv_flow_api.id(33360434346463182)
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
 p_id=>wwv_flow_api.id(33360434346463182)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33360539289463182)
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
 p_id=>wwv_flow_api.id(33360539289463182)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(33360648352463182)
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
 p_id=>wwv_flow_api.id(33360729787463183)
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
 p_id=>wwv_flow_api.id(33360849501463183)
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
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35016152242440531)
,p_row_template_name=>'APEX 4.0 - Value Attribute Pairs'
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
,p_theme_id=>13
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35016443271440532)
,p_row_template_name=>'Borderless'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t13data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" class="t13Borderless"  border="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'<tbody>'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'<tfoot>#PAGINATION#</tfoot>',
'</table>',
'<span class="t13CSV">#CSV_LINK#</span>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t13ReportHeader">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#TEXT#',
''))
,p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>'
,p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>'
,p_row_style_mouse_over=>'#CCCCCC'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>13
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_row_template_comment=>'<br /><img class="psuedoButton" src="#IMAGE_PREFIX#pdf.png" onclick="pdf_Grab_XML2(''f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.:FLOW_FOP_OUTPUT_#REGION_ID#'')" />'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35016443271440532)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35016745424440533)
,p_row_template_name=>'Horizontal Border'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t13data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" class="t13HorizontalBorder"  border="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'<tbody>'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'<tfoot>#PAGINATION#</tfoot>',
'</table>',
'<span class="t13CSV">#CSV_LINK#</span>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t13ReportHeader">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#TEXT#',
''))
,p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>'
,p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>'
,p_row_style_mouse_over=>'#CCCCCC'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>13
,p_theme_class_id=>2
,p_translate_this_template=>'N'
,p_row_template_comment=>'<br /><img class="psuedoButton" src="#IMAGE_PREFIX#pdf.png" onclick="pdf_Grab_XML2(''f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.:FLOW_FOP_OUTPUT_#REGION_ID#'')" />'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35016745424440533)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35017045056440533)
,p_row_template_name=>'One Column Unordered List'
,p_row_template1=>'#COLUMN_VALUE#'
,p_row_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr><td><ul class="t13OneColumnUnorderedList">'
,p_row_template_after_rows=>'</ul><div class="t13CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t13pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t13pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t13pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t13pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>13
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35017045056440533)
,p_row_template_before_first=>'<li>'
,p_row_template_after_last=>'</li>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35017334012440534)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t13data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" class="t13Standard"  border="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'<tbody>'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'<tfoot>#PAGINATION#</tfoot>',
'</table>',
'<span class="t13CSV">#CSV_LINK#</span>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t13ReportHeader">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#TEXT#',
''))
,p_row_style_mouse_over=>'#CCCCCC'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>13
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35017334012440534)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35017645817440534)
,p_row_template_name=>'Standard (PPR)'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t13data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" cellspacing="0" class="t13Standard"  border="0" summary="" id="#REGION_ID#" htmldb:href="p=&APP_ID.:&APP_PAGE_ID.:&SESSION.:pg_R_#REGION_ID#:NO:">',
'<tbody>'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'<tfoot>#PAGINATION#</tfoot>',
'</table>',
'<span class="t13CSV">#CSV_LINK#</span>',
'',
'<script language=JavaScript type=text/javascript>',
'<!--',
'init_htmlPPRReport(''#REGION_ID#'');',
'',
'//-->',
'</script>',
'</htmldb:#REGION_ID#>',
'</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t13ReportHeader">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#TEXT#',
''))
,p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>'
,p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>'
,p_row_style_mouse_over=>'#CCCCCC'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>13
,p_theme_class_id=>7
,p_translate_this_template=>'N'
,p_row_template_comment=>'<br /><img class="psuedoButton" src="#IMAGE_PREFIX#pdf.png" onclick="pdf_Grab_XML2(''f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.:FLOW_FOP_OUTPUT_#REGION_ID#'')" />'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35017645817440534)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35017937301440534)
,p_row_template_name=>'Standard, Alternating Row Colors'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t13data">#COLUMN_VALUE#</td>'
,p_row_template2=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t13dataalt">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" class="t13Standard"  border="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'<tbody>'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'<tfoot>#PAGINATION#</tfoot>',
'</table>',
'<span class="t13CSV">#CSV_LINK#</span>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t13ReportHeader">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'EVEN_ROW_NUMBERS'
,p_row_template_display_cond2=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'EVEN_ROW_NUMBERS'
,p_pagination_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#TEXT#',
''))
,p_row_style_mouse_over=>'#CCCCCC'
,p_row_style_checked=>'#CCCCCC'
,p_theme_id=>13
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35017937301440534)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35018254059440534)
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
,p_theme_id=>13
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35018541612440534)
,p_row_template_name=>'Value Attribute Pairs'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<tr>',
'<th class="t13ReportHeader">#COLUMN_HEADER#</th>',
'<td class="t13data">#COLUMN_VALUE#</td>',
'</tr>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr>',
'<td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t13ValueAttributePairs">'))
,p_row_template_after_rows=>'</table><div class="t13CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t13pagination">#PAGINATION_NEXT# &gt;</a>'
,p_previous_page_template=>'<a href="#LINK#" class="t13pagination">&lt;#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t13pagination">#PAGINATION_NEXT_SET#&gt;&gt;</a>'
,p_previous_set_template=>'<a href="#LINK#" class="t13pagination">&lt;&lt;#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>13
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35018541612440534)
,p_row_template_after_last=>'<tr><td colspan="2" class="t13seperate"><hr /></td></tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35036122862578448)
,p_row_template_name=>'APEX 4.0 - Value Attribute Pairs'
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
,p_theme_id=>8
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35036452217578449)
,p_row_template_name=>'Borderless'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t8data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#',
'<tr>',
'<td><table class="t8borderless" cellpadding="0" border="0" cellspacing="0" summary="0">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="t8CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t8ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t8pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t8pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>8
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35036452217578449)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35036745465578449)
,p_row_template_name=>'Bottom Border Only'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t8data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" cellspacing="0" border="0" class="t8HorizontalBorder" summary="">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="t8CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t8ReportHeader">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t8pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t8pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>8
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35036745465578449)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35037028544578449)
,p_row_template_name=>'One Column Unordered List'
,p_row_template1=>'<li class="t8OneColumnUnorderedList">#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" summary="" border="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#',
'<tr><td><ul class="t8OneColumnUnorderedList">'))
,p_row_template_after_rows=>'</ul><div class="t8CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_next_page_template=>'<a href="#LINK#" class="t8pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t8pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>8
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35037028544578449)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35037339766578449)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t8data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t8standard">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="t8CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t8ReportHeader">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t8pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t8pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#EEEEEE'
,p_theme_id=>8
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35037339766578449)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35037639470578450)
,p_row_template_name=>'Standard (PPR)'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t8data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t8standard">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="t8CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table><script language=JavaScript type=text/javascript>',
'<!--',
'init_htmlPPRReport(''#REGION_ID#'');',
'',
'//-->',
'</script>',
'</htmldb:#REGION_ID#>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t8ReportHeader">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t8pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t8pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#EEEEEE'
,p_theme_id=>8
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35037639470578450)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35037941138578451)
,p_row_template_name=>'Standard, Alternating Row Colors'
,p_row_template1=>'<td class="t8data" #ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template2=>'<td class="t8dataalt" #ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#',
'<tr><td><table border="0" cellpadding="0" cellspacing="0" summary="" class="t8standardalternatingrowcolors">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table><div class="t8CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t8ReportHeader"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_next_page_template=>'<a href="#LINK#" class="t8pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t8pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>8
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35037941138578451)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35038239883578451)
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
,p_theme_id=>8
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(35038545752578451)
,p_row_template_name=>'Value Attribute Pairs'
,p_row_template1=>'<tr><th class="t8ReportHeader">#COLUMN_HEADER#</th><td class="t8data">#COLUMN_VALUE#</td></tr>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#',
'<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t8ValueAttributePairs">'))
,p_row_template_after_rows=>'</table><div class="t8CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="t8pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t8pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_8/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="t8pagination"><img src="#IMAGE_PREFIX#themes/theme_8/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>8
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(35038545752578451)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'<tr><td colspan="2" class="t8seperate"><hr /></td></tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(33362945877463184)
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
 p_id=>wwv_flow_api.id(33363031694463184)
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
 p_id=>wwv_flow_api.id(33363153233463184)
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
 p_id=>wwv_flow_api.id(33363251504463184)
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
 p_id=>wwv_flow_api.id(33363342670463184)
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
 p_id=>wwv_flow_api.id(35023935229440543)
,p_template_name=>'No Label'
,p_template_body1=>'<span class="t13NoLabel">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t13InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>13
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35024054101440543)
,p_template_name=>'Optional Label'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><span class="t13OptionalLabel">'
,p_template_body2=>'</span></label>'
,p_theme_id=>13
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35024144337440543)
,p_template_name=>'Optional Label with Help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><a class="t13OptionalLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999"><SPAN STYLE="color: #1589FF;">'
,p_template_body2=>'</SPAN></a></label>'
,p_theme_id=>13
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35024244275440543)
,p_template_name=>'Required Label'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="t13RequiredLabel"><img src="#IMAGE_PREFIX#requiredicon_status2.gif" alt="" />'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t13InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>13
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35024325406440543)
,p_template_name=>'Required Label with Help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><a class="t13RequiredLabelwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'',''&CLOSE.'')" tabindex="999"><img src="#IMAGE_PREFIX#requiredicon_status2.gif" alt="" />'
,p_template_body2=>'</a></label>'
,p_theme_id=>13
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35043643953578456)
,p_template_name=>'No Label'
,p_template_body1=>'<span class="t8NoLabel">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t8InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>8
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35043730524578456)
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><span class="t8Optional">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t8InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>8
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35043834705578456)
,p_template_name=>'Optional with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><a class="t8OptionalwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t8InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>8
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35043952203578456)
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><img src="#IMAGE_PREFIX#themes/theme_8/required.gif" alt="" style="margin-right:5px;" /><span class="t8Required">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t8InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>8
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(35044042659578456)
,p_template_name=>'Required with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><img src="#IMAGE_PREFIX#themes/theme_8/required.gif" alt="" style="margin-right:5px;"/><a class="t8RequiredwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t8InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>8
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(48975924457953103)
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
 p_id=>wwv_flow_api.id(33364144946463185)
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
 p_id=>wwv_flow_api.id(33364225839463185)
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
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(35025243663440546)
,p_name=>'Breadcrumb Menu'
,p_current_page_option=>'<span class="t13Breadcrumb">#NAME#</span>'
,p_non_current_page_option=>'<a href="#LINK#" class="t13Breadcrumb">#NAME#</a>'
,p_between_levels=>'<span class="t13BreadcrumbSep">&gt;</span>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>13
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(35025323694440547)
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t13HierarchicalMenu">'
,p_current_page_option=>'<li class="t13current"><a href="#LINK#">#NAME#</a></li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>13
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(35044939054578457)
,p_name=>'Breadcrumb Menu'
,p_before_first=>'<div class="t8BreadcrumbMenu">'
,p_current_page_option=>'<span class="t8current">#NAME#</span>'
,p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>'
,p_between_levels=>'&nbsp;/&nbsp;'
,p_after_last=>'</div>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>8
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(35045052728578457)
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>8
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(33364644855463185)
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
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(35025740100440549)
,p_popup_icon=>'#IMAGE_PREFIX#list_gray.gif'
,p_popup_icon_attr=>'width="13" height="13" alt="Popup Lov"'
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
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon"><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_13/theme_V3.css" type="text/css">',
'',
'',
'</head>'))
,p_page_body_attr=>'onload="first_field()" style="background-color:#FFFFFF;margin:0;"'
,p_before_field_text=>'<div class="t13PopupHead">'
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
,p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="t13PopupBody">'
,p_theme_id=>13
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(35045433167578460)
,p_popup_icon=>'#IMAGE_PREFIX#list_gray.gif'
,p_popup_icon_attr=>'width="13" height="13" alt="Popup Lov"'
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
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon"><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_8/theme_4_0.css" type="text/css" />',
'',
'',
'</head>'))
,p_page_body_attr=>'onload="first_field()" style="margin:0;"'
,p_before_field_text=>'<div class="t8PopupHead">'
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
,p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="t8PopupBody">'
,p_theme_id=>8
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(33364323249463185)
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
 p_id=>wwv_flow_api.id(33364440937463185)
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
 p_id=>wwv_flow_api.id(33364531189463185)
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
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(35025427940440547)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>'<th scope="col" class="t13DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t13CalendarHolder"> ',
' <tr>',
'   <td class="t13MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="2" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="t13Calendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t13DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="t13Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t13Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t13WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="t13WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t13NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="t13NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t13WeekCalendarHolder">',
'<tr>',
'<td class="t13MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="t13DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t13WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t13Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t13Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t13NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t13Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="t13DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t13DayCalendarHolder"> <tr> <td class="t13MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t13DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="t13Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t13Today">'
,p_daily_time_open_format=>'<th scope="row" class="t13Hour">'
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
,p_theme_id=>13
,p_theme_class_id=>1
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(35025533611440548)
,p_cal_template_name=>'Calendar, Alternative 1'
,p_day_of_week_format=>'<th scope="col" class="t13DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t13CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="t13MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="t13CalendarAlternative1">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t13DayTitle">#DD#</div><br />'
,p_day_open_format=>'<td class="t13Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t13Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t13WeekendDayTitle">#DD#</div><br />'
,p_weekend_open_format=>'<td valign="top" class="t13WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t13NonDayTitle">#DD#</div><br />'
,p_nonday_open_format=>'<td class="t13NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t13WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="t13MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="t13DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t13WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t13Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t13Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t13NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t13Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="t13DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t13DayCalendarAlternative1Holder"> <tr><td class="t13MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t13DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="t13Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t13Today">'
,p_daily_time_open_format=>'<th scope="row" class="t13Hour">'
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
,p_theme_id=>13
,p_theme_class_id=>2
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(35025622633440548)
,p_cal_template_name=>'Small Calendar'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t13SmallCalenderHolder"> ',
' <tr>',
'   <td class="t13MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="t13SmallCalender">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t13DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="t13Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t13Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t13WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="t13WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t13NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="t13NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t13SmallWeekCalendarHolder">',
'<tr>',
'<td class="t13MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="t13DayOfWeek">#IDAY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t13SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t13Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t13Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t13NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t13Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="t13DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t13SmallDayCalendarHolder"> <tr> <td class="t13MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t13SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="t13Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t13Today">'
,p_daily_time_open_format=>'<th scope="row" class="t13Hour">'
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
,p_theme_id=>13
,p_theme_class_id=>3
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(35045137270578459)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>'<th scope="col" class="t8DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t8CalendarHolder"> ',
' <tr>',
'   <td class="t8MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="2" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="t8Calendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t8DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="t8Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t8Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t8WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="t8WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t8NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="t8NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t8WeekCalendarHolder">',
'<tr>',
'<td class="t8MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="t8DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t8WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t8Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t8Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t8NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t8Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="t8DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t8DayCalendarHolder"> <tr> <td class="t8MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t8DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="t8Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t8Today">'
,p_daily_time_open_format=>'<th scope="row" class="t8Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>8
,p_theme_class_id=>1
);
end;
/
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(35045235704578459)
,p_cal_template_name=>'Calendar, Alternative 1'
,p_day_of_week_format=>'<th scope="col" class="t8DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t8CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="t8MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="4" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="t8CalendarAlternative1">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t8DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="t8Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t8Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t8WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="t8WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t8NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="t8NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t8WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="t8MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="t8DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t8WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t8Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t8Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t8NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t8Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="t8DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t8DayCalendarAlternative1Holder"> <tr><td class="t8MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t8DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="t8Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t8Today">'
,p_daily_time_open_format=>'<th scope="row" class="t8Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>8
,p_theme_class_id=>2
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(35045332717578460)
,p_cal_template_name=>'Small Calendar'
,p_day_of_week_format=>'<th scope="col" class="t8DayOfWeek" height="12">#DY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t8SmallCalendarHolder"> ',
' <tr>',
'   <td class="t8MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="2" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="t8SmallCalendar">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t8DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="t8Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t8Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t8WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="t8WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t8NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="t8NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t8SmallWeekCalendarHolder">',
'<tr>',
'<td class="t8MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="t8DayOfWeek">#IDAY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t8SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t8Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t8Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t8NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t8Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="t8DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="t8SmallDayCalendarHolder"> <tr> <td class="t8MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t8SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="t8Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t8Today">'
,p_daily_time_open_format=>'<th scope="row" class="t8Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>8
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(33364722115463187)
,p_theme_id=>22
,p_theme_name=>'Bluejay'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(33356826868463180)
,p_error_template=>wwv_flow_api.id(33355844480463178)
,p_printer_friendly_template=>wwv_flow_api.id(33356445859463179)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(33355429614463177)
,p_default_button_template=>wwv_flow_api.id(33363449191463184)
,p_default_region_template=>wwv_flow_api.id(33358831581463181)
,p_default_chart_template=>wwv_flow_api.id(33357842955463180)
,p_default_form_template=>wwv_flow_api.id(33357949179463181)
,p_default_reportr_template=>wwv_flow_api.id(33358831581463181)
,p_default_tabform_template=>wwv_flow_api.id(33358831581463181)
,p_default_wizard_template=>wwv_flow_api.id(33359722964463182)
,p_default_menur_template=>wwv_flow_api.id(33357343280463180)
,p_default_listr_template=>wwv_flow_api.id(33357742614463180)
,p_default_irr_template=>wwv_flow_api.id(33358427650463181)
,p_default_report_template=>wwv_flow_api.id(33360434346463182)
,p_default_label_template=>wwv_flow_api.id(33363153233463184)
,p_default_menu_template=>wwv_flow_api.id(33364144946463185)
,p_default_calendar_template=>wwv_flow_api.id(33364323249463185)
,p_default_list_template=>wwv_flow_api.id(33362449597463184)
,p_default_option_label=>wwv_flow_api.id(33363153233463184)
,p_default_required_label=>wwv_flow_api.id(33363342670463184)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(22),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(35025927641440550)
,p_theme_id=>13
,p_theme_name=>'Classic Blue'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(35008644554440521)
,p_error_template=>wwv_flow_api.id(35006822986440518)
,p_printer_friendly_template=>wwv_flow_api.id(35008336119440520)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(35006623248440516)
,p_default_button_template=>wwv_flow_api.id(35024452803440544)
,p_default_region_template=>wwv_flow_api.id(35013750177440528)
,p_default_chart_template=>wwv_flow_api.id(35011046806440526)
,p_default_form_template=>wwv_flow_api.id(35011329651440526)
,p_default_reportr_template=>wwv_flow_api.id(35013750177440528)
,p_default_tabform_template=>wwv_flow_api.id(35013750177440528)
,p_default_wizard_template=>wwv_flow_api.id(35015523804440529)
,p_default_menur_template=>wwv_flow_api.id(35009836275440525)
,p_default_listr_template=>wwv_flow_api.id(35013750177440528)
,p_default_report_template=>wwv_flow_api.id(35017334012440534)
,p_default_label_template=>wwv_flow_api.id(35024144337440543)
,p_default_menu_template=>wwv_flow_api.id(35025243663440546)
,p_default_calendar_template=>wwv_flow_api.id(35025427940440547)
,p_default_list_template=>wwv_flow_api.id(35023322180440543)
,p_default_option_label=>wwv_flow_api.id(35024144337440543)
,p_default_required_label=>wwv_flow_api.id(35024325406440543)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(13),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(35045644210578460)
,p_theme_id=>8
,p_theme_name=>'Orange'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(35028651456578441)
,p_error_template=>wwv_flow_api.id(35026845511578437)
,p_printer_friendly_template=>wwv_flow_api.id(35028327729578440)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(35026642051578437)
,p_default_button_template=>wwv_flow_api.id(35044145071578457)
,p_default_region_template=>wwv_flow_api.id(35033747299578446)
,p_default_chart_template=>wwv_flow_api.id(35031025611578445)
,p_default_form_template=>wwv_flow_api.id(35031351216578445)
,p_default_reportr_template=>wwv_flow_api.id(35033747299578446)
,p_default_tabform_template=>wwv_flow_api.id(35033747299578446)
,p_default_wizard_template=>wwv_flow_api.id(35035537065578447)
,p_default_menur_template=>wwv_flow_api.id(35029846378578444)
,p_default_listr_template=>wwv_flow_api.id(35033747299578446)
,p_default_report_template=>wwv_flow_api.id(35037339766578449)
,p_default_label_template=>wwv_flow_api.id(35043834705578456)
,p_default_menu_template=>wwv_flow_api.id(35044939054578457)
,p_default_calendar_template=>wwv_flow_api.id(35045137270578459)
,p_default_list_template=>wwv_flow_api.id(35042732824578455)
,p_default_option_label=>wwv_flow_api.id(35043834705578456)
,p_default_required_label=>wwv_flow_api.id(35044042659578456)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(8),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(40799047989796271)
,p_theme_id=>100
,p_theme_name=>'Safeguard_Blue'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(100),'')
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
 p_id=>wwv_flow_api.id(33367727009463201)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(33365050429463189)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(45579128996474256)
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
prompt --application/shared_components/plugins/item_type/com_oracle_apex_simple_checkbox
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(16403565468430798577)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_display_name=>'Simple Checkbox'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','COM.ORACLE.APEX.SIMPLE_CHECKBOX'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'--===============================================================================',
'-- Renders the Simple Checkbox item type based on the configuration of the page item.',
'--===============================================================================',
'function render_simple_checkbox (',
'    p_item                in apex_plugin.t_page_item,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_value               in varchar2,',
'    p_is_readonly         in boolean,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_page_item_render_result',
'is',
'    -- Use named variables instead of the generic attribute variables',
'    l_checked_value    varchar2(255)  := nvl(p_item.attribute_01, ''Y'');',
'    l_unchecked_value  varchar2(255)  := p_item.attribute_02;',
'    l_checked_label    varchar2(4000) := p_item.attribute_03;',
'',
'    l_name             varchar2(30);',
'    l_value            varchar2(255);',
'    l_checkbox_postfix varchar2(8);',
'    l_result           apex_plugin.t_page_item_render_result;',
'begin',
'    -- if the current value doesn''t match our checked and unchecked value',
'    -- we fallback to the unchecked value ',
'    if p_value in (l_checked_value, l_unchecked_value) then',
'        l_value := p_value;',
'    else',
'        l_value := l_unchecked_value;',
'    end if;',
'',
'    if p_is_readonly or p_is_printer_friendly then',
'        -- if the checkbox is readonly we will still render a hidden field with',
'        -- the value so that it can be used when the page gets submitted',
'        wwv_flow_plugin_util.print_hidden_if_readonly (',
'            p_item_name           => p_item.name,',
'            p_value               => p_value,',
'            p_is_readonly         => p_is_readonly,',
'            p_is_printer_friendly => p_is_printer_friendly );',
'        l_checkbox_postfix := ''_DISPLAY'';',
'',
'        -- Tell APEX that this field is NOT navigable',
'        l_result.is_navigable := false;',
'    else',
'        -- If a page item saves state, we have to call the get_input_name_for_page_item',
'        -- to render the internal hidden p_arg_names field. It will also return the',
'        -- HTML field name which we have to use when we render the HTML input field.',
'        l_name := wwv_flow_plugin.get_input_name_for_page_item(false);',
'',
'        -- render the hidden field which actually stores the checkbox value',
'        sys.htp.prn (',
'            ''<input type="hidden" id="''||p_item.name||''_HIDDEN" name="''||l_name||''" ''||',
'            ''value="''||l_value||''" />'');',
'',
'        -- Add the JavaScript library and the call to initialize the widget',
'        apex_javascript.add_library (',
'            p_name      => ''com_oracle_apex_simple_checkbox.min'',',
'            p_directory => p_plugin.file_prefix,',
'            p_version   => null );',
'',
'        apex_javascript.add_onload_code (',
'            p_code => ''com_oracle_apex_simple_checkbox(''||',
'                      apex_javascript.add_value(p_item.name)||',
'                      ''{''||',
'                      apex_javascript.add_attribute(''unchecked'', l_unchecked_value, false)||',
'                      apex_javascript.add_attribute(''checked'',   l_checked_value, false, false)||',
'                      ''});'' );',
'',
'        -- Tell APEX that this field is navigable',
'        l_result.is_navigable := true;',
'    end if;',
'',
'    -- render the checkbox widget',
'    sys.htp.prn (',
'        ''<input type="checkbox" id="''||p_item.name||l_checkbox_postfix||''" ''||',
'        ''value="''||l_value||''" ''||',
'        case when l_value = l_checked_value then ''checked="checked" '' end||',
'        case when p_is_readonly or p_is_printer_friendly then ''disabled="disabled" '' end||',
'        coalesce(p_item.element_attributes, ''class="simple_checkbox"'')||'' />'');',
'',
'    -- print label after checkbox',
'    if l_checked_label is not null then',
'        sys.htp.prn(''<label for="''||p_item.name||l_checkbox_postfix||''">''||l_checked_label||''</label>'');',
'    end if;',
'',
'    return l_result;',
'end render_simple_checkbox;',
'',
'--==============================================================================',
'-- Validates the submitted "Simple Checkbox" value against the configuration to',
'-- make sure that invalid values submitted by hackers are detected.',
'--==============================================================================',
'function validate_simple_checkbox (',
'    p_item   in apex_plugin.t_page_item,',
'    p_plugin in apex_plugin.t_plugin,',
'    p_value  in varchar2 )',
'    return apex_plugin.t_page_item_validation_result',
'is',
'    l_checked_value   varchar2(255) := nvl(p_item.attribute_01, ''Y'');',
'    l_unchecked_value varchar2(255) := p_item.attribute_02;',
'',
'    l_result          apex_plugin.t_page_item_validation_result;',
'begin',
'    if not (   p_value in (l_checked_value, l_unchecked_value)',
'            or (p_value is null and l_unchecked_value is null)',
'           )',
'    then',
'        l_result.message := ''Checkbox contains invalid value!'';',
'    end if;',
'    return l_result;',
'end validate_simple_checkbox;',
''))
,p_render_function=>'render_simple_checkbox'
,p_validation_function=>'validate_simple_checkbox'
,p_standard_attributes=>'VISIBLE:SESSION_STATE:READONLY:SOURCE:ELEMENT:ENCRYPT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>',
'	This item type plug-in displays a single checkbox but allows you to set 2 values (one for checked and another for unchecked). It&#39;s perfect for Y(es)/N(o) type checkboxes.</p>',
'<p>',
'	Without this plug-in, you would need to write a custom computation to get the same functionality.</p>',
''))
,p_version_identifier=>'1.2'
,p_about_url=>'http://apex.oracle.com/plugins/'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(16403610365669873386)
,p_plugin_id=>wwv_flow_api.id(16403565468430798577)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Checked Value'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Y'
,p_display_length=>10
,p_max_length=>255
,p_is_translatable=>false
,p_help_text=>'Value stored if the checkbox is checked.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(16404161569618076763)
,p_plugin_id=>wwv_flow_api.id(16403565468430798577)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Unchecked Value'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>10
,p_max_length=>255
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Value stored if the checkbox is unchecked. This attribute can also be left blank if you want to store NULL when the checkbox is left unchecked.</p>',
'',
'<p>Note: This value will also be used if the page item is populated with a value which doesn''t match the "Checked Value" or "Unchecked Value".</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(16404161064424075266)
,p_plugin_id=>wwv_flow_api.id(16403565468430798577)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Checkbox Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>40
,p_is_translatable=>true
,p_help_text=>'Label to be displayed after the checkbox. If you set this optional attribute, you should remove the text in the label attribute of the page item.'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E20636F6D5F6F7261636C655F617065785F73696D706C655F636865636B626F7828652C63297B76617220623D617065782E6A5175657279282223222B65292C613D617065782E6A5175657279282223222B652B225F48494444454E22';
wwv_flow_api.g_varchar2_table(2) := '293B66756E6374696F6E206428297B612E76616C2828622E697328223A636865636B656422293D3D3D74727565293F632E636865636B65643A632E756E636865636B6564297D617065782E6A5175657279282223222B65292E6368616E67652864293B61';
wwv_flow_api.g_varchar2_table(3) := '7065782E6A517565727928646F63756D656E74292E62696E642822617065786265666F7265706167657375626D6974222C64293B617065782E7769646765742E696E6974506167654974656D28652C7B73657456616C75653A66756E6374696F6E286629';
wwv_flow_api.g_varchar2_table(4) := '7B622E617474722822636865636B6564222C28663D3D3D632E636865636B656429293B6428297D2C67657456616C75653A66756E6374696F6E28297B72657475726E20612E76616C28297D7D297D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(14618173968270037806)
,p_plugin_id=>wwv_flow_api.id(16403565468430798577)
,p_file_name=>'com_oracle_apex_simple_checkbox.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(33364845955463187)
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
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(33364845955463187)
,p_tab_set=>'TS1'
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(33356040088463179)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151216135403'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37401848959896756)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">Recent PIT Updates</SPAN>'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33356941403463180)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM PRJ_EMP_SECURITY',
'WHERE LOGIN = :P175_USERNAME'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(37402828190966418)
,p_name=>'Latest PIT Update'
,p_parent_plug_id=>wwv_flow_api.id(37401848959896756)
,p_template=>wwv_flow_api.id(33357144896463180)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT  ',
'CASE WHEN FR_SYSTEM IN (''ServiceReq_V72'', ''ServiceReq'') THEN ''SERV REQ - ''',
'     WHEN FR_SYSTEM IN (''Incident_V72'', ''Incident'') THEN ''INCIDENT - ''',
'     ELSE ''CHANGE - '' END || REQ_ID || '' - '' || ',
'CASE WHEN SUMMARY IS NULL THEN ''<description not available at this time>'' ',
'     ELSE SUMMARY END AS UPDATE_LINE  ',
'FROM PRJ_PRIORITY_ALL',
'WHERE TO_CHAR(DATA_DATE, ''MMDDYYY'') = TO_CHAR(SYSDATE, ''MMDDYYY'')',
'ORDER BY DATA_DATE DESC'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37403143111966421)
,p_query_column_id=>1
,p_column_alias=>'UPDATE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'<SPAN STYLE="color: #1589FF;"><b>Tickets added to PIT today</b></SPAN>'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37406853226806214)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">PIT - In the News</SPAN>'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM PRJ_EMP_SECURITY',
'WHERE LOGIN = :P175_USERNAME'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(37447629769673291)
,p_name=>'<SPAN STYLE="color: #1589FF;"></SPAN>'
,p_parent_plug_id=>wwv_flow_api.id(37406853226806214)
,p_template=>wwv_flow_api.id(33357040036463180)
,p_display_sequence=>6
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(ENTRY_DT, ''MM-DD-YYYY'') || '' at '' || TO_CHAR(ENTRY_DT, ''HH:MI AM'') || '' - '' || ENTRY_INFO AS NEWS_ALERTS ',
'FROM NEWS_ALERTS',
'WHERE APPL = ''PRJ''',
'ORDER BY ENTRY_DT DESC'))
,p_source_type=>'NATIVE_SQL_REPORT'
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
 p_id=>wwv_flow_api.id(37447939051673294)
,p_query_column_id=>1
,p_column_alias=>'NEWS_ALERTS'
,p_column_display_sequence=>1
,p_column_heading=>'<b><SPAN STYLE="color: #1589FF;">Project Incident Tracker - In The News</SPAN></b>'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37419551513023932)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">Last Login</SPAN>'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33356941403463180)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM PRJ_EMP_SECURITY',
'WHERE LOGIN = :P175_USERNAME'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45584551370522314)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33358831581463181)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'FROM PRJ_EMP_SECURITY',
'WHERE LOGIN = :P175_USERNAME'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37407227093806219)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37418353623983465)
,p_name=>'P1_LST_LOG_IN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(37419551513023932)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''Last Login for '' || UPPER(USER_ID) || '' was '' || TO_CHAR(LOG_DT, ''MM-DD-YYYY'') || '' at '' || TO_CHAR(LOG_DT, ''HH:MI AM'') || ''.'' AS LAST_LOGIN',
'            FROM (',
'                  SELECT UPPER(USER_ID) AS USER_ID, LOG_DT,',
'                        ROW_NUMBER() OVER (PARTITION BY UPPER(USER_ID) ORDER BY LOG_DT DESC NULLS LAST) SEQ',
'                    FROM PRJ_USER_LOG',
'                  )',
'            WHERE SEQ = 2 AND UPPER(USER_ID) = UPPER(:APP_USER);'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45584850082525283)
,p_name=>'P1_LOGIN_ERROR_MSG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(45584551370522314)
,p_prompt=>' You are not an authorized user.  Please contact the application administrator for access.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(29949825108897022)
,p_process_sequence=>50
,p_process_point=>'AFTER_FOOTER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update User Log / PRJ_USER_LOG'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'  INSERT INTO PRJ_USER_LOG',
'         (USER_ID, LOG_DT)',
'  VALUES (UPPER(:P175_USERNAME), SYSDATE);',
'END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37408745199806239)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NEWS_ALERTS'
,p_attribute_02=>'NEWS_ALERTS'
,p_attribute_03=>'P1_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37408950275806240)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NEWS_ALERTS'
,p_attribute_02=>'NEWS_ALERTS'
,p_attribute_03=>'P1_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37409152461806241)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(33364845955463187)
,p_tab_set=>'TS1'
,p_name=>'Project Incident TrackerOld'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project Incident Tracker'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_error_notification_text=>'Testing'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_javascript_code_onload=>'$(''#Update'').hide();'
,p_step_template=>wwv_flow_api.id(33356137215463179)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151216134551'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9582815349448072)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">PIT - Project Incident Tracker</SPAN>'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(33357441164463180)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33367243737463200)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">PIT - Project Incident Tracker</SPAN>'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'.formlayout {border-collapse:collapse;}',
'.formlayout td {padding:0px;}',
'.formlayout td input {margin:0px;}',
'.formlayout td select {margin:0px;}',
'</style>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37320838541629363)
,p_plug_name=>'Priority All - sub region'
,p_parent_plug_id=>wwv_flow_api.id(33367243737463200)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'.formlayout {border-collapse:collapse;}',
'.formlayout td {padding:0px;}',
'.formlayout td input {margin:0px;}',
'.formlayout td select {margin:0px;}',
'</style>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37344321807643542)
,p_plug_name=>'Priority All 4 - sub region'
,p_parent_plug_id=>wwv_flow_api.id(33367243737463200)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
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
 p_id=>wwv_flow_api.id(37351327701471191)
,p_plug_name=>'Priority All 0 - sub region'
,p_parent_plug_id=>wwv_flow_api.id(33367243737463200)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
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
 p_id=>wwv_flow_api.id(35061228693785507)
,p_plug_name=>'Priority All 1 - sub region'
,p_parent_plug_id=>wwv_flow_api.id(37351327701471191)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33356941403463180)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35085547851999225)
,p_plug_name=>'Priority All 2 - sub region'
,p_parent_plug_id=>wwv_flow_api.id(37351327701471191)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33356941403463180)
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
 p_id=>wwv_flow_api.id(35101653618067080)
,p_plug_name=>'Priority All 3 - sub region'
,p_parent_plug_id=>wwv_flow_api.id(37351327701471191)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33356941403463180)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_row_template=>1
,p_plug_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'.formlayout {border-collapse:collapse;}',
'.formlayout td {padding:0px;}',
'.formlayout td input {margin:0px;}',
'.formlayout td select {margin:0px;}',
'</style>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49002436835247000)
,p_plug_name=>'4'
,p_parent_plug_id=>wwv_flow_api.id(37351327701471191)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33356941403463180)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49002643414248936)
,p_plug_name=>'5'
,p_parent_plug_id=>wwv_flow_api.id(37351327701471191)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33356941403463180)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49002847224250039)
,p_plug_name=>'6'
,p_parent_plug_id=>wwv_flow_api.id(37351327701471191)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33356941403463180)
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
 p_id=>wwv_flow_api.id(49003022074252201)
,p_plug_name=>'7'
,p_parent_plug_id=>wwv_flow_api.id(37351327701471191)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49003225537253224)
,p_plug_name=>'8'
,p_parent_plug_id=>wwv_flow_api.id(37351327701471191)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33356941403463180)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49009546194325420)
,p_plug_name=>'9'
,p_parent_plug_id=>wwv_flow_api.id(37351327701471191)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49009748964326271)
,p_plug_name=>'10'
,p_parent_plug_id=>wwv_flow_api.id(37351327701471191)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49009952081327111)
,p_plug_name=>'11'
,p_parent_plug_id=>wwv_flow_api.id(37351327701471191)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33309446178963320)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(37320838541629363)
,p_button_name=>'SEARCH'
,p_button_static_id=>'SEARCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33364030157463185)
,p_button_image_alt=>'Search'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34874631425973318)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(37320838541629363)
,p_button_name=>'CLEAR_FORM'
,p_button_static_id=>'CLEAR_FORM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33364030157463185)
,p_button_image_alt=>'Clear'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41221041862164265)
,p_button_sequence=>650
,p_button_plug_id=>wwv_flow_api.id(37320838541629363)
,p_button_name=>'P2_PRINT'
,p_button_static_id=>'P2_PRINT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33363728507463185)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9585301089592727)
,p_button_sequence=>660
,p_button_plug_id=>wwv_flow_api.id(9582815349448072)
,p_button_name=>'UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33363635568463185)
,p_button_image_alt=>'Update'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9585757825611294)
,p_button_sequence=>670
,p_button_plug_id=>wwv_flow_api.id(9582815349448072)
,p_button_name=>'ADD_PROJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33363635568463185)
,p_button_image_alt=>'Add Project'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(41213023213781331)
,p_branch_name=>'PRINT_CARDS'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_CHANGE_ID,P6_INCIDENT_ID,P6_SERVICEREQ_ID:&P2_CHANGE_ID.,&P2_INCIDENT_ID.,&P2_SERVICEREQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(41221041862164265)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33310953121064432)
,p_name=>'P2_ITGROUP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(35085547851999225)
,p_prompt=>'IT Group'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ITGROUP'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ITGROUP'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ITGROUP as display_value, ITGROUP as return_value ',
'  from PRJ_IT_GROUP',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>8
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the IT Group performing the tasks for this ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33311144279068623)
,p_name=>'P2_REQGROUP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(35061228693785507)
,p_item_default=>'&nbsp;'
,p_prompt=>'Requesting Group'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REQGROUP'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select REQGROUP as display_value, REQGROUP as return_value ',
'  from PRJ_REQ_GROUP',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>8
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the group that submitted the ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33368222215463203)
,p_name=>'P2_CHANGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(37320838541629363)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change ID:'
,p_pre_element_text=>'&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'CHANGE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>10
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the Change / RFC number that you are searching for.'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33368445852463203)
,p_name=>'P2_INCIDENT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(37320838541629363)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Incident ID:'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'INCIDENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>15
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the incident number that you are searching for.'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33368632297463203)
,p_name=>'P2_PRIORITY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(35061228693785507)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Rank'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Priority entered for the selected ticket.',
'',
'     00 - WIP',
'     99 - Unprioritized Backlog'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33369035860463203)
,p_name=>'P2_UPDATES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(37344321807643542)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;Business Updates'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'UPDATES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>5000
,p_cHeight=>5
,p_new_grid=>true
,p_colspan=>1
,p_grid_column=>1
,p_label_alignment=>'RIGHT-TOP'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Updates on the ticket selected throughout the process.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33369253116463204)
,p_name=>'P2_IT_COMMENTS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(37344321807643542)
,p_use_cache_before_default=>'NO'
,p_prompt=>'IT Comments'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'IT_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>5000
,p_cHeight=>5
,p_colspan=>1
,p_grid_column=>1
,p_label_alignment=>'RIGHT-TOP'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Updates on the ticket selected throughout the process for IT eyes ONLY (no reporting).'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33369652262463204)
,p_name=>'P2_REPORTABLE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(35085547851999225)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reportable'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'REPORTABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_cSize=>1
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Should this ticket be reported on?'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33369826009463204)
,p_name=>'P2_LD1'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ld1'
,p_source=>'LD1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cMaxlength=>10
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33370051562463204)
,p_name=>'P2_EXEC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(35101653618067080)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Executive'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'EXEC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_cSize=>1
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Should this ticket be reported as an executive request?'
,p_attribute_01=>'1'
,p_attribute_02=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33370244350463205)
,p_name=>'P2_FASTTRACK'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fasttrack'
,p_source=>'FASTTRACK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33370423737463205)
,p_name=>'P2_PRODSUP'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prodsup'
,p_source=>'PRODSUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33370625019463205)
,p_name=>'P2_ORIG_ANALYSIS_HRS'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(35061228693785507)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<SPAN STYLE="color: #1589FF;">Original Analysis</SPAN>'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ORIG_ANALYSIS_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33370840265463205)
,p_name=>'P2_ORIG_DESIGN_HRS'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(35085547851999225)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<SPAN STYLE="color: #1589FF;">Original Design</SPAN>'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ORIG_DESIGN_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cMaxlength=>10
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33371038595463205)
,p_name=>'P2_ORIG_DEV_HRS'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(35061228693785507)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<SPAN STYLE="color: #1589FF;">Original Development</SPAN>'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ORIG_DEV_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33371249709463206)
,p_name=>'P2_ORIG_QA_HRS'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(35085547851999225)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<SPAN STYLE="color: #1589FF;">Original QA </SPAN>'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ORIG_QA_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33371424497463206)
,p_name=>'P2_ORIG_HRS_EST'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(35101653618067080)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<SPAN STYLE="color: #1589FF;">Total Original</SPAN>'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ORIG_HRS_EST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33371644467463206)
,p_name=>'P2_ANALYSIS_HRS'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Analysis Hrs'
,p_source=>'ANALYSIS_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33371850176463206)
,p_name=>'P2_DESIGN_HRS'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Design Hrs'
,p_source=>'DESIGN_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33372025091463207)
,p_name=>'P2_DEV_HRS'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dev Hrs'
,p_source=>'DEV_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33372237640463207)
,p_name=>'P2_QA_HRS'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qa Hrs'
,p_source=>'QA_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33372439669463207)
,p_name=>'P2_CURRENT_HRS_EST'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Current Hrs Est'
,p_source=>'CURRENT_HRS_EST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33372629435463207)
,p_name=>'P2_ACTUAL_HRS'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Actual Hrs'
,p_source=>'ACTUAL_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33372835122463207)
,p_name=>'P2_EDD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(49009952081327111)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Est. Delivery DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'EDD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Target date for deployment if not in the Completed stage - OR - Date deployed for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33373050976463208)
,p_name=>'P2_RISK_ISSUE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(35061228693785507)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Health'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'RISK_ISSUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'HEALTH'
,p_lov=>'.'||wwv_flow_api.id(34008652628832735)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>8
,p_cMaxlength=>1
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Current risk for the selected ticket.',
'',
'     G - Green (Target date is safe)',
'     Y - Yellow (Target date in danger of slipping)',
'     R - Red (Target date will be missed)'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33373227279463208)
,p_name=>'P2_DEV_START_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(49002847224250039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dev Start DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'DEV_START_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date development started for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33373451534463208)
,p_name=>'P2_APP_REQ_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(49009546194325420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;App Request DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'APP_REQ_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date the request for approval was sent out for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33373631654463208)
,p_name=>'P2_APP_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(49009748964326271)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Approval DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'APP_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date approval was received back for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33373829355463208)
,p_name=>'P2_SL_RANK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(35085547851999225)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bus. Rank'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'SL_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Business ranking for the ticket across the release for the selected ticket.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33374032438463209)
,p_name=>'P2_CLIENT'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Client'
,p_source=>'CLIENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33374236774463209)
,p_name=>'P2_IT'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'It'
,p_source=>'IT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33374454205463210)
,p_name=>'P2_BUSINESS'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Business'
,p_source=>'BUSINESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33374639731463210)
,p_name=>'P2_BLOCKER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(37344321807643542)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Value / Justification'
,p_pre_element_text=>'&nbsp;'
,p_source=>'BLOCKER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>99
,p_cMaxlength=>100
,p_cHeight=>1
,p_rowspan=>100
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'If progress is being held up by something, enter a short description of why/who.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33374824020463210)
,p_name=>'P2_DEV_DAYS'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dev Days'
,p_source=>'DEV_DAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33375048454463210)
,p_name=>'P2_ANALYSIS_START_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(49002436835247000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Analysis Start DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'ANALYSIS_START_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date the analysis started for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33375245514463210)
,p_name=>'P2_ANALYSIS_DAYS'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Analysis Days'
,p_source=>'ANALYSIS_DAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33375434963463211)
,p_name=>'P2_DESIGN_START_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(49002643414248936)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Design Start DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'DESIGN_START_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date the design started for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33375651717463211)
,p_name=>'P2_DESIGN_DAYS'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Design Days'
,p_source=>'DESIGN_DAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33375854148463211)
,p_name=>'P2_QA_START_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(49003022074252201)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;Quality Start DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'QA_START_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date QA started for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33376048021463211)
,p_name=>'P2_QA_DAYS'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qa Days'
,p_source=>'QA_DAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33376251322463211)
,p_name=>'P2_UAT_START_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(49003225537253224)
,p_use_cache_before_default=>'NO'
,p_prompt=>'UAT Start DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'UAT_START_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date UAT started for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33376443161463212)
,p_name=>'P2_UAT_DAYS'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Uat Days'
,p_source=>'UAT_DAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33376635144463212)
,p_name=>'P2_CHG_ID'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Chg Id'
,p_source=>'CHG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33376827607463212)
,p_name=>'P2_INC_ID'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inc Id'
,p_source=>'INC_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(33377033261463212)
,p_name=>'P2_RELEASE_ID'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Release Id'
,p_pre_element_text=>'&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'RELEASE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34040447386098187)
,p_name=>'P2_SUMMARY_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(37320838541629363)
,p_prompt=>'Request Summary:'
,p_pre_element_text=>'&nbsp;&nbsp;'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>99
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Summary entered into Front Range for the selected ticket.'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34069746900613441)
,p_name=>'P2_STATUS_LIST'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(35085547851999225)
,p_item_default=>'STATUS'
,p_prompt=>'Status'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPLAY as display_value, DISPLAY as return_value ',
'  from PRJ_STATUS_ORDER',
' order by SORT_ORDER'))
,p_lov_display_null=>'YES'
,p_cSize=>8
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'class="typeselect"'
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the stage in which the ticket is currently in.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34395746586912395)
,p_name=>'P2_ASSIGNMENT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(35061228693785507)
,p_prompt=>'PM Assigned'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ASSIGNMENT'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FULL_NAME as d, FULL_NAME as r ',
'  from PRJ_ASSIGNMENTS ',
' order by d nulls first'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the person assigned the task for the stage that this ticket is in.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35158236833388347)
,p_name=>'P2_FR_SYSTEM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(37320838541629363)
,p_item_default=>'Working'
,p_prompt=>'Old Front Range'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;Front Range'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Are you looking for a ticket in the New Front Range or the Old version?'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35173251255896803)
,p_name=>'P2_DATA_DATE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(35101653618067080)
,p_use_cache_before_default=>'NO'
,p_prompt=>'.'
,p_source=>'DATA_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35188023418040962)
,p_name=>'P2_X'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(35101653618067080)
,p_prompt=>'.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37176039129462838)
,p_name=>'P2_CHECKBOX'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(33367243737463200)
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
 p_id=>wwv_flow_api.id(37485727055495587)
,p_name=>'P2_BA_ASSIGNED'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(35085547851999225)
,p_prompt=>'BA Assigned'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ASSIGNMENT'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FULL_NAME as d, FULL_NAME as r ',
'  from PRJ_ASSIGNMENTS ',
' order by d nulls first'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Business agent assigned to the ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37485953785498392)
,p_name=>'P2_DEV_ASSIGNED'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(35101653618067080)
,p_prompt=>'Dev Assigned'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ASSIGNMENT'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FULL_NAME as d, FULL_NAME as r ',
'  from PRJ_ASSIGNMENTS ',
' order by d nulls first'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Developer assigned to the ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37486144727502634)
,p_name=>'P2_QA_ASSIGNED'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(35061228693785507)
,p_prompt=>'QA Assigned'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ASSIGNMENT'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FULL_NAME as d, FULL_NAME as r ',
'  from PRJ_ASSIGNMENTS ',
' order by d nulls first'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Quality agent assigned to the ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37487529341600897)
,p_name=>'P2_SVC_LINE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(35101653618067080)
,p_prompt=>'Service Line'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SERVICE LINES'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SVC_LINE as display_value, SVC_LINE as return_value ',
'  from PRJ_SVC_LINE',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the service line requesting the change.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37488150882621249)
,p_name=>'P2_SHIRT_SIZE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(35101653618067080)
,p_prompt=>'Shirt Size'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIRT_SIZE'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SHIRT_SIZE as display_value, SHIRT_SIZE as return_value ',
'  from PRJ_SHIRT_SIZE',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the level of effort for this ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37541446965990347)
,p_name=>'P2_XXX'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(35101653618067080)
,p_prompt=>'<SPAN STYLE="color: #FFFFFF;">.</SPAN>'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37542743515992002)
,p_name=>'P2_XXXX'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(35101653618067080)
,p_prompt=>'.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44286423212090873)
,p_name=>'P2_SERVICEREQ_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(37320838541629363)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Req ID:'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ServiceReq_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>15
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the incident number that you are searching for.'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49006354380287292)
,p_name=>'P2_ANALYSIS_END_DT'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(49002436835247000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Analysis End DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'ANALYSIS_END_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49007727207299929)
,p_name=>'P2_DESIGN_END_DT'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(49002643414248936)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Design End DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'DESIGN_END_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49008640996308717)
,p_name=>'P2_DEV_END_DT'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(49002847224250039)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dev End DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'DEV_END_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49008931723312986)
,p_name=>'P2_QA_END_DT'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(49003022074252201)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;Quality End DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'QA_END_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49009223312316949)
,p_name=>'P2_UAT_END_DT'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(49003225537253224)
,p_use_cache_before_default=>'NO'
,p_prompt=>'UAT End DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'UAT_END_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49096144122567680)
,p_name=>'Status Changes'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_STATUS_LIST'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49103828605792453)
,p_event_id=>wwv_flow_api.id(49096144122567680)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.typeselect'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'//CREATE AND LOAD ARRAYS',
'',
'var status_values = ["Analysis","Waiting for Design","Design","Life Cycle","Waiting for Dev","Development","Waiting for QA","QA","Waiting for UAT","UAT","Stage","Code Compare","Change Control","Ready","Completed"];',
'',
'var date_values = [($v("P2_ANALYSIS_START_DT")), ($v("P2_ANALYSIS_END_DT")),($v("P2_DESIGN_START_DT")),($v("P2_DESIGN_END_DT")),($v("P2_DESIGN_END_DT")),($v("P2_DEV_START_DT")),($v("P2_DEV_END_DT")),($v("P2_QA_START_DT")),($v("P2_QA_END_DT")),($v("P2'
||'_UAT_START_DT")),($v("P2_UAT_END_DT")),($v("P2_UAT_END_DT")),($v("P2_APP_REQ_DT")),($v("P2_APP_DT")),($v("P2_EDD"))];',
'',
'for (i = 0; i < 16; i++) ',
'{',
'  if (status_values[i] == document.getElementById(''P2_STATUS_LIST'').value)',
'  {',
'    ',
'    for (x = 0; x <= i; x++) ',
'    {',
'    var fieldname = date_values[x]',
'    //alert("<" + fieldname + "> expected first alert");',
'',
'      if (fieldname == "")',
'      {',
'',
'        var MyDate = new Date();',
'        var MyDateString;',
'        MyDate.setDate(MyDate.getDate());',
'        MyDateString = (''0'' + (MyDate.getMonth()+1)).slice(-2).toString() + ''-''',
'                     + (''0'' + MyDate.getDate()).slice(-2).toString() + ''-''',
'                     + MyDate.getYear().toString().substr(1,2);',
'',
'        //alert("<" + date_values[x] + "> = " + MyDateString + " second alert");     ',
'',
'switch(x) {',
'          case 0:',
'               $s("P2_ANALYSIS_START_DT",MyDateString );',
'               break;',
'          case 1:',
'               $s("P2_ANALYSIS_END_DT",MyDateString );',
'               break;',
'          case 2:',
'               $s("P2_DESIGN_START_DT",MyDateString );',
'               break;',
'          case 3:',
'               $s("P2_DESIGN_END_DT",MyDateString );',
'               break;',
'          case 4:',
'               $s("P2_DESIGN_END_DT",MyDateString );',
'               break;',
'          case 5:',
'               $s("P2_DEV_START_DT",MyDateString );',
'               break;',
'          case 6:',
'               $s("P2_DEV_END_DT",MyDateString );',
'               break;',
'          case 7:',
'               $s("P2_QA_START_DT",MyDateString );',
'               break;',
'          case 8:',
'               $s("P2_QA_END_DT",MyDateString );',
'               break;',
'          case 9:',
'               $s("P2_UAT_START_DT",MyDateString );',
'               break;',
'          case 10:',
'               $s("P2_UAT_END_DT",MyDateString );',
'               break;',
'          case 11:',
'               $s("P2_UAT_END_DT",MyDateString );',
'               break;',
'          case 12:',
'               $s("P2_APP_REQ_DT",MyDateString );',
'               break;',
'          case 13:',
'               $s("P2_APP_DT",MyDateString );',
'               break;',
'          case 14:',
'               $s("P2_EDD",MyDateString );',
'               break;',
'       }',
'      }',
'    }  ',
'  break;',
'  }',
'}'))
,p_stop_execution_on_error=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9591540760115173)
,p_name=>'get'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(33309446178963320)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9591856796115176)
,p_event_id=>wwv_flow_api.id(9591540760115173)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'SUMMARY,CHANGE_ID,DECODE(FR_SYSTEM, ''ServiceReq_V72'', '''', INCIDENT_ID) AS INCIDENT_ID,',
'',
'DECODE(FR_SYSTEM, ''ServiceReq_V72'', INCIDENT_ID, '''') AS SERVICEREQ_ID,',
'',
' PRIORITY,SHIRT_SIZE,REPORTABLE,EXEC,ANALYSIS_HRS,DESIGN_HRS,DEV_HRS,QA_HRS,CURRENT_HRS_EST,ACTUAL_HRS,EDD,RISK_ISSUE,DEV_START_DT,APP_REQ_DT,APP_DT,SL_RANK,BLOCKER,ANALYSIS_START_DT,DESIGN_START_DT,QA_START_DT,UAT_START_DT,RELEASE_ID,ITGROUP,REQGROU'
||'P,IT_COMMENTS,UPDATES,ASSIGNED,STATUS,FR_SYSTEM,BA_ASSIGNED, DEV_ASSIGNED, QA_ASSIGNED, SVC_LINE, ANALYSIS_END_DT, DESIGN_END_DT, DEV_END_DT, QA_END_DT, UAT_END_DT',
'  ',
'INTO  :P2_SUMMARY_ID,:P2_CHANGE_ID,:P2_INCIDENT_ID,:P2_SERVICEREQ_ID, ',
':P2_PRIORITY,:P2_SHIRT_SIZE,:P2_REPORTABLE,:P2_EXEC,:P2_ANALYSIS_HRS,:P2_DESIGN_HRS,:P2_DEV_HRS,:P2_QA_HRS,:P2_CURRENT_HRS_EST,:P2_ACTUAL_HRS,:P2_EDD,:P2_RISK_ISSUE,:P2_DEV_START_DT,:P2_APP_REQ_DT,:P2_APP_DT,:P2_SL_RANK,:P2_BLOCKER,:P2_ANALYSIS_START'
||'_DT,:P2_DESIGN_START_DT,:P2_QA_START_DT,:P2_UAT_START_DT,:P2_RELEASE_ID,:P2_ITGROUP,:P2_REQGROUP,:P2_IT_COMMENTS,:P2_UPDATES,:P2_ASSIGNMENT,:P2_STATUS_LIST,:P2_FR_SYSTEM, :P2_BA_ASSIGNED, :P2_DEV_ASSIGNED, :P2_QA_ASSIGNED, :P2_SVC_LINE, :P2_ANALYSIS_'
||'END_DT, :P2_DESIGN_END_DT, :P2_DEV_END_DT, :P2_QA_END_DT, :P2_UAT_END_DT',
'',
'FROM PRJ_PRIORITY_ALL',
'',
'WHERE ((CHANGE_ID=:P2_CHANGE_ID and FR_SYSTEM = DECODE(:P2_FR_SYSTEM, ''Front Range'', ''Change'', ''Change_V72''))',
'OR (INCIDENT_ID=:P2_INCIDENT_ID and FR_SYSTEM = DECODE(:P2_FR_SYSTEM, ''Front Range'', ''Incident'', ''Incident_V72''))',
'OR (INCIDENT_ID=:P2_SERVICEREQ_ID AND FR_SYSTEM = DECODE(:P2_FR_SYSTEM, ''Front Range'', ''ServiceReq'', ''ServiceReq_V72''))',
') ',
'',
'    AND DATA_DATE IN (SELECT MAX(DATA_DATE)',
'                         FROM PRJ_PRIORITY_ALL',
'                          WHERE ((CHANGE_ID=:P2_CHANGE_ID AND FR_SYSTEM = DECODE(:P2_FR_SYSTEM, ''Front Range'', ''Change'', ''Change_V72'')) OR (INCIDENT_ID=:P2_INCIDENT_ID AND FR_SYSTEM <> ''ServiceReq_V72'') OR (INCIDENT_ID=:P2_SERVICEREQ_ID AND FR_SYSTEM'
||' = ''ServiceReq_V72'')));',
''))
,p_attribute_02=>'P2_CHANGE_ID,P2_INCIDENT_ID,P2_FR_SYSTEM,P2_SERVICEREQ_ID'
,p_attribute_03=>'P2_SUMMARY_ID,P2_CHANGE_ID,P2_INCIDENT_ID,P2_PRIORITY,P2_SHIRT_SIZE,P2_STATUS_LIST,P2_REPORTABLE,P2_EXEC,P2_ANALYSIS_HRS,P2_DESIGN_HRS,P2_DEV_HRS,P2_QA_HRS,P2_CURRENT_HRS_EST,P2_ACTUAL_HRS,P2_EDD,P2_RISK_ISSUE,P2_DEV_START_DT,P2_APP_REQ_DT,P2_APP_DT,'
||'P2_SL_RANK,P2_BLOCKER,P2_ANALYSIS_START_DT,P2_DESIGN_START_DT,P2_QA_START_DT,P2_UAT_START_DT,P2_RELEASE_ID,P2_ITGROUP,P2_REQGROUP,P2_IT_COMMENTS,P2_UPDATES,P2_ASSIGNMENT,P2_STATUS_LIST,P2_FR_SYSTEM,P2_BA_ASSIGNED,P2_DEV_ASSIGNED,P2_QA_ASSIGNED,P2_SVC'
||'_LINE,P2_SERVICEREQ_ID,P2_ANALYSIS_END_DT,P2_DESIGN_END_DT,P2_DEV_END_DT,P2_QA_END_DT,P2_UAT_END_DT'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9593922748228791)
,p_name=>'Clear'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34874631425973318)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9594295569228792)
,p_event_id=>wwv_flow_api.id(9593922748228791)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_ANALYSIS_START_DT,P2_APP_DT,P2_APP_REQ_DT,P2_BLOCKER,P2_CHANGE_ID,P2_DESIGN_START_DT,P2_DEV_START_DT,P2_EDD,P2_QA_START_DT,P2_UAT_START_DT,P2_UPDATES,P2_IT_COMMENTS,P2_INCIDENT_ID,P2_SERVICEREQ_ID,P2_FR_SYSTEM,P2_SVC_LINE,P2_SL_RANK,P2_EXEC,P2_REP'
||'ORTABLE,P2_SHIRT_SIZE,P2_ITGROUP,P2_PRIORITY,P2_BA_ASSIGNED,P2_RISK_ISSUE,P2_X,P2_STATUS_LIST,P2_SUMMARY_ID,P2_REQGROUP,P2_ASSIGNMENT,P2_XXX,P2_QA_ASSIGNED,P2_XXXX,P2_DEV_ASSIGNED,P2_DATA_DATE,P2_RELEASE_ID,P2_ANALYSIS_HRS,P2_ORIG_DESIGN_HRS,P2_ANALY'
||'SIS_DAYS,P2_DESIGN_DAYS,P2_DEV_DAYS,P2_ORIG_ANALYSIS_HRS,P2_QA_DAYS,P2_DESIGN_HRS,P2_ORIG_DEV_HRS,P2_ORIG_QA_HRS,P2_ACTUAL_HRS,P2_LD1,P2_FASTTRACK,P2_PRODSUP,P2_DEV_HRS,P2_QA_HRS,P2_CURRENT_HRS_EST,P2_CLIENT,P2_IT,P2_INC_ID,P2_CHG_ID,P2_UAT_DAYS,P2_B'
||'USINESS,P2_CHECKBOX,P2_ANALYSIS_END_DT,P2_DESIGN_END_DT,P2_ORIG_HRS_EST,P2_DEV_END_DT,P2_QA_END_DT,P2_UAT_END_DT'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9597623037120207)
,p_name=>'look at CHANGE_ID'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34874631425973318)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9598004742120213)
,p_event_id=>wwv_flow_api.id(9597623037120207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_CHANGE_ID'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9627354606765827)
,p_name=>'Confirm_add'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9585757825611294)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9627797331765828)
,p_event_id=>wwv_flow_api.id(9627354606765827)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'confirm your choice'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9628566653773381)
,p_event_id=>wwv_flow_api.id(9627354606765827)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'ADD_PROJECT'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9629381298781722)
,p_event_id=>wwv_flow_api.id(9627354606765827)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9629957710836978)
,p_name=>'confirm_upd'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9585301089592727)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9630427073836979)
,p_event_id=>wwv_flow_api.id(9629957710836978)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'so Add?'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9631220577844640)
,p_event_id=>wwv_flow_api.id(9629957710836978)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'UPDATE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9632003655860592)
,p_event_id=>wwv_flow_api.id(9629957710836978)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'NOT ADDED'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9590038200906208)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'INSERT INTO PRJ_PRIORITY_ALL (DATA_DATE, CHANGE_ID,INCIDENT_ID,PRIORITY,SHIRT_SIZE,STATUS,REPORTABLE,EDD,RISK_ISSUE,DEV_START_DT,APP_REQ_DT,APP_DT,SL_RANK,BLOCKER,ANALYSIS_START_DT,DESIGN_START_DT,QA_START_DT,UAT_START_DT,ITGROUP,REQGROUP,IT_COMMENTS'
||',UPDATES,ASSIGNED,ORIG_ANALYSIS_HRS,ORIG_DESIGN_HRS,ORIG_DEV_HRS,ORIG_HRS_EST,ORIG_QA_HRS,',
'FR_SYSTEM,REQ_ID,SUMMARY,CHG_ID,INC_ID,BA_ASSIGNED, DEV_ASSIGNED, QA_ASSIGNED, SVC_LINE,ANALYSIS_END_DT,DESIGN_END_DT,DEV_END_DT,QA_END_DT,UAT_END_DT)',
'VALUES',
'(SYSDATE, :P2_CHANGE_ID,',
'DECODE(:P2_INCIDENT_ID, NULL, :P2_SERVICEREQ_ID, :P2_INCIDENT_ID),',
':P2_PRIORITY,:P2_SHIRT_SIZE,:P2_STATUS_LIST,:P2_REPORTABLE,:P2_EDD,:P2_RISK_ISSUE,:P2_DEV_START_DT,:P2_APP_REQ_DT,:P2_APP_DT,:P2_SL_RANK,:P2_BLOCKER,:P2_ANALYSIS_START_DT,:P2_DESIGN_START_DT,:P2_QA_START_DT,:P2_UAT_START_DT,:P2_ITGROUP,:P2_REQGROUP,:'
||'P2_IT_COMMENTS,:P2_UPDATES,:P2_ASSIGNMENT,:P2_ORIG_ANALYSIS_HRS,:P2_ORIG_DESIGN_HRS,:P2_ORIG_DEV_HRS,:P2_ORIG_HRS_EST,:P2_ORIG_QA_HRS,',
'DECODE(:P2_cHANGE_ID, NULL, DECODE(:P2_INCIDENT_ID, NULL, ''ServiceReq_V72'', ''Incident_V72''), ''Change_V72''),',
'DECODE(:P2_cHANGE_ID, NULL, DECODE(:P2_INCIDENT_ID, NULL, :P2_SERVICEREQ_ID, :P2_INCIDENT_ID), :P2_CHANGE_ID),',
':P2_SUMMARY,:P2_CHANGE_ID,DECODE(:P2_INCIDENT_ID, NULL, :P2_SERVICEREQ_ID, :P2_INCIDENT_ID),:P2_BA_ASSIGNED, :P2_DEV_ASSIGNED, :P2_QA_ASSIGNED, :P2_SVC_LINE, :P2_ANALYSIS_END_DT, :P2_DESIGN_END_DT, :P2_DEV_END_DT, :P2_QA_END_DT, :P2_UAT_END_DT',
');',
'',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9585757825611294)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9590310616927988)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE PIT'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'INSERT INTO ',
'PRJ_PRIORITY_ALL_AUDIT (Audit_Dt,Data_Date, Change_ID, Incident_ID, Priority,Shirt_Size, Updates, IT_Comments, Status, Reportable, ReqGroup, ITGroup, Assigned, Orig_Analysis_Hrs, Orig_Design_Hrs,Orig_Dev_Hrs, Orig_QA_Hrs, Orig_Hrs_Est, Analysis_Hrs,D'
||'esign_Hrs, Dev_Hrs, QA_Hrs, Current_Hrs_Est, Actual_Hrs,EDD, Risk_Issue, DEV_START_DT, APP_REQ_DT, APP_DT, SL_Rank,ANALYSIS_DAYS, ANALYSIS_START_DT, Design_Days, DESIGN_START_DT, Dev_Days, QA_Days, QA_Start_Dt, UAT_Days, UAT_Start_Dt, Blocker,FR_SYST'
||'EM,REQ_ID,CHG_ID,INC_ID,BA_ASSIGNED, DEV_ASSIGNED, QA_ASSIGNED, SVC_LINE, Summary, EXEC, ANALYSIS_END_DT,DESIGN_END_DT,DEV_END_DT,QA_END_DT,UAT_END_DT)',
'SELECT ',
'SYSDATE,Data_Date, Change_ID, Incident_ID, Priority,Shirt_Size, Updates, IT_Comments, Status, Reportable, ReqGroup, ITGroup, Assigned, Orig_Analysis_Hrs, Orig_Design_Hrs,Orig_Dev_Hrs, Orig_QA_Hrs, Orig_Hrs_Est, Analysis_Hrs,Design_Hrs, Dev_Hrs, QA_Hr'
||'s, Current_Hrs_Est, Actual_Hrs,EDD, Risk_Issue, DEV_START_DT, APP_REQ_DT, APP_DT, SL_Rank,ANALYSIS_DAYS, ANALYSIS_START_DT, Design_Days, DESIGN_START_DT, Dev_Days, QA_Days, QA_Start_Dt, UAT_Days, UAT_Start_Dt, Blocker,FR_SYSTEM,REQ_ID,CHG_ID,INC_ID,B'
||'A_ASSIGNED, DEV_ASSIGNED, QA_ASSIGNED, SVC_LINE, Summary, EXEC, ANALYSIS_END_DT,DESIGN_END_DT,DEV_END_DT,QA_END_DT,UAT_END_DT',
'FROM PRJ_PRIORITY_ALL',
'WHERE (CHANGE_ID = :P2_CHANGE_ID AND FR_SYSTEM = ''Change_V72'')',
'OR (INCIDENT_ID = :P2_INCIDENT_ID AND FR_SYSTEM = ''Incident_V72'') ',
'OR (INCIDENT_ID = :P2_SERVICEREQ_ID AND FR_SYSTEM = ''ServiceReq_V72'');',
'',
'commit;',
'',
'UPDATE PRJ_PRIORITY_ALL',
'SET ',
'INCIDENT_ID=DECODE(:P2_SERVICEREQ_ID, NULL, :P2_INCIDENT_ID, :P2_SERVICEREQ_ID),',
'PRIORITY=:P2_PRIORITY,SHIRT_SIZE=:P2_SHIRT_SIZE,STATUS=:P2_STATUS_LIST,REPORTABLE=:P2_REPORTABLE,EDD=:P2_EDD,RISK_ISSUE=:P2_RISK_ISSUE,DEV_START_DT=:P2_DEV_START_DT,APP_REQ_DT=:P2_APP_REQ_DT,APP_DT=:P2_APP_DT,SL_RANK=:P2_SL_RANK,BLOCKER=:P2_BLOCKER,A'
||'NALYSIS_START_DT=:P2_ANALYSIS_START_DT,DESIGN_START_DT=:P2_DESIGN_START_DT,QA_START_DT=:P2_QA_START_DT,UAT_START_DT=:P2_UAT_START_DT,RELEASE_ID=:P2_RELEASE_ID,ITGROUP=:P2_ITGROUP,REQGROUP=:P2_REQGROUP,IT_COMMENTS=:P2_IT_COMMENTS,UPDATES=:P2_UPDATES,A'
||'SSIGNED=:P2_ASSIGNMENT,ORIG_ANALYSIS_HRS=:P2_ORIG_ANALYSIS_HRS,ORIG_DESIGN_HRS=:P2_ORIG_DESIGN_HRS,ORIG_DEV_HRS=:P2_ORIG_DEV_HRS,ORIG_HRS_EST=:P2_ORIG_HRS_EST,ORIG_QA_HRS=:P2_ORIG_QA_HRS,ANALYSIS_END_DT=:P2_ANALYSIS_END_DT,DESIGN_END_DT=:P2_DESIGN_EN'
||'D_DT,DEV_END_DT=:P2_DEV_END_DT,QA_END_DT=:P2_QA_END_DT,UAT_END_DT=:P2_UAT_END_DT,',
'CHG_ID=:P2_CHANGE_ID,',
'INC_ID=DECODE(:P2_SERVICEREQ_ID, NULL, :P2_INCIDENT_ID, :P2_SERVICEREQ_ID),',
'BA_ASSIGNED=:P2_BA_ASSIGNED, DEV_ASSIGNED=:P2_DEV_ASSIGNED, QA_ASSIGNED=:P2_QA_ASSIGNED, SVC_LINE=:P2_SVC_LINE, EXEC = :P2_EXEC',
'WHERE (CHANGE_ID = :P2_CHANGE_ID AND FR_SYSTEM = ''Change_V72'')',
'OR (INCIDENT_ID = :P2_SERVICEREQ_ID AND FR_SYSTEM = ''ServiceReq_V72'')',
'OR (INCIDENT_ID = :P2_INCIDENT_ID AND FR_SYSTEM = ''Incident_V72'');',
'',
'commit;',
'',
'END;'))
,p_process_when_button_id=>wwv_flow_api.id(9585301089592727)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9600531440438452)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(33364845955463187)
,p_tab_set=>'TS1'
,p_name=>'Reporting Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project Incident Tracker'
,p_step_sub_title=>'RDM - WIP'
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
,p_last_upd_yyyymmddhh24miss=>'20140917111134'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41225742451732111)
,p_plug_name=>'Select the IT group:'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357040036463180)
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
 p_id=>wwv_flow_api.id(41228945108874733)
,p_plug_name=>'GRAPH_ITEMS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33356941403463180)
,p_plug_display_sequence=>15
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
 p_id=>wwv_flow_api.id(37459446240867305)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">Work In Progress</SPAN>'
,p_parent_plug_id=>wwv_flow_api.id(41228945108874733)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357842955463180)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(37459628186867305)
,p_default_chart_type=>'3DColumn'
,p_chart_title=>'Work in Progress'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_7519406466065946'
,p_chart_width=>350
,p_chart_height=>250
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:X:N:N::V:Y:None:::N:::Default:::P'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'3'
,p_x_axis_title=>'Stage'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Tickets'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:15899FF'
,p_x_axis_title_font=>'Tahoma:14:15899FF'
,p_y_axis_title_font=>'Tahoma:14:15899FF'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(37459751089867306)
,p_chart_id=>wwv_flow_api.id(37459628186867305)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT NULL link, B.SORT_ORDER || '' - '' || A.STATUS label, COUNT(A.REQ_ID) value1',
'  FROM PRJ_PRIORITY_ALL A',
'LEFT JOIN PRJ_STATUS_ORDER B ON (A.STATUS = B.DISPLAY)',
'LEFT JOIN PRJ_IT_GROUP C ON (A.ITGROUP = C.ITGROUP)',
'   ',
' WHERE B.WIP = -1',
'   AND (',
'        (:P4_IT_GROUP_SUMMARY = ''ALL'' ',
'        AND 1=1)',
'       OR',
'        (:P4_IT_GROUP_SUMMARY <> ''ALL''',
'        AND C.ITGROUP_SUMMARY = :P4_IT_GROUP_SUMMARY)',
'        )',
'',
'GROUP BY B.SORT_ORDER || '' - '' || A.STATUS',
'ORDER BY TO_NUMBER(SUBSTR(B.SORT_ORDER || '' - '' || A.STATUS, 1, 2))'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37460626333899355)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">Completed</SPAN>'
,p_parent_plug_id=>wwv_flow_api.id(41228945108874733)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357842955463180)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(37460838229899356)
,p_default_chart_type=>'3DColumn'
,p_chart_title=>'Completed'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_7520616509097997'
,p_chart_width=>350
,p_chart_height=>250
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:X:N:N::V:Y:None:::N:::Default::Y:P'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'3'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Tickets'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:15899FF'
,p_x_axis_title_font=>'Tahoma:14:15899FF'
,p_y_axis_title_font=>'Tahoma:14:15899FF'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(37460954331899357)
,p_chart_id=>wwv_flow_api.id(37460838229899356)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT NULL link, CASE WHEN :P4_IT_GROUP_SUMMARY <> ''ALL'' THEN TO_CHAR(A.EDD, ''YYYY-MM'') ELSE C.ITGROUP_SUMMARY END label, COUNT(A.REQ_ID) value1',
'  FROM PRJ_PRIORITY_ALL A',
'LEFT JOIN PRJ_IT_GROUP C ON (A.ITGROUP = C.ITGROUP)',
' WHERE A.Status = ''Completed''',
'   AND (',
'        (:P4_IT_GROUP_SUMMARY = ''ALL'' ',
'        AND 1=1',
'        AND TO_CHAR(A.EDD, ''YYYYMM'') = TO_CHAR(SYSDATE, ''YYYYMM''))',
'       OR',
'        (:P4_IT_GROUP_SUMMARY <> ''ALL''',
'        AND C.ITGROUP_SUMMARY = :P4_IT_GROUP_SUMMARY',
'        AND TO_CHAR(A.EDD, ''YYYYMM'') >= TO_CHAR(ADD_MONTHS(SYSDATE, -3), ''YYYYMM''))',
'        )',
'GROUP BY CASE WHEN :P4_IT_GROUP_SUMMARY <> ''ALL'' THEN TO_CHAR(A.EDD, ''YYYY-MM'') ELSE C.ITGROUP_SUMMARY END',
'ORDER BY CASE WHEN :P4_IT_GROUP_SUMMARY <> ''ALL'' THEN 2 ELSE 2 END DESC'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37465049555057452)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">Developer Assignments</SPAN>'
,p_parent_plug_id=>wwv_flow_api.id(41228945108874733)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357842955463180)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(37465224610057452)
,p_default_chart_type=>'3DColumn'
,p_chart_title=>'Developer Assignments'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_7525002889256093'
,p_chart_width=>350
,p_chart_height=>250
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:X:N:N::V:Y:None:::N:::Default:::P'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'3'
,p_x_axis_title=>'Resource'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Tickets'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:15899FF'
,p_x_axis_title_font=>'Tahoma:14:15899FF'
,p_y_axis_title_font=>'Tahoma:14:15899FF'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(37465345800057453)
,p_chart_id=>wwv_flow_api.id(37465224610057452)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT NULL link, A.DEV_Assigned label, COUNT(A.REQ_ID) value1',
'  FROM PRJ_PRIORITY_ALL A',
'LEFT JOIN PRJ_STATUS_ORDER B ON (A.STATUS = B.DISPLAY)',
'LEFT JOIN PRJ_IT_GROUP C ON (A.ITGROUP = C.ITGROUP)',
' WHERE B.WIP= -1 AND A.DEV_Assigned IS NOT NULL',
' AND (',
'        (:P4_IT_GROUP_SUMMARY = ''ALL'' ',
'        AND 1=1)',
'       OR',
'        (:P4_IT_GROUP_SUMMARY <> ''ALL''',
'        AND C.ITGROUP_SUMMARY = :P4_IT_GROUP_SUMMARY)',
'        )',
'GROUP BY A.DEV_Assigned',
'ORDER BY Value1 DESC'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37470235870715793)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">RDM - SPI Queue</SPAN>'
,p_parent_plug_id=>wwv_flow_api.id(41228945108874733)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357842955463180)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(37470439103715794)
,p_default_chart_type=>'3DColumn'
,p_chart_title=>'RDM - SPI Queue'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_7530217382914435'
,p_chart_width=>350
,p_chart_height=>250
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:X:N:N::V:Y:None:::N:::Default:::P'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'3'
,p_x_axis_title=>'Stage'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Tickets'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:1589FF'
,p_x_axis_title_font=>'Tahoma:14:1589FF'
,p_y_axis_title_font=>'Tahoma:14:1589FF'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(37470528488715794)
,p_chart_id=>wwv_flow_api.id(37470439103715794)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT NULL link, B.SORT_ORDER || '' - '' || A.STATUS label, COUNT(A.REQ_ID) value1',
'  FROM PRJ_PRIORITY_ALL A',
'LEFT JOIN PRJ_STATUS_ORDER B ON (A.STATUS = B.DISPLAY)',
' WHERE A.ITGROUP = ''RDM SPI Maintenance''',
'   AND B.WIP = -1',
'GROUP BY B.SORT_ORDER || '' - '' || A.STATUS',
'ORDER BY TO_NUMBER(SUBSTR(B.SORT_ORDER || '' - '' || A.STATUS, 1, 2))'))
,p_series_query_type=>'SQL_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37492547859126718)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">BA Assignments</SPAN>'
,p_parent_plug_id=>wwv_flow_api.id(41228945108874733)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357842955463180)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(37492753056126718)
,p_default_chart_type=>'3DColumn'
,p_chart_title=>'BA Assignments'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_7525002889256093'
,p_chart_width=>350
,p_chart_height=>250
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:X:N:N::V:Y:None:::N:::Default:::P'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'3'
,p_x_axis_title=>'Resource'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Tickets'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:15899FF'
,p_x_axis_title_font=>'Tahoma:14:15899FF'
,p_y_axis_title_font=>'Tahoma:14:15899FF'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(37492853836126720)
,p_chart_id=>wwv_flow_api.id(37492753056126718)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT NULL link, A.BA_Assigned label, COUNT(A.REQ_ID) value1',
'  FROM PRJ_PRIORITY_ALL A',
'LEFT JOIN PRJ_STATUS_ORDER B ON (A.STATUS = B.DISPLAY)',
'LEFT JOIN PRJ_IT_GROUP C ON (A.ITGROUP = C.ITGROUP)',
' WHERE B.WIP= -1 AND A.BA_Assigned IS NOT NULL',
' AND (',
'        (:P4_IT_GROUP_SUMMARY = ''ALL'' ',
'        AND 1=1)',
'       OR',
'        (:P4_IT_GROUP_SUMMARY <> ''ALL''',
'        AND C.ITGROUP_SUMMARY = :P4_IT_GROUP_SUMMARY)',
'        )',
'GROUP BY A.BA_Assigned',
'ORDER BY Value1 DESC'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37492924226138826)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">QA Assignments</SPAN>'
,p_parent_plug_id=>wwv_flow_api.id(41228945108874733)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357842955463180)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(37493122645138827)
,p_default_chart_type=>'3DColumn'
,p_chart_title=>'QA Assignments'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_7525002889256093'
,p_chart_width=>350
,p_chart_height=>250
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:X:N:N::V:Y:None:::N:::Default:::P'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'3'
,p_x_axis_title=>'Resource'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Tickets'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:15899FF'
,p_x_axis_title_font=>'Tahoma:14:15899FF'
,p_y_axis_title_font=>'Tahoma:14:15899FF'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(37493236582138827)
,p_chart_id=>wwv_flow_api.id(37493122645138827)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT NULL link, A.QA_Assigned label, COUNT(A.REQ_ID) value1',
'  FROM PRJ_PRIORITY_ALL A',
'LEFT JOIN PRJ_STATUS_ORDER B ON (A.STATUS = B.DISPLAY)',
'LEFT JOIN PRJ_IT_GROUP C ON (A.ITGROUP = C.ITGROUP)',
' WHERE B.WIP= -1 AND A.QA_Assigned IS NOT NULL',
' AND (',
'        (:P4_IT_GROUP_SUMMARY = ''ALL'' ',
'        AND 1=1)',
'       OR',
'        (:P4_IT_GROUP_SUMMARY <> ''ALL''',
'        AND C.ITGROUP_SUMMARY = :P4_IT_GROUP_SUMMARY)',
'        )',
'GROUP BY A.QA_Assigned',
'ORDER BY Value1 DESC'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37493345004144797)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">PM Assignments</SPAN>'
,p_parent_plug_id=>wwv_flow_api.id(41228945108874733)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357842955463180)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(37493551165144798)
,p_default_chart_type=>'3DColumn'
,p_chart_title=>'PM Assignments'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_7525002889256093'
,p_chart_width=>350
,p_chart_height=>250
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:X:N:N::V:Y:None:::N:::Default:::P'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'3'
,p_x_axis_title=>'Resource'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Tickets'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:15899FF'
,p_x_axis_title_font=>'Tahoma:14:15899FF'
,p_y_axis_title_font=>'Tahoma:14:15899FF'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(37493632900144798)
,p_chart_id=>wwv_flow_api.id(37493551165144798)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT NULL link, A.Assigned label, COUNT(A.REQ_ID) value1',
'  FROM PRJ_PRIORITY_ALL A',
'LEFT JOIN PRJ_STATUS_ORDER B ON (A.STATUS = B.DISPLAY)',
'LEFT JOIN PRJ_IT_GROUP C ON (A.ITGROUP = C.ITGROUP)',
' WHERE B.WIP= -1 AND A.Assigned IS NOT NULL',
' AND (',
'        (:P4_IT_GROUP_SUMMARY = ''ALL'' ',
'        AND 1=1)',
'       OR',
'        (:P4_IT_GROUP_SUMMARY <> ''ALL''',
'        AND C.ITGROUP_SUMMARY = :P4_IT_GROUP_SUMMARY)',
'        )',
'GROUP BY A.Assigned',
'ORDER BY Value1 DESC',
'',
'',
''))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40712030901745072)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">Resource Assignments</SPAN>'
,p_parent_plug_id=>wwv_flow_api.id(41228945108874733)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357842955463180)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(40712247613745075)
,p_default_chart_type=>'3DColumn'
,p_chart_title=>'Resource Assignments'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_7525002889256093'
,p_chart_width=>350
,p_chart_height=>250
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:X:N:N::V:Y:None:::N:::Default:::P'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'3'
,p_x_axis_title=>'Resource'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Tickets'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:15899FF'
,p_x_axis_title_font=>'Tahoma:14:15899FF'
,p_y_axis_title_font=>'Tahoma:14:15899FF'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(40712344266745078)
,p_chart_id=>wwv_flow_api.id(40712247613745075)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT NULL LINK, A.ASSIGN LABEL, COUNT(A.REQ_ID) VALUE1',
'  FROM ( ',
'        SELECT A.REQ_ID, A.STATUS, A.ITGROUP, A.ASSIGNED AS ASSIGN',
'          FROM PRJ_PRIORITY_ALL A',
'         WHERE A.ASSIGNED IS NOT NULL',
'        UNION ALL',
'        SELECT A.REQ_ID, A.STATUS, A.ITGROUP, A.BA_ASSIGNED AS ASSIGN',
'          FROM PRJ_PRIORITY_ALL A',
'         WHERE A.BA_ASSIGNED IS NOT NULL',
'        UNION ALL',
'        SELECT A.REQ_ID, A.STATUS, A.ITGROUP, A.DEV_ASSIGNED AS ASSIGN',
'          FROM PRJ_PRIORITY_ALL A',
'         WHERE A.DEV_ASSIGNED IS NOT NULL',
'        UNION ALL',
'        SELECT A.REQ_ID, A.STATUS, A.ITGROUP, A.QA_ASSIGNED AS ASSIGN',
'          FROM PRJ_PRIORITY_ALL A',
'         WHERE A.QA_ASSIGNED IS NOT NULL',
'       ) A',
'LEFT JOIN PRJ_STATUS_ORDER B ON (A.STATUS = B.DISPLAY)',
'LEFT JOIN PRJ_IT_GROUP C ON (A.ITGROUP = C.ITGROUP)',
' WHERE B.WIP= -1 AND A.Assign IS NOT NULL',
' AND (',
'        (:P4_IT_GROUP_SUMMARY = ''ALL'' ',
'        AND 1=1)',
'       OR',
'        (:P4_IT_GROUP_SUMMARY <> ''ALL''',
'        AND C.ITGROUP_SUMMARY = :P4_IT_GROUP_SUMMARY)',
'        )',
'GROUP BY A.ASSIGN',
'ORDER BY VALUE1 DESC '))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41231726970210089)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(41225742451732111)
,p_button_name=>'P4_ITGROUP'
,p_button_static_id=>'P4_ITGROUP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33363728507463185)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41226238437739704)
,p_name=>'P4_IT_GROUP_SUMMARY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41225742451732111)
,p_source=>'ITGROUP_SUMMARY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ITGROUP_SUMMARY as display_value, ITGROUP_SUMMARY as return_value ',
'  from PRJ_IT_GROUP',
' group by ITGROUP_SUMMARY',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'ALL'
,p_lov_null_value=>'ALL'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41231948787216384)
,p_name=>'SUBMIT_PAGE'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41231726970210089)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41232240915216385)
,p_event_id=>wwv_flow_api.id(41231948787216384)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41252352876154901)
,p_name=>'HIDE'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41252644009154901)
,p_event_id=>wwv_flow_api.id(41252352876154901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(37470235870715793)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(33364845955463187)
,p_tab_set=>'TS1'
,p_name=>'Project Incident Tracker'
,p_page_mode=>'NORMAL'
,p_step_title=>'Project Incident Tracker'
,p_step_sub_title=>'New Project Incident Tracker'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_error_notification_text=>'Testing'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_javascript_code_onload=>'$(''#Update'').hide();'
,p_step_template=>wwv_flow_api.id(33356242172463179)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20170124083413'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9634785662167972)
,p_plug_name=>'<SPAN STYLE="color: #1589FF;">PIT - Project Incident Tracker</SPAN>'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(33357441164463180)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9635980481168001)
,p_plug_name=>'PIT-OUTER-REGION'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_plug_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'.formlayout {border-collapse:collapse;}',
'.formlayout td {padding:0px;}',
'.formlayout td input {margin:0px;}',
'.formlayout td select {margin:0px;}',
'</style>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9654839187168043)
,p_plug_name=>'Priority All - sub region'
,p_parent_plug_id=>wwv_flow_api.id(9635980481168001)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'.formlayout {border-collapse:collapse;}',
'.formlayout td {padding:0px;}',
'.formlayout td input {margin:0px;}',
'.formlayout td select {margin:0px;}',
'</style>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9660818948168048)
,p_plug_name=>'Priority All 4 - sub region'
,p_parent_plug_id=>wwv_flow_api.id(9635980481168001)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
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
 p_id=>wwv_flow_api.id(9663921333168050)
,p_plug_name=>'Priority All 0 - sub region'
,p_parent_plug_id=>wwv_flow_api.id(9635980481168001)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
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
 p_id=>wwv_flow_api.id(9664282754168051)
,p_plug_name=>'Priority All 1 - sub region'
,p_parent_plug_id=>wwv_flow_api.id(9663921333168050)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9671005537168074)
,p_plug_name=>'Priority All 2 - sub region'
,p_parent_plug_id=>wwv_flow_api.id(9663921333168050)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
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
 p_id=>wwv_flow_api.id(9677657371168087)
,p_plug_name=>'Priority All 3 - sub region'
,p_parent_plug_id=>wwv_flow_api.id(9663921333168050)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_row_template=>1
,p_plug_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'.formlayout {border-collapse:collapse;}',
'.formlayout td {padding:0px;}',
'.formlayout td input {margin:0px;}',
'.formlayout td select {margin:0px;}',
'</style>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9684198765168093)
,p_plug_name=>'4'
,p_parent_plug_id=>wwv_flow_api.id(9663921333168050)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9685889807168095)
,p_plug_name=>'5'
,p_parent_plug_id=>wwv_flow_api.id(9663921333168050)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9687628927168102)
,p_plug_name=>'6'
,p_parent_plug_id=>wwv_flow_api.id(9663921333168050)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
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
 p_id=>wwv_flow_api.id(9689304880168103)
,p_plug_name=>'7'
,p_parent_plug_id=>wwv_flow_api.id(9663921333168050)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9691029611168105)
,p_plug_name=>'8'
,p_parent_plug_id=>wwv_flow_api.id(9663921333168050)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9692669883168106)
,p_plug_name=>'9'
,p_parent_plug_id=>wwv_flow_api.id(9663921333168050)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9693958509168108)
,p_plug_name=>'10'
,p_parent_plug_id=>wwv_flow_api.id(9663921333168050)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9695312236168109)
,p_plug_name=>'11'
,p_parent_plug_id=>wwv_flow_api.id(9663921333168050)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9655176562168044)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(9654839187168043)
,p_button_name=>'SEARCH'
,p_button_static_id=>'SEARCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33364030157463185)
,p_button_image_alt=>'Search'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9655622033168045)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(9654839187168043)
,p_button_name=>'CLEAR_FORM'
,p_button_static_id=>'CLEAR_FORM'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33364030157463185)
,p_button_image_alt=>'Clear'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9656002386168045)
,p_button_sequence=>650
,p_button_plug_id=>wwv_flow_api.id(9654839187168043)
,p_button_name=>'P5_PRINT'
,p_button_static_id=>'P2_PRINT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33363728507463185)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9635160086167978)
,p_button_sequence=>660
,p_button_plug_id=>wwv_flow_api.id(9634785662167972)
,p_button_name=>'UPDATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33363635568463185)
,p_button_image_alt=>'Update'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9635581077167989)
,p_button_sequence=>670
,p_button_plug_id=>wwv_flow_api.id(9634785662167972)
,p_button_name=>'ADD_PROJECT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33363635568463185)
,p_button_image_alt=>'Add Project'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(9705897681168188)
,p_branch_name=>'PRINT_CARDS'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP:P6_CHANGE_ID,P6_INCIDENT_ID,P6_SERVICEREQ_ID:&P5_CHANGE_ID.,&P5_INCIDENT_ID.,&P5_SERVICEREQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(9656002386168045)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9636366501168003)
,p_name=>'P5_RELEASE_ID'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Release Id'
,p_pre_element_text=>'&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'RELEASE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cHeight=>1
,p_new_grid=>true
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9637335089168021)
,p_name=>'P5_ANALYSIS_HRS'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Analysis Hrs'
,p_source=>'ANALYSIS_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9638174242168022)
,p_name=>'P5_ANALYSIS_DAYS'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Analysis Days'
,p_source=>'ANALYSIS_DAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9639116149168023)
,p_name=>'P5_DESIGN_DAYS'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Design Days'
,p_source=>'DESIGN_DAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9639981772168029)
,p_name=>'P5_DEV_DAYS'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dev Days'
,p_source=>'DEV_DAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9640930017168029)
,p_name=>'P5_QA_DAYS'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qa Days'
,p_source=>'QA_DAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9641767760168030)
,p_name=>'P5_DESIGN_HRS'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Design Hrs'
,p_source=>'DESIGN_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9642743379168031)
,p_name=>'P5_ACTUAL_HRS'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Actual Hrs'
,p_source=>'ACTUAL_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9643631866168031)
,p_name=>'P5_LD1'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ld1'
,p_source=>'LD1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cMaxlength=>10
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9644528624168032)
,p_name=>'P5_FASTTRACK'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fasttrack'
,p_source=>'FASTTRACK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9645381513168032)
,p_name=>'P5_PRODSUP'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prodsup'
,p_source=>'PRODSUP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9646263625168033)
,p_name=>'P5_DEV_HRS'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dev Hrs'
,p_source=>'DEV_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9647167579168033)
,p_name=>'P5_QA_HRS'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qa Hrs'
,p_source=>'QA_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9648077283168034)
,p_name=>'P5_CURRENT_HRS_EST'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Current Hrs Est'
,p_source=>'CURRENT_HRS_EST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9649034153168035)
,p_name=>'P5_CLIENT'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Client'
,p_source=>'CLIENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9649914274168035)
,p_name=>'P5_IT'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'It'
,p_source=>'IT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9650786403168036)
,p_name=>'P5_INC_ID'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inc Id'
,p_source=>'INC_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9651715813168041)
,p_name=>'P5_CHG_ID'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Chg Id'
,p_source=>'CHG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9652549162168042)
,p_name=>'P5_UAT_DAYS'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Uat Days'
,p_source=>'UAT_DAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9653522114168042)
,p_name=>'P5_BUSINESS'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Business'
,p_source=>'BUSINESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9654436477168043)
,p_name=>'P5_CHECKBOX'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(9635980481168001)
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
 p_id=>wwv_flow_api.id(9656422722168045)
,p_name=>'P5_CHANGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9654839187168043)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change ID:'
,p_pre_element_text=>'&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'*******0000'
,p_source=>'CHANGE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>10
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the Change / RFC number that you are searching for.'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9657256074168046)
,p_name=>'P5_INCIDENT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9654839187168043)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Incident ID:'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_format_mask=>'###000'
,p_source=>'INCIDENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>8
,p_cMaxlength=>15
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the incident number that you are searching for.'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9658211789168046)
,p_name=>'P5_SERVICEREQ_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9654839187168043)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Req ID:'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ServiceReq_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>15
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter the incident number that you are searching for.'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9659065806168047)
,p_name=>'P5_FR_SYSTEM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9654839187168043)
,p_item_default=>'Working'
,p_prompt=>'Old Front Range'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;Front Range'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Are you looking for a ticket in the New Front Range or the Old version?'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9660040056168047)
,p_name=>'P5_SUMMARY_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(9654839187168043)
,p_prompt=>'Request Summary:'
,p_pre_element_text=>'&nbsp;&nbsp;'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>99
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Summary entered into Front Range for the selected ticket.'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9661149889168049)
,p_name=>'P5_BLOCKER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9660818948168048)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Value / Justification'
,p_pre_element_text=>'&nbsp;'
,p_source=>'BLOCKER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>99
,p_cMaxlength=>100
,p_cHeight=>1
,p_rowspan=>100
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'If progress is being held up by something, enter a short description of why/who.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9662091439168049)
,p_name=>'P5_UPDATES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9660818948168048)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;Business Updates'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'UPDATES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>5000
,p_cHeight=>5
,p_new_grid=>true
,p_colspan=>1
,p_grid_column=>1
,p_label_alignment=>'RIGHT-TOP'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Updates on the ticket selected throughout the process.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9662980911168050)
,p_name=>'P5_IT_COMMENTS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9660818948168048)
,p_use_cache_before_default=>'NO'
,p_prompt=>'IT Comments'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'IT_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>5000
,p_cHeight=>5
,p_colspan=>1
,p_grid_column=>1
,p_label_alignment=>'RIGHT-TOP'
,p_field_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Updates on the ticket selected throughout the process for IT eyes ONLY (no reporting).'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9664667333168051)
,p_name=>'P5_PRIORITY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(9664282754168051)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Rank'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'PRIORITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Priority entered for the selected ticket.',
'',
'     00 - WIP',
'     99 - Unprioritized Backlog'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9665565141168055)
,p_name=>'P5_RISK_ISSUE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(9664282754168051)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Health'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'RISK_ISSUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'HEALTH'
,p_lov=>'.'||wwv_flow_api.id(34008652628832735)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>8
,p_cMaxlength=>1
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Current risk for the selected ticket.',
'',
'     G - Green (Target date is safe)',
'     Y - Yellow (Target date in danger of slipping)',
'     R - Red (Target date will be missed)'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9666474601168068)
,p_name=>'P5_REQGROUP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(9664282754168051)
,p_item_default=>'&nbsp;'
,p_prompt=>'Requesting Group'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REQGROUP'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select REQGROUP as display_value, REQGROUP as return_value ',
'  from PRJ_REQ_GROUP',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>8
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the group that submitted the ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9667424177168070)
,p_name=>'P5_ASSIGNMENT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(9664282754168051)
,p_prompt=>'PM Assigned'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ASSIGNMENT'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FULL_NAME as d, FULL_NAME as r ',
'  from PRJ_ASSIGNMENTS ',
' order by d nulls first'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the person assigned the task for the stage that this ticket is in.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9668307414168071)
,p_name=>'P5_QA_ASSIGNED'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(9664282754168051)
,p_prompt=>'QA Assigned'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ASSIGNMENT'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FULL_NAME as d, FULL_NAME as r ',
'  from PRJ_ASSIGNMENTS ',
' order by d nulls first'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Quality agent assigned to the ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9669147236168071)
,p_name=>'P5_ORIG_ANALYSIS_HRS'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(9664282754168051)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<SPAN STYLE="color: #1589FF;">Original Analysis</SPAN>'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ORIG_ANALYSIS_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9670091571168072)
,p_name=>'P5_ORIG_DEV_HRS'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(9664282754168051)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<SPAN STYLE="color: #1589FF;">Original Development</SPAN>'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ORIG_DEV_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9671417331168075)
,p_name=>'P5_SL_RANK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9671005537168074)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bus. Rank'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'SL_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Business ranking for the ticket across the release for the selected ticket.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9672282399168081)
,p_name=>'P5_REPORTABLE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(9671005537168074)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reportable'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'REPORTABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_cSize=>1
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Should this ticket be reported on?'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9673193199168081)
,p_name=>'P5_ITGROUP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(9671005537168074)
,p_prompt=>'IT Group'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ITGROUP'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ITGROUP'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ITGROUP as display_value, ITGROUP as return_value ',
'  from PRJ_IT_GROUP',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>8
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the IT Group performing the tasks for this ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9674112294168082)
,p_name=>'P5_BA_ASSIGNED'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(9671005537168074)
,p_prompt=>'BA Assigned'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ASSIGNMENT'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FULL_NAME as d, FULL_NAME as r ',
'  from PRJ_ASSIGNMENTS ',
' order by d nulls first'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Business agent assigned to the ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9674991359168084)
,p_name=>'P5_STATUS_LIST'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(9671005537168074)
,p_item_default=>'STATUS'
,p_prompt=>'Status'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select DISPLAY as display_value, DISPLAY as return_value ',
'  from PRJ_STATUS_ORDER',
' order by SORT_ORDER'))
,p_lov_display_null=>'YES'
,p_cSize=>8
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'class="typeselect"'
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the stage in which the ticket is currently in.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9675900485168085)
,p_name=>'P5_ORIG_DESIGN_HRS'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(9671005537168074)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<SPAN STYLE="color: #1589FF;">Original Design</SPAN>'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ORIG_DESIGN_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cMaxlength=>10
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9676830609168087)
,p_name=>'P5_ORIG_QA_HRS'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(9671005537168074)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<SPAN STYLE="color: #1589FF;">Original QA </SPAN>'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ORIG_QA_HRS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9678071112168088)
,p_name=>'P5_SVC_LINE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9677657371168087)
,p_prompt=>'Service Line'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SERVICE LINES'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SVC_LINE as display_value, SVC_LINE as return_value ',
'  from PRJ_SVC_LINE',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the service line requesting the change.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9678995954168089)
,p_name=>'P5_EXEC'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(9677657371168087)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Executive'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'EXEC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_cSize=>1
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Should this ticket be reported as an executive request?'
,p_attribute_01=>'1'
,p_attribute_02=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9679858355168089)
,p_name=>'P5_SHIRT_SIZE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(9677657371168087)
,p_prompt=>'Shirt Size'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIRT_SIZE'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select SHIRT_SIZE as display_value, SHIRT_SIZE as return_value ',
'  from PRJ_SHIRT_SIZE',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the level of effort for this ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9680834260168090)
,p_name=>'P5_X'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(9677657371168087)
,p_prompt=>'.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9681161169168091)
,p_name=>'P5_XXX'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(9677657371168087)
,p_prompt=>'<SPAN STYLE="color: #FFFFFF;">.</SPAN>'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9681550205168091)
,p_name=>'P5_XXXX'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(9677657371168087)
,p_prompt=>'.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9682005070168092)
,p_name=>'P5_DEV_ASSIGNED'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(9677657371168087)
,p_prompt=>'Dev Assigned'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ASSIGNMENT'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select FULL_NAME as d, FULL_NAME as r ',
'  from PRJ_ASSIGNMENTS ',
' order by d nulls first'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Developer assigned to the ticket.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9682913112168092)
,p_name=>'P5_DATA_DATE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(9677657371168087)
,p_use_cache_before_default=>'NO'
,p_prompt=>'.'
,p_source=>'DATA_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9683300309168093)
,p_name=>'P5_ORIG_HRS_EST'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(9677657371168087)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<SPAN STYLE="color: #1589FF;">Total Original</SPAN>'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'ORIG_HRS_EST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>8
,p_cMaxlength=>22
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9684566796168094)
,p_name=>'P5_ANALYSIS_START_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9684198765168093)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Analysis Start DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'ANALYSIS_START_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date the analysis started for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9685469273168094)
,p_name=>'P5_ANALYSIS_END_DT'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(9684198765168093)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Analysis End DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'ANALYSIS_END_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9686256164168095)
,p_name=>'P5_DESIGN_START_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9685889807168095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Design Start DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'DESIGN_START_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date the design started for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9687206501168101)
,p_name=>'P5_DESIGN_END_DT'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(9685889807168095)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Design End DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'DESIGN_END_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9687978887168102)
,p_name=>'P5_DEV_START_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9687628927168102)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dev Start DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'DEV_START_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date development started for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9688863589168103)
,p_name=>'P5_DEV_END_DT'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(9687628927168102)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dev End DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'DEV_END_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9689680000168104)
,p_name=>'P5_QA_START_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9689304880168103)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;Quality Start DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'QA_START_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date QA started for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9690545581168104)
,p_name=>'P5_QA_END_DT'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(9689304880168103)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;Quality End DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'QA_END_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9691364744168105)
,p_name=>'P5_UAT_START_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9691029611168105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'UAT Start DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'UAT_START_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date UAT started for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9692315102168106)
,p_name=>'P5_UAT_END_DT'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(9691029611168105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'UAT End DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'UAT_END_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9693064716168107)
,p_name=>'P5_APP_REQ_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9692669883168106)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&nbsp;&nbsp;&nbsp;&nbsp;App Request DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'APP_REQ_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date the request for approval was sent out for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9694398196168108)
,p_name=>'P5_APP_DT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9693958509168108)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Approval DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'APP_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Date approval was received back for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9695704604168109)
,p_name=>'P5_EDD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9695312236168109)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Est. Delivery DT'
,p_pre_element_text=>'&nbsp;&nbsp;&nbsp;'
,p_source=>'EDD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>8
,p_cMaxlength=>30
,p_cHeight=>1
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Target date for deployment if not in the Completed stage - OR - Date deployed for the selected ticket.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9702979243168160)
,p_name=>'Status Changes'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_STATUS_LIST'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9703499035168161)
,p_event_id=>wwv_flow_api.id(9702979243168160)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.typeselect'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'//CREATE AND LOAD ARRAYS',
'',
'var status_values = ["Analysis","Waiting for Design","Design","Life Cycle","Waiting for Dev","Development","Waiting for QA","QA","Stage","Waiting for UAT","UAT","Code Compare","Change Control","Ready","Completed"];',
'',
'var date_values = [($v("P5_ANALYSIS_START_DT")), ($v("P5_ANALYSIS_END_DT")),($v("P5_DESIGN_START_DT")),($v("P5_DESIGN_END_DT")),($v("P5_DESIGN_END_DT")),($v("P5_DEV_START_DT")),($v("P5_DEV_END_DT")),($v("P5_QA_START_DT")),($v("P5_QA_END_DT")),($v("P5'
||'_QA_END_DT")),($v("P5_UAT_START_DT")),($v("P5_UAT_END_DT")),($v("P5_APP_REQ_DT")),($v("P5_APP_DT")),($v("P5_EDD"))];',
'',
'for (i = 0; i < 16; i++) ',
'{',
'  if (status_values[i] == document.getElementById(''P5_STATUS_LIST'').value)',
'  {',
'    ',
'    for (x = 0; x <= i; x++) ',
'    {',
'    var fieldname = date_values[x]',
'    //alert("<" + fieldname + "> expected first alert");',
'',
'      if (fieldname == "")',
'      {',
'',
'        var MyDate = new Date();',
'        var MyDateString;',
'        MyDate.setDate(MyDate.getDate());',
'        MyDateString = (''0'' + (MyDate.getMonth()+1)).slice(-2).toString() + ''-''',
'                     + (''0'' + MyDate.getDate()).slice(-2).toString() + ''-''',
'                     + MyDate.getYear().toString().substr(1,2);',
'',
'        //alert("<" + date_values[x] + "> = " + MyDateString + " second alert");     ',
'',
'switch(x) {',
'          case 0:',
'               $s("P5_ANALYSIS_START_DT",MyDateString );',
'               break;',
'          case 1:',
'               $s("P5_ANALYSIS_END_DT",MyDateString );',
'               break;',
'          case 2:',
'               $s("P5_DESIGN_START_DT",MyDateString );',
'               break;',
'          case 3:',
'               $s("P5_DESIGN_END_DT",MyDateString );',
'               break;',
'          case 4:',
'               $s("P5_DESIGN_END_DT",MyDateString );',
'               break;',
'          case 5:',
'               $s("P5_DEV_START_DT",MyDateString );',
'               break;',
'          case 6:',
'               $s("P5_DEV_END_DT",MyDateString );',
'               break;',
'          case 7:',
'               $s("P5_QA_START_DT",MyDateString );',
'               break;',
'          case 8:',
'               $s("P5_QA_END_DT",MyDateString );',
'               break;',
'          case 9:',
'               $s("P5_QA_END_DT",MyDateString );',
'               break;',
'          case 10:',
'               $s("P5_UAT_START_DT",MyDateString );',
'               break;',
'          case 11:',
'               $s("P5_UAT_END_DT",MyDateString );',
'               break;',
'          case 12:',
'               $s("P5_APP_REQ_DT",MyDateString );',
'               break;',
'          case 13:',
'               $s("P5_APP_DT",MyDateString );',
'               break;',
'          case 14:',
'               $s("P5_EDD",MyDateString );',
'               break;',
'       }',
'      }',
'    }  ',
'  break;',
'  }',
'}',
'',
'',
'',
'',
'',
'',
'',
''))
,p_stop_execution_on_error=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9698503776168137)
,p_name=>'get'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9655176562168044)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9699027066168147)
,p_event_id=>wwv_flow_api.id(9698503776168137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'SUMMARY,CHANGE_ID,DECODE(FR_SYSTEM, ''ServiceReq_V72'', '''', INCIDENT_ID) AS INCIDENT_ID,',
'',
'DECODE(FR_SYSTEM, ''ServiceReq_V72'', INCIDENT_ID, '''') AS SERVICEREQ_ID,',
'',
' PRIORITY,SHIRT_SIZE,REPORTABLE,EXEC,ANALYSIS_HRS,DESIGN_HRS,DEV_HRS,QA_HRS,CURRENT_HRS_EST,ACTUAL_HRS,EDD,RISK_ISSUE,DEV_START_DT,APP_REQ_DT,APP_DT,SL_RANK,BLOCKER,ANALYSIS_START_DT,DESIGN_START_DT,QA_START_DT,UAT_START_DT,RELEASE_ID,ITGROUP,REQGROU'
||'P,IT_COMMENTS,UPDATES,ASSIGNED,STATUS,FR_SYSTEM,BA_ASSIGNED, DEV_ASSIGNED, QA_ASSIGNED, SVC_LINE, ANALYSIS_END_DT, DESIGN_END_DT, DEV_END_DT, QA_END_DT, UAT_END_DT',
'  ',
'INTO  :P5_SUMMARY_ID,:P5_CHANGE_ID,:P5_INCIDENT_ID,:P5_SERVICEREQ_ID, ',
':P5_PRIORITY,:P5_SHIRT_SIZE,:P5_REPORTABLE,:P5_EXEC,:P5_ANALYSIS_HRS,:P5_DESIGN_HRS,:P5_DEV_HRS,:P5_QA_HRS,:P5_CURRENT_HRS_EST,:P5_ACTUAL_HRS,:P5_EDD,:P5_RISK_ISSUE,:P5_DEV_START_DT,:P5_APP_REQ_DT,:P5_APP_DT,:P5_SL_RANK,:P5_BLOCKER,:P5_ANALYSIS_START'
||'_DT,:P5_DESIGN_START_DT,:P5_QA_START_DT,:P5_UAT_START_DT,:P5_RELEASE_ID,:P5_ITGROUP,:P5_REQGROUP,:P5_IT_COMMENTS,:P5_UPDATES,:P5_ASSIGNMENT,:P5_STATUS_LIST,:P5_FR_SYSTEM, :P5_BA_ASSIGNED, :P5_DEV_ASSIGNED, :P5_QA_ASSIGNED, :P5_SVC_LINE, :P5_ANALYSIS_'
||'END_DT, :P5_DESIGN_END_DT, :P5_DEV_END_DT, :P5_QA_END_DT, :P5_UAT_END_DT',
'',
'FROM PRJ_PRIORITY_ALL',
'',
'WHERE ((CHANGE_ID=:P5_CHANGE_ID and FR_SYSTEM = DECODE(:P5_FR_SYSTEM, ''Front Range'', ''Change'', ''Change_V72''))',
'OR (INCIDENT_ID=:P5_INCIDENT_ID and FR_SYSTEM = DECODE(:P5_FR_SYSTEM, ''Front Range'', ''Incident'', ''Incident_V72''))',
'OR (INCIDENT_ID=:P5_SERVICEREQ_ID AND FR_SYSTEM = DECODE(:P5_FR_SYSTEM, ''Front Range'', ''ServiceReq'', ''ServiceReq_V72''))',
') ',
'',
'    AND DATA_DATE IN (SELECT MAX(DATA_DATE)',
'                         FROM PRJ_PRIORITY_ALL',
'                          WHERE ((CHANGE_ID=:P5_CHANGE_ID AND FR_SYSTEM = DECODE(:P5_FR_SYSTEM, ''Front Range'', ''Change'', ''Change_V72'')) OR (INCIDENT_ID=:P5_INCIDENT_ID AND FR_SYSTEM <> ''ServiceReq_V72'') OR (INCIDENT_ID=:P5_SERVICEREQ_ID AND FR_SYSTEM'
||' = ''ServiceReq_V72'')));',
''))
,p_attribute_02=>'P5_CHANGE_ID,P5_INCIDENT_ID,P5_FR_SYSTEM,P5_SERVICEREQ_ID'
,p_attribute_03=>'P5_SUMMARY_ID,P5_CHANGE_ID,P5_INCIDENT_ID,P5_PRIORITY,P5_SHIRT_SIZE,P5_STATUS_LIST,P5_REPORTABLE,P5_EXEC,P5_ANALYSIS_HRS,P5_DESIGN_HRS,P5_DEV_HRS,P5_QA_HRS,P5_CURRENT_HRS_EST,P5_ACTUAL_HRS,P5_EDD,P5_RISK_ISSUE,P5_DEV_START_DT,P5_APP_REQ_DT,P5_APP_DT,'
||'P5_SL_RANK,P5_BLOCKER,P5_ANALYSIS_START_DT,P5_DESIGN_START_DT,P5_QA_START_DT,P5_UAT_START_DT,P5_RELEASE_ID,P5_ITGROUP,P5_REQGROUP,P5_IT_COMMENTS,P5_UPDATES,P5_ASSIGNMENT,P5_STATUS_LIST,P5_FR_SYSTEM,P5_BA_ASSIGNED,P5_DEV_ASSIGNED,P5_QA_ASSIGNED,P5_SVC'
||'_LINE,P5_SERVICEREQ_ID,P5_ANALYSIS_END_DT,P5_DESIGN_END_DT,P5_DEV_END_DT,P5_QA_END_DT,P5_UAT_END_DT'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4987523102916684)
,p_event_id=>wwv_flow_api.id(9698503776168137)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(9635160086167978)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4987967955934074)
,p_event_id=>wwv_flow_api.id(9698503776168137)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(9635581077167989)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9699386446168153)
,p_name=>'Clear'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9655622033168045)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9699777644168154)
,p_event_id=>wwv_flow_api.id(9699386446168153)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ANALYSIS_START_DT,P5_APP_DT,P5_APP_REQ_DT,P5_BLOCKER,P5_CHANGE_ID,P5_DESIGN_START_DT,P5_DEV_START_DT,P5_EDD,P5_QA_START_DT,P5_UAT_START_DT,P5_UPDATES,P5_IT_COMMENTS,P5_INCIDENT_ID,P5_SERVICEREQ_ID,P5_FR_SYSTEM,P5_SVC_LINE,P5_SL_RANK,P5_EXEC,P5_REP'
||'ORTABLE,P5_SHIRT_SIZE,P5_ITGROUP,P5_PRIORITY,P5_BA_ASSIGNED,P5_RISK_ISSUE,P5_X,P5_STATUS_LIST,P5_SUMMARY_ID,P5_REQGROUP,P5_ASSIGNMENT,P5_XXX,P5_QA_ASSIGNED,P5_XXXX,P5_DEV_ASSIGNED,P5_DATA_DATE,P5_RELEASE_ID,P5_ANALYSIS_HRS,P5_ORIG_DESIGN_HRS,P5_ANALY'
||'SIS_DAYS,P5_DESIGN_DAYS,P5_DEV_DAYS,P5_ORIG_ANALYSIS_HRS,P5_QA_DAYS,P5_DESIGN_HRS,P5_ORIG_DEV_HRS,P5_ORIG_QA_HRS,P5_ACTUAL_HRS,P5_LD1,P5_FASTTRACK,P5_PRODSUP,P5_DEV_HRS,P5_QA_HRS,P5_CURRENT_HRS_EST,P5_CLIENT,P5_IT,P5_INC_ID,P5_CHG_ID,P5_UAT_DAYS,P5_B'
||'USINESS,P5_CHECKBOX,P5_ANALYSIS_END_DT,P5_DESIGN_END_DT,P5_ORIG_HRS_EST,P5_DEV_END_DT,P5_QA_END_DT,P5_UAT_END_DT'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4986477590885663)
,p_event_id=>wwv_flow_api.id(9699386446168153)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(9635160086167978)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4986834287896209)
,p_event_id=>wwv_flow_api.id(9699386446168153)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_CHANGE_ID'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4988360262968061)
,p_event_id=>wwv_flow_api.id(9699386446168153)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(9635581077167989)
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9703904995168161)
,p_name=>'Confirm_add'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9635581077167989)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9704441930168162)
,p_event_id=>wwv_flow_api.id(9703904995168161)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Do you want to confirm your selections?'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9704934886168165)
,p_event_id=>wwv_flow_api.id(9703904995168161)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'INSERT INTO PRJ_PRIORITY_ALL (DATA_DATE, CHANGE_ID,INCIDENT_ID,PRIORITY,SHIRT_SIZE,STATUS,REPORTABLE,EDD,RISK_ISSUE,DEV_START_DT,APP_REQ_DT,APP_DT,SL_RANK,BLOCKER,ANALYSIS_START_DT,DESIGN_START_DT,QA_START_DT,UAT_START_DT,ITGROUP,REQGROUP,IT_COMMENTS'
||',UPDATES,ASSIGNED,ORIG_ANALYSIS_HRS,ORIG_DESIGN_HRS,ORIG_DEV_HRS,ORIG_HRS_EST,ORIG_QA_HRS,',
'FR_SYSTEM,REQ_ID,SUMMARY,CHG_ID,INC_ID,BA_ASSIGNED, DEV_ASSIGNED, QA_ASSIGNED, SVC_LINE,ANALYSIS_END_DT,DESIGN_END_DT,DEV_END_DT,QA_END_DT,UAT_END_DT)',
'VALUES',
'(SYSDATE, :P5_CHANGE_ID,',
'DECODE(:P5_INCIDENT_ID, NULL, :P5_SERVICEREQ_ID, :P5_INCIDENT_ID),',
':P5_PRIORITY,:P5_SHIRT_SIZE,:P5_STATUS_LIST,:P5_REPORTABLE,:P5_EDD,:P5_RISK_ISSUE,:P5_DEV_START_DT,:P5_APP_REQ_DT,:P5_APP_DT,:P5_SL_RANK,:P5_BLOCKER,:P5_ANALYSIS_START_DT,:P5_DESIGN_START_DT,:P5_QA_START_DT,:P5_UAT_START_DT,:P5_ITGROUP,:P5_REQGROUP,:'
||'P5_IT_COMMENTS,:P5_UPDATES,:P5_ASSIGNMENT,:P5_ORIG_ANALYSIS_HRS,:P5_ORIG_DESIGN_HRS,:P5_ORIG_DEV_HRS,:P5_ORIG_HRS_EST,:P5_ORIG_QA_HRS,',
'DECODE(:P5_cHANGE_ID, NULL, DECODE(:P5_INCIDENT_ID, NULL, ''ServiceReq_V72'', ''Incident_V72''), ''Change_V72''),',
'DECODE(:P5_cHANGE_ID, NULL, DECODE(:P5_INCIDENT_ID, NULL, :P5_SERVICEREQ_ID, :P5_INCIDENT_ID), :P5_CHANGE_ID),',
':P5_SUMMARY,:P5_CHANGE_ID,DECODE(:P5_INCIDENT_ID, NULL, :P5_SERVICEREQ_ID, :P5_INCIDENT_ID),:P5_BA_ASSIGNED, :P5_DEV_ASSIGNED, :P5_QA_ASSIGNED, :P5_SVC_LINE, :P5_ANALYSIS_END_DT, :P5_DESIGN_END_DT, :P5_DEV_END_DT, :P5_QA_END_DT, :P5_UAT_END_DT',
');',
'',
'COMMIT;',
'',
'END;',
''))
,p_attribute_02=>'P5_CHANGE_ID,P5_INCIDENT_ID,P5_PRIORITY,P5_SHIRT_SIZE,P5_STATUS_LIST,P5_REPORTABLE,P5_EDD,P5_RISK_ISSUE,P5_DEV_START_DT,P5_APP_REQ_DT,P5_APP_DT,P5_SL_RANK,P5_BLOCKER,P5_ANALYSIS_START_DT,P5_DESIGN_START_DT,P5_QA_START_DT,P5_UAT_START_DT,P5_ITGROUP,P5'
||'_REQGROUP,P5_ITCOMMENTS,P5_UPDATES,P5_ASSIGNMENT,P5_ORIG_ANALYSIS_HRS,P5_ORIG_DESIGN_HRS,P5_ORIG_DEV_HRS,P5_ORIG_HRS_EST,P5_ORIG_QA_HRS,P5_BA_ASSIGNED,P5_DEV_ASSIGNED,P5_QA_ASSIGNED,P5_SVC_LINE,P5_SERVICEREQ_ID,P5_ANALYSIS_END_DT,P5_DESIGN_END_DT,P5_'
||'DEV_END_DT,P5_QA_END_DT,P5_UAT_END_DT'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9705378355168165)
,p_event_id=>wwv_flow_api.id(9703904995168161)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9716319351124161)
,p_event_id=>wwv_flow_api.id(9703904995168161)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_SUMMARY_ID,P5_CHANGE_ID,P5_INCIDENT_ID,P5_PRIORITY,P5_SHIRT_SIZE,P5_STATUS_LIST,P5_REPORTABLE,P5_EXEC,P5_ANALYSIS_HRS,P5_DESIGN_HRS,P5_DEV_HRS,P5_QA_HRS,P5_CURRENT_HRS_EST,P5_ACTUAL_HRS,P5_EDD,P5_RISK_ISSUE,P5_DEV_START_DT,P5_APP_REQ_DT,P5_APP_DT,'
||'P5_SL_RANK,P5_BLOCKER,P5_ANALYSIS_START_DT,P5_DESIGN_START_DT,P5_QA_START_DT,P5_UAT_START_DT,P5_RELEASE_ID,P5_ITGROUP,P5_REQGROUP,P5_IT_COMMENTS,P5_UPDATES,P5_ASSIGNMENT,P5_BA_ASSIGNED,P5_DEV_ASSIGNED,P5_QA_ASSIGNED,P5_SVC_LINE,P5_SERVICEREQ_ID,P5_AN'
||'ALYSIS_END_DT,P5_DESIGN_END_DT,P5_DEV_END_DT,P5_QA_END_DT,P5_UAT_END_DT'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9701120725168159)
,p_name=>'confirm_upd'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9635160086167978)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9701619132168160)
,p_event_id=>wwv_flow_api.id(9701120725168159)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Do you want to confirm your selections?'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9713027725481778)
,p_event_id=>wwv_flow_api.id(9701120725168159)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO ',
'PRJ_PRIORITY_ALL_AUDIT (Audit_Dt,Data_Date, Change_ID, Incident_ID, Priority,Shirt_Size, Updates, IT_Comments, Status, Reportable, ReqGroup, ITGroup, Assigned, Orig_Analysis_Hrs, Orig_Design_Hrs,Orig_Dev_Hrs, Orig_QA_Hrs, Orig_Hrs_Est, Analysis_Hrs,D'
||'esign_Hrs, Dev_Hrs, QA_Hrs, Current_Hrs_Est, Actual_Hrs,EDD, Risk_Issue, DEV_START_DT, APP_REQ_DT, APP_DT, SL_Rank,ANALYSIS_DAYS, ANALYSIS_START_DT, Design_Days, DESIGN_START_DT, Dev_Days, QA_Days, QA_Start_Dt, UAT_Days, UAT_Start_Dt, Blocker,FR_SYST'
||'EM,REQ_ID,CHG_ID,INC_ID,BA_ASSIGNED, DEV_ASSIGNED, QA_ASSIGNED, SVC_LINE, Summary, EXEC, ANALYSIS_END_DT,DESIGN_END_DT,DEV_END_DT,QA_END_DT,UAT_END_DT)',
'SELECT ',
'SYSDATE,Data_Date, Change_ID, Incident_ID, Priority,Shirt_Size, Updates, IT_Comments, Status, Reportable, ReqGroup, ITGroup, Assigned, Orig_Analysis_Hrs, Orig_Design_Hrs,Orig_Dev_Hrs, Orig_QA_Hrs, Orig_Hrs_Est, Analysis_Hrs,Design_Hrs, Dev_Hrs, QA_Hr'
||'s, Current_Hrs_Est, Actual_Hrs,EDD, Risk_Issue, DEV_START_DT, APP_REQ_DT, APP_DT, SL_Rank,ANALYSIS_DAYS, ANALYSIS_START_DT, Design_Days, DESIGN_START_DT, Dev_Days, QA_Days, QA_Start_Dt, UAT_Days, UAT_Start_Dt, Blocker,FR_SYSTEM,REQ_ID,CHG_ID,INC_ID,B'
||'A_ASSIGNED, DEV_ASSIGNED, QA_ASSIGNED, SVC_LINE, Summary, EXEC, ANALYSIS_END_DT,DESIGN_END_DT,DEV_END_DT,QA_END_DT,UAT_END_DT',
'FROM PRJ_PRIORITY_ALL',
'WHERE',
'   (CHANGE_ID = :P5_CHANGE_ID AND FR_SYSTEM = ''Change_V72'')',
'OR (INCIDENT_ID = :P5_INCIDENT_ID AND FR_SYSTEM = ''Incident_V72'') ',
'OR (INCIDENT_ID = :P5_SERVICEREQ_ID AND FR_SYSTEM = ''ServiceReq_V72'');',
''))
,p_attribute_02=>'P5_CHANGE_ID,P5_INCIDENT_ID,P5_SERVICEREQ_ID,ANALYSIS_END_DT,DESIGN_END_DT,DEV_END_DT,QA_END_DT,UAT_END_DT'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9702573571168160)
,p_event_id=>wwv_flow_api.id(9701120725168159)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'NOT ADDED'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9714855868071830)
,p_event_id=>wwv_flow_api.id(9701120725168159)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'UPDATE PRJ_PRIORITY_ALL',
'SET ',
'INCIDENT_ID=DECODE(:P5_SERVICEREQ_ID, NULL, :P5_INCIDENT_ID, :P5_SERVICEREQ_ID),',
'PRIORITY=:P5_PRIORITY,SHIRT_SIZE=:P5_SHIRT_SIZE,STATUS=:P5_STATUS_LIST,REPORTABLE=:P5_REPORTABLE,EDD=:P5_EDD,RISK_ISSUE=:P5_RISK_ISSUE,DEV_START_DT=:P5_DEV_START_DT,APP_REQ_DT=:P5_APP_REQ_DT,APP_DT=:P5_APP_DT,SL_RANK=:P5_SL_RANK,BLOCKER=:P5_BLOCKER,A'
||'NALYSIS_START_DT=:P5_ANALYSIS_START_DT,DESIGN_START_DT=:P5_DESIGN_START_DT,QA_START_DT=:P5_QA_START_DT,UAT_START_DT=:P5_UAT_START_DT,RELEASE_ID=:P5_RELEASE_ID,ITGROUP=:P5_ITGROUP,REQGROUP=:P5_REQGROUP,IT_COMMENTS=:P5_IT_COMMENTS,UPDATES=:P5_UPDATES,A'
||'SSIGNED=:P5_ASSIGNMENT,ORIG_ANALYSIS_HRS=:P5_ORIG_ANALYSIS_HRS,ORIG_DESIGN_HRS=:P5_ORIG_DESIGN_HRS,ORIG_DEV_HRS=:P5_ORIG_DEV_HRS,ORIG_HRS_EST=:P5_ORIG_HRS_EST,ORIG_QA_HRS=:P5_ORIG_QA_HRS,ANALYSIS_END_DT=:P5_ANALYSIS_END_DT,DESIGN_END_DT=:P5_DESIGN_EN'
||'D_DT,DEV_END_DT=:P5_DEV_END_DT,QA_END_DT=:P5_QA_END_DT,UAT_END_DT=:P5_UAT_END_DT,',
'CHG_ID=:P5_CHANGE_ID,',
'INC_ID=DECODE(:P5_SERVICEREQ_ID, NULL, :P5_INCIDENT_ID, :P5_SERVICEREQ_ID),',
'BA_ASSIGNED=:P5_BA_ASSIGNED, DEV_ASSIGNED=:P5_DEV_ASSIGNED, QA_ASSIGNED=:P5_QA_ASSIGNED, SVC_LINE=:P5_SVC_LINE, EXEC = :P5_EXEC',
'WHERE (CHANGE_ID = :P5_CHANGE_ID AND FR_SYSTEM = ''Change_V72'')',
'OR (INCIDENT_ID = :P5_SERVICEREQ_ID AND FR_SYSTEM = ''ServiceReq_V72'')',
'OR (INCIDENT_ID = :P5_INCIDENT_ID AND FR_SYSTEM = ''Incident_V72'');',
''))
,p_attribute_02=>'P5_CHANGE_ID,P5_INCIDENT_ID,P5_PRIORITY,P5_SHIRT_SIZE,P5_STATUS_LIST,P5_REPORTABLE,P5_EXEC,P5_EDD,P5_RISK_ISSUE,P5_DEV_START_DT,P5_APP_REQ_DT,P5_APP_DT,P5_SL_RANK,P5_BLOCKER,P5_ANALYSIS_START_DT,P5_DESIGN_START_DT,P5_QA_START_DT,P5_UAT_START_DT,P5_IT'
||'GROUP,P5_REQGROUP,P5_UPDATES,P5_IT_COMMENTS,P5_ASSIGNMENT,P5_ORIG_ANALYSIS_HRS,P5_ORIG_DESIGN_HRS,P5_ORIG_DEV_HRS,P5_ORIG_HRS_EST,P5_ORIG_QA_HRS,P5_BA_ASSIGNED,P5_DEV_ASSIGNED,P5_QA_ASSIGNED,P5_SVC_LINE,P5_EXEC,P5_ANALYSIS_END_DT,P5_DESIGN_END_DT,P5_'
||'DEV_END_DT,P5_QA_END_DT,P5_UAT_END_DT'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9715258297078814)
,p_event_id=>wwv_flow_api.id(9701120725168159)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_SUMMARY_ID,P5_CHANGE_ID,P5_INCIDENT_ID,P5_PRIORITY,P5_SHIRT_SIZE,P5_STATUS_LIST,P5_REPORTABLE,P5_EXEC,P5_ANALYSIS_HRS,P5_DESIGN_HRS,P5_DEV_HRS,P5_QA_HRS,P5_CURRENT_HRS_EST,P5_ACTUAL_HRS,P5_EDD,P5_RISK_ISSUE,P5_DEV_START_DT,P5_APP_REQ_DT,P5_APP_DT,'
||'P5_SL_RANK,P5_BLOCKER,P5_ANALYSIS_START_DT,P5_DESIGN_START_DT,P5_QA_START_DT,P5_UAT_START_DT,P5_RELEASE_ID,P5_ITGROUP,P5_REQGROUP,P5_IT_COMMENTS,P5_UPDATES,P5_ASSIGNMENT,P5_BA_ASSIGNED,P5_DEV_ASSIGNED,P5_QA_ASSIGNED,P5_SVC_LINE,P5_SERVICEREQ_ID,P5_AN'
||'ALYSIS_END_DT,P5_DESIGN_END_DT,P5_DEV_END_DT,P5_QA_END_DT,P5_UAT_END_DT'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3895475261055462)
,p_name=>'IT Comments Update'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_STATUS_LIST'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Stage'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3895882122055473)
,p_event_id=>wwv_flow_api.id(3895475261055462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_IT_COMMENTS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Needs STAGE push'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(33364845955463187)
,p_name=>'Print Cards'
,p_alias=>'PRINT_CARDS'
,p_page_mode=>'NORMAL'
,p_step_title=>'Print Cards'
,p_html_page_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'onload="Print()"',
''))
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<SCRIPT Language="JAVASCRIPT"> ',
'window.print(); ',
'</script> '))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20151217135435'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41163340375914331)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357253099463180)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>wwv_flow_api.id(33360434346463182)
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
 p_id=>wwv_flow_api.id(41163545569915848)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357253099463180)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>wwv_flow_api.id(33360434346463182)
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
 p_id=>wwv_flow_api.id(41222042695249646)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_column=>false
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
 p_id=>wwv_flow_api.id(41223347992383594)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41222042695249646)
,p_button_name=>'BACK_TO_PIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33363635568463185)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'PIT'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_CHANGE_ID,P5_INCIDENT_ID,P5_SERVICEREQ_ID:&P6_CHANGE_ID.,&P6_INCIDENT_ID.,&P6_SERVICEREQ_ID.'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41164028002928380)
,p_name=>'P6_SUMMARY_L'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_use_cache_before_default=>'NO'
,p_pre_element_text=>'<h1><b><p style="text-align: left; font-size: 14px;>'
,p_post_element_text=>'</p></b></h1>'
,p_format_mask=>'<SPAN STYLE="color: #1589FF;"></SPAN>'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'Trim(''REQ ID: '' || REQ_ID || '' - '' || Description)',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41172847745040715)
,p_name=>'P6_REQUESTOR_L'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'Trim(''Requestor: '' || REQ_BY)',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41173325532051068)
,p_name=>'P6_REQUESTING_GROUP_L'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'Trim(''Requesting Group: '' || REQGROUP)',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41176222284067722)
,p_name=>'P6_REQUEST_GROUP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41176548583070727)
,p_name=>'P6_PROJECT_MANAGER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'Trim(''Project Manager: '' || ASSIGNED)',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41176743622073014)
,p_name=>'P6_IT_GROUP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'',
'Trim(''IT Group: '' || ITGROUP)',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41176939309075030)
,p_name=>'P6_ASSIGNED'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'',
'''Target Date: '' || TARGET_DATE',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41177134565077240)
,p_name=>'P6_TARGET_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'DECODE(ITGROUP, ''RDM Components'', ''A'' || rpad('' '',20,'' '') || ''M/D'' || rpad('' '',20,'' '') || ''Bus'' || rpad('' '',20,'' '') || ''Phil'' || rpad('' '',20,'' '') || ''Prod'', ''SPI'' || rpad('' '',20,'' '') || ''PGR'' || rpad('' '',20,'' '') || ''P/U'' || rpad('' '',20,'' '') || ''DEV'' '
||'|| rpad('' '',20,'' '') || ''MAP'')',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41186627805171511)
,p_name=>'P6_SUMMARY_R'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_use_cache_before_default=>'NO'
,p_pre_element_text=>'<h1><b><p style="text-align: left; font-size: 14px;>'
,p_post_element_text=>'</p></b></h1>'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'Trim(''REQ ID: '' || REQ_ID || '' - '' || Description)',
'',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41186950868176075)
,p_name=>'P6_REQUESTOR_R'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'Trim(''Requestor: '' || REQ_BY)',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41187243536179448)
,p_name=>'P6_REQUESTING_GROUP_R'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'Trim(''Requesting Group: '' || REQGROUP)',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41187826930187140)
,p_name=>'P6_SPACE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41188022833188990)
,p_name=>'P6_PROJECT_MANAGER_R'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'Trim(''Project Manager: '' || ASSIGNED)',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41188252150190619)
,p_name=>'P6_IT_GROUP_R'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'',
'Trim(''IT Group: '' || ITGROUP)',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41188449346191891)
,p_name=>'P6_ASSIGNED_R'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'',
'''Target Date: '' || TARGET_DATE',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41188642230195238)
,p_name=>'P6_SPACE2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'DECODE(ITGROUP, ''RDM Components'', ''A                    M/D                    Bus                    Phil                    Prod'', ''SPI                    PGR                    P/U                    DEV                    MAP'')',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>75
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41194831427488912)
,p_name=>'P6_FIELD_1_L'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_post_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'CASE ',
'    WHEN ITGROUP = ''RDM Components'' THEN ''A''',
'    WHEN ITGROUP = ''RDM INSPI'' THEN ''SPI''',
'    WHEN ITGROUP = ''RDM SPI Maintenance'' THEN ''VW''',
'    WHEN ITGROUP = ''RDM Vendor Web'' THEN ''SPI''',
'    ELSE ''VW''',
'  END AS L1 ',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41195027761490590)
,p_name=>'P6_FIELD_2_L'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_post_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'CASE ',
'    WHEN ITGROUP = ''RDM Components'' THEN ''M/D''',
'    WHEN ITGROUP = ''RDM INSPI'' THEN ''Scpt''',
'    WHEN ITGROUP = ''RDM SPI Maintenance'' THEN ''$''',
'    WHEN ITGROUP = ''RDM Vendor Web'' THEN ''PGR''',
'    ELSE ''$''',
'  END AS L2 ',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41195224742491993)
,p_name=>'P6_FIELD_3_L'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_post_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'CASE ',
'    WHEN ITGROUP = ''RDM Components'' THEN ''BUS''',
'    WHEN ITGROUP = ''RDM INSPI'' THEN ''PIC''',
'    WHEN ITGROUP = ''RDM SPI Maintenance'' THEN ''Guid''',
'    WHEN ITGROUP = ''RDM Vendor Web'' THEN ''P/U''',
'    ELSE ''Guid''',
'  END AS L3 ',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41195454275493519)
,p_name=>'P6_FIELD_4_L'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_post_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'CASE ',
'    WHEN ITGROUP = ''RDM Components'' THEN ''Appr''',
'    WHEN ITGROUP = ''RDM INSPI'' THEN ''DEV''',
'    WHEN ITGROUP = ''RDM SPI Maintenance'' THEN ''DEV''',
'    WHEN ITGROUP = ''RDM Vendor Web'' THEN ''DEV''',
'    ELSE ''DEV''',
'  END AS L4 ',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41195650609495180)
,p_name=>'P6_FIELD_5_L'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_post_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'  CASE ',
'    WHEN ITGROUP = ''RDM Components'' THEN ''Prod''',
'    WHEN ITGROUP = ''RDM INSPI'' THEN ''DB''',
'    WHEN ITGROUP = ''RDM SPI Maintenance'' THEN ''Cweb''',
'    WHEN ITGROUP = ''RDM Vendor Web'' THEN ''MAP''',
'    ELSE ''Cweb''',
'  END AS L5 ',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41195844355498130)
,p_name=>'P6_FIELD_1_R'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_post_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'  CASE ',
'    WHEN ITGROUP = ''RDM Components'' THEN ''A''',
'    WHEN ITGROUP = ''RDM INSPI'' THEN ''SPI''',
'    WHEN ITGROUP = ''RDM SPI Maintenance'' THEN ''VW''',
'    WHEN ITGROUP = ''RDM Vendor Web'' THEN ''SPI''',
'    ELSE ''VW''',
'  END AS L1 ',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41196037022501438)
,p_name=>'P6_FIELD_2_R'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_post_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'CASE ',
'    WHEN ITGROUP = ''RDM Components'' THEN ''M/D''',
'    WHEN ITGROUP = ''RDM INSPI'' THEN ''Scpt''',
'    WHEN ITGROUP = ''RDM SPI Maintenance'' THEN ''$''',
'    WHEN ITGROUP = ''RDM Vendor Web'' THEN ''PGR''',
'    ELSE ''$''',
'  END AS L2 ',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41196231199504188)
,p_name=>'P6_FIELD_3_R'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_post_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'CASE ',
'    WHEN ITGROUP = ''RDM Components'' THEN ''BUS''',
'    WHEN ITGROUP = ''RDM INSPI'' THEN ''PIC''',
'    WHEN ITGROUP = ''RDM SPI Maintenance'' THEN ''Guid''',
'    WHEN ITGROUP = ''RDM Vendor Web'' THEN ''P/U''',
'    ELSE ''Guid''',
'  END AS L3 ',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41196428396505503)
,p_name=>'P6_FIELD_4_R'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_post_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'CASE ',
'    WHEN ITGROUP = ''RDM Components'' THEN ''Appr''',
'    WHEN ITGROUP = ''RDM INSPI'' THEN ''DEV''',
'    WHEN ITGROUP = ''RDM SPI Maintenance'' THEN ''DEV''',
'    WHEN ITGROUP = ''RDM Vendor Web'' THEN ''DEV''',
'    ELSE ''DEV''',
'  END AS L4 ',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41196625592506814)
,p_name=>'P6_FIELD_5_R'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_post_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'CASE ',
'    WHEN ITGROUP = ''RDM Components'' THEN ''Prod''',
'    WHEN ITGROUP = ''RDM INSPI'' THEN ''DB''',
'    WHEN ITGROUP = ''RDM SPI Maintenance'' THEN ''Cweb''',
'    WHEN ITGROUP = ''RDM Vendor Web'' THEN ''MAP''',
'    ELSE ''Cweb''',
'  END AS L5 ',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41203034982624006)
,p_name=>'P6_REQUEST_DATE_L'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_pre_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'Trim(''Request Date: '' || DATE_REQ)',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41203225709628265)
,p_name=>'P6_BA_ASSIGNED_L'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
,p_pre_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'Trim(''BA Assigned: '' || BA_ASSIGNED)',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41204946400633902)
,p_name=>'P6_REQUEST_DATE_R'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_pre_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'Trim(''Request Date: '' || DATE_REQ)',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41206137989637807)
,p_name=>'P6_BA_ASSIGNED_R'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(41163545569915848)
,p_pre_element_text=>'&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT',
'Trim(''BA Assigned: '' || BA_ASSIGNED)',
'FROM VW_RPT_OPEN_ALL',
'WHERE Ticket = :P5_CHANGE_ID OR TICKET = :P5_INCIDENT_ID OR TICKET = :P5_SERVICEREQ_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49204040505591257)
,p_name=>'P6_CHANGE_ID'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
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
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49204236839592994)
,p_name=>'P6_INCIDENT_ID'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
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
 p_id=>wwv_flow_api.id(49204433604594422)
,p_name=>'P6_SERVICEREQ_ID'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(41163340375914331)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49201840963045717)
,p_name=>'Auto Print Page'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49202131105045721)
,p_event_id=>wwv_flow_api.id(49201840963045717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'<!--',
'window.print();',
'//-->',
'</script>'))
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(33364845955463187)
,p_name=>'Retired - Weekly Projects'
,p_page_mode=>'NORMAL'
,p_step_title=>'Weekly Projects'
,p_step_sub_title=>'Weekly Projects'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20150513135000'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41375222784513967)
,p_plug_name=>'Deployed RDM Requests:'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <h1><p style="text-align: left; font-size: 18px; font-family : calibri, verdana, sans-serif">Deployed RDM Requests (Components; Client Parameters; Guidelines; Timeframes; VW PGR):</p></h1><br />',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32112348052785198)
,p_name=>'Inspections:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''INS''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''INS''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32144837189375390)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Inspections'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41375440525513968)
,p_name=>'CAR:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''CAR''))',
'',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''CAR''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32141454392351078)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'CAR'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41375842897513968)
,p_name=>'CARDS:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''CRD''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''CRD''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32142240142355828)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'CARDS'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41376247000513970)
,p_name=>'Evictions:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''EVC''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''EVC''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32143036744360571)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Evictions'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41376653127513970)
,p_name=>'E&R:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''E_R''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''E_R''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32143423981363208)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Estimates and Repairs'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41377027842513971)
,p_name=>'High Risk:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''HRK''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''HRK''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32143821857366237)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'High Risk'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41377428494513972)
,p_name=>'Infrastructure:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''INF''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''INF''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32144240375370910)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Infrastructure'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41377823686513973)
,p_name=>'IT:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''IT''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''IT''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32145246342377853)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'IT'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41378251714513974)
,p_name=>'Legal:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''LEG''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''LEG''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32145633791380155)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Legal'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41378631940513974)
,p_name=>'Security:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>150
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''SEC''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''SEC''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32146639971386880)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Security'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41379034981513975)
,p_name=>'SQA:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''SQA''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''SQA''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32150025995437490)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'SQA'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41379431743513975)
,p_name=>'Training:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>170
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''TRN''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''TRN''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32150435593454821)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Training'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41379825500513975)
,p_name=>'Vendor Management:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>180
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''VEN''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''VEN''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32150832619459001)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Vendor Management'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41380245791513976)
,p_name=>'P&P:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''P_P''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''P_P''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32134635152092553)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Property Preservation'
,p_heading_alignment=>'LEFT'
,p_print_col_width=>'100'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41381042414513977)
,p_name=>'REO:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''REO''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''REO''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32146252734384270)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'REO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41381434321513981)
,p_name=>'EIM:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''EIM''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''EIM''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32142638443358166)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'EIM'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41381838365513982)
,p_name=>'ALL:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''ALL''))'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''ALL''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32141045239348593)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'All'
,p_heading_alignment=>'LEFT'
,p_print_col_width=>'100'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41382224782513982)
,p_name=>'Accounting:'
,p_parent_plug_id=>wwv_flow_api.id(41375222784513967)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''ACC''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''RDM'',''ACC''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32140252248338710)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Accounting'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41382641855513983)
,p_plug_name=>'Deployed Requests (Non-RDM):'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357144896463180)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <h1><p style="text-align: left; font-size: 18px; font-family : calibri, verdana, sans-serif">Deployed Project Requests (Non-RDM):</p></h1><br />',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
end;
/
begin
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32113730175789524)
,p_name=>'Inspections:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''INS''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''INS''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32154833298488843)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Inspections'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41382833221513983)
,p_name=>'CAR:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''CAR''))',
'',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''CAR''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32152036250469315)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'CAR'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41383246444513983)
,p_name=>'CARDS:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''CRD''))'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''CRD''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32152434339471990)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'CARDS'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41383645808513985)
,p_name=>'Evictions:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''EVC''))',
'',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''EVC''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32153241580477206)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Evictions'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41384030804513986)
,p_name=>'High Risk:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''HRK''))',
'',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''HRK''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32154048185483271)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'High Risk'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41384447324513989)
,p_name=>'E&R:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''E_R''))',
'',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''E_R''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32153628605480045)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Estimates and Repairs'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41384826775513990)
,p_name=>'Infrastructure:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''INF''))'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''INF''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32154435421485847)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Infrastructure'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41385223086513990)
,p_name=>'IT:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''IT''))'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''IT''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32155231386491585)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'IT'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41385623275513990)
,p_name=>'Legal:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''LEG''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''LEG''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32155640539494030)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Legal'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41386030989513991)
,p_name=>'Security:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>150
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''SEC''))'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''SEC''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32156834168503062)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Security'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41386424650513991)
,p_name=>'REO:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''REO''))'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''REO''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32156425227500232)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'REO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41386830886513992)
,p_name=>'P&P:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''P_P''))'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''P_P''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32156038840496426)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Property Preservation'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41387245940513993)
,p_name=>'SQA:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''SQA''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''SQA''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32157253960506024)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'SQA'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41387645737513993)
,p_name=>'Training:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>170
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''TRN''))'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''TRN''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32157652048508691)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Training'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41388046697513993)
,p_name=>'Vendor Management:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>180
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''VEN''))'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''VEN''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32158038436512499)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Vendor Management'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41388832752513994)
,p_name=>'Accounting:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''ACC''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''ACC''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32151649014466707)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Accounting'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41389248709513995)
,p_name=>'EIM:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''EIM''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''EIM''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32152843279474796)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'EIM'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41389630997513995)
,p_name=>'ALL:'
,p_parent_plug_id=>wwv_flow_api.id(41382641855513983)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''ALL''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_WEEKLY_PROJECTS.F_GET_PIT_REPORTING_INFO(''NON-RDM'',''ALL''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(32151250925464019)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'All'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41424036791133869)
,p_name=>'Introduction'
,p_template=>wwv_flow_api.id(33357144896463180)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''IT delivered '' || COUNT(*) || '' requests ('' || TO_CHAR(TRUNC(SYSDATE-7), ''MM-DD-YYYY'') || '' to '' || TO_CHAR(TRUNC(SYSDATE-1), ''MM-DD-YYYY'') || '') between SPI component changes, client parameters, infrastructure, and project.'' AS Deployments',
'FROM( SELECT ',
'      CASE UPPER(SUBSTR(A.ITGROUP, 1, 3))',
'      WHEN ''RDM'' THEN ''RDM''',
'      ELSE ''(NON-RDM)''',
'      END AS GRP',
'     FROM PRJ_PRIORITY_ALL A',
'      LEFT JOIN VW_INC_REQ_COMBINE B ON (A.FR_SYSTEM = B.SYSTEM AND A.REQ_ID = B.REQ_ID)',
'    WHERE TRUNC(A.EDD) BETWEEN TRUNC(SYSDATE-7) AND TRUNC(SYSDATE-1)',
'      AND A.STATUS = ''Completed'') ',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41424853781137682)
,p_query_column_id=>1
,p_column_alias=>'DEPLOYMENTS'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_css_style=>'font-weight:bold; font-size: 16px; color: #1589FF;'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'100'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41766623464415600)
,p_name=>'Introduction Future'
,p_template=>wwv_flow_api.id(33357144896463180)
,p_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''IT is scheduled to deliver '' || COUNT(*) || '' requests in the next week ('' || TO_CHAR(TRUNC(SYSDATE), ''MM-DD-YYYY'') || '' to '' || TO_CHAR(TRUNC(SYSDATE+6), ''MM-DD-YYYY'') || '').'' AS Deployments',
'FROM( SELECT CASE UPPER(SUBSTR(A.ITGROUP, 1, 3))',
'                  WHEN ''RDM'' THEN ''RDM''',
'                  ELSE ''(NON-RDM)''',
'             END AS GRP',
'        FROM PRJ_PRIORITY_ALL A',
'        LEFT JOIN VW_INC_REQ_COMBINE B ON (A.FR_SYSTEM = B.SYSTEM AND A.REQ_ID = B.REQ_ID)',
'       WHERE TRUNC(A.EDD) >= TRUNC(SYSDATE)',
'         AND TRUNC(A.EDD) <= TRUNC(SYSDATE)+6',
'         AND A.STATUS <> ''Completed'' ',
'    )',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
end;
/
begin
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41766852970415601)
,p_query_column_id=>1
,p_column_alias=>'DEPLOYMENTS'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_css_style=>'font-weight:bold; font-size: 16px;  color: #1589FF;'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'100'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41763725963971602)
,p_name=>'Infrastructure:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>390
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''INF''))',
'',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''INF''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41764030698971614)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Infrastructure'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
,p_print_col_width=>'100'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41767747284517025)
,p_name=>'ALL:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>240
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''ALL''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''ALL''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41768040060517026)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'All'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41768736118532798)
,p_name=>'Accounting:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>250
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''ACC''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''ACC''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41769027150532799)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Accounting'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41769140274533953)
,p_name=>'CAR:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>270
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''CAR''))',
'',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''CAR''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41769439521533954)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'CAR'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41769542351534536)
,p_name=>'CARDS:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>290
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''CRD''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''CRD''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41769845706534537)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'CARDS'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41769944429535130)
,p_name=>'EIM:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>310
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''EIM''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''EIM''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41770251892535132)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'EIM'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41770346853535838)
,p_name=>'Evictions:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>330
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''EVC''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''EVC''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41770648186535839)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Evictions'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41770749624536698)
,p_name=>'E&R:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>350
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''E_R''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''E_R''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41771034588536700)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Estimates and Repairs'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41771152741537557)
,p_name=>'High Risk:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>370
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''HRK''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''HRK''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41771443866537559)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'High Risk'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41771523436538510)
,p_name=>'Inspections:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>400
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''INS''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''INS''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41771843252538511)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Inspections'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41771926206539352)
,p_name=>'IT:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>420
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''IT''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''IT''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41772229654539353)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'IT'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41772329323540222)
,p_name=>'Legal:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>440
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''LEG''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''LEG''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41772638932540224)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Legal'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41772731747540921)
,p_name=>'P&P:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>460
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''P_P''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''P_P''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41773035226540922)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Property Preservation'
,p_heading_alignment=>'LEFT'
,p_print_col_width=>'100'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41773133825541504)
,p_name=>'REO:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>480
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''REO''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''REO''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41773441411541506)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'REO'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41773535556542060)
,p_name=>'Security:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>500
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''SEC''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''SEC''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41773824721542062)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Security'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41773937634542676)
,p_name=>'SQA:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>520
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''SQA''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''SQA''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41774230906542677)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'SQA'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41774340058543305)
,p_name=>'Training:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>540
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''TRN''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''TRN''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41774627200543307)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Training'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(41774742482544090)
,p_name=>'Vendor Management:'
,p_parent_plug_id=>wwv_flow_api.id(41766623464415600)
,p_template=>wwv_flow_api.id(33356941403463180)
,p_display_sequence=>560
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''VEN''))',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'SELECT TITLE_LINE FROM TABLE ( PRJ_FUTURE_PROJECTS.F_GET_PIT_REPORT_INFO(''VEN''))'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(41775023493544091)
,p_query_column_id=>1
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>1
,p_column_heading=>'Vendor Management'
,p_heading_alignment=>'LEFT'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(33364845955463187)
,p_name=>'Scheduled Releases'
,p_page_mode=>'NORMAL'
,p_step_title=>'Scheduled Releases'
,p_step_sub_title=>'Scheduled Releases'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20150513134908'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43898643604496047)
,p_plug_name=>' IT Releases:'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33356941403463180)
,p_plug_display_sequence=>390
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(43937747315657588)
,p_name=>'Releases'
,p_template=>wwv_flow_api.id(33357144896463180)
,p_display_sequence=>400
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM VW_IT_RELEASE'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(33359944627463182)
,p_query_num_rows=>200
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43965942133931329)
,p_query_column_id=>1
,p_column_alias=>'ROWNUM'
,p_column_display_sequence=>4
,p_column_heading=>'Rownum'
,p_hidden_column=>'Y'
,p_print_col_width=>'24'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43938052160657590)
,p_query_column_id=>2
,p_column_alias=>'RELEASE_MTH'
,p_column_display_sequence=>1
,p_column_heading=>'<SPAN STYLE="font-size: 16px">Release Month</SPAN>'
,p_use_as_row_header=>'N'
,p_column_css_style=>'font-weight:bold; font-size: 14px; color: #1589FF;'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'24'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43965628774922296)
,p_query_column_id=>3
,p_column_alias=>'ITGROUP'
,p_column_display_sequence=>2
,p_column_heading=>'<SPAN STYLE="font-size: 16px">Application Group</SPAN>'
,p_use_as_row_header=>'N'
,p_column_css_style=>'font-weight:bold;'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'24'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43938242684657592)
,p_query_column_id=>4
,p_column_alias=>'UPDATE_LINE'
,p_column_display_sequence=>3
,p_column_heading=>'<SPAN STYLE="font-size: 16px">Summary</SPAN>'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'24'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(33364845955463187)
,p_name=>'Weekly Project Report'
,p_page_mode=>'NORMAL'
,p_step_title=>'Weekly Project Report'
,p_step_sub_title=>'Weekly Projects Report'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20150619122344'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33861829207186293)
,p_name=>'Introduction'
,p_template=>wwv_flow_api.id(33357144896463180)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''IT delivered '' || COUNT(*) || '' requests ('' || TO_CHAR(TRUNC(SYSDATE-7), ''MM-DD-YYYY'') || '' to '' || TO_CHAR(TRUNC(SYSDATE-1), ''MM-DD-YYYY'') || '') between SPI component changes, client parameters, infrastructure, and project.'' AS Deployments',
'FROM( SELECT ',
'      CASE UPPER(SUBSTR(A.ITGROUP, 1, 3))',
'      WHEN ''RDM'' THEN ''RDM''',
'      ELSE ''(NON-RDM)''',
'      END AS GRP',
'     FROM PRJ_PRIORITY_ALL A',
'      LEFT JOIN VW_INC_REQ_COMBINE B ON (A.FR_SYSTEM = B.SYSTEM AND A.REQ_ID = B.REQ_ID)',
'    WHERE TRUNC(A.EDD) BETWEEN TRUNC(SYSDATE-7) AND TRUNC(SYSDATE-1)',
'      AND A.STATUS = ''Completed''',
'      AND INSTR(A.SUMMARY, ''Standard Change'') = 0',
'    ) ',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33862016451186294)
,p_query_column_id=>1
,p_column_alias=>'DEPLOYMENTS'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_css_style=>'font-weight:bold; font-size: 18px; color: #1589FF;'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'100'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33862102447186294)
,p_name=>'Introduction Future'
,p_template=>wwv_flow_api.id(33357144896463180)
,p_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ''IT is scheduled to deliver '' || COUNT(*) || '' requests in the next week ('' || TO_CHAR(TRUNC(SYSDATE), ''MM-DD-YYYY'') || '' to '' || TO_CHAR(TRUNC(SYSDATE+6), ''MM-DD-YYYY'') || '').'' AS Deployments',
'FROM( SELECT CASE UPPER(SUBSTR(A.ITGROUP, 1, 3))',
'                  WHEN ''RDM'' THEN ''RDM''',
'                  ELSE ''(NON-RDM)''',
'             END AS GRP',
'        FROM PRJ_PRIORITY_ALL A',
'        LEFT JOIN VW_INC_REQ_COMBINE B ON (A.FR_SYSTEM = B.SYSTEM AND A.REQ_ID = B.REQ_ID)',
'       WHERE TRUNC(A.EDD) >= TRUNC(SYSDATE)',
'         AND TRUNC(A.EDD) <= TRUNC(SYSDATE)+6',
'         AND A.STATUS NOT IN (''Completed'', ''Cancelled'', ''Denied'', ''Deployed'')',
'         AND INSTR (A.SUMMARY, ''Standard Change'') = 0',
'    )',
'',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>1
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33862318855186294)
,p_query_column_id=>1
,p_column_alias=>'DEPLOYMENTS'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_css_style=>'font-weight:bold; font-size: 18px;  color: #1589FF;'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'100'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33875433712221767)
,p_name=>'Completed'
,p_template=>wwv_flow_api.id(33357144896463180)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM VW_IT_COMPLETED_7_DAY'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(33359944627463182)
,p_query_num_rows=>200
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33875617527221767)
,p_query_column_id=>1
,p_column_alias=>'ROWNUM'
,p_column_display_sequence=>1
,p_column_heading=>'Rownum'
,p_hidden_column=>'Y'
,p_print_col_width=>'24'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33876415621228651)
,p_query_column_id=>2
,p_column_alias=>'AREA'
,p_column_display_sequence=>2
,p_column_heading=>'<SPAN STYLE="font-size: 16px">Application Team</SPAN>'
,p_use_as_row_header=>'N'
,p_column_css_style=>' font-weight:bold; font-size: 14px; color: #1589FF;'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'24'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33876534559228652)
,p_query_column_id=>3
,p_column_alias=>'SVC_LINE'
,p_column_display_sequence=>3
,p_column_heading=>'<SPAN STYLE="font-size: 16px">Service Line</SPAN>'
,p_use_as_row_header=>'N'
,p_column_css_style=>'font-weight:bold; '
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'24'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33876609759228652)
,p_query_column_id=>4
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>4
,p_column_heading=>'<SPAN STYLE="font-size: 16px">Project Summary</SPAN>'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'24'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33879119953274576)
,p_name=>'Future'
,p_template=>wwv_flow_api.id(33357144896463180)
,p_display_sequence=>170
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM VW_IT_FUTURE_7_DAY'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(33359944627463182)
,p_query_num_rows=>200
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33879312917274577)
,p_query_column_id=>1
,p_column_alias=>'ROWNUM'
,p_column_display_sequence=>1
,p_column_heading=>'Rownum'
,p_hidden_column=>'Y'
,p_print_col_width=>'24'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33879414303274577)
,p_query_column_id=>2
,p_column_alias=>'AREA'
,p_column_display_sequence=>2
,p_column_heading=>'<SPAN STYLE="font-size: 16px">Application Team</SPAN>'
,p_use_as_row_header=>'N'
,p_column_css_style=>' font-weight:bold; font-size: 14px; color: #1589FF;'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'24'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33879523785274578)
,p_query_column_id=>3
,p_column_alias=>'SVC_LINE'
,p_column_display_sequence=>3
,p_column_heading=>'<SPAN STYLE="font-size: 16px">Service Line</SPAN>'
,p_use_as_row_header=>'N'
,p_column_css_style=>'font-weight:bold; '
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'24'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(33879605175274578)
,p_query_column_id=>4
,p_column_alias=>'TITLE_LINE'
,p_column_display_sequence=>4
,p_column_heading=>'<SPAN STYLE="font-size: 16px">Project Summary</SPAN>'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_print_col_width=>'24'
);
end;
/
prompt --application/pages/page_00111
begin
wwv_flow_api.create_page(
 p_id=>111
,p_user_interface_id=>wwv_flow_api.id(33364845955463187)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(33355429614463177)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'TEHMANN'
,p_last_upd_yyyymmddhh24miss=>'20131219083350'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34920841753168543)
,p_plug_name=>'Login Page'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33357949179463181)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34921440981168545)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(34920841753168543)
,p_button_name=>'P111_LOGIN'
,p_button_static_id=>'P111_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33363449191463184)
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
 p_id=>wwv_flow_api.id(34921053420168544)
,p_name=>'P111_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(34920841753168543)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34921243296168544)
,p_name=>'P111_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(34920841753168543)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(33363153233463184)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34921850283168547)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P111_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34921634361168545)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P111_USERNAME,',
'    p_password => :P111_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34922235170168547)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37416750100796537)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Logging'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'INSERT INTO PRJ_USER_LOG (USER_ID, LOG_DT)',
'VALUES (:APP_USER, SYSDATE);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'USER_IS_NOT_PUBLIC_USER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34922033841168547)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P111_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00150
begin
wwv_flow_api.create_page(
 p_id=>150
,p_user_interface_id=>wwv_flow_api.id(33364845955463187)
,p_name=>'LOGIN'
,p_page_mode=>'NORMAL'
,p_step_title=>'LOGIN'
,p_html_page_onload=>' '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_welcome_text=>' '
,p_html_page_header=>' '
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20140221150336'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42544339640934032)
,p_plug_name=>'Login Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42544841891934038)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(42544339640934032)
,p_button_name=>'P150_LOGIN'
,p_button_static_id=>'P150_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33363635568463185)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42545429951972123)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(42544339640934032)
,p_button_name=>'P150_TEST'
,p_button_static_id=>'P150_TEST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(9543160759456318)
,p_button_image_alt=>'Test'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(42544424371934034)
,p_branch_name=>'GO_TO_HOMEPAGE'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
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
'AND PASSWORD = UPPER(:P150_PASSWORD)',
'AND NEW_PW_FLAG IS NULL'))
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(42544528683934036)
,p_branch_name=>'GO_TO_NEW_PW'
,p_branch_action=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'',
'FROM DMD_LTR_EMP_SECURITY',
'',
'WHERE LOGIN = UPPER(:P150_USERNAME)',
'AND PASSWORD = UPPER(:P150_PASSWORD)',
'AND STATUS = ''ACTIVE''',
'AND NEW_PW_FLAG = 1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42544640833934037)
,p_name=>'P150_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42544748848934037)
,p_name=>'P150_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_use_cache_before_default=>'NO'
,p_prompt=>'Password:'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>20
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42544929251934038)
,p_validation_name=>'P150_USER_PW'
,p_validation_sequence=>10
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT LOGIN',
'',
'FROM DMD_LTR_EMP_SECURITY',
'',
'WHERE LOGIN = UPPER(:P150_USERNAME)',
'AND STATUS = ''ACTIVE''',
'AND PASSWORD <> UPPER(TRIM(:P150_PASSWORD))'))
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
,p_user_interface_id=>wwv_flow_api.id(33364845955463187)
,p_name=>'New Password'
,p_page_mode=>'NORMAL'
,p_step_title=>'New Password'
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
,p_last_upd_yyyymmddhh24miss=>'20140221152354'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42551552163070551)
,p_plug_name=>'Password Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(42551645415070551)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(42552544683089894)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(42551645415070551)
,p_button_name=>'P155_LOGIN'
,p_button_static_id=>'P155_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33363635568463185)
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(42551743654070552)
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
 p_id=>wwv_flow_api.id(42551833646070552)
,p_name=>'P155_NEW_PASSWORD'
,p_is_required=>true
,p_item_sequence=>10
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
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42551942095070552)
,p_name=>'P155_CONFIRM_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
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
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42552136750070552)
,p_name=>'P155_PAGE_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(42551645415070551)
,p_prompt=>' Please enter a new password.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42552829231094912)
,p_name=>'LOGIN'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(42552544683089894)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42553133782094912)
,p_event_id=>wwv_flow_api.id(42552829231094912)
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
,p_user_interface_id=>wwv_flow_api.id(33364845955463187)
,p_name=>'Login Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login Page'
,p_step_sub_title=>'Login Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(33355653691463178)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'TBRYANT'
,p_last_upd_yyyymmddhh24miss=>'20150410072513'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45574336288112416)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33356941403463180)
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
 p_id=>wwv_flow_api.id(45575926534112432)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(33356941403463180)
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
 p_id=>wwv_flow_api.id(45575552860112429)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(45574336288112416)
,p_button_name=>'P175_LOGIN'
,p_button_static_id=>'P175_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(33363449191463184)
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
 p_id=>wwv_flow_api.id(45576851943112437)
,p_branch_name=>'GO_TO_HOMEPAGE'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(45575552860112429)
,p_branch_sequence=>50
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45574521762112422)
,p_name=>'P175_USERNAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(45574336288112416)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application user name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45575047816112429)
,p_name=>'P175_PASSWORD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(45574336288112416)
,p_prompt=>'&nbspPassword'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(48975924457953103)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application password.'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45575746561112430)
,p_name=>'P175_APP_TITLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(45574336288112416)
,p_prompt=>'<font face="Agfa Rotis Semi Serif" size="5" color="gray">&nbsp&nbsp&nbsp&nbsp&nbsp&nbspProject Incident Tracker</font>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(33363031694463184)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45576331381112436)
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
 p_id=>wwv_flow_api.id(45576144280112434)
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
 p_id=>wwv_flow_api.id(45576527099112436)
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
