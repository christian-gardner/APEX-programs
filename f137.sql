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
,p_default_application_id=>137
,p_default_owner=>'RDM'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 137 - Sample Collections
--
-- Application Export:
--   Application:     137
--   Name:            Sample Collections
--   Date and Time:   12:32 Wednesday March 15, 2017
--   Exported By:     CHRISTIAN.GARDNER
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     69427033981319
--

-- Application Statistics:
--   Pages:                     17
--     Items:                   52
--     Validations:              1
--     Processes:               30
--     Regions:                 56
--     Buttons:                 34
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--       Items:                  1
--     Navigation:
--       Tab Sets:               1
--         Tabs:                10
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:             10
--       NavBar Entries:         3
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                17
--         Region:              22
--         Label:                7
--         List:                14
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               7
--         Report:              11
--       LOVs:                   3
--       Plug-ins:               2
--     Globalization:
--     Reports:
--   Supporting Objects:  Included
--     Install scripts:          4

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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,137)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'RDM')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Sample Collections')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SAMPLECOLLECTIONS')
,p_application_group=>18541213629137627
,p_application_group_name=>'Sample Applications'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20150724092545'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'BROWSER'
,p_date_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'1.0.2 -> 1.0.3: Added "SQL Source" show/hide region to "Collection on EMP" page.',
'1.0.3 -> 1.0.4: Changed Authentication scheme to use new "ORA_WWV_PACKAGED_APPLICATIONS" cookie'))
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(8084703224602873796)
,p_logout_url=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:101'
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Sample Collections'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'1.1.5'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable.'
,p_exact_substitutions_only=>'Y'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'N'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APPLICATION_ICON'
,p_substitution_value_01=>'oracle_platform_white.gif'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150724092545'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(696413527537662440)
,p_name=>'admin options'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(696413724271662445)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Reset Data'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'This application uses the sample EBA_DEMO_CS_EMP table, use this link to reset the table to the original specification.'
,p_list_text_02=>'formIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(696414018200662446)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Remove Collections'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'This application creates Oracle APEX collections.  Use this link to drop all collections resetting this application to factory defaults.'
,p_list_text_02=>'formIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(696421924261775104)
,p_name=>'Collection Examples'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(696422121016775104)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Use Case 1'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Creating a Basic Collection.  Create a user defined collection name on a simple Employee table structure.'
,p_list_text_02=>'formIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(696422419040775104)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Use Case 2'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Populate a collection from a sample Employees table, update the collection, and then synchronize the data in the collection with the base table.'
,p_list_text_02=>'formIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(696427214813835696)
,p_list_item_display_sequence=>22
,p_list_item_link_text=>'API Syntax'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP:::'
,p_list_text_01=>'View Oracle APEX API examples that you can use in your own application with minor changes.'
,p_list_text_02=>'formIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(696422714070775104)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_text_01=>'Reset tables used by this sample application to "factory defaults".  Remove all collections create returning your current session to "factory default" condition.'
,p_list_text_02=>'formIcon'
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
 p_id=>wwv_flow_api.id(113653799265148)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(499142032283014970)
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
 p_id=>wwv_flow_api.id(696413417118652313)
,p_icon_sequence=>30
,p_icon_subtext=>'Administration'
,p_icon_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(8170441892658787143)
,p_icon_sequence=>35
,p_icon_subtext=>'Help'
,p_icon_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'101'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(8170442607203791257)
,p_icon_sequence=>40
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'101'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
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
 p_id=>wwv_flow_api.id(8082460581481703971)
,p_name=>'FSP_AFTER_LOGIN_URL'
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
 p_id=>wwv_flow_api.id(696417214346706151)
,p_tab_set=>'TS1'
,p_tab_sequence=>1
,p_tab_name=>'Home'
,p_tab_text=>'Home'
,p_tab_step=>100
,p_tab_also_current_for_pages=>'100,39,35,36'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(8244441575803410281)
,p_tab_set=>'TS1'
,p_tab_sequence=>1
,p_tab_name=>'T_COLLECTION'
,p_tab_text=>'Use Case 1'
,p_tab_step=>1
,p_tab_also_current_for_pages=>'8'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(8244441952041410286)
,p_tab_set=>'TS1'
,p_tab_sequence=>2
,p_tab_name=>'T_PAGE_2'
,p_tab_text=>'Create Collection'
,p_tab_step=>2
,p_tab_plsql_condition=>'2'
,p_display_condition_type=>'CURRENT_PAGE_EQUALS_CONDITION'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(8244442357099410286)
,p_tab_set=>'TS1'
,p_tab_sequence=>3
,p_tab_name=>'T_PAGE_3'
,p_tab_text=>'Modify Collection'
,p_tab_step=>3
,p_tab_plsql_condition=>'3'
,p_display_condition_type=>'CURRENT_PAGE_EQUALS_CONDITION'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(8244442763164410288)
,p_tab_set=>'TS1'
,p_tab_sequence=>4
,p_tab_name=>'T_PAGE_4'
,p_tab_text=>'Update Member'
,p_tab_step=>4
,p_tab_plsql_condition=>'4'
,p_display_condition_type=>'CURRENT_PAGE_EQUALS_CONDITION'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(8245043278880339428)
,p_tab_set=>'TS1'
,p_tab_sequence=>15
,p_tab_name=>'T_COLLECTION ON SCOTT.EMP'
,p_tab_text=>'Use Case 2'
,p_tab_step=>6
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(8245152854491692155)
,p_tab_set=>'TS1'
,p_tab_sequence=>16
,p_tab_name=>'T_ADD/EDIT COLLECTION MEMBER'
,p_tab_text=>'Add/Edit Collection Member'
,p_tab_step=>7
,p_tab_plsql_condition=>'7'
,p_display_condition_type=>'CURRENT_PAGE_EQUALS_CONDITION'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(8244443179187410288)
,p_tab_set=>'TS1'
,p_tab_sequence=>20
,p_tab_name=>'T_PAGE_5'
,p_tab_text=>'About this Application'
,p_tab_step=>5
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(677405043471009517)
,p_tab_set=>'TS1'
,p_tab_sequence=>30
,p_tab_name=>'API Examples'
,p_tab_text=>'API Examples'
,p_tab_step=>12
,p_tab_also_current_for_pages=>'12'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(19268032153467799)
,p_tab_set=>'TS1'
,p_tab_sequence=>40
,p_tab_name=>'Create Rebill'
,p_tab_text=>'Create Rebill'
,p_tab_step=>9
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
 p_id=>wwv_flow_api.id(708495325042738749)
,p_lov_name=>'DEPTNO LOV'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select distinct deptno d, deptno r',
'  from eba_demo_cs_emp',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(708501219004741532)
,p_lov_name=>'JOB LOV'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'  from eba_demo_cs_emp',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(708471944076566782)
,p_lov_name=>'STATUS LOV'
,p_lov_query=>'.'||wwv_flow_api.id(708471944076566782)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(708472218962566782)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Deleted'
,p_lov_return_value=>'D'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(708472515688566785)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'New'
,p_lov_return_value=>'N'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(708472817128566785)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Original'
,p_lov_return_value=>'O'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(708473133603566785)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Updated'
,p_lov_return_value=>'U'
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
prompt --application/shared_components/navigation/breadcrumbs/breadcrumbs
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(696427940593883909)
,p_name=>'breadcrumbs'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19270500133827174)
,p_short_name=>'Edit ReBill Request'
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(696428325921886068)
,p_parent_id=>wwv_flow_api.id(696428711709887893)
,p_short_name=>'Use Case 1'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(696428711709887893)
,p_short_name=>'Home'
,p_link=>'f?p=&FLOW_ID.:100:&SESSION.'
,p_page_id=>100
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(696429435838891232)
,p_parent_id=>wwv_flow_api.id(696428325921886068)
,p_short_name=>'Modify Collection'
,p_link=>'f?p=&FLOW_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(696429814827893471)
,p_parent_id=>wwv_flow_api.id(696428325921886068)
,p_short_name=>'Create Collection'
,p_link=>'f?p=&FLOW_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(696430319785896037)
,p_parent_id=>wwv_flow_api.id(696428711709887893)
,p_short_name=>'Use Case 2'
,p_link=>'f?p=&FLOW_ID.:6:&SESSION.'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(696430718558898064)
,p_parent_id=>wwv_flow_api.id(696430319785896037)
,p_short_name=>'Add/Edit Collection Member'
,p_link=>'f?p=&FLOW_ID.:7:&SESSION.'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(696431632181902562)
,p_parent_id=>wwv_flow_api.id(696428711709887893)
,p_short_name=>'API Examples'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(696433618002915349)
,p_parent_id=>wwv_flow_api.id(696434312472918687)
,p_short_name=>'Reset Data'
,p_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
,p_page_id=>39
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(696434312472918687)
,p_parent_id=>wwv_flow_api.id(696428711709887893)
,p_short_name=>'Administration'
,p_link=>'f?p=&FLOW_ID.:35:&SESSION.'
,p_page_id=>35
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602070118988356842)
,p_theme_id=>25
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD# id="uLogin">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      <div id="uLoginContainer">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uSingleAlertMessage red" id="uNotificationMessage">',
'	<p>#MESSAGE#</p>',
'	<a href="javascript:void(0)" class="closeMessage" onclick="apex.jQuery(''#uNotificationMessage'').remove();"></a>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602070427521356844)
,p_page_template_id=>wwv_flow_api.id(602070118988356842)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602070741836356844)
,p_theme_id=>25
,p_name=>'No Tabs - Left Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideLeftCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #REGION_POSITION_05#',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'      <div class="uFooterBG">',
'        <div class="uLeft"></div>',
'        <div class="uRight"></div>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602071126516356845)
,p_page_template_id=>wwv_flow_api.id(602070741836356844)
,p_name=>'Main Content'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602071436579356845)
,p_page_template_id=>wwv_flow_api.id(602070741836356844)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602071827624356846)
,p_page_template_id=>wwv_flow_api.id(602070741836356844)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602072229200356847)
,p_page_template_id=>wwv_flow_api.id(602070741836356844)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602072640740356847)
,p_page_template_id=>wwv_flow_api.id(602070741836356844)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602072927895356847)
,p_theme_id=>25
,p_name=>'No Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_8" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602073325024356848)
,p_page_template_id=>wwv_flow_api.id(602072927895356847)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602073735982356848)
,p_page_template_id=>wwv_flow_api.id(602072927895356847)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602074134470356848)
,p_page_template_id=>wwv_flow_api.id(602072927895356847)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602074527461356848)
,p_page_template_id=>wwv_flow_api.id(602072927895356847)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602074938776356851)
,p_page_template_id=>wwv_flow_api.id(602072927895356847)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602075343841356851)
,p_page_template_id=>wwv_flow_api.id(602072927895356847)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITOIN_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602075634321356851)
,p_theme_id=>25
,p_name=>'No Tabs - No Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></a>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602076013707356853)
,p_page_template_id=>wwv_flow_api.id(602075634321356851)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602076432085356853)
,p_page_template_id=>wwv_flow_api.id(602075634321356851)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602076817180356853)
,p_page_template_id=>wwv_flow_api.id(602075634321356851)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602077234627356853)
,p_page_template_id=>wwv_flow_api.id(602075634321356851)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602077522200356853)
,p_theme_id=>25
,p_name=>'No Tabs - Right Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideRightCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602077941280356854)
,p_page_template_id=>wwv_flow_api.id(602077522200356853)
,p_name=>'Main Content'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602078321336356854)
,p_page_template_id=>wwv_flow_api.id(602077522200356853)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602078718181356854)
,p_page_template_id=>wwv_flow_api.id(602077522200356853)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602079128896356854)
,p_page_template_id=>wwv_flow_api.id(602077522200356853)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602079535022356855)
,p_page_template_id=>wwv_flow_api.id(602077522200356853)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602079834192356855)
,p_theme_id=>25
,p_name=>'One Level Tabs - Content Frame'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'initContentFrameTabs();'
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uRegion uRegionNoPadding clearfix uRegionFrame">',
'      <div class="uRegionHeading">',
'        <h1>#TITLE#</h1>',
'        <span class="uButtonContainer">',
'        #REGION_POSITION_02#',
'        </span>',
'      </div>',
'      <div class="uFrameContent">',
'        <div class="uFrameMain">',
'            #BODY#',
'        </div>',
'        <div class="uFrameSide">',
'          <div class="apex_cols apex_span_2 alpha omega">',
'            #REGION_POSITION_03#',
'          </div>',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_sidebar_def_reg_pos=>'BODY_3'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>10
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602080230334356857)
,p_page_template_id=>wwv_flow_api.id(602079834192356855)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602080629107356857)
,p_page_template_id=>wwv_flow_api.id(602079834192356855)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602081015443356857)
,p_page_template_id=>wwv_flow_api.id(602079834192356855)
,p_name=>'Content Frame Buttons'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602081413439356857)
,p_page_template_id=>wwv_flow_api.id(602079834192356855)
,p_name=>'Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602081838944356857)
,p_page_template_id=>wwv_flow_api.id(602079834192356855)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602082231219356857)
,p_page_template_id=>wwv_flow_api.id(602079834192356855)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602082637077356857)
,p_page_template_id=>wwv_flow_api.id(602079834192356855)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602083019793356858)
,p_page_template_id=>wwv_flow_api.id(602079834192356855)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602083330858356858)
,p_theme_id=>25
,p_name=>'One Level Tabs - Left Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideLeftCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602083738963356859)
,p_page_template_id=>wwv_flow_api.id(602083330858356858)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602084116294356859)
,p_page_template_id=>wwv_flow_api.id(602083330858356858)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602084526514356859)
,p_page_template_id=>wwv_flow_api.id(602083330858356858)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602084915667356859)
,p_page_template_id=>wwv_flow_api.id(602083330858356858)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602085311953356859)
,p_page_template_id=>wwv_flow_api.id(602083330858356858)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602085737051356860)
,p_page_template_id=>wwv_flow_api.id(602083330858356858)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602086139268356860)
,p_page_template_id=>wwv_flow_api.id(602083330858356858)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602086438731356860)
,p_theme_id=>25
,p_name=>'One Level Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_8" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602086834503356860)
,p_page_template_id=>wwv_flow_api.id(602086438731356860)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602087216733356861)
,p_page_template_id=>wwv_flow_api.id(602086438731356860)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602087632775356861)
,p_page_template_id=>wwv_flow_api.id(602086438731356860)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITON_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602088019287356861)
,p_page_template_id=>wwv_flow_api.id(602086438731356860)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITON_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602088417384356861)
,p_page_template_id=>wwv_flow_api.id(602086438731356860)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITON_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602088842757356861)
,p_page_template_id=>wwv_flow_api.id(602086438731356860)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITON_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602089223449356861)
,p_page_template_id=>wwv_flow_api.id(602086438731356860)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITON_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602089637719356862)
,p_page_template_id=>wwv_flow_api.id(602086438731356860)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITON_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602089923657356862)
,p_theme_id=>25
,p_name=>'One Level Tabs - No Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'class="regionColumns"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602090334289356863)
,p_page_template_id=>wwv_flow_api.id(602089923657356862)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602090740437356863)
,p_page_template_id=>wwv_flow_api.id(602089923657356862)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602091122607356864)
,p_page_template_id=>wwv_flow_api.id(602089923657356862)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602091525966356864)
,p_page_template_id=>wwv_flow_api.id(602089923657356862)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602091929651356865)
,p_page_template_id=>wwv_flow_api.id(602089923657356862)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602092332970356866)
,p_page_template_id=>wwv_flow_api.id(602089923657356862)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602092617152356866)
,p_theme_id=>25
,p_name=>'One Level Tabs - Right Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideRightCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'// show / hide grid',
'function showGrid() {',
'  console.log(''showing grid'');',
'  apex.jQuery(''.apex_grid_container'').addClass(''showGrid'');',
'};',
'function hideGrid() {',
'  console.log(''hiding grid'');',
'  apex.jQuery(''.apex_grid_container'').removeClass(''showGrid'');',
'};',
'console.log(''grid debug'');',
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602093029266356867)
,p_page_template_id=>wwv_flow_api.id(602092617152356866)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602093438837356867)
,p_page_template_id=>wwv_flow_api.id(602092617152356866)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602093831509356867)
,p_page_template_id=>wwv_flow_api.id(602092617152356866)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602094229402356867)
,p_page_template_id=>wwv_flow_api.id(602092617152356866)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602094612981356867)
,p_page_template_id=>wwv_flow_api.id(602092617152356866)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602095018604356867)
,p_page_template_id=>wwv_flow_api.id(602092617152356866)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602095429796356867)
,p_page_template_id=>wwv_flow_api.id(602092617152356866)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602095729549356867)
,p_theme_id=>25
,p_name=>'One Level Tabs - Wizard Page'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'loadWizardTrain();'
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <div class="cWizard">',
'      <div class="cWizardHeader">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="cWizardContentContainer">',
'        <div class="cWizardContent">',
'            #BODY#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #REGION_POSITION_05#',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602096138788356869)
,p_page_template_id=>wwv_flow_api.id(602095729549356867)
,p_name=>'Wizard Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>11
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602096531552356869)
,p_page_template_id=>wwv_flow_api.id(602095729549356867)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602096940578356870)
,p_page_template_id=>wwv_flow_api.id(602095729549356867)
,p_name=>'Wizard Header'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602097322047356870)
,p_page_template_id=>wwv_flow_api.id(602095729549356867)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602097741726356870)
,p_page_template_id=>wwv_flow_api.id(602095729549356867)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602098142604356870)
,p_page_template_id=>wwv_flow_api.id(602095729549356867)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602098512227356870)
,p_page_template_id=>wwv_flow_api.id(602095729549356867)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602098833972356871)
,p_theme_id=>25
,p_name=>'Popup'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD# id="uPopup">',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602099240506356872)
,p_page_template_id=>wwv_flow_api.id(602098833972356871)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602099515333356872)
,p_theme_id=>25
,p_name=>'Printer Friendly'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD# class="printerFriendly">',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>5
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></a>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602099943699356873)
,p_page_template_id=>wwv_flow_api.id(602099515333356872)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602100320525356873)
,p_page_template_id=>wwv_flow_api.id(602099515333356872)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602100729147356873)
,p_page_template_id=>wwv_flow_api.id(602099515333356872)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602101118041356873)
,p_page_template_id=>wwv_flow_api.id(602099515333356872)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602101412178356873)
,p_theme_id=>25
,p_name=>'Two Level Tabs - Left Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<div class="uParentTabs">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <ul>',
'        #PARENT_TAB_CELLS#',
'      </ul>',
'    </div>',
'  </div>  ',
'</div>',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideLeftCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602101821687356875)
,p_page_template_id=>wwv_flow_api.id(602101412178356873)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602102243595356875)
,p_page_template_id=>wwv_flow_api.id(602101412178356873)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602102619965356875)
,p_page_template_id=>wwv_flow_api.id(602101412178356873)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602103023870356875)
,p_page_template_id=>wwv_flow_api.id(602101412178356873)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602103429072356876)
,p_page_template_id=>wwv_flow_api.id(602101412178356873)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602103821268356876)
,p_page_template_id=>wwv_flow_api.id(602101412178356873)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602104236174356876)
,p_page_template_id=>wwv_flow_api.id(602101412178356873)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602104515018356876)
,p_theme_id=>25
,p_name=>'Two Level Tabs - Left and Right Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<div class="uParentTabs">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <ul>',
'        #PARENT_TAB_CELLS#',
'      </ul>',
'    </div>',
'  </div>  ',
'</div>',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_8" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602104925057356877)
,p_page_template_id=>wwv_flow_api.id(602104515018356876)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602105334268356877)
,p_page_template_id=>wwv_flow_api.id(602104515018356876)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602105713992356877)
,p_page_template_id=>wwv_flow_api.id(602104515018356876)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITON_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602106127248356877)
,p_page_template_id=>wwv_flow_api.id(602104515018356876)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITON_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602106515378356877)
,p_page_template_id=>wwv_flow_api.id(602104515018356876)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITON_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602106912034356877)
,p_page_template_id=>wwv_flow_api.id(602104515018356876)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITON_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602107329796356878)
,p_page_template_id=>wwv_flow_api.id(602104515018356876)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITON_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602107728005356878)
,p_page_template_id=>wwv_flow_api.id(602104515018356876)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITON_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602108030900356879)
,p_theme_id=>25
,p_name=>'Two Level Tabs - No Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<div class="uParentTabs">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <ul>',
'        #PARENT_TAB_CELLS#',
'      </ul>',
'    </div>',
'  </div>  ',
'</div>',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602108432560356879)
,p_page_template_id=>wwv_flow_api.id(602108030900356879)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602108824442356879)
,p_page_template_id=>wwv_flow_api.id(602108030900356879)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602109240393356880)
,p_page_template_id=>wwv_flow_api.id(602108030900356879)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602109636471356880)
,p_page_template_id=>wwv_flow_api.id(602108030900356879)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602110042986356880)
,p_page_template_id=>wwv_flow_api.id(602108030900356879)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602110422723356880)
,p_page_template_id=>wwv_flow_api.id(602108030900356879)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(602110730590356880)
,p_theme_id=>25
,p_name=>'Two Level Tabs - Right Sidebar'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/modernizr/2.6.2/modernizr.min.js?v=#APEX_VERSION#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<div class="uParentTabs">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <ul>',
'        #PARENT_TAB_CELLS#',
'      </ul>',
'    </div>',
'  </div>  ',
'</div>',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideRightCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602111125955356881)
,p_page_template_id=>wwv_flow_api.id(602110730590356880)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602111526618356881)
,p_page_template_id=>wwv_flow_api.id(602110730590356880)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602111932438356881)
,p_page_template_id=>wwv_flow_api.id(602110730590356880)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602112324654356881)
,p_page_template_id=>wwv_flow_api.id(602110730590356880)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602112740251356881)
,p_page_template_id=>wwv_flow_api.id(602110730590356880)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602113116756356881)
,p_page_template_id=>wwv_flow_api.id(602110730590356880)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(602113520840356881)
,p_page_template_id=>wwv_flow_api.id(602110730590356880)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(115585781265281)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>25
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(602129029981356893)
,p_template_name=>'Button'
,p_template=>'<button class="uButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
,p_hot_template=>'<button class="uButton uHotButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>25
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(602129215766356893)
,p_template_name=>'Button - Icon'
,p_template=>'<button class="uButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
,p_hot_template=>'<button class="uButton uHotButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>6
,p_theme_id=>25
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(602129434410356893)
,p_template_name=>'Button - Icon Only'
,p_template=>'<button class="uButton iconOnly iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
,p_hot_template=>'<button class="uButton uHotButton iconOnly iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>7
,p_theme_id=>25
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(602129611760356894)
,p_template_name=>'Large Button'
,p_template=>'<button class="uButtonLarge #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
,p_hot_template=>'<button class="uButtonLarge uHotButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>25
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(602129838450356894)
,p_template_name=>'Large Button - Icon'
,p_template=>'<button class="uButtonLarge iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
,p_hot_template=>'<button class="uButtonLarge uHotButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>25
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(602130017369356894)
,p_template_name=>'Large Button - Icon Only'
,p_template=>'<button class="uButtonLarge iconButton iconOnly #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
,p_hot_template=>'<button class="uButtonLarge uHotButton iconButton iconOnly #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>8
,p_theme_id=>25
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602113835035356881)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Accessible Region with Heading'
,p_theme_id=>25
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602114120651356881)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'</section>'))
,p_page_plug_template_name=>'Alert Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Used for alerts and confirmations.  Please use a region image for the success/warning icon'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602114424813356882)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Borderless Region'
,p_theme_id=>25
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
 p_id=>wwv_flow_api.id(602114711981356882)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uBreadcrumbsContainer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <div class="uBreadcrumbs">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>25
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#',
'',
'',
'',
'<div id="uBreadcrumbsContainer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <div id="uBreadcrumbs">',
'      #BODY#',
'      <div class="uBreadcrumbsBG">',
'        <div class="uLeft"></div>',
'        <div class="uRight"></div>',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602115015647356882)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region with Title'
,p_theme_id=>25
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602115332401356882)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <div class="uButtonRegionContent">#BODY#</div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region without Title'
,p_theme_id=>25
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602115638042356883)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#SUB_REGION_HEADERS#',
'#BODY#',
'<div class="uFrameContainer" class="#REGION_CSS_CLASSES# #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'#SUB_REGIONS#',
'</div>'))
,p_sub_plug_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uFrameRegionSelector clearfix">',
'  <ul>',
'    <li><a href="javascript:void(0);" class="showAllLink active"><span>Show All</span></a></li>',
'    #ENTRIES#',
'  </ul>',
'</div>'))
,p_sub_plug_header_entry_templ=>'<li><a href="javascript:void(0);" id="sub_#SUB_REGION_ID#"><span>#SUB_REGION_TITLE#</span></a></li>'
,p_page_plug_template_name=>'Content Frame Body Container'
,p_theme_id=>25
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602115924874356883)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'DIV Region with ID'
,p_theme_id=>25
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602116228818356883)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Form Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>25
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(602116519311356883)
,p_plug_template_id=>wwv_flow_api.id(602116228818356883)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602116921388356884)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region (Expanded)'
,p_theme_id=>25
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602117236647356884)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl uRegionCollapsed"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix" style="display: none;">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region (Hidden)'
,p_theme_id=>25
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602117536287356885)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uIRRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Interactive Report Region'
,p_theme_id=>25
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602117836790356885)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container modal_grid">',
'  <div class="apex_cols apex_span_8 modal_col">',
'    <section class="uRegion uWhiteRegion uModalRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'      <div class="uRegionHeading">',
'        <h1>#TITLE#</h1>',
'      </div>',
'      <div class="uRegionContent clearfix">',
'        #BODY#',
'      </div>',
'        <span class="uButtonContainer">',
'          #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'        </span>',
'    </section>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Modal Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(602118122340356885)
,p_plug_template_id=>wwv_flow_api.id(602117836790356885)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602118523539356885)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_theme_id=>25
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602118836091356885)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>25
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
 p_id=>wwv_flow_api.id(602119133064356885)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Standard Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(602119422452356885)
,p_plug_template_id=>wwv_flow_api.id(602119133064356885)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(602119811707356885)
,p_plug_template_id=>wwv_flow_api.id(602119133064356885)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602120214364356885)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Standard Region - No Padding'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602120519238356885)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="cWizardButtons cWizardButtonsLeft">',
'#PREVIOUS##CLOSE#',
'</div>',
'<div class="cWizardButtons cWizardButtonsRight">',
'#NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'Wizard Buttons'
,p_theme_id=>25
,p_theme_class_id=>28
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602160239555437882)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="appIcon #REGION_STATIC_ID#" />#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Login Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(602160440248437883)
,p_plug_template_id=>wwv_flow_api.id(602160239555437882)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(602160823095437883)
,p_plug_template_id=>wwv_flow_api.id(602160239555437882)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(602257825903333353)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uAlertRegion infoRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionContent clearfix">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="iconMedium info infoRegionIcon" />',
'    <h1>#TITLE#</h1>',
'    #BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Info Region'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Used for alerts and confirmations.  Please use a region image for the success/warning icon'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(675063834265338943)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion uHideShowRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl uRegionCollapsed"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix" style="display: none;">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region (Hidden First) - Borderless'
,p_theme_id=>25
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(2691891616575454172)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'DIV Region with ID'
,p_theme_id=>101
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602124138819356888)
,p_list_template_current=>'<button onclick="javascript:location.href=''#LINK#''" class="uButton uHotButton #A01#" type="button"><span>#TEXT#</span></a> '
,p_list_template_noncurrent=>'<button onclick="javascript:location.href=''#LINK#''" class="uButton #A01#" type="button"><span>#TEXT#</span></a> '
,p_list_template_name=>'Button List'
,p_theme_id=>25
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="uButtonList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602124433631356888)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_name=>'Featured List with Subtext'
,p_theme_id=>25
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="featuredLinksList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602124730147356888)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_theme_id=>25
,p_theme_class_id=>4
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uImagesList uHorizontalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602125036905356888)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>25
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="uHorizontalLinksList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602125330042356888)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Horizontal Wizard Progress List'
,p_theme_id=>25
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uHorizontalProgressList hidden-phone">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602125615031356889)
,p_list_template_current=>'<li><a href="#LINK#" class="active">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_theme_id=>25
,p_theme_class_id=>7
,p_list_template_before_rows=>' '
,p_list_template_after_rows=>' '
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602125936504356889)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>25
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uHorizontalTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602126217863356889)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Vertical Images List'
,p_theme_id=>25
,p_theme_class_id=>5
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uImagesList uVerticalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602126518268356889)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_name=>'Vertical List with Subtext and Icon'
,p_theme_id=>25
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="largeLinkList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602126815921356889)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>25
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="uNumberedList">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602127124134356890)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>25
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="uVerticalSidebarList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602127441082356890)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>25
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="uVerticalList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602127714360356891)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>25
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="uVerticalList noBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(602128037419356891)
,p_list_template_current=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_name=>'Wizard Progress List - Vertical'
,p_theme_id=>25
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="uVerticalProgressList" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(602120813369356885)
,p_row_template_name=>'Borderless Report'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer uBorderlessReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportBorderless">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(602120813369356885)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(602121132343356886)
,p_row_template_name=>'Comment Bubbles'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="#1#">',
'<div>',
'	<em>#2#</em>',
'	#3##4##5##6##7#',
'</div>',
'<span>',
'	#8# (#9#) #10#',
'</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="commentBubbles">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(602121435798356886)
,p_row_template_name=>'Fixed Headers'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<div class="uFixedHeadersContainer">',
'<table summary="#REGION_TITLE#" class="uReport uReportFixedHeaders">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</div>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<thead>',
''))
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>25
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(602121435798356886)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(602121715720356886)
,p_row_template_name=>'Horizontal Border'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportHorizontal">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>25
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(602121715720356886)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(602122042786356886)
,p_row_template_name=>'One Column Unordered List'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportList" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<ul class="uReportList">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
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
,p_theme_id=>25
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(602122042786356886)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(602122329484356886)
,p_row_template_name=>'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'<span class="title"><a href="#2#">#1#</a></span>',
'<span class="description"><span class="last_modified">#5#</span>#3#</span>',
'<span class="type">#4#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="sSearchResultsReport">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(602122619398356887)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportStandard">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>25
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(602122619398356887)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(602122931898356887)
,p_row_template_name=>'Standard - Alternative'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template3=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="uOddRow">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportAlternative">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>25
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(602122931898356887)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(602123225370356888)
,p_row_template_name=>'Two Column Portlet'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #1#',
'  </span>',
'  <span class="uValue">',
'    #2#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>25
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(602123519008356888)
,p_row_template_name=>'Value Attribute Pairs'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #COLUMN_HEADER#',
'  </span>',
'  <span class="uValue">',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>25
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(602123811797356888)
,p_row_template_name=>'Value Attribute Pairs - Left Aligned'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li>',
'  <label>',
'    #COLUMN_HEADER#',
'  </label>',
'  <span>',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="vapList tableBased" #REPORT_ATTRIBUTES# id="report_#REPORT_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>25
,p_theme_class_id=>6
,p_translate_this_template=>'N'
,p_row_template_comment=>'shrahman 03/12/2012 Making table based '
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(602128317968356892)
,p_template_name=>'Hidden Label (Read by Screen Readers)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="visuallyhidden">'
,p_template_body2=>'</label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(602128433827356892)
,p_template_name=>'Optional (Horizontal - Left Aligned)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer horizontal" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(602128536077356892)
,p_template_name=>'Optional (Horizontal - Right Aligned)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer horizontal rightlabels" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button"  title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(602128637683356892)
,p_template_name=>'Optional (Label Above)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer vertical" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(602128735114356892)
,p_template_name=>'Required (Horizontal - Left Aligned)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />'
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer horizontal" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(602128829238356893)
,p_template_name=>'Required (Horizontal - Right Aligned)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />'
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer horizontal rightlabels" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(602128926669356893)
,p_template_name=>'Required (Label Above)'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />'
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>',
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer vertical" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(602130242240356894)
,p_name=>'Breadcrumb Menu'
,p_before_first=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul>',
'<li class="uStartCap"><span></span></li>'))
,p_current_page_option=>'<li class="active"><span>#NAME#</span></li> '
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li> '
,p_between_levels=>'<li class="uSeparator"><span></span></li>'
,p_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="uEndCap"><span></span></li>',
'</ul>'))
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(602130442870356894)
,p_popup_icon=>'#IMAGE_PREFIX#f_spacer.gif'
,p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#" class="uPopupLOVIcon"'
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
'<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_25/css/4_2.css" type="text/css" media="all"/>',
'',
'</head>'))
,p_page_body_attr=>'class="uPopUpLOV"'
,p_before_field_text=>'<div class="uActionBar">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="lovButton hotButton"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="lovButton"'
,p_next_button_text=>'Next >'
,p_next_button_attr=>'class="lovButton"'
,p_prev_button_text=>'< Previous'
,p_prev_button_attr=>'class="lovButton"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<div class="lovPagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="lovLinks">'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(602130341145356894)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>'<th scope="col" class="uCalDayCol">#IDAY#</th>'
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_day_open_format=>'<td class="uDay">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="uDay today">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>'
,p_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_weekend_open_format=>'<td class="uDay">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_nonday_open_format=>'<td class="uDay nonday">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="aCalDayCol">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_weekly_day_open_format=>'<td class="uDay"><div class="uDayData">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="uDay today"><div class="uDayData">'
,p_weekly_weekend_open_format=>'<td class="uDay weekend"><div class="uDayData">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="uCalHour">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="aCalDayCol">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly uCalDaily">',
'<h1 class="uMonth">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="uCal">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_daily_day_open_format=>'<td class="uDay"><div class="uDayData">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="uDay today"><div class="uDayData">'
,p_daily_time_open_format=>'<th scope="row" class="uCalHour">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="listCalendar">',
'  <li class="monthHeader">',
'    <h1>#IMONTH# #YYYY#</h1>',
'  </li>',
'  #DAYS#',
'  <li class="listEndCap"></li>',
'</ul>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="dayHeader past">',
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="dayHeader today">',
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="dayHeader future">',
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="dayData past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="dayData today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="dayData future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>25
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(602130621022356895)
,p_theme_id=>25
,p_theme_name=>'Blue Responsive'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(602089923657356862)
,p_error_template=>wwv_flow_api.id(602075634321356851)
,p_printer_friendly_template=>wwv_flow_api.id(602099515333356872)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(602070118988356842)
,p_default_button_template=>wwv_flow_api.id(602129029981356893)
,p_default_region_template=>wwv_flow_api.id(602119133064356885)
,p_default_chart_template=>wwv_flow_api.id(602119133064356885)
,p_default_form_template=>wwv_flow_api.id(602116228818356883)
,p_default_reportr_template=>wwv_flow_api.id(602119133064356885)
,p_default_tabform_template=>wwv_flow_api.id(602119133064356885)
,p_default_menur_template=>wwv_flow_api.id(602114711981356882)
,p_default_listr_template=>wwv_flow_api.id(602119133064356885)
,p_default_irr_template=>wwv_flow_api.id(602117536287356885)
,p_default_report_template=>wwv_flow_api.id(602122619398356887)
,p_default_label_template=>wwv_flow_api.id(602128536077356892)
,p_default_menu_template=>wwv_flow_api.id(602130242240356894)
,p_default_calendar_template=>wwv_flow_api.id(602130341145356894)
,p_default_list_template=>wwv_flow_api.id(602127441082356890)
,p_default_option_label=>wwv_flow_api.id(602128536077356892)
,p_default_required_label=>wwv_flow_api.id(602128829238356893)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(25),'')
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
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(8084703224602873796)
,p_name=>'Collections Built-In Auth'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'URL'
,p_invalid_session_url=>'f?p=&APP_ID.:101:&SESSION.'
,p_logout_url=>'f?p=&APP_ID.:101'
,p_cookie_name=>'ORA_WWV_PACKAGED_APPLICATIONS'
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
prompt --application/shared_components/plugins/region_type/com_oracle_apex_display_source
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(698012931226903357)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_display_name=>'Source Display'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.DISPLAY_SOURCE'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render (',
'        p_region              in apex_plugin.t_region,',
'        p_plugin              in apex_plugin.t_plugin,',
'        p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_region_static_id    constant varchar2(255) := p_region.attribute_01;',
'    c_highlight_page_item constant varchar2(255) := p_region.attribute_02;',
'',
'    l_highlight_term varchar2(4000) := '''';',
'',
'    cursor sql_csr( d_region_static_id in varchar2 ) is',
'        select source_type, 10 seq, null series_name, region_source source',
'        from apex_application_page_regions',
'        where application_id = :APP_ID',
'            and page_id = :APP_PAGE_ID',
'            and static_id = d_region_static_id',
'            and ( source_type_code like ''PLUGIN%''',
'                or source_type_code like ''STATIC_TEXT%''',
'                or source_type in (',
'                    ''Calendar'',',
'                    ''Easy Calendar'',',
'                    ''Interactive Report'',',
'                    ''List View'',',
'                    ''Report'',',
'                    ''PL/SQL'',',
'                    ''Tabular Form''',
'                )',
'            )',
'        union all',
'        select reg.source_type, fs.series_seq, fs.series_name, fs.series_query source',
'        from apex_application_page_regions reg,',
'            apex_application_page_flash_s fs',
'        where reg.application_id = :APP_ID',
'            and reg.page_id = :APP_PAGE_ID',
'            and reg.static_id = d_region_static_id',
'            and fs.application_id = reg.application_id',
'            and fs.page_id = reg.page_id',
'            and fs.region_id = reg.region_id',
'            and reg.source_type in (',
'                ''Flash Chart'',',
'                ''Map''',
'            )',
'        union all',
'        select reg.source_type, fs.series_seq, fs.series_name, fs.series_query source',
'        from apex_application_page_regions reg,',
'            apex_application_page_flash5_s fs',
'        where reg.application_id = :APP_ID',
'            and reg.page_id = :APP_PAGE_ID',
'            and reg.static_id = d_region_static_id',
'            and fs.application_id = reg.application_id',
'            and fs.page_id = reg.page_id',
'            and fs.region_id = reg.region_id',
'            and reg.source_type in (',
'                ''Flash Chart'',',
'                ''Map''',
'            )',
'        union all',
'        select reg.source_type, 10 seq, null series_name, to_clob(tr.tree_query) source',
'        from apex_application_page_regions reg,',
'            apex_application_page_trees tr',
'        where reg.application_id = :APP_ID',
'            and reg.page_id = :APP_PAGE_ID',
'            and reg.static_id = d_region_static_id',
'            and tr.application_id = reg.application_id',
'            and tr.page_id = reg.page_id',
'            and tr.region_id = reg.region_id',
'            and reg.source_type in (''JavaScript Tree'')',
'        union all',
'        select reg.source_type, 10 seq, null series_name, to_clob(list_query) source',
'        from apex_application_page_regions reg,',
'            apex_application_lists li',
'        where reg.application_id = :APP_ID',
'            and reg.page_id = :APP_PAGE_ID',
'            and reg.static_id = d_region_static_id',
'            and li.application_id = reg.application_id',
'            and li.list_id = reg.list_id',
'            and reg.source_type in ( ''List'' )',
'        order by 1, 2;',
'    sql_rec sql_csr%ROWTYPE;',
'begin',
'    if c_highlight_page_item is not null then',
'        l_highlight_term := apex_escape.html(trim(lower(v(c_highlight_page_item))));',
'    end if;',
'',
'    for sql_rec in sql_csr( c_region_static_id ) loop',
'        if sql_rec.series_name is not null then',
'            sys.htp.p(''<p><strong>''||apex_escape.html(sql_rec.series_name)||'':</strong></p>'');',
'        end if;',
'        sys.htp.p(''<pre>'');',
'        if l_highlight_term is not null then',
'            sys.htp.p(replace(apex_escape.html(sql_rec.source),',
'                l_highlight_term,''<span class="highlight">''||l_highlight_term||''</span>''));',
'        else',
'            sys.htp.p(apex_escape.html(sql_rec.source));',
'        end if;',
'        sys.htp.p(''</pre>'');',
'    end loop;',
'',
'    return null;',
'end render;'))
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_reference_id=>662616209303885407
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(699775734304339401)
,p_plugin_id=>wwv_flow_api.id(698012931226903357)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Region Static ID'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'The static ID as defined in the target region''s Attributes section.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(699776118086339401)
,p_plugin_id=>wwv_flow_api.id(698012931226903357)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Highlight Term Page Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'If you wish to have a term in your region source highlighted, create a page item and assign it here.'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_translated_message
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(789594026977870436)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_display_name=>'Translated Message'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.TRANSLATED_MESSAGE'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    c_message     constant varchar2(255) := p_region.attribute_01;',
'    c_add_p_tags  constant varchar2(1) := p_region.attribute_12;',
'',
'    type subs_t is varray(10) of varchar2(4000);',
'    type colnos_t is varray(10) of pls_integer;',
'',
'    c_subs_columns constant subs_t :=',
'        subs_t (',
'            p_region.attribute_02,',
'            p_region.attribute_03,',
'            p_region.attribute_04,',
'            p_region.attribute_05,',
'            p_region.attribute_06,',
'            p_region.attribute_07,',
'            p_region.attribute_08,',
'            p_region.attribute_09,',
'            p_region.attribute_10,',
'            p_region.attribute_11',
'        );',
'',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'    l_subs_column_nos colnos_t := colnos_t( null, null, null, null, null, null, null, null, null, null );',
'',
'    l_subs subs_t := subs_t( null, null, null, null, null,',
'                             null, null, null, null, null );',
'    l_label varchar2(50);',
'    l_message clob;',
'begin',
'    if p_region.source is not null then',
'        -- Read the data based on the region source query',
'        l_column_value_list := apex_plugin_util.get_data2 (',
'                                   p_sql_statement  => p_region.source,',
'                                   p_min_columns    => 1,',
'                                   p_max_columns    => null,',
'                                   p_component_name => p_region.name );',
'',
'        -- Get the actual column# for faster access and also verify that the data type',
'        -- of the column matches with what we are looking for',
'        for i in 0..9 loop',
'            l_label := ''Substitution Column ''',
'                        ||to_char(i)||'' (%''||to_char(i)||'')'';',
'            l_subs_column_nos(i+1) := apex_plugin_util.get_column_no (',
'                                        p_attribute_label   => l_label,',
'                                        p_column_alias      => c_subs_columns(i+1),',
'                                        p_column_value_list => l_column_value_list,',
'                                        p_is_required       => false,',
'                                        p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'        end loop;',
'',
'        -- Set the column values of the first row so that apex_plugin_util.replace_substitutions',
'        -- can do substitutions for columns contained in the region source query.',
'        apex_plugin_util.set_component_values (',
'            p_column_value_list => l_column_value_list,',
'            p_row_num           => 1 );',
'',
'        -- get the substitution values',
'        for i in 0..9 loop',
'            if l_subs_column_nos(i+1) is not null then',
'                l_subs(i+1) := apex_plugin_util.escape (',
'                                apex_plugin_util.get_value_as_varchar2 (',
'                                    p_data_type => l_column_value_list(l_subs_column_nos(i+1)).data_type,',
'                                    p_value     => l_column_value_list(l_subs_column_nos(i+1)).value_list(1) ),',
'                                p_region.escape_output );',
'            end if;',
'        end loop;',
'    end if;',
'',
'    l_message := apex_lang.message( p_name => c_message,',
'                                    p0     => l_subs(1),',
'                                    p1     => l_subs(2),',
'                                    p2     => l_subs(3),',
'                                    p3     => l_subs(4),',
'                                    p4     => l_subs(5),',
'                                    p5     => l_subs(6),',
'                                    p6     => l_subs(7),',
'                                    p7     => l_subs(8),',
'                                    p8     => l_subs(9),',
'                                    p9     => l_subs(10)',
'                                  );',
'    if c_add_p_tags = ''Y'' and instr( l_message, ''<p'' ) = 0 then',
'        l_message := ''<p>''||l_message||''</p>'';',
'    end if;',
'    sys.htp.p(l_message);',
'    return null;',
'end;'))
,p_render_function=>'render'
,p_standard_attributes=>'SOURCE_SQL:ESCAPE_OUTPUT'
,p_sql_min_column_count=>1
,p_sql_examples=>'<p>This SQL is optional. If the message you are translating has substitutions built in (%0 through %9), select the values you wish to replace them with here:</p>'
,p_substitute_attributes=>true
,p_reference_id=>725047506902556945
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(789594324915870723)
,p_plugin_id=>wwv_flow_api.id(789594026977870436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Text Message'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'The name of the Text Message (from shared components) to be displayed.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(789594732877870723)
,p_plugin_id=>wwv_flow_api.id(789594026977870436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Substitution Column 0 (%0)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column of the region source which is used to replace any %0 in the displayed message.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(789595135227870724)
,p_plugin_id=>wwv_flow_api.id(789594026977870436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Substitution Column 1 (%1)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column of the region source which is used to replace any %1 in the displayed message.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(789595521787870724)
,p_plugin_id=>wwv_flow_api.id(789594026977870436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Substitution Column 2 (%2)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column of the region source which is used to replace any %2 in the displayed message.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(789595941439870725)
,p_plugin_id=>wwv_flow_api.id(789594026977870436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Substitution Column 3 (%3)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column of the region source which is used to replace any %3 in the displayed message.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(789596334323870725)
,p_plugin_id=>wwv_flow_api.id(789594026977870436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Substitution Column 4 (%4)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column of the region source which is used to replace any %4 in the displayed message.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(789596725069870727)
,p_plugin_id=>wwv_flow_api.id(789594026977870436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Substitution Column 5 (%5)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column of the region source which is used to replace any %5 in the displayed message.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(789597116564870727)
,p_plugin_id=>wwv_flow_api.id(789594026977870436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Substitution Column 6 (%6)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column of the region source which is used to replace any %6 in the displayed message.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(789597521524870727)
,p_plugin_id=>wwv_flow_api.id(789594026977870436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Substitution Column 7 (%7)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column of the region source which is used to replace any %7 in the displayed message.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(789597930112870727)
,p_plugin_id=>wwv_flow_api.id(789594026977870436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Substitution Column 8 (%8)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column of the region source which is used to replace any %8 in the displayed message.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(789598323208870727)
,p_plugin_id=>wwv_flow_api.id(789594026977870436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Substitution Column 9 (%9)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'The column of the region source which is used to replace any %9 in the displayed message.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(789598726174870727)
,p_plugin_id=>wwv_flow_api.id(789594026977870436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Add Paragraph Tags'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>This attribute controls whether or not the message is enclosed in HTML paragraph tags. If set to No, the message is displayed as is; if set to Yes, and the message does not begin with a paragraph tag, then paragraph tags are added.</p>',
'<p>If the message already starts with a paragraph tag, no changes are made.</p>'))
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(499141930545014970)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'DESKTOP'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>25
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&SESSION.'
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
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_name=>'Global Page - DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Global Page - DESKTOP'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'D'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20130404150733'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(675317822140133630)
,p_plug_name=>'CSS Override'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
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
'  padding: 0;',
'}',
'.infoTextRegion p,',
'.infoTextRegion li {',
'  font-size: 14px;',
'  color: #707070;',
'  padding: 0 0 12px 0;',
'  margin: 0;',
'  line-height: 20px;',
'}',
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
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'Sample Collections - Use Case1'
,p_alias=>'HOME'
,p_page_mode=>'NORMAL'
,p_step_title=>'Sample Collections - Use Case1'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'section.infoRegion {',
'    border: 1px solid #9AAEC8;',
'    background-color: #DDE7F5;',
'}',
'section.infoRegion > div.uRegionHeading {',
'    background: none transparent;',
'}',
'.infoRegionIcon {',
'    position: absolute;',
'    left: 0;',
'    margin: 16px;',
'    top: 0;',
'}',
'section.infoRegion.uRegion > div.uRegionContent {',
'    position: relative;',
'    min-height: 32px;',
'    padding: 16px 16px 16px 64px;',
'}',
'.infoRegion h1 {',
'    font-weight: bold;',
'    font-size: 14px;',
'    color: #202020;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.65);',
'}',
'.infoRegion p {',
'    font-size: 12px;',
'    line-height: 20px;',
'    padding: 8px 0 0 0;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.25);',
'    color: #303030;',
'}',
'.infoRegion p:last-child {',
'    margin-bottom: 0 !important;',
'}',
'',
'',
'',
'div.featuredBlock{',
'	-webkit-border-radius:3px;',
'	-moz-border-radius:3px;',
'	border-radius:3px;',
'	-webkit-box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	-moz-box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	border:1px solid #E1E6EB;',
'	margin-bottom:18px',
'}',
'div.featuredBlock div.featuredIcon{',
'	background-image:url(''data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPb'
||'lVzZSIgeDE9IjUwJSIgeTE9IjAlIiB4Mj0iNTAlIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iI2ZmZmZmZiIvPjxzdG9wIG9mZnNldD0iNDAlIiBzdG9wLWNvbG9yPSIjZmZmZmZmIi8+PHN0b3Agb2Zmc2V0PSI2MCUiIHN0b3AtY29sb3I9IiNmNGY0ZjgiLz48c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3A'
||'tY29sb3I9IiNmZmZmZmYiLz48L2xpbmVhckdyYWRpZW50PjwvZGVmcz48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSJ1cmwoI2dyYWQpIiAvPjwvc3ZnPiA='');',
'	background-size:100%;',
'	background-image:-webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #ffffff), color-stop(40%, #ffffff), color-stop(60%, #f4f4f8), color-stop(100%, #ffffff));',
'	background-image:-webkit-linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	background-image:-moz-linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	background-image:linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	-webkit-border-radius:3px 3px 0 0;',
'	-moz-border-radius:3px 3px 0 0;',
'	border-radius:3px 3px 0 0;',
'	padding:8px 0;',
'	min-height: 90px;',
'	text-align:center;',
'}',
'div.featuredBlock div.featuredIcon img{',
'	display:block;',
'	margin:0 auto 0 auto;',
'	-webkit-box-reflect:below -20px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(65%, transparent), to(rgba(255,255,255,0.2)));',
'}',
'div.featuredBlock div.featuredIcon h1{',
'	font-size:12px;',
'	line-height:12px;',
'	color:#404040;',
'	margin:0 8px;',
'	padding:0;',
'	text-align:center;',
'}',
'a.blockLink,a.blockLink:hover{',
'	text-decoration:none',
'}',
'a.blockLink:hover div.featuredBlock{',
'	border:1px solid #b1bbcb',
'}',
'a.blockLink:hover div.featuredBlock div.featuredIcon{',
'	background: none #e5effb;',
'	-webkit-box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'	-moz-box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'	box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'}',
'.regionDivider {',
'	border-top: 2px solid #F0F0F0 !important;',
'	padding-top: 8px;;',
'}'))
,p_step_template=>wwv_flow_api.id(602089923657356862)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20130411110319'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(602258237678336745)
,p_plug_name=>'About this page'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602115924874356883)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<p>This use case covers the basics of creating and editing an Oracle Application Express (APEX) collection. Collections are used to support vectors of APEX session-based data.  APEX Collections are commonly used in place of Oracle temporary tables, b'
||'ut they should not be used for millions of rows per user per APEX session.</p>'
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
 p_id=>wwv_flow_api.id(696428015444886066)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114711981356882)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(696427940593883909)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(602130242240356894)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7808392206263668604)
,p_plug_name=>'APEX_COLLECTIONS View'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select seq_id, c001, c002, c003, c004, c005, n001, n002, n003, d001, d002, d003,  case when xmltype001 is null then null else substr(extract(xmltype001,''*'').getstringval(),1,40) || ''...'' end xmltype001, md5_original, collection_name, COLLECTION_NAME '
||'COLLECTION_NAME2',
'  from apex_collections',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(7808392290834668604)
,p_name=>'APEX Collections View'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'JOEL'
,p_internal_uid=>7788161179199500656
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7808392588618668605)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sequence'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'SEQ_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7808392710964668605)
,p_db_column_name=>'C001'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Character<br />Attribute 1'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'C001'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7808392805355668605)
,p_db_column_name=>'C002'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Character<br />Attribute 2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'C002'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7808392894659668605)
,p_db_column_name=>'C003'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Character<br />Attribute 3'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'C003'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7808392980084668605)
,p_db_column_name=>'C004'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Character<br />Attribute 4'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'C004'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7808393098782668605)
,p_db_column_name=>'C005'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Character<br />Attribute 5'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'C005'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7808393196754668606)
,p_db_column_name=>'N001'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Numeric<br />Attribute 1'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'N001'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7808393283049668606)
,p_db_column_name=>'N002'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Numeric<br />Attribute 2'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'N002'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7808393398802668606)
,p_db_column_name=>'N003'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Numeric<br />Attribute 3'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_static_id=>'N003'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7808393611402668606)
,p_db_column_name=>'MD5_ORIGINAL'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'MD5 Original'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'MD5_ORIGINAL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7808393708439668606)
,p_db_column_name=>'COLLECTION_NAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Action'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4:P4_NAME,P4_SEQ:#COLLECTION_NAME#,#SEQ_ID#'
,p_column_linktext=>'<span><i></i></span>'
,p_column_link_attr=>'class="uButton uAltButton iconButton iconOnly edit"'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'COLLECTION_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7808394599676686043)
,p_db_column_name=>'XMLTYPE001'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'XML Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_static_id=>'XMLTYPE001'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7773987479295124974)
,p_db_column_name=>'D001'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Date<br />Attribute 1'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'D001'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7773987584143124976)
,p_db_column_name=>'D002'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Date<br />Attribute 2'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'D002'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7773987676071124977)
,p_db_column_name=>'D003'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Date<br />Attribute 3'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'D003'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(602162535392459516)
,p_db_column_name=>'COLLECTION_NAME2'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Collection Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COLLECTION_NAME2'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(7808393806686669112)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4502667'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'COLLECTION_NAME:COLLECTION_NAME2:SEQ_ID:C001:C002:C003:C004:C005:N001:N002:N003:D001:D002:D003:XMLTYPE001:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7808700287920411338)
,p_plug_name=>'Tip'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602115924874356883)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ol style="margin: 8px 24px;">',
'<li>Click the "Create Collection" button to create a new named collection',
'<li>Add members to the collection by clicking the "Modify Collection" button',
'<li>Modify the members of the collection by clicking the icon in the Action column in the report below',
'</ol>'))
,p_plug_query_row_template=>1
,p_plug_column_width=>'valign=top'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244514568951560189)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7808392206263668604)
,p_button_name=>'Modify_Collection'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129838450356894)
,p_button_image_alt=>'Modify Collection'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'iconLeft edit'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244463676514458233)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(7808392206263668604)
,p_button_name=>'Create_Collection'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129838450356894)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Collection'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'plus'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8244514978433560191)
,p_branch_action=>'3'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_when_button_id=>wwv_flow_api.id(8244514568951560189)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8244464059781458241)
,p_branch_action=>'2'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_when_button_id=>wwv_flow_api.id(8244463676514458233)
,p_branch_sequence=>20
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'Create Collection'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create Collection'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(602089923657356862)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150622122359'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(696429541070893471)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114711981356882)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(696427940593883909)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(602130242240356894)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8244468148911467995)
,p_plug_name=>'Collection'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114120651356881)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_plug_column_width=>'valign=top'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244475074352476511)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8244468148911467995)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244480462709482611)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8244468148911467995)
,p_button_name=>'Create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Create Collection'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244483069981484717)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8244468148911467995)
,p_button_name=>'Create_Replace'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create/Replace Collection'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8244475460012476513)
,p_branch_action=>'3'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244470477150470100)
,p_name=>'P2_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8244468148911467995)
,p_prompt=>'Collection Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8244497772812502499)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_collection.create_collection( p_collection_name => :P2_NAME );',
'commit;'))
,p_process_error_message=>'Error creating collection <b>&P2_NAME.</b>.'
,p_process_when_button_id=>wwv_flow_api.id(8244480462709482611)
,p_process_success_message=>'Successfully created collection <b>&P2_NAME.</b>.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8244502479485514513)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create/Replace'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection( p_collection_name => :P2_NAME );',
'commit;'))
,p_process_error_message=>'Error creating/replacing collection <b>&P2_NAME.</b>.'
,p_process_when_button_id=>wwv_flow_api.id(8244483069981484717)
,p_process_success_message=>'Successfully created/replaced collection <b>&P2_NAME.</b>.'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'Modify Collection'
,p_page_mode=>'NORMAL'
,p_step_title=>'Modify Collection'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(602089923657356862)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20130411103715'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(696429133452891225)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114711981356882)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(696427940593883909)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(602130242240356894)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8244528073501714856)
,p_plug_name=>'Collection'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602116228818356883)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_plug_column_width=>'valign=top'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8244529370267716367)
,p_plug_name=>'Member Attributes'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602116228818356883)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244726080612473460)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8244528073501714856)
,p_button_name=>'Truncate_Collection'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Truncate Collection'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244733459272476749)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8244528073501714856)
,p_button_name=>'Delete_Collection'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Delete Collection'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244745173255490210)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8244528073501714856)
,p_button_name=>'Resequence'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Resequence'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244545278798723822)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_button_name=>'Cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244566779191752330)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_button_name=>'Add_Member'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Add Member'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244709856670438200)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_button_name=>'Add_Member_Add_Another'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Add Member & Add Another'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8244710273086438210)
,p_branch_action=>'3'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_when_button_id=>wwv_flow_api.id(8244709856670438200)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8244548481253726485)
,p_branch_action=>'1'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_sequence=>20
,p_branch_comment=>'Created 16-JUL-2002 15:56 by JOEL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7773986483750097933)
,p_name=>'P3_DATE_ATTR1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_prompt=>'Date Attribute 1'
,p_format_mask=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7773986774877104834)
,p_name=>'P3_DATE_ATTR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_prompt=>'Date Attribute 2'
,p_format_mask=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7773986982150106878)
,p_name=>'P3_DATE_ATTR3'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_prompt=>'Date Attribute 3'
,p_format_mask=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7807366706982194872)
,p_name=>'P3_NUM_ATTR1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_prompt=>'Numeric Attribute 1'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7807366905418194873)
,p_name=>'P3_NUM_ATTR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_prompt=>'Numeric Attribute 2'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7807367094172194873)
,p_name=>'P3_NUM_ATTR3'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_prompt=>'Numeric Attribute 3'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244538465522718594)
,p_name=>'P3_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8244528073501714856)
,p_prompt=>'Collection&nbsp;Name'
,p_source=>'P2_NAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244552070039731650)
,p_name=>'P3_ATTR1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_prompt=>'Character Attribute 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244554365941733603)
,p_name=>'P3_ATTR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_prompt=>'Character Attribute 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244556661196735760)
,p_name=>'P3_ATTR3'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_prompt=>'Character Attribute 3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244558956883737730)
,p_name=>'P3_ATTR4'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_prompt=>'Character Attribute 4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244561252786739606)
,p_name=>'P3_ATTR5'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(8244529370267716367)
,p_prompt=>'Character Attribute 5'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8244752673131499155)
,p_validation_name=>'Collection Name not null'
,p_validation_sequence=>10
,p_validation=>'P3_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Collection name cannot be null'
,p_always_execute=>'N'
,p_validation_condition=>':REQUEST in (''Truncate_Collection'',''Delete_Collection'',''Resequence'',''Add_Member'',''Add_Member_Add_Another'')'
,p_validation_condition_type=>'PLSQL_EXPRESSION'
,p_associated_item=>wwv_flow_api.id(8244538465522718594)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8244574059231767050)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Member'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_collection.add_member(',
'    p_collection_name => :P3_NAME,',
'    p_c001            => :P3_ATTR1,',
'    p_c002            => :P3_ATTR2,',
'    p_c003            => :P3_ATTR3,',
'    p_c004            => :P3_ATTR4,',
'    p_c005            => :P3_ATTR5,',
'    p_n001            => :P3_NUM_ATTR1,',
'    p_n002            => :P3_NUM_ATTR2,',
'    p_n003            => :P3_NUM_ATTR3,',
'    p_d001            => to_date(:P3_DATE_ATTR1,''MM/DD/YYYY''),',
'    p_d002            => to_date(:P3_DATE_ATTR2,''MM/DD/YYYY''),',
'    p_d003            => to_date(:P3_DATE_ATTR3,''MM/DD/YYYY''),',
'    p_generate_md5    => ''YES'' );',
'commit;'))
,p_process_error_message=>'Error adding member to collection <b>&P3_NAME.</b>.'
,p_process_when=>':REQUEST in (''Add_Member'',''Add_Member_Add_Another'')'
,p_process_when_type=>'SQL_EXPRESSION'
,p_process_success_message=>'Successfully added member to collection <b>&P3_NAME.</b>.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8244866180937708205)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Resequence'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_collection.resequence_collection(',
'    p_collection_name => :P3_NAME );',
'commit;'))
,p_process_error_message=>'Error resequencing members in collection <b>&P3_NAME.</b>.'
,p_process_when_button_id=>wwv_flow_api.id(8244745173255490210)
,p_process_success_message=>'Successfully resequenced members in collection <b>&P3_NAME.</b>.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8244870561312717367)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Collection'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_collection.delete_collection(',
'    p_collection_name => :P3_NAME );',
'--',
'commit;'))
,p_process_error_message=>'Error deleting collection <b>&P3_NAME.</b>.'
,p_process_when_button_id=>wwv_flow_api.id(8244733459272476749)
,p_process_success_message=>'Successfully deleted collection <b>&P3_NAME.</b>.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8244933255131160852)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Truncate Collection'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_collection.truncate_collection(',
'    p_collection_name => :P3_NAME );',
'--',
'commit;'))
,p_process_error_message=>'Error truncating collection <b>&P3_NAME.</b>.'
,p_process_when_button_id=>wwv_flow_api.id(8244726080612473460)
,p_process_success_message=>'Successfully truncated collection <b>&P3_NAME.</b>.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7338198768424197108)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'Modify Collection Member'
,p_page_mode=>'NORMAL'
,p_step_title=>'Modify Collection Member'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(602089923657356862)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20130411103730'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8244772370315515667)
,p_plug_name=>'Collection Member'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602116228818356883)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244804974603537931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_button_name=>'Cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129029981356893)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244854555921683977)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_button_name=>'Delete_Member'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129029981356893)
,p_button_image_alt=>'Delete Member'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8244809559843543155)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_button_name=>'Update_Member'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129029981356893)
,p_button_image_alt=>'Update Member'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8244805366463537933)
,p_branch_action=>'1'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7773989391247166272)
,p_name=>'P4_DATE_ATTR1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'Date Attribute 1'
,p_format_mask=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7773989671639170122)
,p_name=>'P4_DATE_ATTR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'Date Attribute 2'
,p_format_mask=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7773989882374173177)
,p_name=>'P4_DATE_ATTR3'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'Date Attribute 3'
,p_format_mask=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7808367704310996775)
,p_name=>'P4_NUM_ATTR1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'Numeric Attribute 1'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7808367985395000711)
,p_name=>'P4_NUM_ATTR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'Numeric Attribute 2'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7808368190936002304)
,p_name=>'P4_NUM_ATTR3'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'Numeric Attribute 3'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7808369010937027034)
,p_name=>'P4_XMLTYPE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'XMLType'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'The XMLType field in this application is only used for demonstration purposes.  The value of this field is computed using the PL/SQL API DBMS_XMLGEN.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244774662551519244)
,p_name=>'P4_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244780356944521856)
,p_name=>'P4_SEQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'Sequence'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244786279144526800)
,p_name=>'P4_ATTR1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'Character Attribute 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244790275478528439)
,p_name=>'P4_ATTR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'Character Attribute 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244792572243529953)
,p_name=>'P4_ATTR3'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'Character Attribute 3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244796569224531360)
,p_name=>'P4_ATTR4'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'Character Attribute 4'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8244799365558533011)
,p_name=>'P4_ATTR5'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(8244772370315515667)
,p_prompt=>'Character Attribute 5'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8244848970444621953)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate form'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'--',
'-- Given the values supplied for collection name and sequence,',
'-- fetch the values from the Collections database view',
'-- and populate the items on the page',
'--',
'for c1 in ( select c001, c002, c003, c004, c005, n001, n002, n003, d001, d002, d003, xmltype001',
'              from apex_collections',
'             where collection_name = :P4_NAME',
'               and seq_id = :P4_SEQ ) loop',
'    :P4_ATTR1 := c1.c001;',
'    :P4_ATTR2 := c1.c002;',
'    :P4_ATTR3 := c1.c003;',
'    :P4_ATTR4 := c1.c004;',
'    :P4_ATTR5 := c1.c005;',
'    :P4_NUM_ATTR1 := c1.n001;',
'    :P4_NUM_ATTR2 := c1.n002;',
'    :P4_NUM_ATTR3 := c1.n003;',
'    :P4_DATE_ATTR1 := c1.d001;',
'    :P4_DATE_ATTR2 := c1.d002;',
'    :P4_DATE_ATTR3 := c1.d003;',
'    if c1.xmltype001 is not null then',
'        :P4_XMLTYPE   := xmltype.extract(c1.xmltype001,''/'').getstringval();',
'    end if;',
'  ',
'    exit;',
'end loop;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8244824470278561280)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Member'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    l_xmltype xmltype := null;',
'begin',
'    if :P4_XMLTYPE is not null then',
'        l_xmltype := xmltype( :P4_XMLTYPE );',
'    end if;',
'    --',
'    apex_collection.update_member(',
'        p_collection_name => :P4_NAME,',
'        p_seq             => :P4_SEQ,',
'        p_c001            => :P4_ATTR1,',
'        p_c002            => :P4_ATTR2,',
'        p_c003            => :P4_ATTR3,',
'        p_c004            => :P4_ATTR4,',
'        p_c005            => :P4_ATTR5,',
'        p_n001            => :P4_NUM_ATTR1,',
'        p_n002            => :P4_NUM_ATTR2,',
'        p_n003            => :P4_NUM_ATTR3,',
'        p_d001            => to_date(:P4_DATE_ATTR1,''MM/DD/YYYY''),',
'        p_d002            => to_date(:P4_DATE_ATTR2,''MM/DD/YYYY''),',
'        p_d003            => to_date(:P4_DATE_ATTR3,''MM/DD/YYYY''),',
'        p_xmltype001      => l_xmltype );',
'    commit;',
'end;'))
,p_process_error_message=>'Error updating member <b>&P4_SEQ.</b> in collection <b>&P4_NAME.</b>.'
,p_process_when_button_id=>wwv_flow_api.id(8244809559843543155)
,p_process_success_message=>'Successfully updated member <b>&P4_SEQ.</b> in collection <b>&P4_NAME.</b>.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8244857453142690794)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Member'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_collection.delete_member(',
'    p_collection_name => :P4_NAME,',
'    p_seq             => :P4_SEQ );',
'--',
'commit;'))
,p_process_error_message=>'Error deleting member <b>&P4_SEQ.</b> in collection <b>&P4_NAME.</b>.'
,p_process_when_button_id=>wwv_flow_api.id(8244854555921683977)
,p_process_success_message=>'Successfully deleted member <b>&P4_SEQ.</b> in collection <b>&P4_NAME.</b>.'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'About this Application'
,p_alias=>'ABOUT'
,p_page_mode=>'NORMAL'
,p_step_title=>'About this Application'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_html_page_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<SCRIPT LANGUAGE="JavaScript1.1">',
'<!-- ',
'function popupURL(url)',
'{w = open(url,"winLov","Scrollbars=1,resizable=1,width=800,height=600");',
'if (w.opener == null)',
'w.opener = self;',
'w.focus();}',
'/-->',
'</SCRIPT>'))
,p_step_template=>wwv_flow_api.id(602089923657356862)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20130408154715'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8245011955247282388)
,p_plug_name=>'About this Application'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602116228818356883)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<span class="fielddata">This example application demonstrates the use of the Collections API, and how it can easily be employed in your applications.',
'<p>',
'The first tab, <b>Collection</b>, provides a simple interface to see collections in action, to easily create and delete collections, as well as add members, modify members, and remove members from the collection.  This example application also shows '
||'the MD5 message digest computed automatically each time a new member is <b>added</b> to a collection.  This provides a convenient mechanism to determine if any attributes of a collection member have changed.',
'<p>',
'The second tab, <b>Collection on EMP</b>, shows a complete example using collections to maintain values in session state for many rows of data.  This example also demonstrates a method to synchronize information contained in the collection with the E'
||'MP database table.  This example uses an additional, non-user editable collection member attribute to track the status of a particular row in the collection.  The XMLType001 column of the collection is populated with the XML ROWSET representation of '
||'the row, but it is only used for demonstration purposes and is not involved in the synchronization of the collection to the EMP table.',
'<p>',
'In the <b>Collection on EMP</b> example, you should first populate the named collection from the EMP table by clicking the "Populate Collection from EMP" button.  Then, you can add new members, update members, and delete members in this collection.  '
||'Modifications will happen exclusively to the members in the collection.  By clicking the "Apply Collection" button, you are then instructing the application to process each row in the EMP collection, issuing the correct INSERT, UPDATE or DELETE state'
||'ments against the EMP table.</span>',
''))
,p_plug_query_row_template=>1
,p_plug_column_width=>'valign=top'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8245016478742286647)
,p_plug_name=>'Purpose of Collections'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602116228818356883)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<span class="fielddata">Application collections are intended to assist the programmer when the requirement exists to temporarily capture one or more non-scalar values. In other words, collections can be used to store rows and columns of session state'
||' that can be manipulated and accessed for an applications session. If you are building a application where you need to capture multiple "rows" of information, collections are an ideal tool to accomplish this. It is expected that once this information'
||' is collected and an end-user indicates that they want to save such information, the contents of the collection (rows and columns of data) are processed. Collections imply a temporary capture and manipulation of rows and columns of data, that once co'
||'mplete, are processed by your application.</span>',
''))
,p_plug_query_row_template=>1
,p_plug_column_width=>'valign=top'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'Sample Collections - Use Case2'
,p_alias=>'EMP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Sample Collections - Use Case2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(602089923657356862)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20141110132928'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(696430017306896036)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114711981356882)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(696427940593883909)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(602130242240356894)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8245063156886387952)
,p_name=>'EBA_DEMO_CS_EMP table'
,p_region_name=>'emp_table'
,p_template=>wwv_flow_api.id(602120214364356885)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select empno, ename, job, mgr, hiredate, sal, comm, deptno',
'  from eba_demo_cs_emp'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(602122931898356887)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_ignore_pagination=>0
,p_query_num_rows_type=>'ROWS_X_TO_Y_OF_Z'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image=>'blue_arrow_down.gif'
,p_query_desc_image=>'blue_arrow_up.gif'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167667947823087703)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'EmpNo'
,p_column_alignment=>'RIGHT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167668036063087703)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167668130985087703)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167668247528087703)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>4
,p_column_heading=>'Manager'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167668348694087703)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Hire&nbsp;Date'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167668436864087703)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'Salary'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167668522704087703)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'Commission'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167668618297087704)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>8
,p_column_heading=>'DeptNo'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(698014416130910298)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_api.id(8245063156886387952)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left: 8px;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(675063834265338943)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_plug_query_row_template=>1
,p_attribute_01=>'emp_table'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8245075258599402310)
,p_name=>'EMP Collection'
,p_region_name=>'emp_collection'
,p_template=>wwv_flow_api.id(602120214364356885)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select seq_id editlink,',
'    seq_id, ',
'    n001, ',
'    n002, ',
'    n003, ',
'    n004, ',
'    d001, ',
'    c001, ',
'    c002, ',
'    c003, ',
'    c004 status',
'from apex_collections',
'where collection_name = ''EMPCOLLECTION''',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(602122931898356887)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_ignore_pagination=>0
,p_query_num_rows_type=>'ROWS_X_TO_Y_OF_Z'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_sort_null=>'F'
,p_query_asc_image=>'blue_arrow_down.gif'
,p_query_desc_image=>'blue_arrow_up.gif'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167668722021087715)
,p_query_column_id=>1
,p_column_alias=>'EDITLINK'
,p_column_display_sequence=>1
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_SEQ,P7_STATUS:#SEQ_ID#,#STATUS#'
,p_column_linktext=>'<span><i></i></span>'
,p_column_link_attr=>'class="uButton uAltButton iconButton iconOnly edit"'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167668819916087716)
,p_query_column_id=>2
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Sequence'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7808363207436723290)
,p_query_column_id=>3
,p_column_alias=>'N001'
,p_column_display_sequence=>3
,p_column_heading=>'EmpNo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7808363280731723291)
,p_query_column_id=>4
,p_column_alias=>'N002'
,p_column_display_sequence=>8
,p_column_heading=>'Salary'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7808363393832723291)
,p_query_column_id=>5
,p_column_alias=>'N003'
,p_column_display_sequence=>9
,p_column_heading=>'Commission'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7808363479509723291)
,p_query_column_id=>6
,p_column_alias=>'N004'
,p_column_display_sequence=>10
,p_column_heading=>'DeptNo'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7774011577413013712)
,p_query_column_id=>7
,p_column_alias=>'D001'
,p_column_display_sequence=>7
,p_column_heading=>'Hire Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167668923715087716)
,p_query_column_id=>8
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167669039197087716)
,p_query_column_id=>9
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167669133307087716)
,p_query_column_id=>10
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'Manager'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8167669744064087716)
,p_query_column_id=>11
,p_column_alias=>'STATUS'
,p_column_display_sequence=>11
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(708471944076566782)
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(698014121953907684)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_api.id(8245075258599402310)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="margin-left: 8px;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(675063834265338943)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_plug_query_row_template=>1
,p_attribute_01=>'emp_collection'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8245313868852050970)
,p_plug_name=>'About this page'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602115924874356883)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>This use case populates an Oracle Application Express (APEX) collection from a sample Employees table, the user updates the collection, and then synchronizes the data in the collection with the base table..  To use this example, please follow the '
||'instructions below.</p>',
'<ol>',
'<li>Populate the collection from the EBA_DEMO_CS_EMP table',
'<li>Add, Delete, and Update members in the collection',
'<li>Synchronize the members of the collection with the EBA_DEMO_CS_EMP table by clicking the "Apply Collection" button',
'</ol>'))
,p_plug_query_row_template=>1
,p_plug_column_width=>'valign=top'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8245091269950426030)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8245075258599402310)
,p_button_name=>'Populate'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Populate Collection from EBA_DEMO_CS_EMP '
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8245210261770783272)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8245075258599402310)
,p_button_name=>'Add_Member'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Add Member'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'apex_collection.collection_exists(''EMPCOLLECTION'')'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8245142072037502350)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8245075258599402310)
,p_button_name=>'Apply_Collection'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Apply Collection'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'apex_collection.collection_exists(''EMPCOLLECTION'')'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8245091653828426033)
,p_branch_action=>'6'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_when_button_id=>wwv_flow_api.id(8245091269950426030)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8245210678916783274)
,p_branch_action=>'7'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_when_button_id=>wwv_flow_api.id(8245210261770783272)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8245142454609502352)
,p_branch_action=>'6'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_when_button_id=>wwv_flow_api.id(8245142072037502350)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8245095666757444166)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    l_rowxml varchar2(4000);',
'begin',
'if apex_collection.collection_exists( ''EMPCollection'') = TRUE then',
'    --',
'    apex_collection.delete_collection(',
'        p_collection_name => ''EMPCollection'' );',
'end if;',
'--',
'apex_collection.create_collection_from_query2(',
'    p_collection_name => ''EMPCollection'',',
'    p_query           => ''select empno, sal, comm, deptno, null, hiredate, null, null, null, null, ename, job, mgr, ''''O'''' original_flag from eba_demo_cs_emp order by ename'',',
'    p_generate_md5    => ''YES'');',
'--',
'for c1 in (select n001 empno, seq_id',
'             from apex_collections',
'            where collection_name = ''EMPCOLLECTION''',
'           order by seq_id) loop',
'    ',
'    l_rowxml := dbms_xmlgen.getxml( ''select * from eba_demo_cs_emp where empno = '' || c1.empno );',
'    apex_collection.update_member_attribute( ',
'        p_collection_name => ''EMPCollection'',',
'        p_seq             => c1.seq_id,',
'        p_xmltype_number  => 1,',
'        p_xmltype_value   => XMLType(l_rowxml));',
'end loop;',
'--',
'commit;',
'end;'))
,p_process_when_button_id=>wwv_flow_api.id(8245091269950426030)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8245287472135988619)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply changes to EBA_DEMO_CS_EMP table'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'--',
'-- Loop through all the members of the collection.  For those that are still',
'-- marked as Original, they have not changed, so no changes need to be applied.',
'-- For those marked as updated, deleted, or new, issue the appropriate DML',
'-- against the SCOTT.EMP table.',
'--',
'for c1 in (select c001, c002, c003, c004, d001, n001, n002, n003, n004',
'             from apex_collections',
'            where collection_name = ''EMPCOLLECTION'') loop',
'    if c1.c004 = ''N'' then',
'        insert into eba_demo_cs_emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)',
'        values (c1.n001, c1.c001, c1.c002, c1.c003, c1.d001, c1.n002, c1.n003, c1.n004 );',
'',
'    elsif c1.c004 = ''U'' then',
'        update eba_demo_cs_emp',
'           set ename    = c1.c001,',
'               job      = c1.c002,',
'               mgr      = c1.c003,',
'               hiredate = c1.d001,',
'               sal      = c1.n002,',
'               comm     = c1.n003,',
'               deptno   = c1.n004',
'         where empno = c1.n001;',
'',
'    elsif c1.c004 = ''D'' then',
'        delete from eba_demo_cs_emp',
'         where empno = c1.n001;',
'',
'    end if;',
'end loop;',
'--',
'-- Clear the contents of the collection',
'--',
'apex_collection.delete_collection( p_collection_name => ''EMPCOLLECTION'' );',
'--',
'commit;'))
,p_process_error_message=>'Error applying changes to the database table.'
,p_process_when_button_id=>wwv_flow_api.id(8245142072037502350)
,p_process_success_message=>'Successfully applied changes to the database table.'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'Add/Edit Collection Member'
,p_alias=>'EDITEMP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add/Edit Collection Member'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(602089923657356862)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_read_only_when=>'P7_STATUS'
,p_read_only_when2=>'D'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_upd_yyyymmddhh24miss=>'20130411103743'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(696430424232898062)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114711981356882)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(696427940593883909)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(602130242240356894)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8245160371723700138)
,p_plug_name=>'Collection Member'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602116228818356883)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8245192252504761647)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_button_name=>'Cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8245185361376754758)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_button_name=>'Add_Member'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Add Member'
,p_button_position=>'BOTTOM'
,p_button_condition=>'P7_SEQ'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8245187668995756988)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_button_name=>'Delete_Member'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Delete Member'
,p_button_position=>'BOTTOM'
,p_button_condition=>':P7_SEQ is not null and :P7_STATUS <> ''D'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8245189978345759674)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_button_name=>'Update_Member'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Member'
,p_button_position=>'BOTTOM'
,p_button_condition=>':P7_SEQ is not null and :P7_STATUS <> ''D'''
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8245194667792762772)
,p_branch_action=>'6'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_sequence=>10
,p_branch_comment=>'Created 17-JUL-2002 14:16 by JOEL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7808371301689156782)
,p_name=>'P7_XMLTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_prompt=>'XMLType'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>15
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'P7_SEQ'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'The XMLType field in this application is only used for demonstration purposes.  The value of this field is computed using the PL/SQL API DBMS_XMLGEN.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8245163656842707014)
,p_name=>'P7_EMPNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_prompt=>'Emp&nbsp;No'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_display_when=>'P7_EMPNO'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8245165949726710375)
,p_name=>'P7_ENAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_prompt=>'Employee&nbsp;Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8245168777533712616)
,p_name=>'P7_JOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'JOB LOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select distinct job d, job r',
'  from eba_demo_cs_emp',
' order by 1'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8245171074514714064)
,p_name=>'P7_MGR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_prompt=>'Manager'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ename d, empno r',
'  from eba_demo_cs_emp',
' where (:P7_EMPNO is null or empno <> :P7_EMPNO)',
' order by 1 asc;'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8245173370848715792)
,p_name=>'P7_HIREDATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_prompt=>'Hire&nbsp;Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8245175662653719547)
,p_name=>'P7_SAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8245178450348740481)
,p_name=>'P7_COMM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_prompt=>'Commission'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8245180777509743020)
,p_name=>'P7_DEPTNO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_prompt=>'Dept&nbsp;No'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPTNO LOV'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select distinct deptno d, deptno r',
'  from eba_demo_cs_emp',
' order by 1'))
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8245196961106765889)
,p_name=>'P7_SEQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_prompt=>'P7_SEQ'
,p_display_as=>'NATIVE_HIDDEN'
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8245240277841864469)
,p_name=>'P7_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8245160371723700138)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'STATUS LOV'
,p_lov=>'.'||wwv_flow_api.id(708471944076566782)||'.'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8245237450465862000)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Form with Member Attributes'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'for c1 in (select c001, c002, c003, c004, d001, n001, n002, n003, n004, xmltype001',
'             from apex_collections',
'            where collection_name = ''EMPCOLLECTION''',
'              and seq_id = :P7_SEQ) loop',
'    --',
'    :P7_EMPNO    := c1.n001;',
'    :P7_ENAME    := c1.c001;',
'    :P7_JOB      := c1.c002;',
'    :P7_MGR      := c1.c003;',
'    :P7_HIREDATE := c1.d001;',
'    :P7_SAL      := c1.n002;',
'    :P7_COMM     := c1.n003;',
'    :P7_DEPTNO   := c1.n004;',
'    :P7_STATUS   := c1.c004;',
'    if c1.xmltype001 is not null then',
'        :P7_XMLTYPE  := xmltype.extract(c1.xmltype001,''/*'').getstringval();',
'    end if;',
'    --',
'end loop;'))
,p_process_when=>'P7_SEQ'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8245225674428820425)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Member'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    l_xmltype xmltype;',
'begin',
'if :P7_XMLTYPE is not null then',
'    l_xmltype := xmltype( :P7_XMLTYPE );',
'end if;',
'',
'apex_collection.add_member(',
'    p_collection_name => ''EMPCOLLECTION'',',
'    p_n001            => :P7_EMPNO,',
'    p_n002            => :P7_SAL,',
'    p_n003            => :P7_COMM,',
'    p_n004            => :P7_DEPTNO,',
'    p_c001            => :P7_ENAME,',
'    p_c002            => :P7_JOB,',
'    p_c003            => :P7_MGR,',
'    p_d001            => :P7_HIREDATE,',
'    p_c004            => ''N'',',
'    p_xmltype001      => l_xmltype,',
'    p_generate_md5    => ''YES'' );',
'--',
'commit;',
'end;'))
,p_process_error_message=>'Error adding new member to EMP collection.'
,p_process_when_button_id=>wwv_flow_api.id(8245185361376754758)
,p_process_success_message=>'Successfully added new member to EMP collection.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8245255361439887210)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Member'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'--',
'-- If the member of the collection is ''New'', then we don''t',
'-- need to mark it for deletion, we can physically remove it',
'-- from the collection.  Otherwise, mark it for deletion so',
'-- it will be eventually physically removed from the EMP table',
'-- when applied',
'--',
'if :P7_STATUS = ''N'' then',
'    apex_collection.delete_member(',
'        p_collection_name => ''EMPCOLLECTION'',',
'        p_seq             => :P7_SEQ );',
'else',
'    apex_collection.update_member_attribute(',
'       p_collection_name => ''EMPCOLLECTION'',',
'       p_seq             => :P7_SEQ,',
'       p_attr_number     => 4,',
'       p_attr_value      => ''D'' );',
'end if;',
'--',
'commit;'))
,p_process_error_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Error deleting collection member.',
'',
''))
,p_process_when_button_id=>wwv_flow_api.id(8245187668995756988)
,p_process_success_message=>'Succesfully deleted collection member.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8245268373694927136)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Member'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    l_status  varchar2(10);',
'    l_xmltype xmltype;',
'begin',
'    --',
'    -- If the member of the collection is marked as ''New'', then',
'    -- leave it marked as ''New'', otherwise mark as updated so',
'    -- it will eventually be updated to the EMP database table.',
'    --',
'    if :P7_STATUS = ''N'' then',
'        l_status := ''N'';',
'    else',
'        l_status := ''U'';',
'    end if;',
'    --',
'    if :P7_XMLTYPE is not null then',
'        l_xmltype := xmltype( :P7_XMLTYPE );',
'    end if;',
'    --',
'    apex_collection.update_member(',
'        p_collection_name => ''EMPCOLLECTION'',',
'        p_seq             => :P7_SEQ,',
'        p_n001 => :P7_EMPNO,',
'        p_n002 => :P7_SAL,',
'        p_n003 => :P7_COMM,',
'        p_n004 => :P7_DEPTNO,',
'        p_c001 => :P7_ENAME,',
'        p_c002 => :P7_JOB,',
'        p_c003 => :P7_MGR,',
'        p_d001 => :P7_HIREDATE,',
'        p_c004 => l_status,',
'        p_xmltype001 => l_xmltype );',
'    --',
'    commit;',
'end;'))
,p_process_error_message=>'Error updating collection member.'
,p_process_when_button_id=>wwv_flow_api.id(8245189978345759674)
,p_process_success_message=>'Succesfully updated collection member.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8245216071002791630)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'Help'
,p_page_mode=>'NORMAL'
,p_step_title=>'Help'
,p_step_sub_title=>'Help'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<style>',
'div.helpContainer{width:960px;margin:16px auto;zoom:1}',
'div.helpContainer:before,div.helpContainer:after{content:"\0020";display:block;height:0;overflow:hidden}',
'div.helpContainer:after{clear:both}',
'div.helpContainer div.helpSide{float:left;width:300px}',
'div.helpContainer div.helpSide h1.appNameHeader{position:relative;font:bold 22px/36px Arial,sans-serif;color:#404040;padding:0;margin:0}',
'div.helpContainer div.helpSide h1.appNameHeader img{display:block;position:absolute;left:0;top:0}',
'div.helpContainer div.helpMain{float:right;border-left:1px solid #EEE;width:632px;padding-left:16px}',
'div.helpContainer div.helpMain h2{font:bold 20px/32px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain h3{font:bold 16px/24px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain h4{font:bold 12px/16px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain p{font:normal 12px/16px Arial,sans-serif;color:#404040;margin:0 0 8px 0}',
'div.helpContainer div.helpMain ul{list-style:outside disc;margin:0 0 0 24px}',
'div.helpContainer div.helpMain ul li{font:normal 12px/20px Arial,sans-serif;color:#404040}',
'div.helpContainer div.helpMain .aboutApp,div.helpContainer div.helpMain .textRegion{border-bottom:1px solid #EEE;padding-bottom:16px;margin-bottom:16px}',
'</style>'))
,p_step_template=>wwv_flow_api.id(602089923657356862)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_upd_yyyymmddhh24miss=>'20130408160025'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2691889216940316112)
,p_plug_name=>'Help'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114711981356882)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(602130242240356894)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2691889433410316116)
,p_plug_name=>'Help Container'
,p_region_css_classes=>'helpContainer'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2691891616575454172)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2691889640850316117)
,p_plug_name=>'Main Help Info'
,p_parent_plug_id=>wwv_flow_api.id(2691889433410316116)
,p_region_css_classes=>'helpMain'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2691891616575454172)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2691889843229316119)
,p_plug_name=>'Quick Start'
,p_parent_plug_id=>wwv_flow_api.id(2691889640850316117)
,p_region_css_classes=>'textRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<H2>Getting Started</h2>',
'<p>Run the application as a developer; at the bottom of the page will be buttons for viewing the page in the Application Express Application Builder. Click on the "Edit Page X" button to see how the pages are defined.</p>',
'<p>If you have questions, ask them on the <a href="https://forums.oracle.com/forums/forum.jspa?forumID=137">OTN Forum</a>.</p>'))
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2691890040097316120)
,p_plug_name=>'Features'
,p_parent_plug_id=>wwv_flow_api.id(2691889640850316117)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2>Features</h2>',
'<p>',
'    <ul>',
'        <li>Custom Collections</li>',
'            <ul>',
'                <li>Character data-type collection elements</li>',
'                <li>Numeric data-type collection elements</li>',
'                <li>Date data-type collection elements</li>',
'            </ul>',
'        <li>Table-Derived Collections</li>',
'            <ul>',
'                <li>Synchronizing collection data with application table data</li>',
'                <li>XML ROWSET data display</li>',
'            </ul>',
'  </ul>',
'</p>'))
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
 p_id=>wwv_flow_api.id(2691890243287316120)
,p_plug_name=>'About this Application'
,p_parent_plug_id=>wwv_flow_api.id(2691889640850316117)
,p_region_css_classes=>'aboutApp'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2>About this Application</h2>',
'',
'<p>This example application demonstrates the use of the Collections API, and how it can easily be employed in your applications.</p>',
'',
'<p>The first tab, Home, provides a simple interface to see collections in action, to easily create and delete collections, as well as add members, modify members, and remove members from the collection. This example application also shows the MD5 mes'
||'sage digest computed automatically each time a new member is added to a collection. This provides a convenient mechanism to determine if any attributes of a collection member have changed.</p>',
'',
'<p>The second tab, Collection on EMP, shows a complete example using collections to maintain values in session state for many rows of data. This example also demonstrates a method to synchronize information contained in the collection with the EMP da'
||'tabase table. This example uses an additional, non-user editable collection member attribute to track the status of a particular row in the collection. The XMLType001 column of the collection is populated with the XML ROWSET representation of the row'
||', but it is only used for demonstration purposes and is not involved in the synchronization of the collection to the EMP table.</p>',
'',
'<p>In the Collection on EMP example, you should first populate the named collection from the EMP table by clicking the "Populate Collection from EMP" button. Then, you can add new members, update members, and delete members in this collection. Modifi'
||'cations will happen exclusively to the members in the collection. By clicking the "Apply Collection" button, you are then instructing the application to process each row in the EMP collection, issuing the correct INSERT, UPDATE or DELETE statements a'
||'gainst the EMP table.</p>'))
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2691890426661316122)
,p_plug_name=>'App Info'
,p_parent_plug_id=>wwv_flow_api.id(2691889433410316116)
,p_region_css_classes=>'helpSide'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2691891616575454172)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'sys.htp.p(''<h1 class="appNameHeader">'');',
'for c2 in (select LOGO, application_name from apex_applications where application_id = :APP_ID) loop',
'	if (instr(upper(c2.logo),''<'') = 0 and c2.logo is not null) then ',
'		sys.htp.p(replace(apex_escape.html(c2.LOGO),''TEXT:'',''''));',
'	else',
'		sys.htp.p(apex_escape.html(c2.application_name));',
'	end if;',
'end loop;',
'sys.htp.p(''</h1>'');',
'sys.htp.p(''<ul class="vapList">'');',
'',
'for c2 in (select version from apex_applications where application_id = :APP_ID) loop',
'	sys.htp.p('' <li>'');',
'	sys.htp.p(''   <span class="vLabel">App Version</span>'');',
'	sys.htp.p(''   <span class="vValue">''||apex_escape.html(c2.version)||''</span>'');',
'	sys.htp.p('' </li>'');',
'end loop;',
'',
'sys.htp.p('' <li>'');',
'sys.htp.p(''   <span class="vLabel">Pages</span>'');',
'sys.htp.p(''   <span class="vValue">'');',
'for c2 in (select to_char(PAGES,''999G999G990'') pages from apex_applications where application_id = :APP_ID) loop',
'	sys.htp.p(c2.pages);',
'end loop;',
'sys.htp.p(''</span>'');',
'sys.htp.p('' </li>'');',
'',
'sys.htp.p('' <li>'');',
'sys.htp.p(''   <span class="vLabel">Vendor</span>'');',
'sys.htp.p(''   <span class="vValue">'');',
'sys.htp.p(''<a href="http://oracle.com" target="_blank">Oracle</a>'');',
'sys.htp.p(''</span>'');',
'sys.htp.p('' </li>'');',
'',
'sys.htp.p(''</ul>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'Create Re-Bill Requests'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create Re-Bill Requests'
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
,p_last_upd_yyyymmddhh24miss=>'20141111114656'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(19268320447534238)
,p_name=>'Re-Bill'
,p_template=>wwv_flow_api.id(602119133064356885)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_1'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select seq_id editlink,',
'    seq_id, ',
'    c001, ',
'    c002, ',
'    c003, ',
'    c004, ',
'    c005, ',
'    c006, ',
'    d001,',
'    c007',
'from apex_collections',
'where collection_name = ''REBILLREQUEST'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(602122619398356887)
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
 p_id=>wwv_flow_api.id(19268627673534259)
,p_query_column_id=>1
,p_column_alias=>'EDITLINK'
,p_column_display_sequence=>1
,p_column_heading=>'EDITLINK'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_ITEM_NO,P10_ITEM_STATUS,P10_USERID:#SEQ_ID#,#C007#,&APP_USER.'
,p_column_linktext=>'<span><i></i<</span>'
,p_column_link_attr=>'class="uButton uAltButton iconButton iconOnly edit"'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19268713293534264)
,p_query_column_id=>2
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Item ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19268824619534264)
,p_query_column_id=>3
,p_column_alias=>'C001'
,p_column_display_sequence=>3
,p_column_heading=>'Client ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19268913871534264)
,p_query_column_id=>4
,p_column_alias=>'C002'
,p_column_display_sequence=>4
,p_column_heading=>'Work Order No'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19269011194534264)
,p_query_column_id=>5
,p_column_alias=>'C003'
,p_column_display_sequence=>5
,p_column_heading=>'Initial Invoice No'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19269127338534264)
,p_query_column_id=>6
,p_column_alias=>'C004'
,p_column_display_sequence=>6
,p_column_heading=>'User Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19269207035534264)
,p_query_column_id=>7
,p_column_alias=>'C005'
,p_column_display_sequence=>7
,p_column_heading=>'Reqeust Type'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19269332696534264)
,p_query_column_id=>8
,p_column_alias=>'C006'
,p_column_display_sequence=>8
,p_column_heading=>'Reqeust Status'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19269419260534264)
,p_query_column_id=>9
,p_column_alias=>'D001'
,p_column_display_sequence=>9
,p_column_heading=>'Reqeust Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19273529961499458)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'Line Item Status'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19298927659299504)
,p_plug_name=>'Re-Bill Title'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602119133064356885)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19274226903652530)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19268320447534238)
,p_button_name=>'ADD_RE-BILL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(115585781265281)
,p_button_image_alt=>'Add to Re-Bill Request'
,p_button_position=>'TOP'
,p_button_condition=>'apex_collection.collection_exists(''REBILLREQUEST'')'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19274600331701620)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(19268320447534238)
,p_button_name=>'SAVE_REBILL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(115585781265281)
,p_button_image_alt=>'Save Re-bill Request'
,p_button_position=>'TOP'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare ',
'',
'NUM_VAR  NUMBER;',
'',
'BEGIN',
'NUM_VAR := APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''REBILLREQUEST'');',
'',
'IF NUM_VAR <  1 ',
'   THEN ',
'        RETURN FALSE;',
'ELSE ',
'        RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19276518283952766)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(19268320447534238)
,p_button_name=>'CREATE_REBILL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(115585781265281)
,p_button_image_alt=>'Create Re-bill Request'
,p_button_position=>'TOP'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'BEGIN',
'',
'IF ( apex_collection.collection_exists(''REBILLREQUEST'') ) THEN ',
'   RETURN FALSE;',
'ELSE ',
'   RETURN TRUE; ',
'',
'END IF;',
'',
'END;'))
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19296318834634745)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(19268320447534238)
,p_button_name=>'CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(115585781265281)
,p_button_image_alt=>'Clear Re-Bill Request'
,p_button_position=>'TOP'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare ',
'',
'NUM_VAR  NUMBER;',
'',
'BEGIN',
'NUM_VAR := APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''REBILLREQUEST'');',
'',
'IF NUM_VAR <  1 ',
'   THEN ',
'        RETURN FALSE;',
'ELSE ',
'        RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(19274512129690018)
,p_branch_name=>'add_REBILL'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(19274226903652530)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19299217332306209)
,p_name=>'P9_REBILLTITLE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19298927659299504)
,p_prompt=>'Re-Bill Title'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19299917295351890)
,p_name=>'P9_REQUESTID_BEGIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(19298927659299504)
,p_prompt=>'Requestid Begin'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19300107591356304)
,p_name=>'P9_REQUESTID_END'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(19298927659299504)
,p_prompt=>'Requestid End'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19276708025959233)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREATE_REBILL'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'apex_collection.create_collection( p_collection_name => ''REBILLREQUEST'' );',
'commit;',
'',
'END;'))
,p_process_error_message=>'Problems Creating request'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19276518283952766)
,p_process_when=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF ( apex_collection.collection_exists(''REBILLREQUEST'') )',
'   THEN ',
'       RETURN FALSE;',
'ELSE ',
'       RETURN TRUE;',
'END IF;',
'',
'END;',
''))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_success_message=>'Empty Re-Bill Request created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19296603774668247)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Re-Bill Request '
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''REBILLREQUEST'');',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19296318834634745)
,p_process_when=>'apex_collection.collection_exists(''REBILLREQUEST'')'
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'Re-Bill Request Cleared'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19297419011022662)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Re-Bill Request'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'insert into BOA_REBILLREQUESTS_STG (CLIENTID, WORKORDERNO, INITIALINVOICENO, USERID) ',
'values ( ''N/A'', ''BEGIN'', ''00000'', :APP_USER) RETURNING REQUESTOID INTO :P9_REQUESTID_BEGIN;',
'COMMIT;',
'',
'',
'for c1 in (select seq_id, c001, c002, c003, c004, c005, c006, d001, c007',
'             from apex_collections',
'            where collection_name = ''REBILLREQUEST''',
'           ) loop',
'    --',
'    if c1.c007 IN (''NEW'', ''UPDATE'')  then',
'        insert into BOA_REBILLREQUESTS_STG (CLIENTID, WORKORDERNO, INITIALINVOICENO, USERID,  REQEUSTTYPE, STATUS, REQUESTDATE)',
'        values (C1.c001, C1.c002, C1.c003,C1.c004, C1.c005,C1.c006, C1.d001 );',
'    end if;',
'     COMMIT;',
'     ',
'end loop;',
'',
'insert into BOA_REBILLREQUESTS_STG (CLIENTID, WORKORDERNO, INITIALINVOICENO, USERID) ',
'values ( ''N/A'', ''END'', ''00000'', :APP_USER ) RETURNING REQUESTOID INTO :P9_REQUESTID_END;',
'COMMIT;',
'',
'INSERT INTO BOA_FILES_UPLOADED ( FILE_NAME, RECORDCNT, USERID, COMMENTS, BEGIN_STG_ID, END_STG_ID, LOADED)',
'VALUES ( :P9_REBILLTITLE, -1,  :APP_USER,  ''MANUAL INSERT'', :P9_REQUESTID_BEGIN, :P9_REQUESTID_END, 0);',
'',
'COMMIT;',
'',
'--',
'-- Clear the contents of the collection',
'--',
'apex_collection.delete_collection( p_collection_name => ''REBILLREQUEST'' );',
'--',
'commit;',
'',
'END;'))
,p_process_error_message=>'Save action failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19274600331701620)
,p_process_success_message=>'Re-Bill Request Saved'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_name=>'Edit ReBill Request'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit ReBill Request'
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
,p_last_upd_yyyymmddhh24miss=>'20141111104753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19270327545827140)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114711981356882)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(696427940593883909)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(602130242240356894)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19270627672858075)
,p_plug_name=>'Edit Re-Bill Requests'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602119133064356885)
,p_plug_display_sequence=>20
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19274921419755033)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19270627672858075)
,p_button_name=>'ADD_REBILL_ITEM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(115585781265281)
,p_button_image_alt=>'Add Re-bill Item'
,p_button_position=>'TOP'
,p_button_condition=>'P10_ITEM_NO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19275223974765212)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(19270627672858075)
,p_button_name=>'DELETE_REBILL_ITEM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(115585781265281)
,p_button_image_alt=>'Delete Re-bill Item'
,p_button_position=>'TOP'
,p_button_condition=>'P10_ITEM_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19275529992776425)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(19270627672858075)
,p_button_name=>'UPDATE_REBILL_ITEM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(115585781265281)
,p_button_image_alt=>'Update Re-bill Item'
,p_button_position=>'TOP'
,p_button_condition=>'P10_ITEM_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19298414696134940)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(19270627672858075)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(115585781265281)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(19276407464859311)
,p_branch_name=>'Goback'
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19270921638865266)
,p_name=>'P10_ITEM_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19270627672858075)
,p_prompt=>'Item No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19271127221893070)
,p_name=>'P10_CLIENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(19270627672858075)
,p_prompt=>'Client Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19271530362271321)
,p_name=>'P10_WORKORDERNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(19270627672858075)
,p_prompt=>'Workorderno'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19271718501276876)
,p_name=>'P10_INITIALINVOICENO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(19270627672858075)
,p_prompt=>'Initial invoice No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19271906208282614)
,p_name=>'P10_USERID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(19270627672858075)
,p_prompt=>'USER ID'
,p_source=>'APP_USER'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19272130350286518)
,p_name=>'P10_REQUEST_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(19270627672858075)
,p_item_default=>'I'
,p_prompt=>'Request Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19272320645291102)
,p_name=>'P10_REQUEST_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(19270627672858075)
,p_item_default=>'Requested'
,p_prompt=>'Request Status'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19272510509295805)
,p_name=>'P10_REQUEST_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(19270627672858075)
,p_prompt=>'Request Date'
,p_source=>'SELECT TRUNC(SYSDATE) FROM DUAL;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19272731847301110)
,p_name=>'P10_ITEM_STATUS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(19270627672858075)
,p_prompt=>'Item Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19274012658620051)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'read in'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'for c1 in (select seq_id, c001, c002, c003, c004, c005, c006, d001, c007',
'             from apex_collections',
'            where collection_name = ''REBILLREQUEST''',
'              and seq_id = :P10_ITEM_NO) loop',
'    --',
'    :P10_ITEM_NO             := c1.SEQ_ID;',
'    :P10_CLIENT_ID           := c1.c001;',
'    :P10_WORKORDERNO         := c1.c002;',
'    :P10_INITIALINVOICENO    := c1.c003;',
'    :P10_USERID              := c1.c004;',
'    :P10_REQUEST_TYPE        := c1.c005;',
'    :P10_request_status      := c1.c006;',
'    :P10_request_date        := c1.d001;',
'    :P10_ITEM_STATUS         := c1.c007;',
'    --',
'end loop;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19276017057838869)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Re-bill Item'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'',
'apex_collection.add_member(',
'    p_collection_name => ''REBILLREQUEST'',',
'    p_c001            => :P10_CLIENT_ID,',
'    p_c002            => :P10_WORKORDERNO,',
'    p_c003            => :P10_INITIALINVOICENO,',
'    p_c004            => :P10_USERID,',
'    p_c005            => :P10_REQUEST_TYPE,',
'    p_c006            => :P10_request_status,',
'    p_d001            => :P10_request_date,',
'    p_c007            => ''NEW'',',
'    p_generate_md5    => ''YES'' );',
'--',
'commit;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19274921419755033)
,p_process_when=>':P10_ITEM_NO '
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19293203541176201)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Re-bill Item'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    l_status  varchar2(10);',
'begin',
'    --',
'    -- If the member of the collection is marked as ''New'', then',
'    -- leave it marked as ''New'', otherwise mark as updated so',
'    -- it will eventually be updated to the EMP database table.',
'    --',
'    if :P10_STATUS = ''NEW'' then',
'        l_status := ''NEW'';',
'    else',
'        l_status := ''UPDATE'';',
'    end if;',
'    --',
'    --',
'    apex_collection.update_member(',
'      p_collection_name => ''REBILLREQUEST'',',
'      p_seq             => :P10_ITEM_NO,',
'      p_c001            => :P10_CLIENT_ID,',
'      p_c002            => :P10_WORKORDERNO,',
'      p_c003            => :P10_INITIALINVOICENO,',
'      p_c004            => :P10_USERID,',
'      p_c005            => :P10_REQUEST_TYPE,',
'      p_c006            => :P10_request_status,',
'      p_d001            => :P10_request_date,',
'      p_c007 => l_status);',
'    --',
'    commit;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19275529992776425)
,p_process_when=>'P10_ITEM_NO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19297030552884126)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove Re-Bill Item'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'--',
'-- If the member of the collection is ''New'', then we don''t',
'-- need to mark it for deletion, we can physically remove it',
'-- from the collection.  Otherwise, mark it for deletion so',
'-- it will be eventually physically removed from the EMP table',
'-- when applied',
'--',
'if (:P10_ITEM_STATUS in ( ''NEW'',''UPDATE'') ) ',
'   then',
'    apex_collection.delete_member(',
'        p_collection_name => ''REBILLREQUEST'',',
'        p_seq             => :P10_ITEM_NO );',
'else',
'    apex_collection.update_member_attribute(',
'       p_collection_name => ''EMPCOLLECTION'',',
'       p_seq             => :P10_ITEM_NO,',
'       p_attr_number     => 7,',
'       p_attr_value      => ''DELETE'' );',
'end if;',
'--',
'commit;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19275223974765212)
,p_process_when=>'P10_ITEM_NO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Re-Bill Item was removed'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'Sample Collections - API Examples'
,p_page_mode=>'NORMAL'
,p_step_title=>'Sample Collections - API Syntax'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(602089923657356862)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150326133156'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(677405714170050239)
,p_plug_name=>'apex_collection.create_or_truncate_collection'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114424813356882)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>apex_collection.create_or_truncate_collection( p_collection_name => :P2_NAME );',
'commit;</pre>'))
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
 p_id=>wwv_flow_api.id(677406120759127863)
,p_plug_name=>'apex_collection.add_member'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114424813356882)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>',
'apex_collection.add_member(',
'    p_collection_name => :P3_NAME,',
'    p_c001            => :P3_ATTR1,',
'    p_c002            => :P3_ATTR2,',
'    p_c003            => :P3_ATTR3,',
'    p_c004            => :P3_ATTR4,',
'    p_c005            => :P3_ATTR5,',
'    p_n001            => :P3_NUM_ATTR1,',
'    p_n002            => :P3_NUM_ATTR2,',
'    p_n003            => :P3_NUM_ATTR3,',
'    p_d001            => to_date(:P3_DATE_ATTR1,''MM/DD/YYYY''),',
'    p_d002            => to_date(:P3_DATE_ATTR2,''MM/DD/YYYY''),',
'    p_d003            => to_date(:P3_DATE_ATTR3,''MM/DD/YYYY''),',
'    p_generate_md5    => ''YES'' );',
'commit;',
'</pre>'))
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
 p_id=>wwv_flow_api.id(677406517773136470)
,p_plug_name=>'apex_collection.resequence_collection'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114424813356882)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>apex_collection.resequence_collection(',
'    p_collection_name => :P3_NAME );',
'commit;',
'</pre>'))
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
 p_id=>wwv_flow_api.id(677406841668143305)
,p_plug_name=>'apex_collection.delete_collection'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114424813356882)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>apex_collection.delete_collection(',
'    p_collection_name => :P3_NAME );',
'--',
'commit;',
'</pre>'))
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
 p_id=>wwv_flow_api.id(677407323445147576)
,p_plug_name=>'About this page'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602115924874356883)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<p>This page lists some of the PL/SQL page processes used in this demonstration application.</p>'
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
 p_id=>wwv_flow_api.id(677409031195159294)
,p_plug_name=>'apex_collection.truncate_collection'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114424813356882)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>apex_collection.truncate_collection (',
'    p_collection_name => :P3_NAME );',
'--',
'commit;',
'</pre>'))
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
 p_id=>wwv_flow_api.id(677410027693205522)
,p_plug_name=>'apex_collections'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114424813356882)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>select seq_id editlink,',
'    seq_id, ',
'    n001, ',
'    n002, ',
'    n003, ',
'    n004, ',
'    d001, ',
'    c001, ',
'    c002, ',
'    c003, ',
'    c004 status',
'from apex_collections',
'where collection_name = ''EMPCOLLECTION''',
'</pre>'))
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
 p_id=>wwv_flow_api.id(696431339816902561)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114711981356882)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(696427940593883909)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(602130242240356894)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(708611129830884411)
,p_plug_name=>'apex_collection.create_collection_from_query2'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114424813356882)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>apex_collection.create_collection_from_query2(',
'    p_collection_name => ''EMPCollection'',',
'    p_query           => ''select empno, sal, comm, deptno, null, hiredate, null, null, null, null, ename, job, mgr, ''''O'''' original_flag from eba_demo_cs_emp order by ename'',',
'    p_generate_md5    => ''YES'');',
'</pre>'))
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
 p_id=>wwv_flow_api.id(708611419918891070)
,p_plug_name=>'apex_collection.update_member_attribute'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114424813356882)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>',
'for c1 in (select n001 empno, seq_id',
'             from apex_collections',
'            where collection_name = ''EMPCOLLECTION''',
'           order by seq_id) loop',
'    ',
'    l_rowxml := dbms_xmlgen.getxml( ''select * from eba_demo_cs_emp where empno = '' || c1.empno );',
'    apex_collection.update_member_attribute( ',
'        p_collection_name => ''EMPCollection'',',
'        p_seq             => c1.seq_id,',
'        p_xmltype_number  => 1,',
'        p_xmltype_value   => XMLType(l_rowxml));',
'end loop;',
'</pre>'))
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
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'Administration'
,p_page_mode=>'NORMAL'
,p_step_title=>'Administration'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(602089923657356862)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20130408163239'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(696414342433662446)
,p_plug_name=>'Administration'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602120214364356885)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_api.id(696413527537662440)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(602126518268356889)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(696434030035918685)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114711981356882)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(696427940593883909)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(602130242240356894)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'Remove Collections'
,p_page_mode=>'NORMAL'
,p_step_title=>'Remove Collections'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(602089923657356862)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20130411104841'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(696415322472678090)
,p_plug_name=>'Remove Collections'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114120651356881)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(708513812768822679)
,p_name=>'Collection Members In Current Application'
,p_template=>wwv_flow_api.id(602119133064356885)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select collection_name, count(*) collection_count',
'  from apex_collections',
' group by collection_name'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>'select null from apex_collections'
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(602122619398356887)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No collection members found'
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
 p_id=>wwv_flow_api.id(708514135619822693)
,p_query_column_id=>1
,p_column_alias=>'COLLECTION_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Collection Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(708514243934822696)
,p_query_column_id=>2
,p_column_alias=>'COLLECTION_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Number of Members'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(696415916878682745)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(696415322472678090)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(696416113643684277)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(696415322472678090)
,p_button_name=>'remove_collections'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove Collections'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(696434916249926176)
,p_branch_name=>'go back to admin'
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(696415523297680156)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove collections'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'-- This procedure will delete all collections that belong to the current user',
'-- in the current APEX session and for the current application ID',
'--',
'apex_collection.delete_all_collections;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Collections removed.'
);
end;
/
prompt --application/pages/page_00039
begin
wwv_flow_api.create_page(
 p_id=>39
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'Reset Data'
,p_page_mode=>'NORMAL'
,p_step_title=>'Recreate Tables'
,p_step_sub_title=>'Recreate Tables'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(602089923657356862)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20130725085717'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(696432732379915346)
,p_plug_name=>'Manage Sample Application'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114120651356881)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<span class="infoTextRegion"><p>Click the reset data button to reset the data to default values.</p></span>'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(696433427654915349)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114711981356882)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(696427940593883909)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(602130242240356894)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(696432928863915346)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(696432732379915346)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(696433143480915347)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(696432732379915346)
,p_button_name=>'reset_data'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Data'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(696434720131924335)
,p_branch_name=>'go back to admin'
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(696433723958915349)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'reset data'
,p_process_sql_clob=>'eba_demo_cs_emp_data;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Data has been reset to default values.'
);
end;
/
prompt --application/pages/page_00100
begin
wwv_flow_api.create_page(
 p_id=>100
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_tab_set=>'TS1'
,p_name=>'Sample Collections - Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Sample Collections - Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'section.infoRegion {',
'    border: 1px solid #9AAEC8;',
'    background-color: #DDE7F5;',
'}',
'section.infoRegion > div.uRegionHeading {',
'    background: none transparent;',
'}',
'.infoRegionIcon {',
'    position: absolute;',
'    left: 0;',
'    margin: 16px;',
'    top: 0;',
'}',
'section.infoRegion.uRegion > div.uRegionContent {',
'    position: relative;',
'    min-height: 32px;',
'    padding: 16px 16px 16px 64px;',
'}',
'.infoRegion h1 {',
'    font-weight: bold;',
'    font-size: 14px;',
'    color: #202020;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.65);',
'}',
'.infoRegion p {',
'    font-size: 12px;',
'    line-height: 20px;',
'    padding: 8px 0 0 0;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.25);',
'    color: #303030;',
'}',
'.infoRegion p:last-child {',
'    margin-bottom: 0 !important;',
'}',
'',
'',
'',
'div.featuredBlock{',
'	-webkit-border-radius:3px;',
'	-moz-border-radius:3px;',
'	border-radius:3px;',
'	-webkit-box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	-moz-box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	border:1px solid #E1E6EB;',
'	margin-bottom:18px',
'}',
'div.featuredBlock div.featuredIcon{',
'	background-image:url(''data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPb'
||'lVzZSIgeDE9IjUwJSIgeTE9IjAlIiB4Mj0iNTAlIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iI2ZmZmZmZiIvPjxzdG9wIG9mZnNldD0iNDAlIiBzdG9wLWNvbG9yPSIjZmZmZmZmIi8+PHN0b3Agb2Zmc2V0PSI2MCUiIHN0b3AtY29sb3I9IiNmNGY0ZjgiLz48c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3A'
||'tY29sb3I9IiNmZmZmZmYiLz48L2xpbmVhckdyYWRpZW50PjwvZGVmcz48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSJ1cmwoI2dyYWQpIiAvPjwvc3ZnPiA='');',
'	background-size:100%;',
'	background-image:-webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #ffffff), color-stop(40%, #ffffff), color-stop(60%, #f4f4f8), color-stop(100%, #ffffff));',
'	background-image:-webkit-linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	background-image:-moz-linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	background-image:linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	-webkit-border-radius:3px 3px 0 0;',
'	-moz-border-radius:3px 3px 0 0;',
'	border-radius:3px 3px 0 0;',
'	padding:8px 0;',
'	min-height: 90px;',
'	text-align:center;',
'}',
'div.featuredBlock div.featuredIcon img{',
'	display:block;',
'	margin:0 auto 0 auto;',
'	-webkit-box-reflect:below -20px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(65%, transparent), to(rgba(255,255,255,0.2)));',
'}',
'div.featuredBlock div.featuredIcon h1{',
'	font-size:12px;',
'	line-height:12px;',
'	color:#404040;',
'	margin:0 8px;',
'	padding:0;',
'	text-align:center;',
'}',
'a.blockLink,a.blockLink:hover{',
'	text-decoration:none',
'}',
'a.blockLink:hover div.featuredBlock{',
'	border:1px solid #b1bbcb',
'}',
'a.blockLink:hover div.featuredBlock div.featuredIcon{',
'	background: none #e5effb;',
'	-webkit-box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'	-moz-box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'	box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'}',
'.regionDivider {',
'	border-top: 2px solid #F0F0F0 !important;',
'	padding-top: 8px;;',
'}'))
,p_step_template=>wwv_flow_api.id(602089923657356862)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20130409084529'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(696418023690708627)
,p_plug_name=>'Additional Oracle APEX Communities and Resources '
,p_region_css_classes=>'regionDivider'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114424813356882)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'	<div class="apex_cols apex_span_2 alpha">',
'		<a href="https://forums.oracle.com/forums/forum.jspa?forumID=137" class="blockLink" target="_blank">',
'		<div class="featuredBlock">',
'			<div class="featuredIcon">',
'				<img src="#IMAGE_PREFIX#eba/icons/forums.png" alt="" />',
'				<h1>Oracle OTN Forums</h1>',
'			</div>',
'		</div>',
'		</a>',
'	</div>',
'	<div class="apex_cols apex_span_2">',
'		<a href="http://www.linkedin.com/skills/skill/Oracle_Application_Express" class="blockLink" target="_blank">',
'		<div class="featuredBlock">',
'			<div class="featuredIcon">',
'				<img src="#IMAGE_PREFIX#eba/icons/linkedin.png" alt="" />',
'				<h1>Connect on LinkedIn</h1>',
'			</div>',
'		</div>',
'		</a>',
'	</div>',
'	<div class="apex_cols apex_span_2">',
'		<a href="http://twitter.com/oracleapexnews" class="blockLink" target="_blank">',
'		<div class="featuredBlock">',
'			<div class="featuredIcon">',
'				<img src="#IMAGE_PREFIX#eba/icons/twitter.png" alt="" />',
'				<h1>Follow us on Twitter</h1>',
'			</div>',
'		</div>',
'		</a>',
'	</div>',
'	<div class="apex_cols apex_span_2">',
'		<a href="https://cloud.oracle.com/" class="blockLink" target="_blank">',
'		<div class="featuredBlock">',
'			<div class="featuredIcon">',
'				<img src="#IMAGE_PREFIX#eba/icons/cloud.png" alt="" />',
'				<h1>Oracle Database Cloud Service</h1>',
'			</div>',
'		</div>',
'		</a>',
'	</div>',
'	<div class="apex_cols apex_span_2">',
'		<a href="http://apex.oracle.com/" class="blockLink" target="_blank">',
'		<div class="featuredBlock">',
'			<div class="featuredIcon">',
'				<img src="#IMAGE_PREFIX#eba/icons/apexoracle.png" alt="" />',
'				<h1>apex.oracle.com</h1>',
'			</div>',
'		</div>',
'		</a>',
'	</div>',
'	<div class="apex_cols apex_span_2 omega">',
'		<a href="http://www.oracle.com/technetwork/developer-tools/apex/overview/index.html" class="blockLink" target="_blank">',
'		<div class="featuredBlock">',
'			<div class="featuredIcon">',
'				<img src="#IMAGE_PREFIX#eba/icons/otn.png" alt="" />',
'				<h1>APEX on OTN</h1>',
'			</div>',
'		</div>',
'		</a>',
'	</div>',
'</div>'))
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
 p_id=>wwv_flow_api.id(696418226807709540)
,p_plug_name=>'About this Application'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602115924874356883)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<p>Use this Oracle Application Express (APEX) collections sample to extend session state management to deal with arrays of session-based data.  Oracle APEX page items provides automatic session management for single value items, but does not manage a'
||'rrays of session state.  Oracle APEX collections provides the ability to user session state for an array ("table" rows and columns).  The Oracle database has temporary tables, but since each page view in Oracle APEX has a stateless model each page vi'
||'ew in Oracle APEX is a new database session.  For this reason Oracle temporary tables can not be used for any multi page use case.  Oracle APEX provides API''s to create and manage APEX collection session state.  See the example Use Cases and example '
||'API syntax links below to learn more about using Oracle APEX collections. </p>'
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
 p_id=>wwv_flow_api.id(696419542868723645)
,p_plug_name=>'About Theme 25'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(675063834265338943)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<span class="infoTextRegion"><p>This application uses Theme 25 introduced in APEX 4.2.  Theme 25 is a responsive theme and form layout is different then older APEX themes in that label layout is not table based and is fixed width.  Theme 25 is design'
||'ed for specific screen widths as you increase or decrease the screen width content will adjust.  Use of tables is minimized, HTML tables are used for report results but are not generally used for item layout.</p></span>'
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
 p_id=>wwv_flow_api.id(696423033795775104)
,p_plug_name=>'Collection Examples'
,p_region_name=>'EXAMPLES'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602120214364356885)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_api.id(696421924261775104)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(602126518268356889)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(696428421677887893)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602114711981356882)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(696427940593883909)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(602130242240356894)
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'NEVER'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(499141930545014970)
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.appIcon.sample_collections {',
'background-position:-192px -320px;',
'}',
'',
'.appIcon {',
'display: inline-block;',
'width: 64px;',
'height: 64px;',
'background-image: url(#IMAGE_PREFIX#eba/img/eba_launchpad.png);',
'background-repeat: no-repeat;',
'border: none;',
'-webkit-border-radius: 4px;',
'-moz-border-radius: 4px;',
'border-radius: 4px;',
'-webkit-box-shadow: 0 0 1px rgba(0,0,0,0.75) inset;',
'-moz-box-shadow: 0 0 1px rgba(0,0,0,0.75) inset;',
'box-shadow: 0 0 1px rgba(0,0,0,0.75) inset;',
'margin-right: 8px;',
'vertical-align: middle;',
'}'))
,p_step_template=>wwv_flow_api.id(602070118988356842)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_page_comment=>'This page was generated by the Login Page wizard'
,p_last_upd_yyyymmddhh24miss=>'20130402162325'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(675315740448110537)
,p_plug_name=>'CSS Override'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
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
'  padding: 0;',
'}',
'.infoTextRegion p {',
'  font-size: 14px;',
'  color: #707070;',
'  padding: 0 0 12px 0;',
'  margin: 0;',
'  line-height: 20px;',
'}',
'</style>'))
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8115831311161934912)
,p_plug_name=>'Sample Collections'
,p_region_name=>'sample_collections'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602160239555437882)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(602136741722429640)
,p_plug_name=>'buttons'
,p_parent_plug_id=>wwv_flow_api.id(8115831311161934912)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(602115924874356883)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5279508428283809018)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(602136741722429640)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(602129611760356894)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8115831394242934920)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8115831311161934912)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>100
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8115831500206934922)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8115831311161934912)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>20
,p_cMaxlength=>100
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(602128536077356892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(675069516012463604)
,p_name=>'Set Focus'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'( $v( "P101_USERNAME" ) === "" )'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(675069814118463607)
,p_event_id=>wwv_flow_api.id(675069516012463604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_USERNAME'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(675070023429463610)
,p_event_id=>wwv_flow_api.id(675069516012463604)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P101_PASSWORD'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8115831792897934932)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'owa_util.mime_header(''text/html'', FALSE);',
'owa_cookie.send(',
'    name=>''LOGIN_USERNAME_COOKIE'',',
'    value=>lower(:P101_USERNAME));',
'exception when others then null;',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8115831689733934924)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'wwv_flow_custom_auth_std.login(',
'    P_UNAME       => :P101_USERNAME,',
'    P_PASSWORD    => :P101_PASSWORD,',
'    P_SESSION_ID  => v(''APP_SESSION''),',
'    P_FLOW_PAGE   => :APP_ID||'':1''',
'    );'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8115831896739934932)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8115831998551934932)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    v varchar2(255) := null;',
'    c owa_cookie.cookie;',
'begin',
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');',
'   :P101_USERNAME := c.vals(1);',
'exception when others then null;',
'end;'))
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(7398422450799965282)
,p_welcome_message=>'This application installer will guide you through the process of creating your database objects and seed data.'
,p_configuration_message=>'You can configure the following attributes of your application.'
,p_build_options_message=>'You can choose to include the following build options.'
,p_validation_message=>'The following validations will be performed to ensure your system is compatible with this application.'
,p_install_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_install_success_message=>'Your application''s supporting objects have been installed.'
,p_install_failure_message=>'Installation of database objects and seed data has failed.'
,p_upgrade_message=>'The application installer has detected that this application''s supporting objects were already present.  This wizard will guide you through the process of upgrading these supporting objects.'
,p_upgrade_confirm_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_success_message=>'Your application''s supporting objects have been installed.'
,p_upgrade_failure_message=>'Installation of database objects and seed data has failed.'
,p_get_version_sql_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null',
'  from sys.user_tables',
' where table_name like ''EBA_DEMO_CS_%'''))
,p_deinstall_success_message=>'Deinstallation complete.'
,p_deinstall_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'drop procedure eba_demo_cs_emp_data',
'/',
'    ',
'drop table eba_demo_cs_emp cascade constraints',
'/',
''))
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
,p_required_names_available=>'EBA_DEMO_CS_EMP_DATA:EBA_DEMO_CS_EMP'
);
end;
/
prompt --application/deployment/install
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(2720074641563435139)
,p_install_id=>wwv_flow_api.id(7398422450799965282)
,p_name=>'Set plscope_settings'
,p_sequence=>5
,p_script_type=>'INSTALL'
,p_script_clob=>'ALTER SESSION SET PLSCOPE_SETTINGS = ''IDENTIFIERS:NONE'';'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(696405914246299067)
,p_install_id=>wwv_flow_api.id(7398422450799965282)
,p_name=>'Create EBA_DEMO_CS_EMP Table'
,p_sequence=>20
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>'select table_name from user_tables where table_name = ''EBA_DEMO_CS_EMP'''
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'drop table eba_demo_cs_emp cascade constraints',
'/',
'',
'create table eba_demo_cs_emp (',
'    empno     NUMBER(4) not null',
'                          constraint eba_demo_cs_emp_pk',
'                          primary key,',
'    ename     VARCHAR2(10),',
'    job       VARCHAR2(9),',
'    mgr       NUMBER(4),',
'    hiredate  DATE,',
'    sal       NUMBER(7),',
'    comm      NUMBER(7),',
'    deptno    NUMBER(2)',
')',
'/',
'',
'create index eba_demo_cs_emp_1 ON eba_demo_cs_emp (MGR)',
'/',
'    ',
'create index eba_demo_cs_emp_2 ON eba_demo_cs_emp (DEPTNO)',
'/',
'',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,''KING'',''PRESIDENT'',null,to_date(''17-11-81'',''DD-MM-RR''),5000,null,10);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,''BLAKE'',''MANAGER'',7839,to_date(''01-05-81'',''DD-MM-RR''),2850,null,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,''CLARK'',''MANAGER'',7839,to_date(''09-06-81'',''DD-MM-RR''),2450,null,10);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,''JONES'',''MANAGER'',7839,to_date(''02-04-81'',''DD-MM-RR''),2975,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7788,''SCOTT'',''ANALYST'',7566,to_date(''09-12-82'',''DD-MM-RR''),3000,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7902,''FORD'',''ANALYST'',7566,to_date(''03-12-81'',''DD-MM-RR''),3000,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7369,''SMITH'',''CLERK'',7902,to_date(''17-12-80'',''DD-MM-RR''),800,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,''ALLEN'',''SALESMAN'',7698,to_date(''20-02-81'',''DD-MM-RR''),1600,300,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,''WARD'',''SALESMAN'',7698,to_date(''22-02-81'',''DD-MM-RR''),1250,500,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,''MARTIN'',''SALESMAN'',7698,to_date(''28-09-81'',''DD-MM-RR''),1250,1400,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,''TURNER'',''SALESMAN'',7698,to_date(''08-09-81'',''DD-MM-RR''),1500,0,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7876,''ADAMS'',''CLERK'',7788,to_date(''12-01-83'',''DD-MM-RR''),1100,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,''JAMES'',''CLERK'',7698,to_date(''03-12-81'',''DD-MM-RR''),950,null,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,''MILLER'',''CLERK'',7782,to_date(''23-01-82'',''DD-MM-RR''),1300,null,10);',
'',
'commit;'))
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(696405320911282072)
,p_install_id=>wwv_flow_api.id(7398422450799965282)
,p_name=>'Create EBA_DEMO_CS_EMP table'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'create table eba_demo_cs_emp (',
'    empno     NUMBER(4) not null',
'                          constraint eba_demo_cs_emp_pk',
'                          primary key,',
'    ename     VARCHAR2(10),',
'    job       VARCHAR2(9),',
'    mgr       NUMBER(4),',
'    hiredate  DATE,',
'    sal       NUMBER(7),',
'    comm      NUMBER(7),',
'    deptno    NUMBER(2)',
')',
'/',
'',
'create index eba_demo_cs_emp_idx1 ON eba_demo_cs_emp (MGR)',
'/',
'    ',
'create index eba_demo_cs_emp_idx2 ON eba_demo_cs_emp (DEPTNO)',
'/',
'',
'delete from eba_demo_cs_emp;',
'',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,''KING'',''PRESIDENT'',null,to_date(''17-11-81'',''DD-MM-RR''),5000,null,10);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,''BLAKE'',''MANAGER'',7839,to_date(''01-05-81'',''DD-MM-RR''),2850,null,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,''CLARK'',''MANAGER'',7839,to_date(''09-06-81'',''DD-MM-RR''),2450,null,10);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,''JONES'',''MANAGER'',7839,to_date(''02-04-81'',''DD-MM-RR''),2975,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7788,''SCOTT'',''ANALYST'',7566,to_date(''09-12-82'',''DD-MM-RR''),3000,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7902,''FORD'',''ANALYST'',7566,to_date(''03-12-81'',''DD-MM-RR''),3000,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7369,''SMITH'',''CLERK'',7902,to_date(''17-12-80'',''DD-MM-RR''),800,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,''ALLEN'',''SALESMAN'',7698,to_date(''20-02-81'',''DD-MM-RR''),1600,300,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,''WARD'',''SALESMAN'',7698,to_date(''22-02-81'',''DD-MM-RR''),1250,500,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,''MARTIN'',''SALESMAN'',7698,to_date(''28-09-81'',''DD-MM-RR''),1250,1400,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,''TURNER'',''SALESMAN'',7698,to_date(''08-09-81'',''DD-MM-RR''),1500,0,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7876,''ADAMS'',''CLERK'',7788,to_date(''12-01-83'',''DD-MM-RR''),1100,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,''JAMES'',''CLERK'',7698,to_date(''03-12-81'',''DD-MM-RR''),950,null,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,''MILLER'',''CLERK'',7782,to_date(''23-01-82'',''DD-MM-RR''),1300,null,10);',
''))
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(698055219378233453)
,p_install_id=>wwv_flow_api.id(7398422450799965282)
,p_name=>'Sample Data'
,p_sequence=>30
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'create or replace procedure eba_demo_cs_emp_data',
'as',
'begin',
'',
'delete from eba_demo_cs_emp;',
'',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7839,''KING'',''PRESIDENT'',null,to_date(''17-11-81'',''DD-MM-RR''),5000,null,10);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7698,''BLAKE'',''MANAGER'',7839,to_date(''01-05-81'',''DD-MM-RR''),2850,null,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7782,''CLARK'',''MANAGER'',7839,to_date(''09-06-81'',''DD-MM-RR''),2450,null,10);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7566,''JONES'',''MANAGER'',7839,to_date(''02-04-81'',''DD-MM-RR''),2975,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7788,''SCOTT'',''ANALYST'',7566,to_date(''09-12-82'',''DD-MM-RR''),3000,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7902,''FORD'',''ANALYST'',7566,to_date(''03-12-81'',''DD-MM-RR''),3000,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7369,''SMITH'',''CLERK'',7902,to_date(''17-12-80'',''DD-MM-RR''),800,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7499,''ALLEN'',''SALESMAN'',7698,to_date(''20-02-81'',''DD-MM-RR''),1600,300,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7521,''WARD'',''SALESMAN'',7698,to_date(''22-02-81'',''DD-MM-RR''),1250,500,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7654,''MARTIN'',''SALESMAN'',7698,to_date(''28-09-81'',''DD-MM-RR''),1250,1400,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7844,''TURNER'',''SALESMAN'',7698,to_date(''08-09-81'',''DD-MM-RR''),1500,0,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7876,''ADAMS'',''CLERK'',7788,to_date(''12-01-83'',''DD-MM-RR''),1100,null,20);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7900,''JAMES'',''CLERK'',7698,to_date(''03-12-81'',''DD-MM-RR''),950,null,30);',
'insert into eba_demo_cs_emp (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) values (7934,''MILLER'',''CLERK'',7782,to_date(''23-01-82'',''DD-MM-RR''),1300,null,10);',
'',
'end eba_demo_cs_emp_data;',
'/',
'',
''))
);
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
