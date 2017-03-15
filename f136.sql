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
,p_default_application_id=>136
,p_default_owner=>'RDM'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 136 - Vendor Adjustment Util
--
-- Application Export:
--   Application:     136
--   Name:            Vendor Adjustment Util
--   Date and Time:   12:32 Wednesday March 15, 2017
--   Exported By:     CHRISTIAN.GARDNER
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     69427033981319
--

-- Application Statistics:
--   Pages:                     62
--     Items:                  211
--     Computations:             7
--     Validations:             10
--     Processes:               94
--     Regions:                144
--     Buttons:                125
--     Dynamic Actions:          7
--   Shared Components:
--     Logic:
--       Data Loading:           2
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 1
--       Lists:                  6
--       Breadcrumbs:            1
--         Entries:             49
--       NavBar Entries:         1
--     Security:
--       Authentication:         3
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
--       LOVs:                  11
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,136)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'RDM')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Vendor Adjustment Util')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_124136')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20160718142932'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD-MON-YYYY'
,p_date_time_format=>'DD-MON-YYYY HH:MIPM'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'06/04/2014 --- added method of modifying users page 16',
'09/25/2014 ----added pages:',
'               adding new categories',
'               adding new sub categories',
'               adding new updater error',
'               adding new loss reasons',
'               adding new category links',
'               adding new work types',
'               adding new Apex users ( Network ID)',
'F136-7-VAU',
'02/18/2015     added pages for reopening disputes in pending status',
'02/19/2015     added pages for adding clients',
'F136-8-VAU    ',
'               added pages for adding dispute reason',
'05/29/2015     RFC # 13894  ',
'               added pages for including / excluding vendors',
'F136-9-VAU'))
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(37728049721227145)
,p_application_tab_set=>0
,p_logo_image=>'#WORKSPACE_IMAGES#SPI_RGB.jpg'
,p_logo_image_attributes=>'alt="Safeguardproperties"; title="Safeguardproperties"'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 10.0'
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
,p_last_upd_yyyymmddhh24miss=>'20160718142932'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(21844122063792134)
,p_name=>'Data Load Process Train - Work-Orders'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21844507366792136)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Data Load Source wo'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21844805090792136)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Data / Table Mapping wo'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21845131427792136)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Data Validation wo'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21845430732792137)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Data Load Results wo'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(21887527981959374)
,p_name=>'Reopen Options'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21887825783965624)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Upload Work Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22115230416725996)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Enter Work Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(22004907905824484)
,p_name=>'Data Load Process Train - Load Stage'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22005314326824490)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Data Load Source Stage'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22005618599824496)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Data / Table Mapping Stage'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22005923397824496)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Data Validation Stage'
,p_list_item_link_target=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22006212368824497)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Data Load Results Stage'
,p_list_item_link_target=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(22686318683875841)
,p_name=>'Review Work Table'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22688512505886951)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Review work orders '
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(31769332510829051)
,p_name=>'Home List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31769741575836505)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Manage Users'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5214731077956211)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Manage Work Types'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31769922381845412)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Manage Work Categories'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14644713163150786)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Manage Loss Reasons'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22842009445522096)
,p_list_item_display_sequence=>45
,p_list_item_link_text=>'Manage Dispute Reasons'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14650731383279147)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Manage Update Error'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14778630099659207)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Manage Dispute Categories'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5282215680250379)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Manage Sub Categories'
,p_list_item_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5286013707555139)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Manage Category Links'
,p_list_item_link_target=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22805616690912558)
,p_list_item_display_sequence=>85
,p_list_item_link_text=>'Manage Clients'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24416619721394074)
,p_list_item_display_sequence=>87
,p_list_item_link_text=>'Manage Vendors'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5534612285728657)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'View Dispute report'
,p_list_item_link_target=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14238613458270094)
,p_list_item_display_sequence=>95
,p_list_item_link_text=>'View Email Log'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(20463708571000836)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Review Email sent out'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21831800810658115)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Reopen Disputes'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(31770423814873814)
,p_name=>'Manage User List'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31770623406873815)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Review Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(31770932166873815)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Manage user Tasks'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24380808924559055)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Assign Vendors'
,p_list_item_link_target=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.::::'
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
 p_id=>wwv_flow_api.id(113577285265148)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(37718146138227084)
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
 p_id=>wwv_flow_api.id(37727957763227142)
,p_icon_sequence=>200
,p_icon_image=>'#WORKSPACE_IMAGES#exit2.jpg'
,p_icon_subtext=>'Logout'
,p_icon_target=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'javascript:redirect(''f?p=&APP_ID.:204:&SESSION.::NO:::'');',
''))
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'1'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_IN_CONDITION'
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
 p_id=>wwv_flow_api.id(37729442793227151)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_HOME'
,p_tab_text=>'Home'
,p_tab_step=>1
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
 p_id=>wwv_flow_api.id(14645029129202290)
,p_lov_name=>'ACTIVE_STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(14645029129202290)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14645303880202308)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14645630167202320)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Inactive'
,p_lov_return_value=>'0'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31749125445391800)
,p_lov_name=>'CATEGORY'
,p_lov_query=>'.'||wwv_flow_api.id(31749125445391800)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31749419823391805)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Debris'
,p_lov_return_value=>'Debris'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31749734794391808)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Grass'
,p_lov_return_value=>'Grass'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31750033336391808)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Damage'
,p_lov_return_value=>'Damage'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31750315496391809)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Boarding'
,p_lov_return_value=>'Boarding'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31750620306391809)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Securing'
,p_lov_return_value=>'Securing'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31765116516635437)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'ALL'
,p_lov_return_value=>'ALL'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(5264520036162739)
,p_lov_name=>'CATEGORYS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select category D,',
'       category_id r',
'from   CORP_CATEGORY ',
'where CATEGORY_STATUS = 0',
'order by category'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14776016227536889)
,p_lov_name=>'CATEGORY_STATUS'
,p_lov_query=>'.'||wwv_flow_api.id(14776016227536889)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14776310799536892)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'0'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14776614245536897)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Inactive'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(5264208441162733)
,p_lov_name=>'CORP_SUB_CAT'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT SUBCATEGORY D,SUBCATEGORY_ID R  ',
'FROM CORP_SUB_CATEGORY  ',
'WHERE  SUBCATEGORY_STATUS = 1 ',
'ORDER BY SUBCATEGORY',
''))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(21850913654792187)
,p_lov_name=>'DATA_LOAD_CHARSET'
,p_lov_query=>'.'||wwv_flow_api.id(21850913654792187)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21851231438792190)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-16 Little Endian'
,p_lov_return_value=>'utf-16le'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21851505705792191)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-16 Big Endian'
,p_lov_return_value=>'utf-16be'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21851818636792191)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'US-ASCII'
,p_lov_return_value=>'us-ascii'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21852118048792191)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Arabic ISO-8859-6'
,p_lov_return_value=>'iso-8859-6'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21852430565792191)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Arabic Windows 1256'
,p_lov_return_value=>'windows-1256'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21852727591792191)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Chinese Big5'
,p_lov_return_value=>'big5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21853007860792193)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Chinese GBK'
,p_lov_return_value=>'gbk'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21853301481792193)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic ISO-8859-5'
,p_lov_return_value=>'iso-8859-5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21853630332792193)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic KOI8-R'
,p_lov_return_value=>'koi8-r'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21853905811792193)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic KOI8-U'
,p_lov_return_value=>'koi8-u'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21854216661792194)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic Windows 1251'
,p_lov_return_value=>'windows-1251'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21854521620792194)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Eastern European ISO-8859-2'
,p_lov_return_value=>'iso-8859-2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21854814755792194)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Eastern European Windows 1250'
,p_lov_return_value=>'windows-1250'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21855116883792194)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Greek ISO-8859-7'
,p_lov_return_value=>'iso-8859-7'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21855410720792194)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Greek Windows 1253'
,p_lov_return_value=>'windows-1253'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21855725595792194)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hebrew ISO-8859-8-i'
,p_lov_return_value=>'iso-8859-8-i'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21856029422792194)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hebrew Windows 1255'
,p_lov_return_value=>'windows-1255'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21856309133792195)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Japanese EUC'
,p_lov_return_value=>'euc-jp'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21856632273792195)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Japanese Shift JIS'
,p_lov_return_value=>'shift_jis'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21856926800792195)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Korean EUC'
,p_lov_return_value=>'euc-kr'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21857201356792195)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Northern European ISO-8859-4'
,p_lov_return_value=>'iso-8859-4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21857506022792195)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Northern European Windows 1257'
,p_lov_return_value=>'windows-1257'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21857816675792195)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Southern European ISO-8859-3'
,p_lov_return_value=>'iso-8859-3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21858131904792195)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Thai TIS-620'
,p_lov_return_value=>'tis-620'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21858406174792195)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Turkish ISO-8859-9'
,p_lov_return_value=>'iso-8859-9'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21858721292792202)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Turkish Windows 1254'
,p_lov_return_value=>'windows-1254'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21859015808792202)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-8'
,p_lov_return_value=>'utf-8'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21859305816792203)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Vietnamese Windows 1258'
,p_lov_return_value=>'windows-1258'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21859604614792203)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Western European ISO-8859-1'
,p_lov_return_value=>'iso-8859-1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21859914615792203)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Western European Windows 1252'
,p_lov_return_value=>'windows-1252'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(21847213024792160)
,p_lov_name=>'DATA_LOAD_OPTION'
,p_lov_query=>'.'||wwv_flow_api.id(21847213024792160)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21847519827792163)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Upload file, comma separated (*.csv) or tab delimited'
,p_lov_return_value=>'UPLOAD'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21847824045792167)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Copy and Paste'
,p_lov_return_value=>'PASTE'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(21849918896792186)
,p_lov_name=>'FIRST_ROW_OPTION'
,p_lov_query=>'.'||wwv_flow_api.id(21849918896792186)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(21850221628792186)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(22839711663481657)
,p_lov_name=>'INACTIVE'
,p_lov_query=>'.'||wwv_flow_api.id(22839711663481657)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22840015765481668)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'-1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22840302002481673)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'0'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31768236058811147)
,p_lov_name=>'LOAN_TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(31768236058811147)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31768518081811148)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ALL'
,p_lov_return_value=>'ALL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31768837376811148)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'REO'
,p_lov_return_value=>'REO'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31769121960811148)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'P&P'
,p_lov_return_value=>'P&P'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(31767419173787350)
,p_lov_name=>'YES NO'
,p_lov_query=>'.'||wwv_flow_api.id(31767419173787350)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31767713024787350)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(31768033994787351)
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
 p_id=>wwv_flow_api.id(37729157523227148)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5209831476763990)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Review Work Types'
,p_link=>'f?p=&APP_ID.:30:&SESSION.'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5210524727763994)
,p_parent_id=>wwv_flow_api.id(5209831476763990)
,p_short_name=>'Add to List of Work Types'
,p_link=>'f?p=&APP_ID.:31:&SESSION.'
,p_page_id=>31
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5221605446427267)
,p_parent_id=>wwv_flow_api.id(13977116137965686)
,p_short_name=>'Edit End User'
,p_link=>'f?p=&APP_ID.:27:&SESSION.'
,p_page_id=>27
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5238626620969164)
,p_parent_id=>wwv_flow_api.id(13977116137965686)
,p_short_name=>'Create End User'
,p_link=>'f?p=&APP_ID.:28:&SESSION.'
,p_page_id=>28
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5263313184162732)
,p_parent_id=>wwv_flow_api.id(5288123504702556)
,p_short_name=>'CREATE CATEGORY LINK'
,p_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:::'
,p_page_id=>48
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5278309028959086)
,p_parent_id=>wwv_flow_api.id(14774303100192022)
,p_short_name=>'Edit Categories'
,p_link=>'f?p=&APP_ID.:41:&SESSION.'
,p_page_id=>41
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5282622353262536)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Manage Sub Categories'
,p_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:::'
,p_page_id=>49
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5283031602288554)
,p_parent_id=>wwv_flow_api.id(5282622353262536)
,p_short_name=>'Add / Edit Sub Categories'
,p_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5288123504702556)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Manage Category links'
,p_link=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:::'
,p_page_id=>47
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(5528503601677675)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Export VA DATA'
,p_link=>'f?p=&APP_ID.:55:&SESSION.'
,p_page_id=>55
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13945032044516810)
,p_parent_id=>wwv_flow_api.id(31751726259467355)
,p_short_name=>'Review pwds'
,p_link=>'f?p=&APP_ID.:23:&SESSION.'
,p_page_id=>23
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13945707706516811)
,p_parent_id=>wwv_flow_api.id(13945032044516810)
,p_short_name=>'Manage pwds'
,p_link=>'f?p=&APP_ID.:24:&SESSION.'
,p_page_id=>24
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13977116137965686)
,p_parent_id=>wwv_flow_api.id(31751726259467355)
,p_short_name=>'Review Users'
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(13977813346965695)
,p_parent_id=>wwv_flow_api.id(13977116137965686)
,p_short_name=>'Create User'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14239029836277742)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Email Log'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14626905562483059)
,p_parent_id=>wwv_flow_api.id(13977116137965686)
,p_short_name=>'EDIT CORP PRIVILEGES'
,p_link=>'f?p=&APP_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14642917172487450)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Corp Loss Reason '
,p_link=>'f?p=&APP_ID.:17:&SESSION.'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14643624212487456)
,p_parent_id=>wwv_flow_api.id(14642917172487450)
,p_short_name=>'Add Loss Reason'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14649823945270397)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Corp Update Error'
,p_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_page_id=>19
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14650507462270403)
,p_parent_id=>wwv_flow_api.id(14649823945270397)
,p_short_name=>'Add Corp Update Error'
,p_link=>'f?p=&APP_ID.:20:&SESSION.'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14774303100192022)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'List Category'
,p_link=>'f?p=&APP_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14775015069192032)
,p_parent_id=>wwv_flow_api.id(14774303100192022)
,p_short_name=>'Add CATEGORY'
,p_link=>'f?p=&APP_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(14792711176745125)
,p_parent_id=>wwv_flow_api.id(31744739151167446)
,p_short_name=>'Create Work Type Category'
,p_link=>'f?p=&APP_ID.:22:&SESSION.'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20461516014934857)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'List of Email Sent'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21846310163792151)
,p_parent_id=>wwv_flow_api.id(21886118802801739)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21865014279792220)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:29:&SESSION.'
,p_page_id=>29
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21867226290792226)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:32:&SESSION.'
,p_page_id=>32
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21874122822792244)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Data Loading'
,p_link=>'f?p=&APP_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21886118802801739)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Reopen Disputes'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22091507601854357)
,p_parent_id=>wwv_flow_api.id(21886118802801739)
,p_short_name=>'Create Work Order List'
,p_link=>'f?p=&APP_ID.:40:&SESSION.'
,p_page_id=>40
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22106303758323112)
,p_parent_id=>wwv_flow_api.id(22091507601854357)
,p_short_name=>'Edit ReOpen Request'
,p_link=>'f?p=&APP_ID.:56:&SESSION.'
,p_page_id=>56
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22802627322836511)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Corp Clients'
,p_link=>'f?p=&APP_ID.:35:&SESSION.'
,p_page_id=>35
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22803316196836516)
,p_parent_id=>wwv_flow_api.id(22802627322836511)
,p_short_name=>'Add Corp Clients'
,p_link=>'f?p=&APP_ID.:36:&SESSION.'
,p_page_id=>36
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22838527498456953)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Manage Dispute Reasons'
,p_link=>'f?p=&APP_ID.:37:&SESSION.'
,p_page_id=>37
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22839226015456960)
,p_parent_id=>wwv_flow_api.id(22838527498456953)
,p_short_name=>'Edit DISPUTE REASON'
,p_link=>'f?p=&APP_ID.:38:&SESSION.'
,p_page_id=>38
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24384830835655294)
,p_parent_id=>wwv_flow_api.id(31751726259467355)
,p_short_name=>'List Users '
,p_link=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.:::'
,p_page_id=>220
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24385231469670201)
,p_parent_id=>wwv_flow_api.id(24384830835655294)
,p_short_name=>'Review Vendors Assigned'
,p_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.:::'
,p_page_id=>221
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24415115001365837)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Manage Vendors'
,p_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_page_id=>51
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24415332673372858)
,p_parent_id=>wwv_flow_api.id(24415115001365837)
,p_short_name=>'Edit Vendor List'
,p_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24421624703424985)
,p_parent_id=>wwv_flow_api.id(24385231469670201)
,p_short_name=>'Exclude Vendors'
,p_link=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.:::'
,p_page_id=>222
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24426209655231249)
,p_parent_id=>wwv_flow_api.id(24385231469670201)
,p_short_name=>'Include Vendors by Name'
,p_link=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.:::'
,p_page_id=>223
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(31744739151167446)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Work Type Category'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(31745434904167455)
,p_parent_id=>wwv_flow_api.id(31744739151167446)
,p_short_name=>'Edit Work Type Category'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(31751726259467355)
,p_parent_id=>wwv_flow_api.id(37729547942227152)
,p_short_name=>'Manage Users'
,p_link=>'f?p=&APP_ID.:5:&SESSION.'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(31757034540555188)
,p_parent_id=>wwv_flow_api.id(31751726259467355)
,p_short_name=>'Personal Info'
,p_link=>'f?p=&APP_ID.:6:&SESSION.'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(31757735537555189)
,p_parent_id=>wwv_flow_api.id(31757034540555188)
,p_short_name=>'Create User'
,p_link=>'f?p=&APP_ID.:7:&SESSION.'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(31763814947616170)
,p_parent_id=>wwv_flow_api.id(31751726259467355)
,p_short_name=>'Manage User Tasks'
,p_link=>'f?p=&APP_ID.:8:&SESSION.'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(31764522925616171)
,p_parent_id=>wwv_flow_api.id(31763814947616170)
,p_short_name=>'Assign Tasks'
,p_link=>'f?p=&APP_ID.:9:&SESSION.'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(37729547942227152)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(34013157609967358)
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
 p_id=>wwv_flow_api.id(34013353290967359)
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
 p_id=>wwv_flow_api.id(34013630731967367)
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
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(34013939245967367)
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
 p_id=>wwv_flow_api.id(34014258467967369)
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
 p_id=>wwv_flow_api.id(34014531586967370)
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
 p_id=>wwv_flow_api.id(34014842735967372)
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
 p_id=>wwv_flow_api.id(34015141672967372)
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
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(34015442190967373)
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
 p_id=>wwv_flow_api.id(34015746117967373)
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
 p_id=>wwv_flow_api.id(34016030146967375)
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
 p_id=>wwv_flow_api.id(34016349237967375)
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
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(34016635437967377)
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
 p_id=>wwv_flow_api.id(34016941890967377)
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
 p_id=>wwv_flow_api.id(34017233419967378)
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
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37718247394227102)
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
 p_id=>wwv_flow_api.id(37718340537227107)
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
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37718465017227108)
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
 p_id=>wwv_flow_api.id(37718535408227108)
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
 p_id=>wwv_flow_api.id(37718651887227109)
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
 p_id=>wwv_flow_api.id(37718738224227109)
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
 p_id=>wwv_flow_api.id(37718852483227109)
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
 p_id=>wwv_flow_api.id(37718962095227110)
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
 p_id=>wwv_flow_api.id(37719060787227110)
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
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37719146604227110)
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
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37719261659227110)
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
 p_id=>wwv_flow_api.id(37719346649227111)
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
 p_id=>wwv_flow_api.id(37719458540227111)
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
 p_id=>wwv_flow_api.id(37719550302227112)
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
 p_id=>wwv_flow_api.id(37719642000227112)
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
 p_id=>wwv_flow_api.id(120244612265283)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>123
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(34036229926967423)
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
 p_id=>wwv_flow_api.id(34036457563967425)
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
 p_id=>wwv_flow_api.id(34036635053967425)
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
 p_id=>wwv_flow_api.id(34036843798967425)
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
 p_id=>wwv_flow_api.id(34037034973967425)
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
 p_id=>wwv_flow_api.id(34037253732967427)
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
 p_id=>wwv_flow_api.id(34037434504967427)
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
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(37726464117227131)
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
 p_id=>wwv_flow_api.id(37726557698227131)
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
 p_id=>wwv_flow_api.id(37726648695227131)
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
 p_id=>wwv_flow_api.id(37726763734227131)
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
 p_id=>wwv_flow_api.id(37726839085227131)
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
 p_id=>wwv_flow_api.id(37726951541227131)
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
 p_id=>wwv_flow_api.id(37727059479227131)
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
 p_id=>wwv_flow_api.id(34017546215967378)
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
 p_id=>wwv_flow_api.id(34017842715967380)
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
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(34018152620967380)
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
 p_id=>wwv_flow_api.id(34018455440967381)
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
 p_id=>wwv_flow_api.id(34018759129967381)
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
 p_id=>wwv_flow_api.id(34019049287967381)
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
 p_id=>wwv_flow_api.id(34019328788967383)
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
 p_id=>wwv_flow_api.id(34019643670967383)
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
 p_id=>wwv_flow_api.id(34019947046967383)
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
 p_id=>wwv_flow_api.id(34020254689967384)
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
 p_id=>wwv_flow_api.id(34020547449967384)
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
 p_id=>wwv_flow_api.id(34020842859967384)
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
 p_id=>wwv_flow_api.id(34021134871967386)
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
 p_id=>wwv_flow_api.id(34021445878967386)
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
 p_id=>wwv_flow_api.id(34021756959967386)
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
 p_id=>wwv_flow_api.id(34022027816967388)
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
 p_id=>wwv_flow_api.id(34022344220967388)
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
 p_id=>wwv_flow_api.id(34022650328967398)
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
 p_id=>wwv_flow_api.id(34022930078967398)
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
 p_id=>wwv_flow_api.id(34023256240967400)
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
 p_id=>wwv_flow_api.id(34023548158967400)
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
 p_id=>wwv_flow_api.id(34023832513967402)
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
 p_id=>wwv_flow_api.id(34024139068967402)
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
 p_id=>wwv_flow_api.id(34024454525967402)
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
 p_id=>wwv_flow_api.id(34024728659967403)
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
 p_id=>wwv_flow_api.id(34025036217967403)
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
 p_id=>wwv_flow_api.id(34025344893967403)
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
 p_id=>wwv_flow_api.id(34025640349967405)
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
 p_id=>wwv_flow_api.id(34025935411967405)
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
 p_id=>wwv_flow_api.id(34026241205967405)
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
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37719750378227113)
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
 p_id=>wwv_flow_api.id(37719847506227116)
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
end;
/
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37719962129227117)
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
 p_id=>wwv_flow_api.id(37720060450227117)
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
 p_id=>wwv_flow_api.id(37720163175227117)
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
 p_id=>wwv_flow_api.id(37720246993227117)
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
 p_id=>wwv_flow_api.id(37720357655227117)
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
 p_id=>wwv_flow_api.id(37720438874227117)
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
 p_id=>wwv_flow_api.id(37720548841227117)
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
 p_id=>wwv_flow_api.id(37720648073227117)
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
 p_id=>wwv_flow_api.id(37720756276227117)
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
 p_id=>wwv_flow_api.id(37720846826227117)
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
 p_id=>wwv_flow_api.id(37720962666227117)
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
 p_id=>wwv_flow_api.id(37721062404227117)
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
 p_id=>wwv_flow_api.id(37721140553227117)
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
 p_id=>wwv_flow_api.id(37721250886227117)
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
 p_id=>wwv_flow_api.id(37721342928227118)
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
 p_id=>wwv_flow_api.id(37721459254227118)
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
 p_id=>wwv_flow_api.id(37721544580227118)
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
 p_id=>wwv_flow_api.id(37721637058227119)
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
 p_id=>wwv_flow_api.id(37721741240227119)
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
 p_id=>wwv_flow_api.id(37721860027227119)
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
 p_id=>wwv_flow_api.id(37721937606227119)
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
 p_id=>wwv_flow_api.id(37722062828227119)
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
 p_id=>wwv_flow_api.id(37722134660227119)
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
 p_id=>wwv_flow_api.id(37722253388227119)
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
 p_id=>wwv_flow_api.id(37722364757227120)
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
 p_id=>wwv_flow_api.id(37722441260227120)
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
 p_id=>wwv_flow_api.id(37722551719227120)
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
 p_id=>wwv_flow_api.id(37722665858227120)
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
 p_id=>wwv_flow_api.id(34029553237967412)
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
 p_id=>wwv_flow_api.id(34029838453967412)
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
 p_id=>wwv_flow_api.id(34030150716967412)
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
 p_id=>wwv_flow_api.id(34030445280967414)
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
 p_id=>wwv_flow_api.id(34030757632967414)
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
 p_id=>wwv_flow_api.id(34031053531967414)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>123
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(34031355659967416)
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
 p_id=>wwv_flow_api.id(34031643031967416)
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
 p_id=>wwv_flow_api.id(34031937369967416)
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
 p_id=>wwv_flow_api.id(34032230040967417)
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
 p_id=>wwv_flow_api.id(34032536232967417)
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
 p_id=>wwv_flow_api.id(34032848553967417)
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
 p_id=>wwv_flow_api.id(34033128004967419)
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
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(34033436985967419)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>123
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(34033753216967420)
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
 p_id=>wwv_flow_api.id(34034046640967420)
,p_list_template_current=>'<li class="current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>123
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(34034329105967420)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets, Alternative'
,p_theme_id=>123
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(34034644535967422)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>123
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(34034929892967422)
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
 p_id=>wwv_flow_api.id(34035247102967422)
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
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37723753154227126)
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
 p_id=>wwv_flow_api.id(37723849819227128)
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
 p_id=>wwv_flow_api.id(37723951099227128)
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
 p_id=>wwv_flow_api.id(37724055432227128)
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
 p_id=>wwv_flow_api.id(37724136802227128)
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
 p_id=>wwv_flow_api.id(37724261398227128)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>122
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37724337414227128)
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
 p_id=>wwv_flow_api.id(37724451269227128)
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
 p_id=>wwv_flow_api.id(37724558701227128)
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
 p_id=>wwv_flow_api.id(37724640411227129)
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
 p_id=>wwv_flow_api.id(37724743210227129)
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
 p_id=>wwv_flow_api.id(37724841412227129)
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
 p_id=>wwv_flow_api.id(37724948722227129)
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
end;
/
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37725059358227129)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>122
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37725153835227129)
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
 p_id=>wwv_flow_api.id(37725242591227129)
,p_list_template_current=>'<li class="current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>122
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37725355047227129)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets, Alternative'
,p_theme_id=>122
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37725441492227129)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>122
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37725533840227129)
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
 p_id=>wwv_flow_api.id(37725662758227129)
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
 p_id=>wwv_flow_api.id(34026528248967406)
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
 p_id=>wwv_flow_api.id(34026528248967406)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(34026829432967406)
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
 p_id=>wwv_flow_api.id(34026829432967406)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(34027129899967408)
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
 p_id=>wwv_flow_api.id(34027129899967408)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(34027435009967408)
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
 p_id=>wwv_flow_api.id(34027435009967408)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(34027757934967408)
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
 p_id=>wwv_flow_api.id(34028037077967409)
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
 p_id=>wwv_flow_api.id(34028037077967409)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(34028335984967409)
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
 p_id=>wwv_flow_api.id(34028335984967409)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(34028630498967409)
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
 p_id=>wwv_flow_api.id(34028939542967411)
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
 p_id=>wwv_flow_api.id(34029244446967411)
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
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37722741699227121)
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
 p_id=>wwv_flow_api.id(37722741699227121)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37722858906227124)
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
 p_id=>wwv_flow_api.id(37722858906227124)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37722950192227124)
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
 p_id=>wwv_flow_api.id(37722950192227124)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37723050959227124)
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
 p_id=>wwv_flow_api.id(37723050959227124)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37723158302227124)
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
 p_id=>wwv_flow_api.id(37723246880227124)
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
 p_id=>wwv_flow_api.id(37723246880227124)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37723349397227124)
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
 p_id=>wwv_flow_api.id(37723349397227124)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37723462842227124)
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
 p_id=>wwv_flow_api.id(37723563865227124)
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
 p_id=>wwv_flow_api.id(37723665617227125)
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
 p_id=>wwv_flow_api.id(34035528754967423)
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
 p_id=>wwv_flow_api.id(34035652003967423)
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
 p_id=>wwv_flow_api.id(34035758865967423)
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
 p_id=>wwv_flow_api.id(34035855641967423)
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
 p_id=>wwv_flow_api.id(34035947985967423)
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
 p_id=>wwv_flow_api.id(34036038625967423)
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
 p_id=>wwv_flow_api.id(34036149460967423)
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
 p_id=>wwv_flow_api.id(34768544817807333)
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
 p_id=>wwv_flow_api.id(34771028148124157)
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
 p_id=>wwv_flow_api.id(34773233154362180)
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
 p_id=>wwv_flow_api.id(34773446492403881)
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
 p_id=>wwv_flow_api.id(34774039622505966)
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
 p_id=>wwv_flow_api.id(34774230150569487)
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
 p_id=>wwv_flow_api.id(34785032787311269)
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
 p_id=>wwv_flow_api.id(37725743022227129)
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
 p_id=>wwv_flow_api.id(37725855151227130)
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
 p_id=>wwv_flow_api.id(37725945741227130)
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
 p_id=>wwv_flow_api.id(37726065212227130)
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
 p_id=>wwv_flow_api.id(37726160170227130)
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
 p_id=>wwv_flow_api.id(37726258010227130)
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
 p_id=>wwv_flow_api.id(37726350387227130)
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
 p_id=>wwv_flow_api.id(43874127547030729)
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
 p_id=>wwv_flow_api.id(43874630448041014)
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
 p_id=>wwv_flow_api.id(43892048269282669)
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
 p_id=>wwv_flow_api.id(34037628179967427)
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
 p_id=>wwv_flow_api.id(34037756789967427)
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
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(37727150527227132)
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
 p_id=>wwv_flow_api.id(37727261035227133)
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
 p_id=>wwv_flow_api.id(34038132417967428)
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
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(37727654839227134)
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
 p_id=>wwv_flow_api.id(34037831395967427)
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
 p_id=>wwv_flow_api.id(34037958608967427)
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
 p_id=>wwv_flow_api.id(34038051030967428)
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
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(37727344351227133)
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
 p_id=>wwv_flow_api.id(37727462778227134)
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
 p_id=>wwv_flow_api.id(37727565843227134)
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
 p_id=>wwv_flow_api.id(34038358390967430)
,p_theme_id=>123
,p_theme_name=>'SafeGuard'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(34015442190967373)
,p_error_template=>wwv_flow_api.id(34014258467967369)
,p_printer_friendly_template=>wwv_flow_api.id(34016030146967375)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(34013157609967358)
,p_default_button_template=>wwv_flow_api.id(34036229926967423)
,p_default_region_template=>wwv_flow_api.id(34023256240967400)
,p_default_chart_template=>wwv_flow_api.id(34020254689967384)
,p_default_form_template=>wwv_flow_api.id(34020547449967384)
,p_default_reportr_template=>wwv_flow_api.id(34023256240967400)
,p_default_tabform_template=>wwv_flow_api.id(34023256240967400)
,p_default_wizard_template=>wwv_flow_api.id(34025935411967405)
,p_default_menur_template=>wwv_flow_api.id(34018759129967381)
,p_default_listr_template=>wwv_flow_api.id(34019947046967383)
,p_default_irr_template=>wwv_flow_api.id(34022027816967388)
,p_default_report_template=>wwv_flow_api.id(34028037077967409)
,p_default_label_template=>wwv_flow_api.id(34035855641967423)
,p_default_menu_template=>wwv_flow_api.id(34037628179967427)
,p_default_calendar_template=>wwv_flow_api.id(34037831395967427)
,p_default_list_template=>wwv_flow_api.id(34034046640967420)
,p_default_option_label=>wwv_flow_api.id(34035855641967423)
,p_default_required_label=>wwv_flow_api.id(34036038625967423)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(123),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(37727763786227140)
,p_theme_id=>122
,p_theme_name=>'SafeGuardProperties'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(37719060787227110)
,p_error_template=>wwv_flow_api.id(37718651887227109)
,p_printer_friendly_template=>wwv_flow_api.id(37719261659227110)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(37718247394227102)
,p_default_button_template=>wwv_flow_api.id(37726464117227131)
,p_default_region_template=>wwv_flow_api.id(37721637058227119)
,p_default_chart_template=>wwv_flow_api.id(37720648073227117)
,p_default_form_template=>wwv_flow_api.id(37720756276227117)
,p_default_reportr_template=>wwv_flow_api.id(37721637058227119)
,p_default_tabform_template=>wwv_flow_api.id(37721637058227119)
,p_default_wizard_template=>wwv_flow_api.id(37722551719227120)
,p_default_menur_template=>wwv_flow_api.id(37720163175227117)
,p_default_listr_template=>wwv_flow_api.id(37720548841227117)
,p_default_irr_template=>wwv_flow_api.id(37721250886227117)
,p_default_report_template=>wwv_flow_api.id(37723246880227124)
,p_default_label_template=>wwv_flow_api.id(37726065212227130)
,p_default_menu_template=>wwv_flow_api.id(37727150527227132)
,p_default_calendar_template=>wwv_flow_api.id(37727344351227133)
,p_default_list_template=>wwv_flow_api.id(37725242591227129)
,p_default_option_label=>wwv_flow_api.id(37726065212227130)
,p_default_required_label=>wwv_flow_api.id(37726258010227130)
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
 p_id=>wwv_flow_api.id(37732538580241621)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(13719209980739686)
,p_name=>'Application Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(15305503815665603)
,p_name=>'LDAP Security'
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
 p_id=>wwv_flow_api.id(37728049721227145)
,p_name=>'Application Express Authentication'
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
prompt --application/shared_components/data_loading/tables/corp_wo_stage
begin
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(21843905668792124)
,p_name=>'Work-Orders'
,p_owner=>'#OWNER#'
,p_table_name=>'CORP_WO_STAGE'
,p_unique_column_1=>'PID'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
end;
/
prompt --application/shared_components/data_loading/tables/corp_wo_stage
begin
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(22004700691824481)
,p_name=>'Load Stage'
,p_owner=>'#OWNER#'
,p_table_name=>'CORP_WO_STAGE'
,p_unique_column_1=>'LOAD_ID'
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
 p_id=>wwv_flow_api.id(37727844361227141)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>123
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
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
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
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140905141522'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13813223664468945)
,p_plug_name=>'app_user'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018152620967380)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_08'
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
 p_id=>wwv_flow_api.id(13815400638478528)
,p_name=>'P0_APP_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13813223664468945)
,p_prompt=>'Welcome:'
,p_source=>'P175_USERNAME'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="font-size: 12px; font-style: italic; font-family: calibri, verdana, sans-serf; color:blue"  '
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
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
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160223102013'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5157611733316260)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34023256240967400)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ID',
'FROM CORP_PRIVILEGES',
'WHERE UPPER(APEX_ID) = UPPER(:P175_USERNAME)',
'AND APP_MANAGER = 1'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31770233726867206)
,p_plug_name=>'Home list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34021445878967386)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_api.id(31769332510829051)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(34034046640967420)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ID',
'FROM CORP_PRIVILEGES',
'WHERE UPPER(APEX_ID) = UPPER(:P175_USERNAME)',
'AND APP_MANAGER = 1'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37729649496227154)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ID',
'FROM CORP_PRIVILEGES',
'WHERE UPPER(APEX_ID) = UPPER(:P175_USERNAME);'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5158017925326914)
,p_name=>'P1_ACCESS_ERROR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5157611733316260)
,p_prompt=>'You are not an authorized user.  Please contact the application administrator for access.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ID ',
'FROM CORP_PRIVILEGES ',
'WHERE UPPER(APEX_ID) = UPPER(:P175_USERNAME) ',
'AND   APP_MANAGER = 1',
''))
,p_display_when_type=>'NOT_EXISTS'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Email sent '
,p_page_mode=>'NORMAL'
,p_step_title=>'Email sent '
,p_step_sub_title=>'Email sent '
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
,p_last_upd_yyyymmddhh24miss=>'20151026130457'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20461317542934855)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20461615192934857)
,p_plug_name=>'List of Email sent'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select a.dispute_id,a.VENDOR_NOTIFIED, dbms_lob.substr(b.EMAIL_BODY,4000,1) EMAIL_BODY, b.EMAIL_SENT_MSG',
'from CORP_VENDOR_DISPUTES a',
'left join ( select DISPUTE_ID, EMAIL_BODY, EMAIL_SENT_MSG',
'              from CORP_VENDOR_DISPUTE_DETAILS) b  on ( a.dispute_id  = b.dispute_id)',
'where  a.dispute_id  = b.dispute_id',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(20461731088934857)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'DISPUTE_ID'
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
,p_internal_uid=>20461731088934857
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20461932730934871)
,p_db_column_name=>'DISPUTE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Dispute Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20462002978934872)
,p_db_column_name=>'VENDOR_NOTIFIED'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Vendor Notified'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'VENDOR_NOTIFIED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20462125176934872)
,p_db_column_name=>'EMAIL_BODY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Email Body'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL_BODY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20462224607934872)
,p_db_column_name=>'EMAIL_SENT_MSG'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Email Sent Msg'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL_SENT_MSG'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(20462302661935129)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'204624'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DISPUTE_ID:VENDOR_NOTIFIED:EMAIL_BODY:EMAIL_SENT_MSG'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26068131856295244)
,p_name=>'Vendor Notified'
,p_template=>wwv_flow_api.id(34023256240967400)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_02'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select a.VENDOR_NOTIFIED,count(*) as Nbr_sent',
'from CORP_VENDOR_DISPUTES a',
'where a.vendor_notified is not null',
'group by a.vendor_notified',
'union all',
'SELECT  entrydte, rowcounts',
' FROM BOA_PROCESS_LOG  ',
' where sub_process = ''PROCESS_EMAIL_BATCH''',
' and   rowcounts   = 0',
' order by 1 desc'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(34028037077967409)
,p_query_num_rows=>8
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
 p_id=>wwv_flow_api.id(26068413903295372)
,p_query_column_id=>1
,p_column_alias=>'VENDOR_NOTIFIED'
,p_column_display_sequence=>1
,p_column_heading=>'Date & Time'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26068500323295382)
,p_query_column_id=>2
,p_column_alias=>'NBR_SENT'
,p_column_display_sequence=>2
,p_column_heading=>'Number Sent'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Work Types'
,p_page_mode=>'NORMAL'
,p_step_title=>'Work Types'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219104709'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(31743924538167439)
,p_name=>'Work Types'
,p_template=>wwv_flow_api.id(34019328788967383)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_04'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ID, ',
'       WORKTYPE, ',
'       CATEGORY, ',
'       INACTIVE, ',
'       CREATED_DT,',
'       MODIFY_DT, ',
'       USER_NAME ',
'       FROM CORP_WORK_TYPE'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'N'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(34028335984967409)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(31744236451167443)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_ID,P4_CREATED_DT:#ID#,SYSDATE'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31744318938167445)
,p_query_column_id=>2
,p_column_alias=>'WORKTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Worktype'
,p_column_alignment=>'RIGHT'
,p_ref_schema=>'RDM'
,p_ref_table_name=>'CORP_WORK_TYPE'
,p_ref_column_name=>'WORKTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31745612346196808)
,p_query_column_id=>3
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>4
,p_column_heading=>'Category'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31744411337167445)
,p_query_column_id=>4
,p_column_alias=>'INACTIVE'
,p_column_display_sequence=>3
,p_column_heading=>'Active'
,p_use_as_row_header=>'N'
,p_named_lov=>wwv_flow_api.id(31767419173787350)
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'RDM'
,p_ref_table_name=>'CORP_WORK_TYPE'
,p_ref_column_name=>'INACTIVE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31745711229196809)
,p_query_column_id=>5
,p_column_alias=>'CREATED_DT'
,p_column_display_sequence=>5
,p_column_heading=>'Created Dt'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31745841165196809)
,p_query_column_id=>6
,p_column_alias=>'MODIFY_DT'
,p_column_display_sequence=>6
,p_column_heading=>'Modify Dt'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(31745930983196809)
,p_query_column_id=>7
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'User Name'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31744912041167450)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31744637736167446)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(31743924538167439)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Add New Work Type '
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Edit Work Type'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create Work Type'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(34014258467967369)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140924144119'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31740042881167387)
,p_plug_name=>'Corp Work Type'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31745230270167455)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31740624777167393)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31740042881167387)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037434504967427)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31740433496167393)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31740042881167387)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Delete'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P4_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31740339248167393)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(31740042881167387)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P4_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31740225209167393)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(31740042881167387)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P4_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31741211043167402)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31741418853167404)
,p_name=>'P4_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31740042881167387)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31741635490167416)
,p_name=>'P4_WORKTYPE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31740042881167387)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Type:'
,p_source=>'WORKTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT WORKTYPE D, WORKTYPE R ',
'FROM CORP_WORKTYPE_LIST ',
'WHERE INACTIVE = 1',
'ORDER BY WORKTYPE',
''))
,p_cSize=>40
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31741828135167418)
,p_name=>'P4_INACTIVE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31740042881167387)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Active'
,p_source=>'INACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>10
,p_cMaxlength=>22
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31742041355167419)
,p_name=>'P4_CREATED_DT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31740042881167387)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
' RET_VALUE date;',
' ',
'BEGIN',
'',
'    RET_VALUE := sysdate;',
'    RETURN RET_VALUE;',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Created Date'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31742235682167421)
,p_name=>'P4_MODIFY_DT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31740042881167387)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
' RET_VALUE date;',
' ',
'BEGIN',
'',
'    RET_VALUE := sysdate;',
'    RETURN RET_VALUE;',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Modify Date'
,p_source=>'MODIFY_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31742440265167421)
,p_name=>'P4_USER_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31740042881167387)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
' RET_VALUE VARCHAR2(100);',
'',
'BEGIN',
'',
'    RET_VALUE := ''&P0_APP_USER.'';',
'    RETURN RET_VALUE;',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Assign to User'
,p_source=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select apex_id d, apex_id r',
'from  CORP_PRIVILEGES',
'where  ACTIVE = 1',
''))
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31746115569210529)
,p_name=>'P4_CATEGORY'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31740042881167387)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_source=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select category d, category r',
'from CORP_CATEGORY',
'order by 1;',
''))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31743011107167422)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_WORK_TYPE'
,p_attribute_02=>'CORP_WORK_TYPE'
,p_attribute_03=>'P4_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14784720137070654)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'UPDATE CORP_WORK_TYPE',
'SET  WORKTYPE  = :P4_WORKTYPE, ',
'     CATEGORY  = :P4_CATEGORY,',
'     INACTIVE  = :P4_INACTIVE,',
'     MODIFY_DT = sysdate,',
'     USER_NAME = :APP_USER      ',
'WHERE   ID   = :P4_ID;',
'',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31740339248167393)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5251607788762657)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'DELETE FROM CORP_WORK_TYPE ',
'WHERE ID = :P4_ID;',
'',
'',
'COMMIT;',
'',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31740433496167393)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31743416555167426)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31740433496167393)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Manage Users'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage Users'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219104141'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31751515588467354)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31770037751858908)
,p_plug_name=>'Users'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34021445878967386)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(31770423814873814)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(34034046640967420)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Personal Info'
,p_page_mode=>'NORMAL'
,p_step_title=>'Personal Info'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34014258467967369)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140924110648'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31755815203555171)
,p_plug_name=>'Personal Info'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34022027816967388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APEX_ID",',
'"SGP_ID",',
'"FIRST_NAME",',
'"LAST_NAME",',
'"EMAILADDRESS",',
'"ACTIVE",',
'"ID" AS MANAGE_PW',
'from "#OWNER#"."CORP_PRIVILEGES" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(31756041943555172)
,p_name=>'Personal Info'
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
,p_detail_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>13516531153738992
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31756129542555181)
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
 p_id=>wwv_flow_api.id(31756217748555187)
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
 p_id=>wwv_flow_api.id(31756319961555187)
,p_db_column_name=>'SGP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Sgp Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SGP_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31756418738555188)
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
 p_id=>wwv_flow_api.id(31756511002555188)
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
 p_id=>wwv_flow_api.id(31756629640555188)
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
 p_id=>wwv_flow_api.id(31756730042555188)
,p_db_column_name=>'ACTIVE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Active'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVE'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13670329738587012)
,p_db_column_name=>'MANAGE_PW'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Manage Pw'
,p_sync_form_label=>'N'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24:P24_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MANAGE_PW'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31757834944555415)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'135184'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:APEX_ID:SGP_ID:FIRST_NAME:LAST_NAME:EMAILADDRESS:ACTIVE:MANAGE_PW'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31757238087555189)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31756914882555188)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(31755815203555171)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Create User'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create User'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(34014258467967369)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140416081727'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31752111315555150)
,p_plug_name=>'Create User'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31757517900555189)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31752418080555152)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(31752111315555150)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31752726138555152)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31752111315555150)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31752314657555152)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(31752111315555150)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31752517452555152)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(31752111315555150)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
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
 p_id=>wwv_flow_api.id(31753311197555155)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13920106038764958)
,p_name=>'P7_ACTIVE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31752111315555150)
,p_prompt=>'Active User'
,p_source=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31753533867555155)
,p_name=>'P7_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31752111315555150)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31753731589555156)
,p_name=>'P7_APEX_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31752111315555150)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apex Id'
,p_source=>'APEX_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31753917176555156)
,p_name=>'P7_SGP_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31752111315555150)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sgp Id'
,p_source=>'SGP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31754122801555156)
,p_name=>'P7_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31752111315555150)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31754315675555156)
,p_name=>'P7_LAST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31752111315555150)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31754514781555157)
,p_name=>'P7_EMAILADDRESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31752111315555150)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emailaddress'
,p_source=>'EMAILADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31754918790555157)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P7_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31755132735555159)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P7_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31755320017555159)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(31752517452555152)
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Manage User Tasks'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage User Tasks'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219104323'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31762843247616167)
,p_plug_name=>'Manage User Tasks'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34022027816967388)
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
 p_id=>wwv_flow_api.id(31763013536616168)
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
,p_detail_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::P9_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>13523502746799988
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31763142560616169)
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
 p_id=>wwv_flow_api.id(15292917229159622)
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
 p_id=>wwv_flow_api.id(31763334499616169)
,p_db_column_name=>'VMANAGER'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Vmanager'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'VMANAGER'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31763412474616169)
,p_db_column_name=>'PROCESS_EMAIL'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Process Email'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_EMAIL'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31763517259616169)
,p_db_column_name=>'PROCESS_DISPUTES'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Process Disputes'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_DISPUTES'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(31763612011616170)
,p_db_column_name=>'LOAN_TYPE'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'Loan Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_TYPE'
,p_rpt_named_lov=>wwv_flow_api.id(31768236058811147)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18244826287922925)
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
 p_id=>wwv_flow_api.id(31764631706620683)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'135252'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:VMANAGER:PROCESS_EMAIL:PROCESS_DISPUTES:LOAN_TYPE:WORK_CATEGORY:SGP_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31764035910616170)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Assign Tasks'
,p_page_mode=>'NORMAL'
,p_step_title=>'Assign Tasks'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34014258467967369)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140924151847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31758539424616157)
,p_plug_name=>'Assign Tasks'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31764323919616170)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31758731118616159)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(31758539424616157)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P9_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(31758913256616159)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(31758539424616157)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(31759133719616159)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31759328661616159)
,p_name=>'P9_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(31758539424616157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31759534541616160)
,p_name=>'P9_APEX_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(31758539424616157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Network ID'
,p_source=>'APEX_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31759713933616160)
,p_name=>'P9_SGP_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31758539424616157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Safeguard ID'
,p_source=>'SGP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31759923193616160)
,p_name=>'P9_VMID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31758539424616157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Escalator Id'
,p_source=>'VMID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31760134930616160)
,p_name=>'P9_VMANAGER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31758539424616157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Escalated Disputes'
,p_source=>'VMANAGER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;1,No;0'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31760332347616161)
,p_name=>'P9_PROCESS_EMAIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31758539424616157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Email'
,p_source=>'PROCESS_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;1,No;0'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31760539279616164)
,p_name=>'P9_PROCESS_DISPUTES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31758539424616157)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Disputes'
,p_source=>'PROCESS_DISPUTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;1,No;0'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31760716508616164)
,p_name=>'P9_LOAN_TYPE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31758539424616157)
,p_use_cache_before_default=>'NO'
,p_item_default=>'ALL'
,p_prompt=>'Loan Type'
,p_source=>'LOAN_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOAN_TYPE'
,p_lov=>'.'||wwv_flow_api.id(31768236058811147)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(31760930211616164)
,p_name=>'P9_WORK_CATEGORY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31758539424616157)
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
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(31767341206760751)
,p_validation_name=>'P9_PROCESS_DISPUTES'
,p_validation_sequence=>10
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    IF ( :P9_PROCESS_DISPUTES = 1 AND :P9_VMANAGER = 1 ) THEN ',
'        RETURN FALSE;',
'    ELSE ',
'        RETURN TRUE;',
'   END IF;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'if escalators need to process disputes create a new user id'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(31758731118616159)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(31760539279616164)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(31766825528722917)
,p_name=>'VMID'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_VMID'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(31767126323722920)
,p_event_id=>wwv_flow_api.id(31766825528722917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_PROCESS_DISPUTES'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31761917783616165)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P9_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31762115505616166)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P9_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'U'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(31762329596616166)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Personal information'
,p_page_mode=>'NORMAL'
,p_step_title=>'Personal information'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219104227'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13975106705965680)
,p_plug_name=>'Personal Information'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
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
 p_id=>wwv_flow_api.id(13975301387965681)
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
,p_internal_uid=>13975301387965681
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13975407473965682)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_report_label=>'Edit User'
,p_sync_form_label=>'N'
,p_column_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::P27_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13975511593965683)
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
 p_id=>wwv_flow_api.id(13975609935965683)
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
 p_id=>wwv_flow_api.id(13975714386965684)
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
 p_id=>wwv_flow_api.id(13975825719965684)
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
 p_id=>wwv_flow_api.id(13975926056965685)
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
 p_id=>wwv_flow_api.id(13976003191965685)
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
 p_id=>wwv_flow_api.id(13976103239965685)
,p_db_column_name=>'ACTIVE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Active'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVE'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13976213557965685)
,p_db_column_name=>'VMANAGER'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Vmanager'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'VMANAGER'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13976304643965685)
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
 p_id=>wwv_flow_api.id(13976414461965685)
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
 p_id=>wwv_flow_api.id(13976511067965686)
,p_db_column_name=>'PROCESS_EMAIL'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Process Email'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_EMAIL'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13976612215965686)
,p_db_column_name=>'PROCESS_DISPUTES'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Process Disputes'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESS_DISPUTES'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13976717453965686)
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
 p_id=>wwv_flow_api.id(13976827159965686)
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
 p_id=>wwv_flow_api.id(13982210289083104)
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
 p_id=>wwv_flow_api.id(13978019831971311)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'139781'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:APEX_ID:SGP_ID:FIRST_NAME:LAST_NAME:EMAILADDRESS:VMID:ACTIVE:VMANAGER:CREATED_BY:CREATED_DT:PROCESS_EMAIL:PROCESS_DISPUTES:LOAN_TYPE:WORK_CATEGORY:PWLINK'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13977322375965690)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13977026789965686)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(13975106705965680)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Create End User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:28::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Create User'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create User'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(34014258467967369)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140924121955'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13970518547965649)
,p_plug_name=>'Create User'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13977625981965694)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13970827244965650)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(13970518547965649)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13971109536965652)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13970518547965649)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13970709936965650)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(13970518547965649)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P11_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13970921317965650)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(13970518547965649)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13971703236965656)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13971909707965661)
,p_name=>'P11_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13970518547965649)
,p_use_cache_before_default=>'NO'
,p_prompt=>'System ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13972122239965668)
,p_name=>'P11_APEX_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13970518547965649)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Network ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_tag_attributes=>'style="width: 150px;'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13972331751965668)
,p_name=>'P11_SGP_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(13970518547965649)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Safeguard Property ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>50
,p_cMaxlength=>100
,p_cHeight=>1
,p_tag_attributes=>'style="width: 150px;'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'christian.gardner of christian.gardner@safeguardproperities.com is the safeguard property id'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13972510020965668)
,p_name=>'P11_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(13970518547965649)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_tag_attributes=>'style="width: 150px;'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13972720905965668)
,p_name=>'P11_LAST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(13970518547965649)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_tag_attributes=>'style="width: 150px;'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13972923726965668)
,p_name=>'P11_EMAILADDRESS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(13970518547965649)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Address'
,p_source=>'EMAILADDRESS'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>100
,p_cMaxlength=>200
,p_cHeight=>1
,p_tag_attributes=>'style="width: 300px;'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13973118784965669)
,p_name=>'P11_ACTIVE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(13970518547965649)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Active User'
,p_source=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13973301309965669)
,p_name=>'P11_CREATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(13970518547965649)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_tag_attributes=>'style="width: 150px;'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Enter your user name please'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13973521183965669)
,p_name=>'P11_CREATED_DT'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(13970518547965649)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date User Created '
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13988601075578618)
,p_name=>'sgid'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_LAST_NAME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13988919129578626)
,p_event_id=>wwv_flow_api.id(13988601075578618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_SGP_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare ',
'',
'SGPID  VARCHAR2(200);',
'',
'BEGIN',
'',
'     IF ( :P11_FIRST_NAME IS NOT NULL AND :P11_LAST_NAME IS NOT NULL ) THEN',
'             SGPID := :P11_FIRST_NAME||''.''||:P11_LAST_NAME;',
'             RETURN SGPID;',
'     END IF;',
'END;',
''))
,p_attribute_07=>'P11_FIRST_NAME,P11_LAST_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5225310269817340)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert row'
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
'VALUES (:P11_APEX_ID, ',
'        :P11_APEX_ID,',
'        :P11_FIRST_NAME,',
'        :P11_LAST_NAME,',
'        :P11_APEX_ID||''@safeguardproperties.com'',',
'        SUBSTR(:P11_FIRST_NAME,1,1)||:P11_LAST_NAME,',
'        :P11_ACTIVE,',
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
,p_process_when_button_id=>wwv_flow_api.id(13970709936965650)
,p_process_success_message=>'User Created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13974627982965673)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13970921317965650)
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'APEX_MAIL_LOG'
,p_page_mode=>'NORMAL'
,p_step_title=>'APEX_MAIL_LOG'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160718124116'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14234419875091522)
,p_name=>'apex_mail - Disabled'
,p_template=>wwv_flow_api.id(34023256240967400)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>'select * from APEX_MAIL_LOG'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(34028037077967409)
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
 p_id=>wwv_flow_api.id(14234703931091530)
,p_query_column_id=>1
,p_column_alias=>'MAIL_TO'
,p_column_display_sequence=>1
,p_column_heading=>'MAIL_TO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14234803167091536)
,p_query_column_id=>2
,p_column_alias=>'MAIL_FROM'
,p_column_display_sequence=>2
,p_column_heading=>'MAIL_FROM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14234907824091536)
,p_query_column_id=>3
,p_column_alias=>'MAIL_REPLYTO'
,p_column_display_sequence=>3
,p_column_heading=>'MAIL_REPLYTO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14235021033091536)
,p_query_column_id=>4
,p_column_alias=>'MAIL_SUBJ'
,p_column_display_sequence=>4
,p_column_heading=>'MAIL_SUBJ'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14235125913091536)
,p_query_column_id=>5
,p_column_alias=>'MAIL_CC'
,p_column_display_sequence=>5
,p_column_heading=>'MAIL_CC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14235226319091536)
,p_query_column_id=>6
,p_column_alias=>'MAIL_BCC'
,p_column_display_sequence=>6
,p_column_heading=>'MAIL_BCC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14235312113091536)
,p_query_column_id=>7
,p_column_alias=>'MAIL_SEND_ERROR'
,p_column_display_sequence=>7
,p_column_heading=>'MAIL_SEND_ERROR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14235414368091536)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATED_ON'
,p_column_display_sequence=>8
,p_column_heading=>'LAST_UPDATED_ON'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14235810868189209)
,p_plug_name=>'Apex Email Log'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'select * from APEX_MAIL_LOG'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14235924088189209)
,p_name=>'apex_mail'
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
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>14235924088189209
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14236127380189241)
,p_db_column_name=>'MAIL_TO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'MAIL_TO'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MAIL_TO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14236231009189255)
,p_db_column_name=>'MAIL_FROM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'MAIL_FROM'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MAIL_FROM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14236302401189255)
,p_db_column_name=>'MAIL_REPLYTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'MAIL_REPLYTO'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MAIL_REPLYTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14236407649189255)
,p_db_column_name=>'MAIL_SUBJ'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'MAIL_SUBJECT'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MAIL_SUBJ'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14236518053189255)
,p_db_column_name=>'MAIL_CC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'MAIL_CC'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MAIL_CC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14236615387189255)
,p_db_column_name=>'MAIL_BCC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'MAIL_BCC'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MAIL_BCC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14236704237189255)
,p_db_column_name=>'MAIL_SEND_ERROR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'MAIL_SEND_ERROR'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MAIL_SEND_ERROR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14236825139189256)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'LAST_UPDATED_ON'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATED_ON'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14237013292189926)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'142371'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'MAIL_TO:MAIL_FROM:MAIL_REPLYTO:MAIL_SUBJ:MAIL_CC:MAIL_BCC:MAIL_SEND_ERROR:LAST_UPDATED_ON'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14239112871284421)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'LOGIN_PAGE'
,p_page_mode=>'NORMAL'
,p_step_title=>'LOGIN_PAGE'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34013157609967358)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140731080320'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13717305369050482)
,p_plug_name=>'LOGIN_REGION'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13721001878889317)
,p_plug_name=>'logo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018152620967380)
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
 p_id=>wwv_flow_api.id(13717918922082833)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(13717305369050482)
,p_button_name=>'P13_LOGIN'
,p_button_static_id=>'P13_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
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
 p_id=>wwv_flow_api.id(13723710102119427)
,p_branch_name=>'Redirect_to_pg01'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::P0_APP_USER:&P13_USER_NAME.'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(13717918922082833)
,p_branch_sequence=>10
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  SELECT ID ',
'      FROM CORP_USER_SECURITY ',
'      WHERE USER_NAME =  :P13_USER_NAME',
'      AND   PW        =  :P13_PASSWORD',
'      and   CHANGE_PW = 0;'))
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13733806121242824)
,p_branch_name=>'Redirect_to_pg14'
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(13717918922082833)
,p_branch_sequence=>20
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    SELECT ID ',
'      FROM CORP_USER_SECURITY ',
'      WHERE USER_NAME =  :P13_USER_NAME',
'      AND   PW        =  :P13_PASSWORD',
'      and   CHANGE_PW = 1;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13717622172059904)
,p_name=>'P13_USER_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13717305369050482)
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13717825395073661)
,p_name=>'P13_PASSWORD'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(13717305369050482)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43892048269282669)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13721321921901212)
,p_name=>'P13_LOGO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(13721001878889317)
,p_prompt=>'Logo'
,p_source=>'#WORKSPACE_IMAGES#SPI_RGB.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(34035652003967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13722210250936999)
,p_name=>'P13_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13717305369050482)
,p_prompt=>'Vendor Adjustment Utilities'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-TOP'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43892048269282669)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13798731867719641)
,p_name=>'P13_MESSAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(13717305369050482)
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
,p_field_template=>wwv_flow_api.id(34035652003967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13723316202040566)
,p_validation_name=>'P13_USER_NAME'
,p_validation_sequence=>10
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'     DECLARE ',
'     ',
'      VAR_NUM NUMBER;',
'    BEGIN  ',
'      SELECT COUNT(*) ',
'      INTO VAR_NUM ',
'      FROM CORP_USER_SECURITY ',
'      WHERE USER_NAME =  :P13_USER_NAME',
'      AND   PW        =  :P13_PASSWORD;',
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
,p_when_button_pressed=>wwv_flow_api.id(13717918922082833)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(13717622172059904)
,p_error_display_location=>'ON_ERROR_PAGE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15336711426011106)
,p_validation_name=>'AUTHORIZED_USER'
,p_validation_sequence=>20
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'     MESSAGE VARCHAR2(200);',
'     PID     NUMBER;',
'BEGIN',
'',
'select COUNT(*) ',
'into PID',
'from CORP_PRIVILEGES',
'where UPPER(APEX_ID) = UPPER(:P13_USER_NAME) ',
' and  APP_MANAGER = 1;',
'',
'     IF ( PID > 0 ) ',
'        THEN ',
'        RETURN TRUE;    ',
'    ELSE ',
'        RETURN FALSE;',
'    END IF;   ',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'I am sorry but you are not authorized to use this application'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(13717918922082833)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(13717622172059904)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Change Password'
,p_page_mode=>'NORMAL'
,p_step_title=>'Change Password'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34013157609967358)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140410130224'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13734512014299123)
,p_plug_name=>'Change Password'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13737627046388585)
,p_plug_name=>'Logo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018152620967380)
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
 p_id=>wwv_flow_api.id(13736627130369710)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(13734512014299123)
,p_button_name=>'P14_SUBMIT'
,p_button_static_id=>'P14_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Submit'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13798414436682161)
,p_branch_name=>'Redirect_to_pg13'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_MESSAGE:Please login with new passord&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(13736627130369710)
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P14_RETCODE'
,p_branch_condition_text=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13734908432317662)
,p_name=>'P14_USER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13734512014299123)
,p_prompt=>'User Name:'
,p_source=>'&APP_USER.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13735128044323776)
,p_name=>'P14_CURRENT_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13734512014299123)
,p_prompt=>'Current password:'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13735816171344510)
,p_name=>'P14_CONFIRM_PASSWORD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(13734512014299123)
,p_prompt=>'Confirm Password:'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13736511845361676)
,p_name=>'P14_MESSAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(13734512014299123)
,p_prompt=>'System Message:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>70
,p_cMaxlength=>100
,p_cHeight=>1
,p_tag_attributes=>'style="font-weight:bold;color:red" '
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13737932511397629)
,p_name=>'P14_LOGO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(13737627046388585)
,p_prompt=>'Logo'
,p_source=>'#WORKSPACE_IMAGES#SPI_RGB.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(34035652003967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13767120371011015)
,p_name=>'P14_NEW_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(13734512014299123)
,p_prompt=>'New Password:'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13796406266655533)
,p_name=>'P14_RETCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(13734512014299123)
,p_item_default=>'0'
,p_prompt=>'Retcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(34035652003967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13779208746187409)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VALIDATE_PW'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'CORPORATE_COMPLIANCE.VALIDATE_PW( P_USER_NAME => :P14_USER_NAME,',
'                                  P_OLD_PWD   => :P14_CURRENT_PASSWORD,',
'                                  P_NEW_PWD1  => :P14_NEW_PASSWORD,',
'                                  P_NEW_PWD2  => :P14_CONFIRM_PASSWORD,',
'                                  P_MESSAGE   => :P14_MESSAGE,',
'                                  P_RETCODE   => :P14_RETCODE);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13736627130369710)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13766124087974232)
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
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Reopen Disputes in Pending Status'
,p_page_mode=>'NORMAL'
,p_step_title=>'Reopen Disputes in Pending Status'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34014842735967372)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150212151012'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21887123001948551)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21890709935001533)
,p_plug_name=>'Loading Options:'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34023256240967400)
,p_plug_display_sequence=>21
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid=>true
,p_plug_new_grid_row=>false
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21890121317976395)
,p_plug_name=>'Reopen Disputes'
,p_parent_plug_id=>wwv_flow_api.id(21890709935001533)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(21887527981959374)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(34034046640967420)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'CNT   NUMBER;',
'',
'BEGIN',
'',
'SELECT COUNT(*) ',
'INTO CNT',
'FROM CORP_WO_STAGE;',
'',
'IF ( CNT = 0 ) THEN ',
'   RETURN TRUE;',
'ELSE ',
'    RETURN FALSE;',
'END IF; ',
'',
'END;'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22643416259525038)
,p_plug_name=>'About Application'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Load options will not be visible while loading is in process.</p>',
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22689032451898745)
,p_plug_name=>'Loading in process'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34023256240967400)
,p_plug_display_sequence=>41
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select work_order from CORP_WO_STAGE;'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22689225309906165)
,p_plug_name=>'in process'
,p_parent_plug_id=>wwv_flow_api.id(22689032451898745)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>51
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(22686318683875841)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(34034046640967420)
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Edit Corp Privileges'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit Corp Privileges'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140924103457'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14621822973483048)
,p_plug_name=>'EDIT CORP_PRIVILEGES'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34022344220967388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14626704716483059)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14622018557483050)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14621822973483048)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P16_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14622306353483051)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14621822973483048)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14622104360483050)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14621822973483048)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P16_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14622800470483053)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14623028544483054)
,p_name=>'P16_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14621822973483048)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14623228726483055)
,p_name=>'P16_SGP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14621822973483048)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sgp Id'
,p_source=>'SGP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14623418682483055)
,p_name=>'P16_FIRST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14621822973483048)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14623606867483055)
,p_name=>'P16_LAST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14621822973483048)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14623822905483055)
,p_name=>'P16_EMAILADDRESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14621822973483048)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Address'
,p_source=>'EMAILADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14624006617483055)
,p_name=>'P16_VMID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14621822973483048)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Manager ID'
,p_source=>'VMID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14624228795483055)
,p_name=>'P16_ACTIVE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(14621822973483048)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active'
,p_source=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14624408177483056)
,p_name=>'P16_VMANAGER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(14621822973483048)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Escalator'
,p_source=>'VMANAGER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14624624022483057)
,p_name=>'P16_PROCESS_EMAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(14621822973483048)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Send Email'
,p_source=>'PROCESS_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14624802314483057)
,p_name=>'P16_PROCESS_DISPUTES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(14621822973483048)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Disputes'
,p_source=>'PROCESS_DISPUTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5215625197293139)
,p_validation_name=>'P16_VMANAGER'
,p_validation_sequence=>10
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'   STATUS_FLAG  BOOLEAN;',
'',
'BEGIN',
'',
'  STATUS_FLAG := TRUE;',
'',
'',
'IF (:P16_VMANAGER = 1 AND :P16_PROCESS_DISPUTES = 1) THEN ',
'    STATUS_FLAG := FALSE;',
'END IF;',
'',
'IF (:P16_VMANAGER = 0 AND :P16_PROCESS_DISPUTES = 0) THEN ',
'    STATUS_FLAG := FALSE;',
'END IF;',
'',
'    RETURN STATUS_FLAG;',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Settings for Escalator and Processor can''t be the same'
,p_always_execute=>'N'
,p_associated_item=>wwv_flow_api.id(14624408177483056)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14626129777483058)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P16_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14626315672483058)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P16_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14626529675483059)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14622104360483050)
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Corp Loss Reason '
,p_page_mode=>'NORMAL'
,p_step_title=>'Corp Loss Reason '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219104831'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14642117857487433)
,p_plug_name=>'Corp Loss Reason'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"LOSSREASON",',
'"LOSS_REASON_STATUS"',
'from "#OWNER#"."CORP_LOSSREASON" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14642314517487435)
,p_name=>'Corp Loss Reason'
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
,p_detail_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::P18_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>14642314517487435
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14642400544487442)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14642532276487450)
,p_db_column_name=>'LOSSREASON'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Lossreason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOSSREASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14642605135487450)
,p_db_column_name=>'LOSS_REASON_STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Loss Reason Status'
,p_sync_form_label=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LOSS_REASON_STATUS'
,p_rpt_named_lov=>wwv_flow_api.id(14645029129202290)
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14643711684487685)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'146438'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:LOSSREASON:LOSS_REASON_STATUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14643112327487451)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14642809132487450)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14642117857487433)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Create Loss Reason'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:18::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Create Corp Loss Reason'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create Corp Loss Reason'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(34014258467967369)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140623144155'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14638816599487398)
,p_plug_name=>'Create Corp Loss Reason'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14643425391487456)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14639420915487401)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14638816599487398)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037434504967427)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14639221599487401)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14638816599487398)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037434504967427)
,p_button_image_alt=>'Delete'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P18_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14639120562487401)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14638816599487398)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P18_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14639030149487401)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(14638816599487398)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P18_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14640017890487407)
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14640217701487410)
,p_name=>'P18_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14638816599487398)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14640416641487413)
,p_name=>'P18_LOSSREASON'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14638816599487398)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lossreason'
,p_source=>'LOSSREASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14640608116487415)
,p_name=>'P18_LOSS_REASON_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14638816599487398)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loss Reason Status'
,p_source=>'LOSS_REASON_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;1,Inactive;0'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14641224952487416)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_LOSSREASON'
,p_attribute_02=>'CORP_LOSSREASON'
,p_attribute_03=>'P18_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14641425672487418)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_LOSSREASON'
,p_attribute_02=>'CORP_LOSSREASON'
,p_attribute_03=>'P18_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14641615211487418)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14639221599487401)
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Corp Update Error'
,p_page_mode=>'NORMAL'
,p_step_title=>'Corp Update Error'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219104904'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14649122766270393)
,p_plug_name=>'Corp Update Error'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select *',
'from "#OWNER#"."CORP_UPDATERERROR" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14649331920270393)
,p_name=>'Corp Update Error'
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
,p_detail_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::P20_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>14649331920270393
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14649425881270395)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'System Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14649512119270397)
,p_db_column_name=>'UPDATERERROR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Updater Error'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UPDATERERROR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5162413198572112)
,p_db_column_name=>'ACTIVESTATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Activestatus'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVESTATUS'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14650809184281661)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'146509'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:UPDATERERROR:ACTIVESTATUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14650026611270398)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14649727637270397)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14649122766270393)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Create Updater Error'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Add Corp Update Error'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add Corp Update Error'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219104928'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14646127694270360)
,p_plug_name=>'Add Corp Update Error'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14650306277270403)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14646722598270363)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14646127694270360)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037434504967427)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14646503734270363)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14646127694270360)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037434504967427)
,p_button_image_alt=>'Delete'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14646411741270363)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14646127694270360)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14646309914270363)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(14646127694270360)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P20_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14647329909270367)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14647509081270370)
,p_name=>'P20_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14646127694270360)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14647731044270381)
,p_name=>'P20_UPDATERERROR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14646127694270360)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updater Eerror'
,p_source=>'UPDATERERROR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14651806761336104)
,p_name=>'P20_ACTIVESTATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14646127694270360)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active Status'
,p_source=>'ACTIVESTATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ACTIVE_STATUS'
,p_lov=>'.'||wwv_flow_api.id(14645029129202290)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14648205480270386)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_UPDATERERROR'
,p_attribute_02=>'CORP_UPDATERERROR'
,p_attribute_03=>'P20_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14648430396270389)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_UPDATERERROR'
,p_attribute_02=>'CORP_UPDATERERROR'
,p_attribute_03=>'P20_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14648619390270390)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14646503734270363)
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Add CATEGORY'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add CATEGORY'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219105025'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14770525873191954)
,p_plug_name=>'Add  Category'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14774808584192031)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14771028979191958)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14770525873191954)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037434504967427)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14770808465191957)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14770525873191954)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14770709549191957)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(14770525873191954)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P21_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14771312358191966)
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14771501746191970)
,p_name=>'P21_CATEGORY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14770525873191954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category Id'
,p_source=>'CATEGORY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14771720121191982)
,p_name=>'P21_CATEGORY'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14770525873191954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category Name'
,p_source=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14771922141191985)
,p_name=>'P21_CATEGORY_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14770525873191954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category Status'
,p_source=>'CATEGORY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORY_STATUS'
,p_lov=>'.'||wwv_flow_api.id(14776016227536889)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14772113716191986)
,p_name=>'P21_CREATED_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14770525873191954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Date'
,p_source=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14772322245191986)
,p_name=>'P21_CREATED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14770525873191954)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14777501059581464)
,p_name=>'P21_REQUIRED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14770525873191954)
,p_prompt=>'Indicates Required'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(34773446492403881)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14781425979343909)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' INSERT INTO CORP_CATEGORY ( ',
'  CATEGORY,',
'  CATEGORY_STATUS,',
'  CREATED_DATE,',
'  CREATED_BY',
')',
'VALUES ( :P21_CATEGORY, :P21_CATEGORY_STATUS, SYSDATE, :P21_CREATED_BY);',
'',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14770709549191957)
,p_process_when=>'P21_CATEGORY'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14781708149376629)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Category'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'  update CORP_CATEGORY set CATEGORY = :P21_CATEGORY, CATEGORY_STATUS = :P21_CATEGORY_STATUS ',
'  WHERE  CATEGORY_ID  = :P21_CATEGORY_ID;',
'',
'COMMIT;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14770808465191957)
,p_process_when=>'P21_CATEGORY_ID'
,p_process_when_type=>'ITEM_NOT_NULL_OR_ZERO'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Create Work Type Category'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create Work Type Category'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34014258467967369)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140924144245'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14789324165745066)
,p_plug_name=>'Create Work Type Category'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14792516637745123)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14789726142745072)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14789324165745066)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037434504967427)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14789509438745070)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(14789324165745066)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P22_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14789930078745076)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14790114333745085)
,p_name=>'P22_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14789324165745066)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14790307421745103)
,p_name=>'P22_WORKTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14789324165745066)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Worktype'
,p_source=>'WORKTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT WORKTYPE D, WORKTYPE R',
' FROM CORP_WORKTYPE_LIST',
'ORDER BY WORKTYPE',
''))
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14790521948745107)
,p_name=>'P22_CATEGORY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14789324165745066)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_source=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT CATEGORY D, CATEGORY R',
'FROM CORP_CATEGORY ',
'WHERE  CATEGORY_STATUS  = 0',
'ORDER BY CATEGORY',
''))
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14790704258745107)
,p_name=>'P22_INACTIVE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14789324165745066)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active'
,p_source=>'INACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2: Yes; 0, No;1'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14790931931745108)
,p_name=>'P22_CREATED_DT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14789324165745066)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Dt'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14791107930745109)
,p_name=>'P22_USER_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14789324165745066)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assign to User'
,p_source=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select apex_id d, apex_id r',
'from CORP_PRIVILEGES ',
'order by apex_id',
''))
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14793031308793336)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'INSERT INTO  CORP_WORK_TYPE ( WORKTYPE, CATEGORY, INACTIVE, CREATED_DT, USER_NAME) ',
'VALUES (:P22_WORKTYPE, :P22_CATEGORY, :P22_INACTIVE, SYSDATE, :APP_USER);',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14789509438745070)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14792326050745117)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Review pwds'
,p_page_mode=>'NORMAL'
,p_step_title=>'Review pwds'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34014258467967369)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140619143839'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13943919103516807)
,p_plug_name=>'Review Pwds'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34022027816967388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"USER_NAME",',
'"PW",',
'"CHANGE_PW",',
'"CREATED_DT",',
'"CREATED_BY",',
'"UPDATED_DT",',
'"UPDATED_BY"',
'from "#OWNER#"."CORP_USER_SECURITY" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(13944109752516807)
,p_name=>'Review Pwds'
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
,p_detail_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::P24_ID,P24_UPDATED_BY:#ID#,&P0_APP_USER.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>13944109752516807
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13944220226516808)
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
 p_id=>wwv_flow_api.id(13944326157516808)
,p_db_column_name=>'USER_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13944402092516808)
,p_db_column_name=>'PW'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Pw'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PW'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13944526596516808)
,p_db_column_name=>'CHANGE_PW'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Change Pw'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'CHANGE_PW'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13944605431516808)
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
 p_id=>wwv_flow_api.id(13944700772516809)
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
 p_id=>wwv_flow_api.id(13944829464516809)
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
 p_id=>wwv_flow_api.id(13944914967516809)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UPDATED_BY'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(13947015426576424)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'139471'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:USER_NAME:PW:CHANGE_PW:CREATED_DT:CREATED_BY:UPDATED_DT:UPDATED_BY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13945202322516810)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Manage pwds'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage pwds'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34014258467967369)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140619144213'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13939800869516800)
,p_plug_name=>'Manage pwds'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13945513655516811)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13940031249516800)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(13939800869516800)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P24_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13940205309516800)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13939800869516800)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13940402562516801)
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13940619446516802)
,p_name=>'P24_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13939800869516800)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13940829092516802)
,p_name=>'P24_USER_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13939800869516800)
,p_use_cache_before_default=>'NO'
,p_prompt=>'APEX User Name'
,p_source=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13941028112516803)
,p_name=>'P24_PW'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(13939800869516800)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Password'
,p_source=>'PW'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13941216356516803)
,p_name=>'P24_CHANGE_PW'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(13939800869516800)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Chg Pwd Next Login'
,p_source=>'CHANGE_PW'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13941411360516803)
,p_name=>'P24_CREATED_DT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(13939800869516800)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Created'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13941610274516804)
,p_name=>'P24_CREATED_BY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(13939800869516800)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13941803677516804)
,p_name=>'P24_UPDATED_DT'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(13939800869516800)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Date'
,p_source=>'UPDATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13942000797516804)
,p_name=>'P24_UPDATED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(13939800869516800)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'WHO  VARCHAR2(100);',
'BEGIN',
'',
'WHO := :P0_APP_USER;',
'',
'RETURN WHO;',
'',
'END;',
'',
'      '))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13943002448516805)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_USER_SECURITY'
,p_attribute_02=>'CORP_USER_SECURITY'
,p_attribute_03=>'P24_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14783108204830689)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update user Security'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
' UPDATE CORP_USER_SECURITY',
' SET PW = :P24_PW, CHANGE_PW  = :P24_CHANGE_PW, UPDATED_DT = SYSDATE, UPDATED_BY = :P24_UPDATED_BY',
' WHERE  ID = :P24_ID;',
'',
' COMMIT;',
'',
'',
' END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13940031249516800)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13943409787516806)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'List Category'
,p_page_mode=>'NORMAL'
,p_step_title=>'List Category'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219105003'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14773709659192011)
,p_plug_name=>'List Categories'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "CATEGORY_ID", ',
'"CATEGORY", ',
'"CATEGORY_STATUS"',
'from "#OWNER#"."CORP_CATEGORY" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14773909860192013)
,p_name=>'List Categories'
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
,p_detail_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::P41_CATEGORY_ID,P41_CATEGORY:#CATEGORY_ID#,#CATEGORY#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>14773909860192013
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14775215786498747)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Category Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14775329808498747)
,p_db_column_name=>'CATEGORY'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14775817930512955)
,p_db_column_name=>'CATEGORY_STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Category Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY_STATUS'
,p_rpt_named_lov=>wwv_flow_api.id(14776016227536889)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14775419859500105)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'147755'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CATEGORY_ID:CATEGORY:CATEGORY_STATUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14774518396192025)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14774206508192020)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14773709659192011)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Create Category'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_CREATED_BY:&P0_APP_USER.'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Data Load Source wo'
,p_page_mode=>'NORMAL'
,p_step_title=>'Data Load Source wo'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150204132932'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21846115546792146)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21846519600792154)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(21844122063792134)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(34034929892967422)
,p_translate_title=>'N'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21846611147792155)
,p_plug_name=>'Data Load Source'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(34025935411967405)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21861021211792205)
,p_plug_name=>'Globalization'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(34025935411967405)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21891514961040793)
,p_plug_name=>'USER_NAME'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21846902048792155)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21846611147792155)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036843798967425)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21847024778792159)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21846611147792155)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Next >'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:apex.widget.textareaClob.upload(''P26_COPY_PASTE'', ''NEXT'');'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21864205956792216)
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(21847024778792159)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21848101405792169)
,p_name=>'P26_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21846611147792155)
,p_item_default=>'PASTE'
,p_prompt=>'Import From'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION'
,p_lov=>'.'||wwv_flow_api.id(21847213024792160)||'.'
,p_label_alignment=>'RIGHT-TOP'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21848224176792175)
,p_name=>'P26_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21846611147792155)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_FILE'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34036038625967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Name of the file to upload'
,p_attribute_01=>'WWV_FLOW_FILES'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21849002088792181)
,p_name=>'P26_SEPARATOR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21846611147792155)
,p_item_default=>'\t'
,p_prompt=>'Separator'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34036038625967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Identify a column separator character. Use <code>\t</code> for tab separators.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21849515403792181)
,p_name=>'P26_ENCLOSED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(21846611147792155)
,p_item_default=>'"'
,p_prompt=>'Optionally Enclosed By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Enter a delimiter character. You can use this character to delineate the starting and ending boundary of a data value. If you specify a delimiter character, Data Workshop ignores whitespace occurring before the starting and ending boundary of a data '
||'value. You can also use this option to enclose a data value with the specified delimiter character.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21850509276792187)
,p_name=>'P26_FIRST_ROW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(21846611147792155)
,p_item_default=>'Y'
,p_prompt=>'First Row has Column Names'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'FIRST_ROW_OPTION'
,p_lov=>'.'||wwv_flow_api.id(21849918896792186)||'.'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Select this box if your data contains column names in the first row.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21860222454792204)
,p_name=>'P26_CHAR_SET'
,p_is_required=>true
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(21846611147792155)
,p_item_default=>'UTF-8'
,p_prompt=>'File Character Set'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATA_LOAD_CHARSET'
,p_lov=>'.'||wwv_flow_api.id(21850913654792187)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'DATA_LOAD.CHAR_SET_ITEM_HELP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21860716877792205)
,p_name=>'P26_STOP_START_TABLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(21846611147792155)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21860820221792205)
,p_name=>'P26_COPY_PASTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(21846611147792155)
,p_prompt=>'Copy and Paste Delimited Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>10
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(34036038625967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21861330105792207)
,p_name=>'P26_CURRENCY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21861021211792205)
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
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'If your data contains international currency symbol, enter it here. For example, if your data has "&euro;1,234.56" or "&yen;1,234.56", enter "&euro;" or "&yen;".  Otherwise the data will not load correctly.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21861829715792207)
,p_name=>'P26_GROUP_SEPARATOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21861021211792205)
,p_prompt=>'Group Separator'
,p_source=>'apex_application.get_nls_group_separator'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
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
 p_id=>wwv_flow_api.id(21862304580792208)
,p_name=>'P26_DECIMAL_CHARACTER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21861021211792205)
,p_prompt=>'Decimal Character'
,p_source=>'apex_application.get_nls_decimal_separator'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
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
 p_id=>wwv_flow_api.id(21891802430052415)
,p_name=>'P26_HELLO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(21891514961040793)
,p_prompt=>'Hello:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(21848806748792178)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P26_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'N'
,p_validation_condition=>'P26_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(21847024778792159)
,p_associated_item=>wwv_flow_api.id(21848224176792175)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21862704966792208)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21863019895792210)
,p_event_id=>wwv_flow_api.id(21862704966792208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_COPY_PASTE'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21863204079792212)
,p_event_id=>wwv_flow_api.id(21862704966792208)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_COPY_PASTE'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21863311338792212)
,p_name=>'Import from File'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21863620313792213)
,p_event_id=>wwv_flow_api.id(21863311338792212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_FILE_NAME'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21863800262792213)
,p_event_id=>wwv_flow_api.id(21863311338792212)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_FILE_NAME'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21892903074179322)
,p_name=>'set start point'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_HELLO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21893206330179324)
,p_event_id=>wwv_flow_api.id(21892903074179322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_START_POINT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'RET_VAL   NUMBER;',
'',
'BEGIN',
'',
'INSERT INTO CORP_WO_STAGE ( WORK_ORDER) ',
'VALUES (:P26_HELLO)',
'RETURNING LOAD_ID INTO RET_VAL;',
'',
'COMMIT;',
'',
'RETURN RET_VAL;',
'',
'END;',
''))
,p_attribute_07=>'P26_HELLO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21864022734792213)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PARSE_UPLOADED_DATA'
,p_process_name=>'Parse Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(21843905668792124)
,p_attribute_02=>'P26_IMPORT_FROM'
,p_attribute_03=>'P26_SEPARATOR'
,p_attribute_04=>'P26_ENCLOSED_BY'
,p_attribute_05=>'P26_FIRST_ROW'
,p_attribute_06=>'P26_CURRENCY'
,p_attribute_07=>'P26_GROUP_SEPARATOR'
,p_attribute_08=>'P26_DECIMAL_CHARACTER'
,p_attribute_09=>'P26_FILE_NAME'
,p_attribute_10=>'P26_COPY_PASTE'
,p_attribute_11=>'P26_CHAR_SET'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21847024778792159)
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Edit End User'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit End User'
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
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150204090658'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5216009850427257)
,p_plug_name=>'Edit End User'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34020547449967384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5221428142427267)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5216329724427260)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5216009850427257)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P27_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5216622482427260)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5216009850427257)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5216218012427260)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(5216009850427257)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P27_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5216412590427260)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5216009850427257)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P27_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(5217231996427262)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5217418127427262)
,p_name=>'P27_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5217604198427263)
,p_name=>'P27_APEX_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Network ID'
,p_source=>'APEX_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5217823000427264)
,p_name=>'P27_SGP_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sgp Id'
,p_source=>'SGP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5218023017427264)
,p_name=>'P27_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5218213564427264)
,p_name=>'P27_LAST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5218423951427264)
,p_name=>'P27_EMAILADDRESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Address'
,p_source=>'EMAILADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5218610525427264)
,p_name=>'P27_VMID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Escalate ID'
,p_source=>'VMID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5218805321427264)
,p_name=>'P27_ACTIVE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active User'
,p_source=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5219025373427265)
,p_name=>'P27_VMANAGER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Escalated Disputes'
,p_source=>'VMANAGER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5219214519427265)
,p_name=>'P27_CREATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5219414284427265)
,p_name=>'P27_CREATED_DT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Dt'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5219625271427265)
,p_name=>'P27_PROCESS_EMAIL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Email'
,p_source=>'PROCESS_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5219821528427265)
,p_name=>'P27_PROCESS_DISPUTES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Disputes'
,p_source=>'PROCESS_DISPUTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5220012077427266)
,p_name=>'P27_LOAN_TYPE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loan Type'
,p_source=>'LOAN_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOAN_TYPE'
,p_lov=>'.'||wwv_flow_api.id(31768236058811147)||'.'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5220207536427266)
,p_name=>'P27_WORK_CATEGORY'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
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
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5220420115427266)
,p_name=>'P27_APP_MANAGER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(5216009850427257)
,p_use_cache_before_default=>'NO'
,p_prompt=>'App Manager'
,p_source=>'APP_MANAGER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5220812481427266)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P27_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5221007156427267)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P27_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5245828838163253)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete user'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'DELETE CORP_PRIVILEGES WHERE ID = :P27_ID;',
'COMMIT;',
' ',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5216412590427260)
,p_process_when=>'P27_ID'
,p_process_when_type=>'ITEM_NOT_NULL_OR_ZERO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5249719534539069)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'',
'update CORP_PRIVILEGES ',
'set APEX_ID       = :P27_APEX_ID, ',
'    SGP_ID        = :P27_APEX_ID, ',
'    FIRST_NAME    = :P27_FIRST_NAME, ',
'    LAST_NAME     = :P27_LAST_NAME, ',
'    EMAILADDRESS  = :P27_EMAILADDRESS, ',
'    VMID          = :P27_VMID, ',
'    ACTIVE        = :P27_ACTIVE, ',
'    VMANAGER      = :P27_VMANAGER, ',
'    PROCESS_EMAIL = :P27_PROCESS_EMAIL, ',
'    PROCESS_DISPUTES = :P27_PROCESS_DISPUTES, ',
'    LOAN_TYPE        = :P27_LOAN_TYPE, ',
'    WORK_CATEGORY    = :P27_WORK_CATEGORY, ',
'    APP_MANAGER      = :P27_APP_MANAGER',
'WHERE ID  = :P27_ID;',
'',
'COMMIT;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5216329724427260)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5221213949427267)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5216412590427260)
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Create End User'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create End User'
,p_step_sub_title=>'Create End User'
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
,p_last_upd_yyyymmddhh24miss=>'20150608133715'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5233814867969114)
,p_plug_name=>'Create End User'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018455440967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5238414450969163)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5234401618969122)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5233814867969114)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P28_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5234029678969120)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5233814867969114)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5234630109969122)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(5233814867969114)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P28_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5234214961969122)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5233814867969114)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
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
 p_id=>wwv_flow_api.id(5239414178969167)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5234808813969123)
,p_name=>'P28_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5235027777969124)
,p_name=>'P28_APEX_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apex Id'
,p_source=>'APEX_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5235214790969141)
,p_name=>'P28_SGP_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sgp Id'
,p_source=>'SGP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5235414640969141)
,p_name=>'P28_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5235616500969142)
,p_name=>'P28_LAST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5235816517969142)
,p_name=>'P28_EMAILADDRESS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Emailaddress'
,p_source=>'EMAILADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5236021982969142)
,p_name=>'P28_VMID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vmid'
,p_source=>'VMID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5236230976969142)
,p_name=>'P28_ACTIVE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active'
,p_source=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5236406321969142)
,p_name=>'P28_VMANAGER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vmanager'
,p_source=>'VMANAGER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5236617117969142)
,p_name=>'P28_CREATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5236816930969143)
,p_name=>'P28_CREATED_DT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Dt'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5237003446969143)
,p_name=>'P28_PROCESS_EMAIL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Email'
,p_source=>'PROCESS_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5237225702969143)
,p_name=>'P28_PROCESS_DISPUTES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Process Disputes'
,p_source=>'PROCESS_DISPUTES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5237417883969143)
,p_name=>'P28_LOAN_TYPE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loan Type'
,p_source=>'LOAN_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5237626734969143)
,p_name=>'P28_WORK_CATEGORY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Category'
,p_source=>'WORK_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5237819119969144)
,p_name=>'P28_APP_MANAGER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(5233814867969114)
,p_use_cache_before_default=>'NO'
,p_prompt=>'App Manager'
,p_source=>'APP_MANAGER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24795812895530295)
,p_validation_name=>'P28_APEX_ID'
,p_validation_sequence=>10
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'',
'corp_apex_id  NUMBER;',
'',
'BEGIN',
'',
'',
'',
'select COUNT(*) ',
'INTO CORP_APEX_ID',
'FROM CORP_PRIVILEGES',
'WHERE upper(TRIM(APEX_ID)) = UPPER(TRIM(:P28_APEX_ID)); ',
'',
'IF CORP_APEX_ID > 0  THEN ',
'    RETURN FALSE;',
'ELSE ',
'   RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, but this APEX ID exists in the database'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(5234630109969122)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(5235027777969124)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24796001897535407)
,p_validation_name=>'P28_APEX_ID'
,p_validation_sequence=>20
,p_validation=>'P28_APEX_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(5234630109969122)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(5235027777969124)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5238729492969165)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P28_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5238922453969166)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_PRIVILEGES'
,p_attribute_02=>'CORP_PRIVILEGES'
,p_attribute_03=>'P28_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5239629943993346)
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
'VALUES (:P28_APEX_ID, ',
'        :P28_APEX_ID,',
'        :P28_FIRST_NAME,',
'        :P28_LAST_NAME,',
'        :P28_APEX_ID||''@safeguardproperties.com'',',
'        SUBSTR(:P28_FIRST_NAME,1,1)||:P28_LAST_NAME,',
'        :P28_ACTIVE,',
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
,p_process_when_button_id=>wwv_flow_api.id(5234630109969122)
,p_process_success_message=>'User Created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5239121844969166)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'27'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5234214961969122)
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Data / Table Mapping wo'
,p_page_mode=>'NORMAL'
,p_step_title=>'Data / Table Mapping wo'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<style>',
'  .rc-content-main {height: 400px; overflow: auto !important;}',
'</style> '))
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150204090740'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21864803406792220)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21865214513792220)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(21844122063792134)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(34034929892967422)
,p_translate_title=>'N'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21865301449792220)
,p_plug_name=>'Data / Table Mapping'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(34025935411967405)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_DATA_UPLOAD_COLUMN_MAPPING'
,p_plug_query_row_template=>1
,p_attribute_01=>wwv_flow_api.id(21843905668792124)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21865600330792221)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21865301449792220)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21865923377792221)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21865301449792220)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Next >'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21865826112792221)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21865301449792220)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'< Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21866405077792223)
,p_branch_action=>'f?p=&APP_ID.:32:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(21865923377792221)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21866203067792221)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PREPARE_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(21843905668792124)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21865923377792221)
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Review Work Types'
,p_page_mode=>'NORMAL'
,p_step_title=>'Review Work Types'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219104453'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5208623515763977)
,p_plug_name=>'Review Work Types'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34022027816967388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"WORKTYPE",',
'"INACTIVE",',
'"CREATED_DT",',
'"CREATED_BY",',
'"MODIFY_DT",',
'"MODIFY_BY"',
'from "#OWNER#"."CORP_WORKTYPE_LIST" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(5208800039763978)
,p_name=>'Review Work Types'
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
,p_detail_link=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::P31_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>5208800039763978
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5208910928763985)
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
 p_id=>wwv_flow_api.id(5209012646763989)
,p_db_column_name=>'WORKTYPE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Worktype'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORKTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5209113466763989)
,p_db_column_name=>'INACTIVE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Inactive'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'INACTIVE'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5209208050763989)
,p_db_column_name=>'CREATED_DT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created Dt'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_DT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5209318410763989)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5209414741763989)
,p_db_column_name=>'MODIFY_DT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Modify Dt'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFY_DT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5209531472763990)
,p_db_column_name=>'MODIFY_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Modify By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MODIFY_BY'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(5210718020778855)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'52108'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:WORKTYPE:INACTIVE:CREATED_DT:CREATED_BY:MODIFY_DT:MODIFY_BY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5210031880763992)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5209727952763990)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5208623515763977)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Create New Work Type'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:31::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Add to List of Work Types'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add to List of Work Types'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219104540'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5204807355763938)
,p_plug_name=>'Add to List of Work Types'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018455440967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5210323974763994)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5205109537763941)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5204807355763938)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5205428128763942)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5204807355763938)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037434504967427)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5205020805763941)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(5204807355763938)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P31_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5205206657763941)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5204807355763938)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037434504967427)
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
 p_id=>wwv_flow_api.id(5205905737763947)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5206119674763950)
,p_name=>'P31_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5204807355763938)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5206306116763959)
,p_name=>'P31_WORKTYPE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5204807355763938)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Type'
,p_source=>'WORKTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5206502959763960)
,p_name=>'P31_INACTIVE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5204807355763938)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active'
,p_source=>'INACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5206730795763960)
,p_name=>'P31_CREATED_DT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5204807355763938)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Dt'
,p_source=>'CREATED_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5206931144763962)
,p_name=>'P31_CREATED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(5204807355763938)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5207117467763962)
,p_name=>'P31_MODIFY_DT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(5204807355763938)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modify Dt'
,p_source=>'MODIFY_DT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5207328823763962)
,p_name=>'P31_MODIFY_BY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(5204807355763938)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modify By'
,p_source=>'MODIFY_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5207731356763964)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_WORKTYPE_LIST'
,p_attribute_02=>'CORP_WORKTYPE_LIST'
,p_attribute_03=>'P31_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5212428203866968)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'insert into  CORP_WORKTYPE_LIST',
'(',
'  WORKTYPE,',
'  INACTIVE,',
'  CREATED_DT,',
'  CREATED_BY',
')',
'values (:P31_WORKTYPE, :P31_INACTIVE, SYSDATE, :APP_USER );',
'',
'COMMIT;',
' ',
'',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5205020805763941)
,p_process_when=>':P31_ID'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5213222194931439)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'update CORP_WORKTYPE_LIST',
'  set WORKTYPE = :p31_WORKTYPE, ',
'   INACTIVE    = :P31_INACTIVE,',
'  MODIFY_DT    = SYSDATE,',
'  MODIFY_BY    = :APP_USER',
'  WHERE ID     = :P31_ID;',
'',
'COMMIT;',
' ',
'',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5205109537763941)
,p_process_when=>'P31_ID'
,p_process_when_type=>'ITEM_NOT_NULL_OR_ZERO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5213720940940606)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'DELETE  CORP_WORKTYPE_LIST',
'        WHERE ID     = :P31_ID;',
'',
'COMMIT;',
' ',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5205206657763941)
,p_process_when=>'P31_ID'
,p_process_when_type=>'ITEM_NOT_NULL_OR_ZERO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5208111659763967)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5205206657763941)
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Data Validation wo'
,p_page_mode=>'NORMAL'
,p_step_title=>'Data Validation wo'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150204090843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21867017818792226)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21867420310792226)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(21844122063792134)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(34034929892967422)
,p_translate_title=>'N'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21867506841792226)
,p_name=>'Data Validation'
,p_template=>wwv_flow_api.id(34025935411967405)
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
 p_id=>wwv_flow_api.id(21867810774792231)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21867906533792235)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21868026075792235)
,p_query_column_id=>3
,p_column_alias=>'C001'
,p_column_display_sequence=>3
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21868103402792235)
,p_query_column_id=>4
,p_column_alias=>'C002'
,p_column_display_sequence=>4
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21868209857792235)
,p_query_column_id=>5
,p_column_alias=>'C003'
,p_column_display_sequence=>5
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21868319424792235)
,p_query_column_id=>6
,p_column_alias=>'C004'
,p_column_display_sequence=>6
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21868428473792235)
,p_query_column_id=>7
,p_column_alias=>'C005'
,p_column_display_sequence=>7
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21868513306792235)
,p_query_column_id=>8
,p_column_alias=>'C006'
,p_column_display_sequence=>8
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21868615708792235)
,p_query_column_id=>9
,p_column_alias=>'C007'
,p_column_display_sequence=>9
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21868724186792235)
,p_query_column_id=>10
,p_column_alias=>'C008'
,p_column_display_sequence=>10
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21868807933792235)
,p_query_column_id=>11
,p_column_alias=>'C009'
,p_column_display_sequence=>11
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21868929236792235)
,p_query_column_id=>12
,p_column_alias=>'C010'
,p_column_display_sequence=>12
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21869010883792235)
,p_query_column_id=>13
,p_column_alias=>'C011'
,p_column_display_sequence=>13
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21869105052792235)
,p_query_column_id=>14
,p_column_alias=>'C012'
,p_column_display_sequence=>14
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21869200541792235)
,p_query_column_id=>15
,p_column_alias=>'C013'
,p_column_display_sequence=>15
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21869308173792235)
,p_query_column_id=>16
,p_column_alias=>'C014'
,p_column_display_sequence=>16
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21869407979792235)
,p_query_column_id=>17
,p_column_alias=>'C015'
,p_column_display_sequence=>17
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21869529237792236)
,p_query_column_id=>18
,p_column_alias=>'C016'
,p_column_display_sequence=>18
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21869626872792236)
,p_query_column_id=>19
,p_column_alias=>'C017'
,p_column_display_sequence=>19
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21869714282792236)
,p_query_column_id=>20
,p_column_alias=>'C018'
,p_column_display_sequence=>20
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21869826455792236)
,p_query_column_id=>21
,p_column_alias=>'C019'
,p_column_display_sequence=>21
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21869920296792236)
,p_query_column_id=>22
,p_column_alias=>'C020'
,p_column_display_sequence=>22
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21870001271792236)
,p_query_column_id=>23
,p_column_alias=>'C021'
,p_column_display_sequence=>23
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21870100116792237)
,p_query_column_id=>24
,p_column_alias=>'C022'
,p_column_display_sequence=>24
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21870207831792237)
,p_query_column_id=>25
,p_column_alias=>'C023'
,p_column_display_sequence=>25
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21870300532792237)
,p_query_column_id=>26
,p_column_alias=>'C024'
,p_column_display_sequence=>26
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21870423394792237)
,p_query_column_id=>27
,p_column_alias=>'C025'
,p_column_display_sequence=>27
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21870523581792237)
,p_query_column_id=>28
,p_column_alias=>'C026'
,p_column_display_sequence=>28
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21870620488792237)
,p_query_column_id=>29
,p_column_alias=>'C027'
,p_column_display_sequence=>29
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21870719108792237)
,p_query_column_id=>30
,p_column_alias=>'C028'
,p_column_display_sequence=>30
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21870802436792237)
,p_query_column_id=>31
,p_column_alias=>'C029'
,p_column_display_sequence=>31
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21870927219792237)
,p_query_column_id=>32
,p_column_alias=>'C030'
,p_column_display_sequence=>32
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21871007561792237)
,p_query_column_id=>33
,p_column_alias=>'C031'
,p_column_display_sequence=>33
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21871114680792237)
,p_query_column_id=>34
,p_column_alias=>'C032'
,p_column_display_sequence=>34
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21871205635792237)
,p_query_column_id=>35
,p_column_alias=>'C033'
,p_column_display_sequence=>35
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21871326628792238)
,p_query_column_id=>36
,p_column_alias=>'C034'
,p_column_display_sequence=>36
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21871419003792238)
,p_query_column_id=>37
,p_column_alias=>'C035'
,p_column_display_sequence=>37
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21871508851792238)
,p_query_column_id=>38
,p_column_alias=>'C036'
,p_column_display_sequence=>38
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21871619321792238)
,p_query_column_id=>39
,p_column_alias=>'C037'
,p_column_display_sequence=>39
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21871731187792238)
,p_query_column_id=>40
,p_column_alias=>'C038'
,p_column_display_sequence=>40
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21871817468792238)
,p_query_column_id=>41
,p_column_alias=>'C040'
,p_column_display_sequence=>41
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21871927302792238)
,p_query_column_id=>42
,p_column_alias=>'C041'
,p_column_display_sequence=>42
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21872022615792238)
,p_query_column_id=>43
,p_column_alias=>'C042'
,p_column_display_sequence=>43
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21872119610792238)
,p_query_column_id=>44
,p_column_alias=>'C043'
,p_column_display_sequence=>44
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21872202467792238)
,p_query_column_id=>45
,p_column_alias=>'C044'
,p_column_display_sequence=>45
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21872313821792238)
,p_query_column_id=>46
,p_column_alias=>'C045'
,p_column_display_sequence=>46
,p_column_heading=>'C045'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21872514399792238)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21867506841792226)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21872826897792240)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21867506841792226)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Load Data'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21872718824792240)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21867506841792226)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'< Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21873304458792241)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(21872826897792240)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21873110093792240)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_LOAD_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(21843905668792124)
,p_attribute_02=>'P33_INSERT_COUNT'
,p_attribute_03=>'P33_UPDATE_COUNT'
,p_attribute_04=>'P33_ERROR_COUNT'
,p_attribute_05=>'P33_REVIEW_COUNT'
,p_process_error_message=>'Data Loading Failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(21872826897792240)
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Data Load Results wo'
,p_page_mode=>'NORMAL'
,p_step_title=>'Data Load Results wo'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150205140227'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21873928306792244)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21874302977792244)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(21844122063792134)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(34034929892967422)
,p_translate_title=>'N'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21874420859792244)
,p_plug_name=>'Data Load Results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(34025935411967405)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21875803631792247)
,p_name=>'Failed Records'
,p_template=>wwv_flow_api.id(34025935411967405)
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
,p_display_when_condition=>'P33_ERROR_COUNT'
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
 p_id=>wwv_flow_api.id(21876105104792250)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21876226933792250)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21876308119792250)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21876414310792250)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21876522989792250)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21876627568792250)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21876718108792250)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21876802051792250)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21876926534792250)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21877025392792250)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21877130171792251)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21877219021792251)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21877300748792251)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21877416838792251)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21877512345792251)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21877632765792251)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21877724882792251)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21877815498792251)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21877914781792251)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21878016898792251)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21878130334792251)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21878210572792251)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21878318172792251)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21878405346792251)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21878522992792251)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21878630618792251)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21878720837792251)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21878815821792251)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21878927633792251)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21879024818792251)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21879123470792251)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21879221763792251)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21879311390792251)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21879411336792251)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21879512926792251)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21879604456792251)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21879726932792252)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21879808380792252)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21879930043792252)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21880002404792252)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21880113181792252)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21880200917792252)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21880329655792252)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21880425857792252)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21880518492792252)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21880615745792252)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21880710999792252)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21880815680792252)
,p_name=>'Records Changed by Another User.'
,p_template=>wwv_flow_api.id(34025935411967405)
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
,p_display_when_condition=>'P33_REVIEW_COUNT'
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
 p_id=>wwv_flow_api.id(21881128388792255)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21881209404792255)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21881319585792255)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21881407278792255)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21881503285792255)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21881605506792255)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21881709425792256)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21881810336792256)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21881928988792256)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21882016431792256)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21882118560792256)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21882230338792256)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21882307727792256)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21882430795792256)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21882502429792256)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21882621695792256)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21882732282792256)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21882814822792256)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21882921304792256)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21883027665792256)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21883124227792256)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21883201137792256)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21883300557792256)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21883402170792256)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21883508158792256)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21883601759792256)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21883703503792256)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21883826691792256)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21883925522792256)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21884022780792256)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21884128662792256)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21884228276792257)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21884318827792257)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21884415885792257)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21884530828792257)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21884621652792257)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21884700578792257)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21884811433792257)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21884929749792257)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21885014243792257)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21885118505792257)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21885206103792257)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21885322781792257)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21885407253792257)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21885502075792257)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21885613673792257)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21885724069792257)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21911802035529024)
,p_plug_name=>'end marker'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018152620967380)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_list_template_id=>wwv_flow_api.id(34034046640967420)
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
 p_id=>wwv_flow_api.id(21912019266552918)
,p_plug_name=>'buttons'
,p_parent_plug_id=>wwv_flow_api.id(21911802035529024)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_list_template_id=>wwv_flow_api.id(34034046640967420)
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
 p_id=>wwv_flow_api.id(21874731168792244)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21874420859792244)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21874817322792245)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21874420859792244)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Finish'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21904602515477718)
,p_branch_name=>'FINISH'
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21875108159792245)
,p_name=>'P33_INSERT_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21874420859792244)
,p_prompt=>'Inserted Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21875308475792246)
,p_name=>'P33_UPDATE_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21874420859792244)
,p_prompt=>'Updated Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21875524429792247)
,p_name=>'P33_ERROR_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21874420859792244)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Failed Row(s):'
,p_source=>'select count(*) c from apex_collections where collection_name = ''LOAD_CONTENT'' and c047 = ''FAILED'''
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21875707353792247)
,p_name=>'P33_REVIEW_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(21874420859792244)
,p_prompt=>'To be Reviewed Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21912509342565770)
,p_name=>'P33_HELLO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(21912019266552918)
,p_prompt=>'Hello:'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21953316043869110)
,p_name=>'P33_USER_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(21912019266552918)
,p_prompt=>'User Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(21917330877859545)
,p_computation_sequence=>10
,p_computation_item=>'P33_HELLO'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P0_APP_USER.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(21955906720934213)
,p_computation_sequence=>10
,p_computation_item=>'P33_USER_ID'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' select id from CORP_USER_SECURITY where USER_NAME = :P0_APP_USER  ',
'',
'',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21961201228137799)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FINISH'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'CURSOR C1',
'IS',
'SELECT WORK_ORDER ',
'FROM CORP_WO_STAGE',
'order by load_id; ',
'',
'R1  C1%ROWTYPE; ',
'',
'FOUNDIT  NUMBER;',
'',
'FUNCTION VALIDNBR ( P_WORKORDER VARCHAR2) RETURN NUMBER',
'IS',
'',
'WORK_ORDER NUMBER;',
'RET_VAL    NUMBER;',
'',
'BEGIN',
'       WORK_order := TO_NUMBER(P_WORKORDER);',
'RET_VAL := 1;',
'RETURN RET_VAL;',
'       ',
'EXCEPTION ',
'   WHEN OTHERS THEN ',
'   RET_VAL := 0;',
'   RETURN RET_VAL;   ',
'END;',
'',
'',
'',
'PROCEDURE MARK_PENDING',
'( P_USER_ID   NUMBER,',
'  P_USERNAME  VARCHAR2, ',
'  P_WORKORDER VARCHAR2',
') ',
'IS',
'  SQL_STMT   VARCHAR2(32000);',
'  GOOD_NBR   NUMBER;                       ',
'  P_FOUND    NUMBER;',
'  BEGIN',
'       ',
'       GOOD_NBR := VALIDNBR(P_WORKORDER); ',
'       ',
'       IF  ( GOOD_NBR = 1 )  THEN ',
'       ',
'             SQL_STMT := ''UPDATE CORP_VENDOR_DISPUTES SET  SGRESPONSE = ''''Pending'''', MARK = 0,  ACTIVEPROCESS = :A WHERE WORKORDER = :B '';',
'             EXECUTE IMMEDIATE SQL_STMT USING P_USER_ID, P_WORKORDER;',
'                    ',
'             P_FOUND  := SQL%ROWCOUNT;',
'             ',
'             COMMIT;',
'             ',
'             UPDATE CORP_WO_STAGE SET ASSIGNED_TO = P_USERNAME, NBR_FOUND = P_FOUND where work_order = P_WORKORDER; ',
'             commit;',
'      END IF;                     ',
'  EXCEPTION ',
'       WHEN OTHERS THEN ',
'           P_FOUND := SQLCODE;',
'  END;',
'',
'BEGIN',
'',
'open c1;  ',
'     loop    ',
'         fetch c1 into r1;',
'         exit when c1%notfound;',
'         MARK_PENDING ( 1, ''christian.gardner'', r1.work_order);    ',
'     end loop;',
'close c1;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Reopen Report'
,p_page_mode=>'NORMAL'
,p_step_title=>'Reopen Report'
,p_step_sub_title=>'Reopen Report'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150210085036'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22000505127646004)
,p_plug_name=>'Reopened Work Orders in Pending Status'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018455440967381)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21999422161621218)
,p_plug_name=>'Reopen Report'
,p_parent_plug_id=>wwv_flow_api.id(22000505127646004)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34022027816967388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT WORK_ORDER, LOAD_DT, ASSIGNED_TO, NBR_FOUND  ',
'FROM CORP_WO_STAGE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(21999509804621218)
,p_name=>'Reopen Report'
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
,p_internal_uid=>21999509804621218
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21999711879621227)
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
 p_id=>wwv_flow_api.id(21999828588621234)
,p_db_column_name=>'LOAD_DT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Load Dt'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LOAD_DT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21999906616621234)
,p_db_column_name=>'ASSIGNED_TO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Assigned To'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ASSIGNED_TO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22000006980621234)
,p_db_column_name=>'NBR_FOUND'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nbr WO Found'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NBR_FOUND'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22000100017625623)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'220002'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'WORK_ORDER:LOAD_DT:ASSIGNED_TO:NBR_FOUND'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22002113925733691)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21999422161621218)
,p_button_name=>'CLEAR_TABLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Clear Table'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22122515941541634)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21999422161621218)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036843798967425)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22002707281752746)
,p_branch_name=>'FINISH'
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(22001307977691702)
,p_validation_name=>'stage table'
,p_validation_sequence=>10
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'CNT NUMBER;',
'',
'BEGIN',
'      SELECT COUNT(*) ',
'      INTO CNT',
'      FROM CORP_WO_STAGE;',
'      IF ( CNT = 0 ) THEN ',
'',
'          RETURN TRUE;',
'      ELSE ',
'          RETURN FALSE;',
'      END IF;     ',
'',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please clear work table before you leave page'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22002318558744518)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Truncate Work Table'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'   ',
'     EXECUTE IMMEDIATE ''TRUNCATE TABLE CORP_WO_STAGE DROP STORAGE'';',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22002113925733691)
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Corp Clients'
,p_page_mode=>'NORMAL'
,p_step_title=>'Corp Clients'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219103832'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22801908764836503)
,p_plug_name=>'Corp Clients'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"CLIENT"',
'from "#OWNER#"."CORP_CLIENTS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22802108509836503)
,p_name=>'Corp Clients'
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
,p_detail_link=>'f?p=&APP_ID.:36:&APP_SESSION.::::P36_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">'
,p_owner=>'CGARDNER'
,p_internal_uid=>22802108509836503
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22802227186836508)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22802314434836511)
,p_db_column_name=>'CLIENT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Corporate Compliance Clients'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLIENT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22803529357846572)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'228036'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:CLIENT'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22802821863836512)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22802507480836511)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22801908764836503)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Add New Client'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:36::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Add Corp Clients'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add Corp Clients'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219103516'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22798911459836463)
,p_plug_name=>'Add Corp Clients'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018455440967381)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22803127240836516)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22799204887836466)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22798911459836463)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P36_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22799523133836467)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22798911459836463)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037434504967427)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22799111100836466)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22798911459836463)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P36_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22799300110836466)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22798911459836463)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P36_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22800120972836473)
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22800312869836476)
,p_name=>'P36_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22798911459836463)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22800530315836483)
,p_name=>'P36_CLIENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22798911459836463)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Client''s Name'
,p_source=>'CLIENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>40
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22801006202836488)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_CLIENTS'
,p_attribute_02=>'CORP_CLIENTS'
,p_attribute_03=>'P36_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22801229600836491)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_CLIENTS'
,p_attribute_02=>'CORP_CLIENTS'
,p_attribute_03=>'P36_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22801423720836491)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22799300110836466)
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_api.create_page(
 p_id=>37
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Manage Dispute Reasons'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage Dispute Reasons'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150220102849'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22837720169456941)
,p_plug_name=>'Manage Dispute Reasons'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34022027816967388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"DISPUTEREASON",',
'"INACTIVE"',
'from "#OWNER#"."CORP_DISPUTE_REASON" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22837928368456943)
,p_name=>'Manage Dispute Reasons'
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
,p_detail_link=>'f?p=&APP_ID.:38:&APP_SESSION.::::P38_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">'
,p_owner=>'CGARDNER'
,p_internal_uid=>22837928368456943
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22838016373456946)
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
 p_id=>wwv_flow_api.id(22838102586456951)
,p_db_column_name=>'DISPUTEREASON'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Disputereason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTEREASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22838200620456951)
,p_db_column_name=>'INACTIVE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Active'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'INACTIVE'
,p_rpt_named_lov=>wwv_flow_api.id(22839711663481657)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22841212618500831)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'228413'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:DISPUTEREASON:INACTIVE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22838727687456954)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22838402709456951)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22837720169456941)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:38::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00038
begin
wwv_flow_api.create_page(
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Edit DISPUTE REASON'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit DISPUTE REASON'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150220102540'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22834611320456892)
,p_plug_name=>'Edit DISPUTE REASON'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22839030982456959)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22834924914456896)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22834611320456892)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P38_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22835232534456896)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22834611320456892)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036843798967425)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22834820062456896)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22834611320456892)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P38_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22835002969456896)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22834611320456892)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P38_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22835830160456902)
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22836031432456908)
,p_name=>'P38_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22834611320456892)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22836201876456914)
,p_name=>'P38_DISPUTEREASON'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22834611320456892)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispute Reason'
,p_source=>'DISPUTEREASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22836402448456915)
,p_name=>'P38_INACTIVE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22834611320456892)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active'
,p_source=>'INACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'INACTIVE'
,p_lov=>'.'||wwv_flow_api.id(22839711663481657)||'.'
,p_cSize=>5
,p_cMaxlength=>5
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22836832432456916)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_DISPUTE_REASON'
,p_attribute_02=>'CORP_DISPUTE_REASON'
,p_attribute_03=>'P38_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22837001350456919)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_DISPUTE_REASON'
,p_attribute_02=>'CORP_DISPUTE_REASON'
,p_attribute_03=>'P38_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22837219758456920)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22835002969456896)
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_api.create_page(
 p_id=>40
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Create Work Order List'
,p_page_mode=>'NORMAL'
,p_step_title=>'Create Work Order List'
,p_step_sub_title=>'Create Work Order List'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160718142932'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(22087904615854282)
,p_name=>'Re-Open'
,p_template=>wwv_flow_api.id(34017546215967378)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_1'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select seq_id editlink,',
'    seq_id, ',
'    c001, ',
'    c002,',
'    C003 ',
'from apex_collections',
'where collection_name = ''REOPENREQUEST'''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(34028037077967409)
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
 p_id=>wwv_flow_api.id(22088323096854300)
,p_query_column_id=>1
,p_column_alias=>'EDITLINK'
,p_column_display_sequence=>1
,p_column_heading=>'EDITLINK'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:56:P56_ITEM_NO,P56_ITEM_STATUS,P56_ASSIGNED_TO:#SEQ_ID#,#C003#,&APP_USER.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22088412403854300)
,p_query_column_id=>2
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Item ID'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22088503617854300)
,p_query_column_id=>3
,p_column_alias=>'C001'
,p_column_display_sequence=>3
,p_column_heading=>'Work Order No'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22088612026854300)
,p_query_column_id=>4
,p_column_alias=>'C002'
,p_column_display_sequence=>4
,p_column_heading=>'Assigned To'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22093822901893896)
,p_query_column_id=>5
,p_column_alias=>'C003'
,p_column_display_sequence=>5
,p_column_heading=>'Line Item Status'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22091324519854357)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22089313472854307)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22087904615854282)
,p_button_name=>'ADD_RE-OPEN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Add to Re-Open Request'
,p_button_position=>'TOP'
,p_button_condition=>'apex_collection.collection_exists(''REOPENREQUEST'')'
,p_button_condition_type=>'PLSQL_EXPRESSION'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22089513996854317)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22087904615854282)
,p_button_name=>'SAVE_ReOpen'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Save Re-Open Request'
,p_button_position=>'TOP'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare ',
'',
'NUM_VAR  NUMBER;',
'',
'BEGIN',
'NUM_VAR := APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''REOPENREQUEST'');',
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
 p_id=>wwv_flow_api.id(22089727044854317)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22087904615854282)
,p_button_name=>'CREATE_REOPEN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Create Re-Open Request'
,p_button_position=>'TOP'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'BEGIN',
'',
'IF ( apex_collection.collection_exists(''REOPENREQUEST'') ) THEN ',
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
 p_id=>wwv_flow_api.id(22089928749854318)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22087904615854282)
,p_button_name=>'CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Clear Re-Open Request'
,p_button_position=>'TOP'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare ',
'',
'NUM_VAR  NUMBER;',
'',
'BEGIN',
'NUM_VAR := APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''REOPENREQUEST'');',
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
 p_id=>wwv_flow_api.id(22092319852854366)
,p_branch_name=>'Add_RE_OPRN'
,p_branch_action=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:56::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(22089313472854307)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(23212325305477414)
,p_branch_name=>'GO_BACK'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:40::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(22089928749854318)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23211422613341901)
,p_name=>'P40_MEMBER_CNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22087904615854282)
,p_prompt=>'Member Cnt'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'MEMBERS  NUMBER;',
'',
'BEGIN',
'     MEMBERS := APEX_COLLECTION.COLLECTION_MEMBER_COUNT( p_collection_name => ''REOPENREQUEST'');',
'     RETURN MEMBERS;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22091608437854361)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREATE_REOPEN'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'apex_collection.create_collection( p_collection_name => ''REOPENREQUEST'' );',
'commit;',
'',
'END;'))
,p_process_error_message=>'Problems Creating request'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22089727044854317)
,p_process_when=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF ( apex_collection.collection_exists(''REOPENREQUEST'') )',
'   THEN ',
'       RETURN FALSE;',
'ELSE ',
'       RETURN TRUE;',
'END IF;',
'',
'END;',
''))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_success_message=>'Empty Re-Open Request created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22091806222854365)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Re-OPEN Request '
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'    MEMBER_CNT  NUMBER;',
'BEGIN',
' ----apex_collection.delete_collection(''REOPENREQUEST'');',
' ---APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''REOPENREQUEST'');',
' -- apex_collection.DELETE_ALL_COLLECTIONS;',
'',
'for c1 in (select seq_id',
'             from apex_collections',
'            where collection_name = ''REOPENREQUEST''',
'           ) loop',
'           MEMBER_CNT := C1.SEQ_ID;',
'  APEX_COLLECTION.DELETE_MEMBER(',
'        p_collection_name => ''REOPENREQUEST'',',
'        p_seq => :MEMBER_CNT',
'        );',
'    ',
'     COMMIT;',
'     ',
'end loop;',
'',
' COMMIT;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22089928749854318)
,p_process_when=>'apex_collection.collection_exists(''REBILLREQUEST'')'
,p_process_when_type=>'PLSQL_EXPRESSION'
,p_process_success_message=>'Re-Bill Request Cleared'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22092027052854365)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Re-OPEN Request'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'CURSOR C2',
'IS',
'SELECT A.WORK_ORDER, A.ASSIGNED_TO, B.USER_ID ',
'FROM CORP_WO_STAGE A',
'LEFT JOIN ( SELECT ID AS USER_ID, UPPER(APEX_ID) AS APEX_ID ',
'            FROM CORP_PRIVILEGES ) B ON ( B.APEX_ID = UPPER(A.ASSIGNED_TO) ) ',
'order by A.load_id; ',
'',
'R2  C2%ROWTYPE; ',
'',
'FOUNDIT  NUMBER;',
'',
'FUNCTION VALIDNBR ( P_WORKORDER VARCHAR2) RETURN NUMBER',
'IS',
'',
'WORK_ORDER NUMBER;',
'RET_VAL    NUMBER;',
'',
'BEGIN',
'       WORK_order := TO_NUMBER(P_WORKORDER);',
'RET_VAL := 1;',
'RETURN RET_VAL;',
'       ',
'EXCEPTION ',
'   WHEN OTHERS THEN ',
'   RET_VAL := 0;',
'   RETURN RET_VAL;   ',
'END;',
'',
'PROCEDURE MARK_PENDING',
'( P_USER_ID   NUMBER,',
'  P_USERNAME  VARCHAR2, ',
'  P_WORKORDER VARCHAR2',
') ',
'IS',
'  SQL_STMT   VARCHAR2(32000);',
'  GOOD_NBR   NUMBER;                       ',
'  P_FOUND    NUMBER;',
'  BEGIN',
'       ',
'       GOOD_NBR := VALIDNBR(P_WORKORDER); ',
'       ',
'       IF  ( GOOD_NBR = 1 )  THEN ',
'       ',
'             SQL_STMT := ''UPDATE CORP_VENDOR_DISPUTES SET  SGRESPONSE = ''''Pending'''', MARK = 0,  ACTIVEPROCESS = :A WHERE WORKORDER = :B '';',
'             EXECUTE IMMEDIATE SQL_STMT USING P_USER_ID, P_WORKORDER;',
'                    ',
'             P_FOUND  := SQL%ROWCOUNT;',
'             ',
'             COMMIT;',
'             ',
'             UPDATE CORP_WO_STAGE SET ASSIGNED_TO = P_USERNAME, NBR_FOUND = P_FOUND where work_order = P_WORKORDER; ',
'             commit; ',
'      ELSE ',
'            UPDATE CORP_WO_STAGE SET ASSIGNED_TO = ''Not Assigned Bad Work Order Nbr'', NBR_FOUND = P_FOUND where work_order = P_WORKORDER;       ',
'      END IF;                     ',
'  EXCEPTION ',
'       WHEN OTHERS THEN ',
'           P_FOUND := SQLCODE;',
'           UPDATE CORP_WO_STAGE SET ASSIGNED_TO = ''SQL Errors'', NBR_FOUND = P_FOUND where work_order = P_WORKORDER;',
'  END;',
'',
'BEGIN',
'',
'    EXECUTE IMMEDIATE ''TRUNCATE TABLE CORP_WO_STAGE DROP STORAGE'';',
'',
'',
'for c1 in (select seq_id, c001, c002, c003',
'             from apex_collections',
'            where collection_name = ''REOPENREQUEST''',
'           ) loop',
'    --',
'',
'    if c1.c003 IN (''NEW'', ''UPDATE'')  then',
'        insert into CORP_WO_STAGE ( WORK_ORDER, assigned_to, nbr_found)',
'        values    (C1.c001, C1.C002 ,0);',
'    end if;',
'     ',
'     COMMIT;',
'     ',
'end loop;',
'',
'open c2;  ',
'     loop    ',
'         fetch c2 into r2;',
'         exit when c2%notfound;',
'         MARK_PENDING ( R2.USER_ID, R2.ASSIGNED_TO, R2.work_order);    ',
'     end loop;',
'close c2;',
'--',
'-- Clear the contents of the collection',
'--',
'--apex_collection.delete_collection( p_collection_name => ''REOPENREQUEST'' );',
'--',
'--commit;',
'',
'END;'))
,p_process_error_message=>'Save action failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22089513996854317)
,p_process_success_message=>'Re-Open Request Saved'
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_api.create_page(
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_tab_set=>'TS1'
,p_name=>'Edit Categories'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit Categories'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(34014258467967369)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140925081724'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5275102746959078)
,p_plug_name=>'Edit Categories'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34020547449967384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5278124728959086)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5275301218959080)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5275102746959078)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P41_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5275607606959080)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5275102746959078)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5275431376959080)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5275102746959078)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P41_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(5276103477959081)
,p_branch_action=>'f?p=&APP_ID.:25:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5276321466959082)
,p_name=>'P41_CATEGORY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5275102746959078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category Id'
,p_source=>'CATEGORY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5276526514959084)
,p_name=>'P41_CATEGORY'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5275102746959078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category Name'
,p_source=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5276722287959084)
,p_name=>'P41_CATEGORY_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5275102746959078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category Status'
,p_source=>'CATEGORY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORY_STATUS'
,p_lov=>'.'||wwv_flow_api.id(14776016227536889)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5276900663959084)
,p_name=>'P41_CREATED_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5275102746959078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Date'
,p_source=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5277131235959085)
,p_name=>'P41_CREATED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(5275102746959078)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5277506499959085)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_CATEGORY'
,p_attribute_02=>'CORP_CATEGORY'
,p_attribute_03=>'P41_CATEGORY_ID'
,p_attribute_04=>'CATEGORY_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5277707840959086)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_CATEGORY'
,p_attribute_02=>'CORP_CATEGORY'
,p_attribute_03=>'P41_CATEGORY_ID'
,p_attribute_04=>'CATEGORY_ID'
,p_attribute_11=>'U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5277903634959086)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5275431376959080)
);
end;
/
prompt --application/pages/page_00047
begin
wwv_flow_api.create_page(
 p_id=>47
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Category link'
,p_page_mode=>'NORMAL'
,p_step_title=>'Category link'
,p_step_sub_title=>'Category_link'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219105412'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5256730256140122)
,p_plug_name=>'Category_link'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select A.ID, ',
'A.CATEGORY_ID,',
'A.SUBCATEGORY_ID,',
'C.CATEGORY,',
'S.SUBCATEGORY,',
'A.CATEGORY_STATUS as STATUS,',
'A.CREATED_BY,',
'A.CREATED',
'from CORP_CATEGORY_LINK A,CORP_SUB_CATEGORY S, CORP_CATEGORY C',
'WHERE A.CATEGORY_ID    = C.CATEGORY_ID ',
' AND  A.SUBCATEGORY_ID = S.SUBCATEGORY_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(5256918041140126)
,p_name=>'Category_link'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::P48_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>5256918041140126
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5257024167140131)
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
 p_id=>wwv_flow_api.id(5257113047140134)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Category Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5257227575140134)
,p_db_column_name=>'SUBCATEGORY_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Subcategory Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'SUBCATEGORY_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5257716535140135)
,p_db_column_name=>'CATEGORY'
,p_display_order=>4
,p_column_identifier=>'H'
,p_column_label=>'Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5257632341140135)
,p_db_column_name=>'SUBCATEGORY'
,p_display_order=>5
,p_column_identifier=>'G'
,p_column_label=>'Subcategory'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBCATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5257421444140135)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>7
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5257504492140135)
,p_db_column_name=>'CREATED'
,p_display_order=>8
,p_column_identifier=>'F'
,p_column_label=>'Created'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5287212124647031)
,p_db_column_name=>'STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_rpt_named_lov=>wwv_flow_api.id(14645029129202290)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(5257803146140136)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'52579'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:CATEGORY_ID:SUBCATEGORY_ID:CREATED:SUBCATEGORY:CATEGORY:STATUS'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(5293908768125973)
,p_application_user=>'CHRISTIAN.GARDNER'
,p_name=>'Sub Category by Category'
,p_report_seq=>10
,p_report_alias=>'52940'
,p_status=>'PUBLIC'
,p_is_default=>'N'
,p_display_rows=>15
,p_report_columns=>'CATEGORY:SUBCATEGORY:STATUS:CREATED_BY:CREATED:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5288622790742102)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5258021324140139)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5256730256140122)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Create Category Link'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:48::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00048
begin
wwv_flow_api.create_page(
 p_id=>48
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Add / Edit Category Link'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add / Edit Category Link'
,p_step_sub_title=>'CREATE CATEGORY LINK'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219105706'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5260822943162725)
,p_plug_name=>'CREATE CATEGORY LINK'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5263132113162732)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5261008024162727)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5260822943162725)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P48_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5261209451162728)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5260822943162725)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036843798967425)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5261409550162728)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(5260822943162725)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P48_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5261614573162728)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5260822943162725)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P48_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(5264104440162733)
,p_branch_action=>'f?p=&APP_ID.:47:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5261822083162728)
,p_name=>'P48_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5260822943162725)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34768544817807333)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5262016213162730)
,p_name=>'P48_CATEGORY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5260822943162725)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category Id'
,p_source=>'CATEGORY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select category D,',
'       category_id r',
'from   CORP_CATEGORY ',
'where CATEGORY_STATUS = 0',
'order by category'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5262218412162730)
,p_name=>'P48_SUBCATEGORY_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5260822943162725)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subcategory Id'
,p_source=>'SUBCATEGORY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT SUBCATEGORY D,SUBCATEGORY_ID R  ',
'FROM CORP_SUB_CATEGORY  ',
'WHERE  SUBCATEGORY_STATUS = 1 ',
'ORDER BY SUBCATEGORY',
''))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5262427041162730)
,p_name=>'P48_CATEGORY_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5260822943162725)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'   VAR_NUM NUMBER;',
'',
'BEGIN',
'',
'    VAR_NUM  := 1;',
'',
'    RETURN VAR_NUM;',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Category Status'
,p_source=>'CATEGORY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ACTIVE_STATUS'
,p_lov=>'.'||wwv_flow_api.id(14645029129202290)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5262606686162731)
,p_name=>'P48_CREATED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(5260822943162725)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
' RET_VALUE VARCHAR2(100);',
'',
'BEGIN',
'',
'    RET_VALUE := :P0_APP_USER;',
'    RETURN RET_VALUE;',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5262807448162731)
,p_name=>'P48_CREATED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(5260822943162725)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
' RET_VALUE date;',
'',
'BEGIN',
'',
'    RET_VALUE := sysdate;',
'    RETURN RET_VALUE;',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5263400017162732)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_CATEGORY_LINK'
,p_attribute_02=>'CORP_CATEGORY_LINK'
,p_attribute_03=>'P48_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5291116415005225)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'UPDATE CORP_CATEGORY_LINK',
'SET CATEGORY_ID      = :P48_CATEGORY_ID,',
'    SUBCATEGORY_ID   = :P48_SUBCATEGORY_ID,',
'    CATEGORY_STATUS  = :P48_CATEGORY_STATUS,',
'    CREATED          = SYSDATE',
'WHERE ID   = :P48_ID;',
'',
'COMMIT;',
' ',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5261008024162727)
,p_process_when=>'P48_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Category Link Updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5291311005013081)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'INSERT INTO CORP_CATEGORY_LINK(CATEGORY_ID, ',
'                               SUBCATEGORY_ID,',
'                               CATEGORY_STATUS,',
'                               CREATED_BY,',
'                               CREATED)',
'VALUES (:P48_CATEGORY_ID,',
'        :P48_SUBCATEGORY_ID,',
'        :P48_CATEGORY_STATUS,',
'        :P48_CREATED_BY, ',
'        :P48_CREATED);',
'',
'COMMIT;',
' ',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5261409550162728)
,p_process_when=>'P48_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_process_success_message=>'Category link Created'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5291605596021013)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Row'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'DELETE  CORP_CATEGORY_LINK',
'WHERE ID   = :P48_ID;',
'',
'COMMIT;',
' ',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5261614573162728)
,p_process_when=>'P48_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Category Link removed'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5263830059162732)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'8'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5261614573162728)
);
end;
/
prompt --application/pages/page_00049
begin
wwv_flow_api.create_page(
 p_id=>49
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'LIST SUB CATEGORY '
,p_page_mode=>'NORMAL'
,p_step_title=>'CORP SUB CATEGORY '
,p_step_sub_title=>'CORP SUB CATEGORY '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219105201'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5267313101173396)
,p_plug_name=>'CORP_SUB_CATEGORY '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "SUBCATEGORY_ID", ',
'"SUBCATEGORY",',
'"SUBCATEGORY_STATUS",',
'"CREATED_BY",',
'"CREATED"',
'from "#OWNER#"."CORP_SUB_CATEGORY" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(5267513866173396)
,p_name=>'CORP_SUB_CATEGORY '
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::P50_SUBCATEGORY_ID:#SUBCATEGORY_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>5267513866173396
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5267607144173397)
,p_db_column_name=>'SUBCATEGORY_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Subcategory Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'SUBCATEGORY_ID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5267725583173397)
,p_db_column_name=>'SUBCATEGORY'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Subcategory'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBCATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5267828180173398)
,p_db_column_name=>'SUBCATEGORY_STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Subcategory Status'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'SUBCATEGORY_STATUS'
,p_rpt_named_lov=>wwv_flow_api.id(14645029129202290)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5267932582173398)
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
 p_id=>wwv_flow_api.id(5268027687173398)
,p_db_column_name=>'CREATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(5268119056173398)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'52682'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SUBCATEGORY_ID:SUBCATEGORY:SUBCATEGORY_STATUS:CREATED_BY:CREATED'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5282714984276286)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5268310779173398)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5267313101173396)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_api.create_page(
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Add / Edit Sub Category'
,p_page_mode=>'NORMAL'
,p_step_title=>'Add / Edit Sub Category'
,p_step_sub_title=>'Create Sub Category'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219105306'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5270326749183236)
,p_plug_name=>'Create Sub Category'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5283331176299892)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5270527791183236)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5270326749183236)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P50_SUBCATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5270711264183237)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5270326749183236)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036843798967425)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5270914783183237)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(5270326749183236)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P50_SUBCATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5271106319183237)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5270326749183236)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P50_SUBCATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(5273007723183239)
,p_branch_action=>'f?p=&APP_ID.:49:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5271315372183237)
,p_name=>'P50_SUBCATEGORY_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5270326749183236)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subcategory Id'
,p_source=>'SUBCATEGORY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5271510418183237)
,p_name=>'P50_SUBCATEGORY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5270326749183236)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sub Category Name'
,p_source=>'SUBCATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5271728523183238)
,p_name=>'P50_SUBCATEGORY_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5270326749183236)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'VAR_NUM  NUMBER;',
'',
'BEGIN',
'    VAR_NUM := 1;',
'    RETURN VAR_NUM;',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Subcategory Status'
,p_source=>'SUBCATEGORY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ACTIVE_STATUS'
,p_lov=>'.'||wwv_flow_api.id(14645029129202290)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5271932461183238)
,p_name=>'P50_CREATED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5270326749183236)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
' RET_VALUE VARCHAR2(100);',
'',
'BEGIN',
'',
'    RET_VALUE := :P0_APP_USER;',
'    RETURN RET_VALUE;',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5272108024183238)
,p_name=>'P50_CREATED'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(5270326749183236)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
' RET_VALUE date;',
'',
'BEGIN',
'',
'    RET_VALUE := sysdate;',
'    RETURN RET_VALUE;',
'END;',
''))
,p_item_default_type=>'PLSQL_FUNCTION_BODY'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5272324266183238)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_SUB_CATEGORY'
,p_attribute_02=>'CORP_SUB_CATEGORY'
,p_attribute_03=>'P50_SUBCATEGORY_ID'
,p_attribute_04=>'SUBCATEGORY_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5272520453183239)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_SUB_CATEGORY'
,p_attribute_02=>'CORP_SUB_CATEGORY'
,p_attribute_03=>'P50_SUBCATEGORY_ID'
,p_attribute_04=>'SUBCATEGORY_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5272725124183239)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'10'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5271106319183237)
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_api.create_page(
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'List of Vendors'
,p_page_mode=>'NORMAL'
,p_step_title=>'List of Vendors'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150512113312'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24413101588315820)
,p_plug_name=>'List of Vendors'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from CORP_VENDORLIST',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24413317469315820)
,p_name=>'List of Vendors'
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
,p_detail_link=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.::P52_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>24413317469315820
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24413412962315842)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_sync_form_label=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24413520606315849)
,p_db_column_name=>'VENDOR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Vendor'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VENDOR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24414125162330808)
,p_db_column_name=>'ACTIVE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Active'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVE'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24414317071353683)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'244144'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:VENDOR:ACTIVE'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24415427722375685)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24413714848315849)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24413101588315820)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
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
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Edit List of Vendors'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit List of Vendors'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150528100659'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24410014436315719)
,p_plug_name=>'Edit List of Vendors'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>0
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24415604305378342)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24410328217315723)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24410014436315719)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P52_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24410609837315725)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24410014436315719)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036843798967425)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24410217923315723)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24410014436315719)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P52_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24410423577315723)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24410014436315719)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
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
 p_id=>wwv_flow_api.id(24411113673315739)
,p_branch_action=>'f?p=&APP_ID.:51:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24411308790315749)
,p_name=>'P52_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24410014436315719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24411516407315766)
,p_name=>'P52_VENDOR'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24410014436315719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor'
,p_source=>'VENDOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24411701469315772)
,p_name=>'P52_ACTIVE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24410014436315719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active'
,p_source=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO'
,p_lov=>'.'||wwv_flow_api.id(31767419173787350)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24417526141451900)
,p_validation_name=>'P52_VENDOR'
,p_validation_sequence=>10
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'  TBL_CNT NUMBER;',
'BEGIN',
'    ',
' SELECT COUNT(*)',
' INTO TBL_CNT ',
' FROM CORP_VENDORLIST',
' WHERE UPPER(VENDOR) = UPPER(:P52_VENDOR);',
' ',
' IF (TBL_CNT > 0 ) THEN ',
'     RETURN FALSE;',
' ELSE ',
'      RETURN TRUE;',
' END IF;',
'END;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Vendor already exists in system'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(24410217923315723)
,p_only_for_changed_rows=>'Y'
,p_associated_item=>wwv_flow_api.id(24411516407315766)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24412220867315773)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_VENDORLIST'
,p_attribute_02=>'CORP_VENDORLIST'
,p_attribute_03=>'P52_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24412401617315778)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_VENDORLIST'
,p_attribute_02=>'CORP_VENDORLIST'
,p_attribute_03=>'P52_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24412617747315779)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24410423577315723)
);
end;
/
prompt --application/pages/page_00055
begin
wwv_flow_api.create_page(
 p_id=>55
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Export VA DATA'
,p_page_mode=>'NORMAL'
,p_step_title=>'Export VA DATA'
,p_step_sub_title=>'Export VA DATA'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219105911'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5528314770677670)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5528611973677680)
,p_plug_name=>'Export VA Data'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'PROCESSOR,',
'SENDERNAME,',
'SENDEREMAILADDRESS,',
'DATEDISPUTERECEIVED,',
'TO_,',
'CC_,',
'IMPORTANCE,',
'SUBJECT,',
'VENDOR,',
'WORKORDER,',
'WORKTYPE,',
'LOANTYPE,',
'CLIENT,',
'PROPERTYADDRESS,',
'DATETIMESENT,',
'STATUSREPORTREASON,',
'REPLYTOEMAILADDRESS,',
'SUPPORTINGDOCASK,',
'SUPPORTINGDOC,',
'AMOUNTREQUESTED,',
'DISPUTEREASON,',
'dbms_lob.substr(DISPUTEDESCRIPTION,4000,1) AS DISPUTEDESCRIPTION,',
'CASE WHEN NVL(ATTACHMENT,0 ) > 0 THEN ''TRUE'' ELSE ''FALSE'' END AS ATTACHMENT,',
'dbms_lob.substr(ATTACHMENTNAME,4000,1) AS ATTACHMENTNAME,',
'CATEGORY,',
'SUBCATEGORY,',
'DATEOFSGRESPONSE,',
'CYDS,',
'SGRESPONSE,',
'AMOUNTREFUNDED,',
'TURNAROUNDTIME,',
'LOSSREASON,',
'UPDATERERROR,',
'RESPONSIBLEEMPLOYEESPILOGIN,',
'dbms_lob.substr(COMMENTSTOVENDOR,4000,1) AS COMMENTSTOVENDOR,',
'DISPUTE_NUM,',
'VENDOR_NOTIFIED,',
'dbms_lob.substr(INTERNALCOMMENTS,4000,1) INTERNALCOMMENTS,',
'LPAD(SUBSTR(LOAN_NUMBER,-4),LENGTH(LOAN_NUMBER),''*'') AS LOAN_NUMBER,',
'ESCALATED ,',
'VMID,',
'CASE WHEN ESCWORKING > 0 THEN ''TRUE'' ELSE ''FALSE'' END AS ESCWORKING,',
'DISPUTEDISAGREE,',
'dbms_lob.substr(VMCOMMENTS,4000,1) VMCOMMENTS,',
'CASE WHEN ACTIVE_RECORD > 0 THEN ''TRUE'' ELSE ''FALSE'' END AS ACTIVE_RECORD,',
'ACCT_DT,',
'LOAD_ID,',
'LOAD_DT,',
'SPI_USER_DEPT',
'FROM CORP_ACCESS_TBL_DATA;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(5528727875677680)
,p_name=>'Export VA Data'
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
,p_internal_uid=>5528727875677680
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5528901828677698)
,p_db_column_name=>'PROCESSOR'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Processor'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROCESSOR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5529022688677705)
,p_db_column_name=>'SENDERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sendername'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SENDERNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5529125757677705)
,p_db_column_name=>'SENDEREMAILADDRESS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Senderemailaddress'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SENDEREMAILADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5529204234677705)
,p_db_column_name=>'DATEDISPUTERECEIVED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Datedisputereceived'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATEDISPUTERECEIVED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5529303096677705)
,p_db_column_name=>'TO_'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'To '
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TO_'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5529416078677705)
,p_db_column_name=>'CC_'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Cc '
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CC_'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5529522587677706)
,p_db_column_name=>'IMPORTANCE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Importance'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'IMPORTANCE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5529621447677706)
,p_db_column_name=>'SUBJECT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Subject'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBJECT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5529700696677706)
,p_db_column_name=>'VENDOR'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Vendor'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VENDOR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5529806432677706)
,p_db_column_name=>'WORKORDER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Workorder'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORKORDER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5529910729677706)
,p_db_column_name=>'WORKTYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Worktype'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORKTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5530002878677706)
,p_db_column_name=>'LOANTYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Loantype'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOANTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5530115594677706)
,p_db_column_name=>'CLIENT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Client'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLIENT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5530207359677706)
,p_db_column_name=>'PROPERTYADDRESS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Propertyaddress'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROPERTYADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5530324780677706)
,p_db_column_name=>'DATETIMESENT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Datetimesent'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DATETIMESENT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5530418125677707)
,p_db_column_name=>'STATUSREPORTREASON'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Statusreportreason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUSREPORTREASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5530505501677707)
,p_db_column_name=>'REPLYTOEMAILADDRESS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Replytoemailaddress'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REPLYTOEMAILADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5530606762677707)
,p_db_column_name=>'SUPPORTINGDOCASK'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Supportingdocask'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUPPORTINGDOCASK'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5530713168677707)
,p_db_column_name=>'SUPPORTINGDOC'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Supportingdoc'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUPPORTINGDOC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5530803587677707)
,p_db_column_name=>'AMOUNTREQUESTED'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Amountrequested'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNTREQUESTED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5530923348677707)
,p_db_column_name=>'DISPUTEREASON'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Disputereason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTEREASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5531020465677707)
,p_db_column_name=>'DISPUTEDESCRIPTION'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Disputedescription'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTEDESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5531111891677707)
,p_db_column_name=>'ATTACHMENT'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Attachment'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5531218866677707)
,p_db_column_name=>'ATTACHMENTNAME'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Attachmentname'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ATTACHMENTNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5531313842677708)
,p_db_column_name=>'CATEGORY'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5531402291677708)
,p_db_column_name=>'SUBCATEGORY'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Subcategory'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBCATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5531517264677708)
,p_db_column_name=>'DATEOFSGRESPONSE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Dateofsgresponse'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATEOFSGRESPONSE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5531617104677708)
,p_db_column_name=>'CYDS'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Cyds'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CYDS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5531729416677708)
,p_db_column_name=>'SGRESPONSE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Sgresponse'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SGRESPONSE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5531827348677708)
,p_db_column_name=>'AMOUNTREFUNDED'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Amountrefunded'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNTREFUNDED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5531919502677708)
,p_db_column_name=>'TURNAROUNDTIME'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Turnaroundtime'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TURNAROUNDTIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5532012947677708)
,p_db_column_name=>'LOSSREASON'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Lossreason'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOSSREASON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5532124861677709)
,p_db_column_name=>'UPDATERERROR'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Updatererror'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UPDATERERROR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5532202049677709)
,p_db_column_name=>'RESPONSIBLEEMPLOYEESPILOGIN'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Responsibleemployeespilogin'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RESPONSIBLEEMPLOYEESPILOGIN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5532319978677709)
,p_db_column_name=>'COMMENTSTOVENDOR'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Commentstovendor'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMENTSTOVENDOR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5532408141677709)
,p_db_column_name=>'DISPUTE_NUM'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Dispute Num'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTE_NUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5532511966677709)
,p_db_column_name=>'VENDOR_NOTIFIED'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Vendor Notified'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VENDOR_NOTIFIED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5532605736677709)
,p_db_column_name=>'INTERNALCOMMENTS'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Internalcomments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INTERNALCOMMENTS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5532801413677709)
,p_db_column_name=>'ESCALATED'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Escalated'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ESCALATED'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5532928358677709)
,p_db_column_name=>'VMID'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Vmid'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VMID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5533025906677710)
,p_db_column_name=>'ESCWORKING'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Escworking'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ESCWORKING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5533108899677710)
,p_db_column_name=>'DISPUTEDISAGREE'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Disputedisagree'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISPUTEDISAGREE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5533232471677710)
,p_db_column_name=>'VMCOMMENTS'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Vmcomments'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VMCOMMENTS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5533313743677710)
,p_db_column_name=>'ACTIVE_RECORD'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Active Record'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ACTIVE_RECORD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5533428099677710)
,p_db_column_name=>'ACCT_DT'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Acct Dt'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ACCT_DT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5533527797677710)
,p_db_column_name=>'LOAD_ID'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Load Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOAD_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5533629710677710)
,p_db_column_name=>'LOAD_DT'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Load Dt'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LOAD_DT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5536209940021253)
,p_db_column_name=>'LOAN_NUMBER'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Loan Number'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOAN_NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20791918792378552)
,p_db_column_name=>'SPI_USER_DEPT'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Spi User Dept'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SPI_USER_DEPT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(5534714059737808)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'55348'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROCESSOR:SENDERNAME:SENDEREMAILADDRESS:DATEDISPUTERECEIVED:TO_:CC_:IMPORTANCE:SUBJECT:VENDOR:WORKORDER:WORKTYPE:LOANTYPE:CLIENT:PROPERTYADDRESS:DATETIMESENT:STATUSREPORTREASON:REPLYTOEMAILADDRESS:SUPPORTINGDOCASK:SUPPORTINGDOC:AMOUNTREQUESTED:DISPUT'
||'EREASON:DISPUTEDESCRIPTION:ATTACHMENT:ATTACHMENTNAME:CATEGORY:SUBCATEGORY:DATEOFSGRESPONSE:CYDS:SGRESPONSE:AMOUNTREFUNDED:TURNAROUNDTIME:LOSSREASON:UPDATERERROR:RESPONSIBLEEMPLOYEESPILOGIN:COMMENTSTOVENDOR:DISPUTE_NUM:VENDOR_NOTIFIED:INTERNALCOMMENTS'
||':ESCALATED:VMID:ESCWORKING:DISPUTEDISAGREE:VMCOMMENTS:ACTIVE_RECORD:ACCT_DT:LOAD_ID:LOAD_DT:LOAN_NUMBER:SPI_USER_DEPT'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5533725047684171)
,p_plug_name=>'Refresh Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018152620967380)
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
 p_id=>wwv_flow_api.id(5533919291692003)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5528611973677680)
,p_button_name=>'REFRESH_REPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Refresh Report'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5534120377720733)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REFRESH_REPORT'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'EXECUTE IMMEDIATE ''TRUNCATE TABLE CORP_ACCESS_TBL_DATA DROP STORAGE'';',
'',
'INSERT INTO CORP_ACCESS_TBL_DATA ',
'( ',
'PROCESSOR,',
'SENDERNAME,',
'SENDEREMAILADDRESS,',
'DATEDISPUTERECEIVED,',
'TO_,',
'CC_,',
'IMPORTANCE,',
'SUBJECT,',
'VENDOR,',
'WORKORDER,',
'WORKTYPE,',
'LOANTYPE,',
'CLIENT,',
'PROPERTYADDRESS,',
'DATETIMESENT,',
'STATUSREPORTREASON,',
'REPLYTOEMAILADDRESS,',
'SUPPORTINGDOCASK,',
'SUPPORTINGDOC,',
'AMOUNTREQUESTED,',
'DISPUTEREASON,',
'DISPUTEDESCRIPTION,',
'ATTACHMENT,',
'ATTACHMENTNAME,',
'CATEGORY,',
'SUBCATEGORY,',
'DATEOFSGRESPONSE,',
'CYDS,',
'SGRESPONSE,',
'AMOUNTREFUNDED,',
'TURNAROUNDTIME,',
'LOSSREASON,',
'UPDATERERROR,',
'RESPONSIBLEEMPLOYEESPILOGIN,',
'COMMENTSTOVENDOR,',
'DISPUTE_NUM,',
'VENDOR_NOTIFIED,',
'INTERNALCOMMENTS,',
'LOAN_NUMBER,',
'ESCALATED,',
'VMID,',
'ESCWORKING,',
'DISPUTEDISAGREE,',
'VMCOMMENTS,',
'ACTIVE_RECORD,',
'ACCT_DT,',
'LOAD_ID,',
'LOAD_DT,',
'SPI_USER_DEPT',
')',
'select ',
'A.PROCESSOR,',
'A.SENDERNAME,',
'A.SENDEREMAILADDRESS,',
'A.DATEDISPUTERECEIVED,',
'A.TO_,',
'A.CC_,',
'A.IMPORTANCE,',
'A.SUBJECT,',
'A.VENDOR,',
'A.WORKORDER,',
'A.WORKTYPE,',
'A.LOANTYPE,',
'A.CLIENT,',
'A.PROPERTYADDRESS,',
'A.DATETIMESENT,',
'A.STATUSREPORTREASON,',
'A.REPLYTOEMAILADDRESS,',
'A.SUPPORTINGDOCASK,',
'A.SUPPORTINGDOC,',
'A.AMOUNTREQUESTED,',
'A.DISPUTEREASON,',
'A.DISPUTEDESCRIPTION,',
'A.ATTACHMENT,',
'A.ATTACHMENTNAME,',
'b.CATEGORY,',
'c.SUBCATEGORY,',
'A.DATEOFSGRESPONSE,',
'A.CYDS,',
'A.SGRESPONSE,',
'A.AMOUNTREFUNDED,',
'A.HOWLONGYOUTOOK,',
'd.LOSSREASON,',
'e.UPDATERERROR,',
'A.RESPONSIBLEEMPLOYEESPILOGIN,',
'A.COMMENTSTOVENDOR,',
'A.DISPUTE_NUM,',
'A.VENDOR_NOTIFIED,',
'A.INTERNALCOMMENTS,',
'A.LOAN_NUMBER,',
'CASE WHEN A.ESCALATED = 1 THEN ''TRUE'' ELSE ''FALSE'' END,',
'A.VMID,',
'A.ESCWORKING,',
'A.DISPUTEDISAGREE,',
'A.VMCOMMENTS,',
'A.ACTIVEprocess,',
'f.ACCT_DT,',
'f.LOAD_ID,',
'f.LOAD_DT,',
'f.SPI_USER_DEPT',
'from  CORP_VENDOR_DISPUTES a',
'left join ( select CATEGORY_ID, CATEGORY, CATEGORY_STATUS, CREATED_DATE, CREATED_BY from CORP_CATEGORY ) b  on  ( b.CATEGORY_ID = a.CATEGORY)',
'left join ( select SUBCATEGORY_ID,SUBCATEGORY,SUBCATEGORY_STATUS,CREATED_BY,CREATED from CORP_SUB_CATEGORY ) c on ( c.SUBCATEGORY_ID = a.SUBCATEGORY)  ',
'left join ( select  ID,LOSSREASON,LOSS_REASON_STATUS from CORP_LOSSREASON ) d on ( d.ID =  A.LOSSREASON ) ',
'left join ( select ID, UPDATERERROR from CORP_UPDATERERROR) e on ( e.id =  a.UPDATERERROR) ',
'left join ( select dispute_id, ACCT_DT,LOAD_ID,LOAD_DT, SPI_USER_DEPT from CORP_VENDOR_DISPUTE_DETAILS) f on (F.DISPUTE_ID = A.DISPUTE_ID);',
'',
'COMMIT;',
'',
'END;'))
,p_process_error_message=>'Error occured during refresh.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5533919291692003)
,p_process_success_message=>'Export Report refreshed.'
);
end;
/
prompt --application/pages/page_00056
begin
wwv_flow_api.create_page(
 p_id=>56
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Edit ReOpen Request'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit ReOpen Request'
,p_step_sub_title=>'Edit ReOpen Request'
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
,p_last_upd_yyyymmddhh24miss=>'20150227083113'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22102021655323091)
,p_plug_name=>'Edit Re-OPEN Requests'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34017546215967378)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22106110645323111)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22102532098323094)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22102021655323091)
,p_button_name=>'ADD_RE-OPEN_ITEM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Add Work Order to Request'
,p_button_position=>'TOP'
,p_button_condition=>'P56_ITEM_NO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22102727802323096)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22102021655323091)
,p_button_name=>'DELETE_RE-OPEN_ITEM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Delete Line Item'
,p_button_position=>'TOP'
,p_button_condition=>'P56_ITEM_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22102909673323096)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22102021655323091)
,p_button_name=>'UPDATE_REBILL_ITEM'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Update Re-Open Item'
,p_button_position=>'TOP'
,p_button_condition=>'P56_ITEM_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22103104400323096)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22102021655323091)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036843798967425)
,p_button_image_alt=>'Return'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22103331093323097)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(22102021655323091)
,p_button_name=>'CONTINUE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Continue to Add'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22107516537323117)
,p_branch_name=>'Goback'
,p_branch_action=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(22103104400323096)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22117600950906761)
,p_branch_name=>'Add-one'
,p_branch_action=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(22102532098323094)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22117927452924916)
,p_branch_name=>'Remove-one'
,p_branch_action=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(22102727802323096)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22103905936323106)
,p_name=>'P56_ITEM_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22102021655323091)
,p_prompt=>'Item No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22104906901323107)
,p_name=>'P56_WORK_ORDER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22102021655323091)
,p_prompt=>'Work Order Nbr'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22105113161323107)
,p_name=>'P56_ASSIGNED_TO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22102021655323091)
,p_prompt=>'Assign to User'
,p_source=>'APP_USER'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22105526209323108)
,p_name=>'P56_ITEM_STATUS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(22102021655323091)
,p_prompt=>'Item Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22106619110323116)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'read in'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'for c1 in (select seq_id, c001, c002, c003',
'             from apex_collections',
'            where collection_name = ''REOPENREQUEST''',
'              and seq_id = :P56_ITEM_NO) loop',
'    --',
'    :P56_ITEM_NO             := c1.SEQ_ID;',
'    :P56_WORK_ORDER          := c1.c001;',
'    :P56_ASSIGNED_TO         := c1.c002;',
'    :P56_ITEM_STATUS         := c1.c003;',
'    --',
'end loop;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22106406307323114)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Re-Order Item'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'',
'apex_collection.add_member(',
'    p_collection_name => ''REOPENREQUEST'',',
'    p_c001            => :P56_WORK_ORDER,',
'    p_c002            => :APP_USER,',
'    p_c003            => ''NEW'',',
'    p_generate_md5    => ''YES'' );',
'--',
'commit;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22102532098323094)
,p_process_when=>':P56_ITEM_NO '
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22106821372323116)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Re-Open Item'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    l_status  varchar2(10);',
'begin',
'    --',
'    -- If the member of the collection is marked as ''New'', then',
'    -- leave it marked as ''New'', otherwise mark as updated so',
'    -- it will eventually be updated to the Database.',
'    --',
'    if :P56_ITEM_STATUS = ''NEW'' then',
'        l_status := ''UPDATE'';',
'    else',
'        l_status := ''NEW'';',
'    end if;',
'    --',
'    --',
'    apex_collection.update_member(',
'      p_collection_name => ''REOPENREQUEST'',',
'      p_seq             => :P56_ITEM_NO,',
'      p_c001            => :P56_WORK_ORDER,',
'      p_c002            => :APP_USER,',
'      p_c003 =>         l_status);',
'    --',
'    commit;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22102909673323096)
,p_process_when=>'P56_ITEM_NO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22107005372323116)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove Re-Order Item'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'BEGIN',
'--',
'-- If the member of the collection is ''New'', then we don''t',
'-- need to mark it for deletion, we can physically remove it',
'-- from the collection.  Otherwise, mark it for deletion so',
'-- it will be eventually physically removed from the database',
'-- when applied',
'--',
'if (:P56_ITEM_STATUS in ( ''NEW'',''UPDATE'') ) ',
'   then',
'    apex_collection.delete_member(',
'        p_collection_name => ''REOPENREQUEST'',',
'        p_seq             => :P56_ITEM_NO );',
'else',
'    apex_collection.update_member_attribute(',
'       p_collection_name => ''REOPENREQUEST'',',
'       p_seq             => :P56_ITEM_NO,',
'       p_attr_number     => 3,',
'       p_attr_value      => ''DELETE'' );',
'end if;',
'--',
'commit;',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22102727802323096)
,p_process_when=>'P56_ITEM_NO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Item has been removed'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22107227288323116)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CONTINUE'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'',
'apex_collection.add_member(',
'    p_collection_name => ''REOPENREQUEST'',',
'    p_c001            => :P56_WORK_ORDER,',
'    p_c002            => :APP_USER,',
'    p_c003           => ''NEW'',',
'    p_generate_md5    => ''YES'' );',
'--',
'commit;',
':P56_WORK_ORDER := NULL;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22103331093323097)
);
end;
/
prompt --application/pages/page_00060
begin
wwv_flow_api.create_page(
 p_id=>60
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Data Load Source Stage'
,p_page_mode=>'NORMAL'
,p_step_title=>'Data Load Source Stage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219110320'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22006912275824499)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(22004907905824484)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(34034929892967422)
,p_translate_title=>'N'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22007005484824500)
,p_plug_name=>'Data Load Source'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(34025935411967405)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22010904985824515)
,p_plug_name=>'Globalization'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(34025935411967405)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22007300377824501)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22007005484824500)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036843798967425)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22007418807824502)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22007005484824500)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Next >'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:apex.widget.textareaClob.upload(''P60_COPY_PASTE'', ''NEXT'');'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22014125379824526)
,p_branch_action=>'f?p=&APP_ID.:61:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(22007418807824502)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22007731754824504)
,p_name=>'P60_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22007005484824500)
,p_item_default=>'PASTE'
,p_prompt=>'Import From'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION'
,p_lov=>'.'||wwv_flow_api.id(21847213024792160)||'.'
,p_label_alignment=>'RIGHT-TOP'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22007806762824505)
,p_name=>'P60_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22007005484824500)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_FILE'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34036038625967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Name of the file to upload'
,p_attribute_01=>'WWV_FLOW_FILES'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22008608450824508)
,p_name=>'P60_SEPARATOR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22007005484824500)
,p_item_default=>'\t'
,p_prompt=>'Separator'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34036038625967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Identify a column separator character. Use <code>\t</code> for tab separators.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22009129004824509)
,p_name=>'P60_ENCLOSED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22007005484824500)
,p_item_default=>'"'
,p_prompt=>'Optionally Enclosed By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Enter a delimiter character. You can use this character to delineate the starting and ending boundary of a data value. If you specify a delimiter character, Data Workshop ignores whitespace occurring before the starting and ending boundary of a data '
||'value. You can also use this option to enclose a data value with the specified delimiter character.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22009617747824509)
,p_name=>'P60_FIRST_ROW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22007005484824500)
,p_item_default=>'Y'
,p_prompt=>'First Row has Column Names'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'FIRST_ROW_OPTION'
,p_lov=>'.'||wwv_flow_api.id(21849918896792186)||'.'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Select this box if your data contains column names in the first row.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22010105038824511)
,p_name=>'P60_CHAR_SET'
,p_is_required=>true
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(22007005484824500)
,p_item_default=>'UTF-8'
,p_prompt=>'File Character Set'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATA_LOAD_CHARSET'
,p_lov=>'.'||wwv_flow_api.id(21850913654792187)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'DATA_LOAD.CHAR_SET_ITEM_HELP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22010630707824514)
,p_name=>'P60_STOP_START_TABLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22007005484824500)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22010728065824515)
,p_name=>'P60_COPY_PASTE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22007005484824500)
,p_prompt=>'Copy and Paste Delimited Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>10
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_template=>wwv_flow_api.id(34036038625967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22011224136824515)
,p_name=>'P60_CURRENCY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22010904985824515)
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
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'If your data contains international currency symbol, enter it here. For example, if your data has "&euro;1,234.56" or "&yen;1,234.56", enter "&euro;" or "&yen;".  Otherwise the data will not load correctly.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22011725778824516)
,p_name=>'P60_GROUP_SEPARATOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22010904985824515)
,p_prompt=>'Group Separator'
,p_source=>'apex_application.get_nls_group_separator'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
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
 p_id=>wwv_flow_api.id(22012202680824516)
,p_name=>'P60_DECIMAL_CHARACTER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22010904985824515)
,p_prompt=>'Decimal Character'
,p_source=>'apex_application.get_nls_decimal_separator'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(22008418350824508)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P60_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'N'
,p_validation_condition=>'P60_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(22007418807824502)
,p_associated_item=>wwv_flow_api.id(22007806762824505)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22012606637824516)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22012920027824519)
,p_event_id=>wwv_flow_api.id(22012606637824516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_COPY_PASTE'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22013104088824525)
,p_event_id=>wwv_flow_api.id(22012606637824516)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_COPY_PASTE'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22013226277824525)
,p_name=>'Import from File'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22013503718824525)
,p_event_id=>wwv_flow_api.id(22013226277824525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_FILE_NAME'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22013730133824525)
,p_event_id=>wwv_flow_api.id(22013226277824525)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P60_FILE_NAME'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22013925017824526)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PARSE_UPLOADED_DATA'
,p_process_name=>'Parse Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(22004700691824481)
,p_attribute_02=>'P60_IMPORT_FROM'
,p_attribute_03=>'P60_SEPARATOR'
,p_attribute_04=>'P60_ENCLOSED_BY'
,p_attribute_05=>'P60_FIRST_ROW'
,p_attribute_06=>'P60_CURRENCY'
,p_attribute_07=>'P60_GROUP_SEPARATOR'
,p_attribute_08=>'P60_DECIMAL_CHARACTER'
,p_attribute_09=>'P60_FILE_NAME'
,p_attribute_10=>'P60_COPY_PASTE'
,p_attribute_11=>'P60_CHAR_SET'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22007418807824502)
);
end;
/
prompt --application/pages/page_00061
begin
wwv_flow_api.create_page(
 p_id=>61
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Data / Table Mapping Stage'
,p_page_mode=>'NORMAL'
,p_step_title=>'Data / Table Mapping Stage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_html_page_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<style>',
'  .rc-content-main {height: 400px; overflow: auto !important;}',
'</style> '))
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219110404'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22014722668824527)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(22004907905824484)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(34034929892967422)
,p_translate_title=>'N'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22014816376824527)
,p_plug_name=>'Data / Table Mapping'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(34025935411967405)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_DATA_UPLOAD_COLUMN_MAPPING'
,p_plug_query_row_template=>1
,p_attribute_01=>wwv_flow_api.id(22004700691824481)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22015120886824527)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22014816376824527)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036843798967425)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22015410045824527)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22014816376824527)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Next >'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22015317060824527)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22014816376824527)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'< Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22015925794824527)
,p_branch_action=>'f?p=&APP_ID.:62:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(22015410045824527)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22015730094824527)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PREPARE_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(22004700691824481)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22015410045824527)
);
end;
/
prompt --application/pages/page_00062
begin
wwv_flow_api.create_page(
 p_id=>62
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Data Validation Stage'
,p_page_mode=>'NORMAL'
,p_step_title=>'Data Validation Stage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150219110454'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22016517726824528)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(22004907905824484)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(34034929892967422)
,p_translate_title=>'N'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(22016609292824529)
,p_name=>'Data Validation'
,p_template=>wwv_flow_api.id(34025935411967405)
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
 p_id=>wwv_flow_api.id(22016904940824533)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22017030747824533)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22017103796824533)
,p_query_column_id=>3
,p_column_alias=>'C001'
,p_column_display_sequence=>3
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22017229688824533)
,p_query_column_id=>4
,p_column_alias=>'C002'
,p_column_display_sequence=>4
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22017301313824533)
,p_query_column_id=>5
,p_column_alias=>'C003'
,p_column_display_sequence=>5
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22017405455824533)
,p_query_column_id=>6
,p_column_alias=>'C004'
,p_column_display_sequence=>6
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22017527409824533)
,p_query_column_id=>7
,p_column_alias=>'C005'
,p_column_display_sequence=>7
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22017607452824534)
,p_query_column_id=>8
,p_column_alias=>'C006'
,p_column_display_sequence=>8
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22017711933824534)
,p_query_column_id=>9
,p_column_alias=>'C007'
,p_column_display_sequence=>9
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22017806497824534)
,p_query_column_id=>10
,p_column_alias=>'C008'
,p_column_display_sequence=>10
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22017907363824534)
,p_query_column_id=>11
,p_column_alias=>'C009'
,p_column_display_sequence=>11
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22018011081824534)
,p_query_column_id=>12
,p_column_alias=>'C010'
,p_column_display_sequence=>12
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22018109973824534)
,p_query_column_id=>13
,p_column_alias=>'C011'
,p_column_display_sequence=>13
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22018232187824534)
,p_query_column_id=>14
,p_column_alias=>'C012'
,p_column_display_sequence=>14
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22018329544824534)
,p_query_column_id=>15
,p_column_alias=>'C013'
,p_column_display_sequence=>15
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22018415388824534)
,p_query_column_id=>16
,p_column_alias=>'C014'
,p_column_display_sequence=>16
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22018504096824534)
,p_query_column_id=>17
,p_column_alias=>'C015'
,p_column_display_sequence=>17
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22018617012824534)
,p_query_column_id=>18
,p_column_alias=>'C016'
,p_column_display_sequence=>18
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22018727103824534)
,p_query_column_id=>19
,p_column_alias=>'C017'
,p_column_display_sequence=>19
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22018807989824534)
,p_query_column_id=>20
,p_column_alias=>'C018'
,p_column_display_sequence=>20
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22018925534824534)
,p_query_column_id=>21
,p_column_alias=>'C019'
,p_column_display_sequence=>21
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22019009294824534)
,p_query_column_id=>22
,p_column_alias=>'C020'
,p_column_display_sequence=>22
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22019107057824534)
,p_query_column_id=>23
,p_column_alias=>'C021'
,p_column_display_sequence=>23
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22019200085824534)
,p_query_column_id=>24
,p_column_alias=>'C022'
,p_column_display_sequence=>24
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22019313354824534)
,p_query_column_id=>25
,p_column_alias=>'C023'
,p_column_display_sequence=>25
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22019431213824534)
,p_query_column_id=>26
,p_column_alias=>'C024'
,p_column_display_sequence=>26
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22019523003824534)
,p_query_column_id=>27
,p_column_alias=>'C025'
,p_column_display_sequence=>27
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22019616053824534)
,p_query_column_id=>28
,p_column_alias=>'C026'
,p_column_display_sequence=>28
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22019718754824534)
,p_query_column_id=>29
,p_column_alias=>'C027'
,p_column_display_sequence=>29
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22019805210824534)
,p_query_column_id=>30
,p_column_alias=>'C028'
,p_column_display_sequence=>30
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22019928095824534)
,p_query_column_id=>31
,p_column_alias=>'C029'
,p_column_display_sequence=>31
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22020028073824535)
,p_query_column_id=>32
,p_column_alias=>'C030'
,p_column_display_sequence=>32
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22020118771824535)
,p_query_column_id=>33
,p_column_alias=>'C031'
,p_column_display_sequence=>33
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22020216056824535)
,p_query_column_id=>34
,p_column_alias=>'C032'
,p_column_display_sequence=>34
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22020320940824535)
,p_query_column_id=>35
,p_column_alias=>'C033'
,p_column_display_sequence=>35
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22020414966824535)
,p_query_column_id=>36
,p_column_alias=>'C034'
,p_column_display_sequence=>36
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22020522410824535)
,p_query_column_id=>37
,p_column_alias=>'C035'
,p_column_display_sequence=>37
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22020614661824535)
,p_query_column_id=>38
,p_column_alias=>'C036'
,p_column_display_sequence=>38
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22020728747824535)
,p_query_column_id=>39
,p_column_alias=>'C037'
,p_column_display_sequence=>39
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22020813168824535)
,p_query_column_id=>40
,p_column_alias=>'C038'
,p_column_display_sequence=>40
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22020921688824535)
,p_query_column_id=>41
,p_column_alias=>'C040'
,p_column_display_sequence=>41
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22021019348824535)
,p_query_column_id=>42
,p_column_alias=>'C041'
,p_column_display_sequence=>42
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22021112715824535)
,p_query_column_id=>43
,p_column_alias=>'C042'
,p_column_display_sequence=>43
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22021211352824535)
,p_query_column_id=>44
,p_column_alias=>'C043'
,p_column_display_sequence=>44
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22021311877824535)
,p_query_column_id=>45
,p_column_alias=>'C044'
,p_column_display_sequence=>45
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22021418953824535)
,p_query_column_id=>46
,p_column_alias=>'C045'
,p_column_display_sequence=>46
,p_column_heading=>'C045'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22021615348824535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22016609292824529)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036843798967425)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22021924022824535)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22016609292824529)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Load Data'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22021810901824535)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22016609292824529)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'< Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22022403061824536)
,p_branch_action=>'f?p=&APP_ID.:63:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(22021924022824535)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22022201203824536)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_LOAD_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(22004700691824481)
,p_attribute_02=>'P63_INSERT_COUNT'
,p_attribute_03=>'P63_UPDATE_COUNT'
,p_attribute_04=>'P63_ERROR_COUNT'
,p_attribute_05=>'P63_REVIEW_COUNT'
,p_process_error_message=>'Data Loading Failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22021924022824535)
);
end;
/
prompt --application/pages/page_00063
begin
wwv_flow_api.create_page(
 p_id=>63
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Data Load Results Stage'
,p_page_mode=>'NORMAL'
,p_step_title=>'Data Load Results Stage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150227081631'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22023014822824536)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(22004907905824484)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(34034929892967422)
,p_translate_title=>'N'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22023128450824536)
,p_plug_name=>'Data Load Results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(34025935411967405)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(22024526495824538)
,p_name=>'Failed Records'
,p_template=>wwv_flow_api.id(34025935411967405)
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
,p_display_when_condition=>'P63_ERROR_COUNT'
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
 p_id=>wwv_flow_api.id(22024831393824539)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22024904742824539)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22025000536824539)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22025120077824539)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22025212462824539)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22025312062824539)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22025410034824539)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22025503592824539)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22025614231824539)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22025703876824539)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22025808313824539)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22025927702824539)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22026015147824539)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22026127962824540)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22026229418824540)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22026319325824540)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22026420240824543)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22026506420824543)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22026629531824543)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22026700175824543)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22026802208824543)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22026923039824543)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22027021888824543)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22027113595824543)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22027214850824543)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22027313234824543)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22027404638824543)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22027522770824543)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22027602701824543)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22027731066824543)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22027800141824543)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22027912796824543)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22028026713824543)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22028123264824543)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22028216244824543)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22028321115824543)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22028403879824544)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22028522653824544)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22028618625824544)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22028701120824544)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22028808307824544)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22028918561824544)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22029019687824544)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22029129869824544)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22029202264824544)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22029323391824544)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22029412636824544)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(22029511050824544)
,p_name=>'Records Changed by Another User.'
,p_template=>wwv_flow_api.id(34025935411967405)
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
,p_display_when_condition=>'P63_REVIEW_COUNT'
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
 p_id=>wwv_flow_api.id(22029820050824547)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22029906731824547)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22030009659824547)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22030106715824547)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22030218356824547)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22030321345824547)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22030425777824547)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22030509665824547)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22030607524824547)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22030711009824547)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22030814115824547)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22030920238824547)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22031020148824547)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22031122962824547)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22031226966824547)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22031304286824547)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22031411554824548)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22031525818824548)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22031626899824548)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22031721275824548)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22031814937824548)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22031923531824548)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22032022466824548)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22032113288824548)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22032211620824548)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22032313769824548)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22032418886824548)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22032511369824548)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22032631541824548)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22032723167824548)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22032812056824548)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22032916823824548)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22033032342824548)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22033109507824548)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22033208486824548)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22033311074824548)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22033406637824548)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22033527143824548)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22033604590824548)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22033707079824548)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22033829686824548)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22033919745824549)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22034006231824549)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22034106068824549)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22034208893824549)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22034329885824549)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22034421968824549)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22034500260843280)
,p_plug_name=>'User_info'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018455440967381)
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
 p_id=>wwv_flow_api.id(22023414587824537)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22023128450824536)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036843798967425)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22023527512824537)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22023128450824536)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Finish'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22078106001202950)
,p_branch_name=>'GoTopg34'
,p_branch_action=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22023810328824537)
,p_name=>'P63_INSERT_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22023128450824536)
,p_prompt=>'Inserted Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22024001706824537)
,p_name=>'P63_UPDATE_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22023128450824536)
,p_prompt=>'Updated Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22024206315824537)
,p_name=>'P63_ERROR_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22023128450824536)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Failed Row(s):'
,p_source=>'select count(*) c from apex_collections where collection_name = ''LOAD_CONTENT'' and c047 = ''FAILED'''
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22024423772824537)
,p_name=>'P63_REVIEW_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22023128450824536)
,p_prompt=>'To be Reviewed Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22034831995847708)
,p_name=>'P63_APP_USER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22034500260843280)
,p_prompt=>'App User'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22035217330854494)
,p_name=>'P63_USER_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22034500260843280)
,p_prompt=>'User Id'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(22035023800851441)
,p_computation_sequence=>10
,p_computation_item=>'P63_APP_USER'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P0_APP_USER.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(22035410645857565)
,p_computation_sequence=>10
,p_computation_item=>'P63_USER_ID'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>' select id from CORP_PRIVILEGES where APEX_ID = :P0_APP_USER;'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22077816918195075)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'assign pending'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'CURSOR C1',
'IS',
'SELECT WORK_ORDER ',
'FROM CORP_WO_STAGE',
'order by load_id; ',
'',
'R1  C1%ROWTYPE; ',
'',
'FOUNDIT  NUMBER;',
'',
'FUNCTION VALIDNBR ( P_WORKORDER VARCHAR2) RETURN NUMBER',
'IS',
'',
'WORK_ORDER NUMBER;',
'RET_VAL    NUMBER;',
'',
'BEGIN',
'       WORK_order := TO_NUMBER(P_WORKORDER);',
'RET_VAL := 1;',
'RETURN RET_VAL;',
'       ',
'EXCEPTION ',
'   WHEN OTHERS THEN ',
'   RET_VAL := 0;',
'   RETURN RET_VAL;   ',
'END;',
'',
'',
'',
'PROCEDURE MARK_PENDING',
'( P_USER_ID   NUMBER,',
'  P_USERNAME  VARCHAR2, ',
'  P_WORKORDER VARCHAR2',
') ',
'IS',
'  SQL_STMT   VARCHAR2(32000);',
'  GOOD_NBR   NUMBER;                       ',
'  P_FOUND    NUMBER;',
'  BEGIN',
'       ',
'       GOOD_NBR := VALIDNBR(P_WORKORDER); ',
'       ',
'       IF  ( GOOD_NBR = 1 )  THEN ',
'       ',
'             SQL_STMT := ''UPDATE CORP_VENDOR_DISPUTES SET  SGRESPONSE = ''''Pending'''', MARK = 0,  ACTIVEPROCESS = :A WHERE WORKORDER = :B '';',
'             EXECUTE IMMEDIATE SQL_STMT USING P_USER_ID, P_WORKORDER;',
'                    ',
'             P_FOUND  := SQL%ROWCOUNT;',
'             ',
'             COMMIT;',
'             ',
'             UPDATE CORP_WO_STAGE SET ASSIGNED_TO = P_USERNAME, NBR_FOUND = P_FOUND where work_order = P_WORKORDER; ',
'             commit;',
'      END IF;                     ',
'  EXCEPTION ',
'       WHEN OTHERS THEN ',
'           P_FOUND := SQLCODE;',
'  END;',
'',
'BEGIN',
'',
'open c1;  ',
'     loop    ',
'         fetch c1 into r1;',
'         exit when c1%notfound;',
'         MARK_PENDING ( :P63_USER_ID, :P63_APP_USER, r1.work_order);    ',
'     end loop;',
'close c1;',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22023527512824537)
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Login_orgin'
,p_alias=>'LOGIN_DESKTOP_ORGIN'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(34013157609967358)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140905135333'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37728338742227147)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34020547449967384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37728659395227148)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(37728338742227147)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
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
 p_id=>wwv_flow_api.id(13719908014770960)
,p_branch_name=>'Redirect_to_pg13'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37728448019227147)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(37728338742227147)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37728561071227148)
,p_name=>'P101_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(37728338742227147)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
end;
/
prompt --application/pages/page_00175
begin
wwv_flow_api.create_page(
 p_id=>175
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login Page'
,p_step_sub_title=>'Login Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(34013630731967367)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140905140258'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5154229223306766)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34017546215967378)
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
 p_id=>wwv_flow_api.id(5155819180306776)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34017546215967378)
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
 p_id=>wwv_flow_api.id(5155415725306774)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(5154229223306766)
,p_button_name=>'P175_LOGIN'
,p_button_static_id=>'P175_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
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
 p_id=>wwv_flow_api.id(5156714058306781)
,p_branch_name=>'GO_TO_HOMEPAGE'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::P0_APP_USER:&P175_USERNAME.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(5155415725306774)
,p_branch_sequence=>50
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5154413762306767)
,p_name=>'P175_USERNAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(5154229223306766)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(34035758865967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application user name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5154907099306773)
,p_name=>'P175_PASSWORD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(5154229223306766)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(34035758865967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application password.'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5155606401306774)
,p_name=>'P175_APP_TITLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(5154229223306766)
,p_prompt=>'<font face="Agfa Rotis Semi Serif" size="5" color="gray">Corporate Compliance Utilities</font>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(34035758865967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5156022839306777)
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
 p_id=>wwv_flow_api.id(5156222860306780)
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
 p_id=>wwv_flow_api.id(5156431104306781)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P175_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00204
begin
wwv_flow_api.create_page(
 p_id=>204
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'LOGOUT_PAGE'
,p_page_mode=>'NORMAL'
,p_step_title=>'LOGOUT_PAGE'
,p_step_sub_title=>'LOGOUT_PAGE'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34013157609967358)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140415133412'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13916202459127605)
,p_plug_name=>'logo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34017546215967378)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13916402427127612)
,p_name=>'P204_LOGOUT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13916202459127605)
,p_prompt=>'You Have Successfully logged out of the Application '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43892048269282669)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
prompt --application/pages/page_00205
begin
wwv_flow_api.create_page(
 p_id=>205
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'USER_VALIDATE'
,p_page_mode=>'NORMAL'
,p_step_title=>'USER_VALIDATE'
,p_step_sub_title=>'USER_VALIDATE'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34013157609967358)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140804101011'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15295304485685451)
,p_plug_name=>'logo'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018152620967380)
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
 p_id=>wwv_flow_api.id(15295719606685466)
,p_plug_name=>'LOGIN_REGION'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15296506873685468)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(15295719606685466)
,p_button_name=>'P205_EXIT'
,p_button_static_id=>'P205_EXIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037434504967427)
,p_button_image_alt=>'Exit'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15298029476803218)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(15295719606685466)
,p_button_name=>'P205_CONTINUE'
,p_button_static_id=>'P205_CONTINUE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34037253732967427)
,p_button_image_alt=>'Continue'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::P0_APP_USER:&P205_USER_NAME.'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select id ',
'from CORP_PRIVILEGES',
'where UPPER(APEX_ID) = UPPER(:P205_USER_NAME) ',
' and  APP_MANAGER = 1;',
''))
,p_button_condition_type=>'EXISTS'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15297429312685477)
,p_branch_name=>'Redirect_to_pg01'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::P0_APP_USER:&P205_USER_NAME.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(15298029476803218)
,p_branch_sequence=>10
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select id ',
'from CORP_PRIVILEGES',
'where APEX_ID = :P205_USER_NAME ',
' and  APP_MANAGER = 1;'))
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15298410874815827)
,p_branch_name=>'EXIT'
,p_branch_action=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(15296506873685468)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15295530287685459)
,p_name=>'P205_LOGO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15295304485685451)
,p_prompt=>'Logo'
,p_source=>'#WORKSPACE_IMAGES#SPI_RGB.jpg'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(34035652003967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'URL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15295919357685467)
,p_name=>'P205_USER_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15295719606685466)
,p_prompt=>'User'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(34035652003967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15296109146685467)
,p_name=>'P205_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15295719606685466)
,p_prompt=>'Welcome to Vendor Adjustment Utilities'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT-TOP'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43892048269282669)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15296327073685467)
,p_name=>'P205_MESSAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(15295719606685466)
,p_prompt=>'Message'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'DECLARE ',
'',
'     MESSAGE VARCHAR2(200);',
'     PID     NUMBER;',
'BEGIN',
'',
'select count(*) ',
'into pid',
'from CORP_PRIVILEGES',
'where UPPER(APEX_ID) = UPPER(:P205_USER_NAME) ',
' and  APP_MANAGER = 1;',
'',
'',
'      MESSAGE := CASE WHEN pid  > 0  then ''Please hit Continue button'' ',
'                      ELSE ''I am Sorry, you are not authorized to use this application''',
'                  END;',
'      RETURN MESSAGE;    ',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="font-weight:bold;color:red" '
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(34035652003967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15296714372685468)
,p_name=>'P205_PASSWORD'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15295719606685466)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43892048269282669)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15332405684649151)
,p_computation_sequence=>10
,p_computation_item=>'P205_USER_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_USER.'
);
end;
/
prompt --application/pages/page_00215
begin
wwv_flow_api.create_page(
 p_id=>215
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'LDAP_Login_Page'
,p_alias=>'LDAP_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'LDAP_LOGIN_PAGE'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(34013157609967358)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20140731073551'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15307017871744910)
,p_plug_name=>'APEX Login Page'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34020547449967384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15307220241744914)
,p_name=>'P215_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15307017871744910)
,p_prompt=>'User Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15307418299744919)
,p_name=>'P215_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15307017871744910)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15334506639800649)
,p_name=>'P215_HIT_ENTER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15307017871744910)
,p_prompt=>'Please Hit Enter to Login'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'',
'',
'MESSAGE  VARCHAR2(100);',
'',
'BEGIN',
'',
'     MESSAGE := ''Please Hit Enter to Login'';',
'     RETURN MESSAGE;',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="font-weight:bold;color:red"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(34035652003967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15308000019744926)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P215_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15307829645744924)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P215_USERNAME,',
'    p_password => :P215_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15308407219744926)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15308218697744926)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P215_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00220
begin
wwv_flow_api.create_page(
 p_id=>220
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Assign Vendors by ID'
,p_page_mode=>'NORMAL'
,p_step_title=>'Assign Vendors by ID'
,p_step_sub_title=>'Assign Vendors by ID'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160413142835'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24375808829103985)
,p_plug_name=>'Users with Vendors assigned'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34022027816967388)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT A.PID, A.APEX_ID, A.EXCLUDE_VENDORS, A.INCLUDE_VENDORS, A.EXCLUDES, A.INCLUDES',
'FROM corp_vendor_work_lists A'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(24375928213103985)
,p_name=>'Users with Vendors assigned'
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
,p_detail_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::P221_PID:#PID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'CGARDNER'
,p_internal_uid=>24375928213103985
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24376113906104007)
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
 p_id=>wwv_flow_api.id(24376215068104014)
,p_db_column_name=>'EXCLUDE_VENDORS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Exclude Vendors'
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
,p_tz_dependent=>'N'
,p_static_id=>'EXCLUDE_VENDORS'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24376319529104014)
,p_db_column_name=>'INCLUDE_VENDORS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Include Vendors'
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
,p_tz_dependent=>'N'
,p_static_id=>'INCLUDE_VENDORS'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24376430009104015)
,p_db_column_name=>'EXCLUDES'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Excludes'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'EXCLUDES'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24376527336104015)
,p_db_column_name=>'INCLUDES'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Includes'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'INCLUDES'
,p_rpt_named_lov=>wwv_flow_api.id(31767419173787350)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(24380019072539189)
,p_db_column_name=>'APEX_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Apex Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APEX_ID'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24380115177541115)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'243802'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PID:EXCLUDES:INCLUDES:APEX_ID:'
,p_sort_column_1=>'PID'
,p_sort_direction_1=>'ASC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24384929216658730)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00221
begin
wwv_flow_api.create_page(
 p_id=>221
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Review Vendors Assigned'
,p_page_mode=>'NORMAL'
,p_step_title=>'Manage Vendor list'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150513090412'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24381200473633600)
,p_plug_name=>'Manage Vendor list'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34020547449967384)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24385312856672834)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24387913492919049)
,p_plug_name=>'Border'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
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
 p_id=>wwv_flow_api.id(24388124920922428)
,p_plug_name=>'buttons'
,p_parent_plug_id=>wwv_flow_api.id(24387913492919049)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34019328788967383)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24381530234633605)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24381200473633600)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24381623640633605)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24381200473633600)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24381824993633607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24388124920922428)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036843798967425)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24381432246633605)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24388124920922428)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036229926967423)
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P221_PID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24388520118949332)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(24388124920922428)
,p_button_name=>'MANAGE_EXCLUSIONS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Manage Exclusions'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.::P222_ID,P222_APEX_ID:&P221_PID.,&P221_APEX_ID.'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select includes ',
'from corp_vendor_work_lists',
'where pid = :P221_PID',
'AND   includes > 0;'))
,p_button_condition_type=>'NOT_EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24388829600961624)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(24388124920922428)
,p_button_name=>'MANAGE_INCLUSIONS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Manage Inclusions'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.::P223_ID,P223_APEX_ID:&P221_PID.,&P221_APEX_ID.'
,p_button_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select excludes ',
'from corp_vendor_work_lists',
'where pid = :P221_PID',
'AND   excludes > 0;'))
,p_button_condition_type=>'NOT_EXISTS'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24382404031633617)
,p_branch_action=>'f?p=&APP_ID.:220:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24382616537633621)
,p_name=>'P221_PID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24381200473633600)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pid'
,p_source=>'PID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24382823011633642)
,p_name=>'P221_EXCLUDES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24381200473633600)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Excludes'
,p_source=>'EXCLUDES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24383003632633644)
,p_name=>'P221_INCLUDES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24381200473633600)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Includes'
,p_source=>'INCLUDES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(34035855641967423)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24383203198633645)
,p_name=>'P221_APEX_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24381200473633600)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Name'
,p_source=>'APEX_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24386600710851541)
,p_name=>'P221_VENDOR_INCLUDE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(24381200473633600)
,p_prompt=>'Vendor Inclusions:'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT CASE WHEN NVL(INCLUDES,0) = 0 THEN ''No'' ',
'       ELSE ''Yes'' end ',
'from corp_vendor_work_lists ',
'where pid = :P221_PID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24387300254882168)
,p_name=>'P221_VENDOR_EXCLUDE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(24381200473633600)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vendor Exclusions:'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT CASE WHEN NVL(EXCLUDES,0) = 0 THEN ''No'' ',
'       ELSE ''Yes'' end ',
'from corp_vendor_work_lists ',
'where pid = :P221_PID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24383922244633648)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from CORP_VENDOR_WORK_LISTS'
,p_attribute_02=>'CORP_VENDOR_WORK_LISTS'
,p_attribute_03=>'P221_PID'
,p_attribute_04=>'PID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24384121691633650)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of CORP_VENDOR_WORK_LISTS'
,p_attribute_02=>'CORP_VENDOR_WORK_LISTS'
,p_attribute_03=>'P221_PID'
,p_attribute_04=>'PID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24384311113633651)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24381623640633605)
);
end;
/
prompt --application/pages/page_00222
begin
wwv_flow_api.create_page(
 p_id=>222
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Exclude Vendors by Name'
,p_page_mode=>'NORMAL'
,p_step_title=>'Exclude Vendors by id'
,p_step_sub_title=>'Exclude Vendors by id'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150513092332'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24401400836796487)
,p_plug_name=>'Vendor Names to Exclude'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34017546215967378)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_list_template_id=>wwv_flow_api.id(34029553237967412)
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
 p_id=>wwv_flow_api.id(24421806381429299)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24402026602796508)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(24401400836796487)
,p_button_name=>'P222_SAVELIST'
,p_button_static_id=>'P222_SAVELIST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Save Exclusion List'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P222_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24402225687796508)
,p_name=>'P222_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24401400836796487)
,p_prompt=>'Table ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24402406833796508)
,p_name=>'P222_VENDORS_BY_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(24401400836796487)
,p_prompt=>'Vendor Names'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select vendor d, vendor r',
'from ( SELECT LTRIM(RTRIM(VENDOR)) AS VENDOR ',
'       FROM CORP_VENDORLIST)',
'GROUP BY VENDOR',
'order by 1',
''))
,p_cSize=>150
,p_cMaxlength=>4000
,p_cHeight=>10
,p_tag_attributes=>'style="width: 300px;'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24407400296768113)
,p_name=>'P222_APEX_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24401400836796487)
,p_prompt=>'Apex Id'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(24402917848796511)
,p_computation_sequence=>10
,p_computation_item=>'P222_VENDORS_BY_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'CURSOR C1 ( sys_id number)',
'IS',
'select a.pid, v.VENDOR_NAME',
'from ',
'CORP_VENDOR_WORK_LISTS a,',
'table(A.EXCLUDE_VENDORS)v ',
'where a.pid = sys_id',
'order by v.vendor_name;',
'',
'R1 C1%ROWTYPE;',
'',
'exclude_list varchar2(32000);',
'',
'begin ',
'',
'exclude_LIST := '':'';',
'',
'OPEN C1(:P222_ID);',
'      loop',
'       FETCH c1 INTO r1;',
'       EXIT WHEN C1%NOTFOUND;',
'       exclude_LIST := exclude_LIST||R1.VENDOR_NAME||'':'';',
'      end loop;',
'      EXCLUDE_LIST := RTRIM(EXCLUDE_LIST,'':'');',
'CLOSE C1;',
'      RETURN EXCLUDE_LIST;',
'END;',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24408210166034880)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply Exclusions'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
'',
'BEGIN',
'CORPORATE_COMPLIANCE.Save_Vendors_exclusion ( :P222_VENDORS_BY_ID, :P222_ID );',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00223
begin
wwv_flow_api.create_page(
 p_id=>223
,p_user_interface_id=>wwv_flow_api.id(37727844361227141)
,p_name=>'Include Vendors by Name'
,p_page_mode=>'NORMAL'
,p_step_title=>'Include Vendors by Name'
,p_step_sub_title=>'Include Vendors by Name'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(34015442190967373)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CGARDNER'
,p_last_upd_yyyymmddhh24miss=>'20150513092122'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24423901362157400)
,p_plug_name=>'Vendor Names to Include'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34017546215967378)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_04'
,p_list_template_id=>wwv_flow_api.id(34029553237967412)
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
 p_id=>wwv_flow_api.id(24426408636235767)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(34018759129967381)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37729157523227148)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(34037628179967427)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24424109253157405)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(24423901362157400)
,p_button_name=>'P223_SAVELIST'
,p_button_static_id=>'P223_SAVELIST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(34036635053967425)
,p_button_image_alt=>'Save Inclusion List'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P223_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24424303806157413)
,p_name=>'P223_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24423901362157400)
,p_prompt=>'Table ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24424500738157413)
,p_name=>'P223_VENDORS_BY_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(24423901362157400)
,p_prompt=>'Vendor Names'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select vendor d, vendor r',
'from ( SELECT LTRIM(RTRIM(VENDOR)) AS VENDOR ',
'       FROM CORP_VENDORLIST)',
'GROUP BY VENDOR',
'order by 1',
''))
,p_cSize=>150
,p_cMaxlength=>4000
,p_cHeight=>10
,p_tag_attributes=>'style="width: 300px;'
,p_field_template=>wwv_flow_api.id(43874630448041014)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24424715300157414)
,p_name=>'P223_APEX_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24423901362157400)
,p_prompt=>'Apex Id'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(43874127547030729)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(24425202913157417)
,p_computation_sequence=>10
,p_computation_item=>'P223_VENDORS_BY_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'CURSOR C1 ( sys_id number)',
'IS',
'select a.pid, i.VENDOR_NAME',
'from ',
'CORP_VENDOR_WORK_LISTS a,',
'table(A.INCLUDE_VENDORS)i ',
'where a.pid = sys_id',
'order by i.vendor_name;',
'',
'R1 C1%ROWTYPE;',
'',
'include_list varchar2(32000);',
'',
'begin ',
'',
'include_LIST := '':'';',
'',
'OPEN C1(:P223_ID);',
'      loop',
'       FETCH c1 INTO r1;',
'       EXIT WHEN C1%NOTFOUND;',
'       include_LIST := include_LIST||R1.VENDOR_NAME||'':'';',
'      end loop;',
'      INCLUDE_LIST := RTRIM(INCLUDE_LIST,'':'');',
'CLOSE C1;',
'      RETURN INCLUDE_LIST;',
'END;',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24425303825157419)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply Inclusions'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
'BEGIN',
'CORPORATE_COMPLIANCE.Save_Vendors_inclusion ( :P223_VENDORS_BY_ID, :P223_ID );',
'',
'END;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(13804232612017365)
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
