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
,p_default_application_id=>2017
,p_default_owner=>'RDM'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 2017 - FB_Model
--
-- Application Export:
--   Application:     2017
--   Name:            FB_Model
--   Date and Time:   12:30 Wednesday March 15, 2017
--   Exported By:     CHRISTIAN.GARDNER
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     69427033981319
--

-- Application Statistics:
--   Pages:                     22
--     Items:                  209
--     Processes:               31
--     Regions:                112
--     Buttons:                 47
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 1
--       Lists:                  3
--       Breadcrumbs:            1
--         Entries:             19
--       NavBar Entries:         1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 2
--       Templates:
--         Page:                36
--         Region:              60
--         Label:               14
--         List:                40
--         Popup LOV:            2
--         Calendar:             6
--         Breadcrumb:           4
--         Button:              20
--         Report:              20
--       LOVs:                   4
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,2017)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'RDM')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'FB_Model')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_2017')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'688A22F2CABCDE78E052F0FDD65CFBA40738E8F24E1BF3864285284211C8FD91'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'MM/DD/YYYY'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(9232464668783015)
,p_application_tab_set=>0
,p_logo_image=>'#APP_IMAGES#NFL.png'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20161008104141'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(21810677708825367)
,p_name=>'AFC'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(21810848415829773)
,p_name=>'NFC'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(21811012045844619)
,p_name=>'Nation Football League'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21815213617909236)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'AFC'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(21815563462911470)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'NFC'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000E1000000E10803000000096D2248000000ED504C5445FFFFFF003A73DA212700316E002C6CF6F9FB00336F778DAAA5AFC1617597003872D80000002F6D003570F7DDDDDA1E24D8000FD91018B2C0D0F2B1';
wwv_flow_api.g_varchar2_table(2) := 'B3EA898BE873767A94B2E05255FCEBEBDD2F34FAE3E4F0A9AAFEF8F8E88284D9161E0023689FB1C6E2696CDD3A3EF7D0D100286AE6EDF309477D44618BE1E6EC002468DCDFE6C1CDDAD0D7E1EFF3F7466A94001964355886254E805373998E9EB600427A';
wwv_flow_api.g_varchar2_table(3) := 'E0454AF5C4C6F1B7B9637FA19AA8BDA6BACEED96990014620C4E83E26466EF9FA2E05A5DDE3F44DD333986A0BA3D6994DF4D5132548354799F4770992F618F6B84A500065F576D938FAAC37E9EBBC50479DE0000103F49444154789CED9D6B43DAB01AC7';
wwv_flow_api.g_varchar2_table(4) := '5B7A73A1B55095A12274B32D8552EE5364439D38991CDDF7FF3827975ED252907906054FFFAF4AE825BF247DF2E4D284613265CA942953A64C993265CA942953A64C993265CA942953A64C993265CA9429D366249869C760D3D2DA6EDA51D8B02CFE35ED';
wwv_flow_api.g_varchar2_table(5) := '286C56739EAD35D38EC426A50D012BF63F7039B52D8565817893763C36265B868050352DED986C48CDAE880159C0B7D28ECB4664FB802C2B763FA2B5B1F900906539CB493B3EFF5C4E57612989D647CBC5B125B21189BD0F958BE6BC06D89814632AA41D';
wwv_flow_api.g_varchar2_table(6) := 'AF7F26A7CDC5F9900CC94E3B66FF46C2EB504C028425B5BEB325B5B57E7D26683D63A1840625B533FF8B6CB44BEF88EA3BA5F1DA9AEF504BE295657C48B275B36E83B1F9B44D4200A47510CD796F49010D04E4FA7ACD29A76B6C931046ACA6BDD144105A';
wwv_flow_api.g_varchar2_table(7) := '73435E5A40311DFE57E18D52F3ADE6865DEA28F2560951E27F5A55546D4D32E4A5EF1FC71BB55ACD1A7A09C083BEB6EAD56E0D26F05EDB266401C7F6F52569EF485D36B186806D27B9614CE6AF5AD3764BA29F0680E37A2FAFC990EEB4DFC36561EB8450';
wwv_flow_api.g_varchar2_table(8) := '225F9B8D9B269595826B37F559A72127DB17C0F75EA61E8833A98FFF04C90080C8377E3C4B374DDB363DD9766B3C636BBC48B23A0D42942586D29E0F0E34AC830369D633FC182DF2C99381E32587391F0E04C6ECC48AAFCCD758EBB18DF53C010D83BA57';
wwv_flow_api.g_varchar2_table(9) := '3A84E4AD923D8BC2F1DC323A94E3B56950FB992FCF382B2709A703C553ECBFF408D71360475ECDE79686A3DE9C1C4F975AA345A54698F8C62D640DE074FF7535C703D6D0C9718B0FCE0449B94F07A645283E26205AF1D2A7F05EDF0C31BFADB68768F7FC';
wwv_flow_api.g_varchar2_table(10) := '1301785EBC91F20C527F0FC1C4E617129F9B6B4634A67E9B5EFFD1F8F1DB7119412216D59DF94E0F37D2F805425E1B85954E4A84B2C4B4173C334E67A2EF97E13722EC9B36CF19FDB0813F908353CC613CA9C0D074C2A44AABB63860B4463C62B0FD3EA3';
wwv_flow_api.g_varchar2_table(11) := 'B16B83F05A57E364BE1B54EE071E219898EE2CEE247033D70CCB7B3A844AD746FDBC00D02681EBC3FADC0041A038274646921C644E0589EA6BF36F2543575EE30088DC89D3E0C9BC1FB6754205B996DC1CC5786821E138356AB586025B0BE6330A9C5800';
wwv_flow_api.g_varchar2_table(12) := '6529C9B1965533BA37B04A146EC22E61C7027203F9A830A8D545B7E9E1C2CAC3B006AA339D897FF36D132AEDA6DD6CE246816B434FABD986A6509450988DB2CC44810E2A637ECC84E6CCE0E5273D72AB560F4C836B6C74CD18A58A35C681E82A1C3885F5';
wwv_flow_api.g_varchar2_table(13) := 'CFD6F390ABD39EB24DBA2AE448A35DC31D5006390195505752C44E24A2AD9EC247DA9A37D89501A24E8509233995F75014C3E6936E799519FF1470BB25FCFA70C47D1975BA25E894EABD4E64D402E6216BFC0EAEB125AFCF0350FD54ADDF464A9606B6F4';
wwv_flow_api.g_varchar2_table(14) := 'BDD6D328F46C44EB8670DB75E2A3CA38FAC22B573386FD16E344E3E9A02A5FEC79ED7CE73134C162D7AF43BD8E82346C2950483A0B1DDA92D689FFE990C070B870FC22733FF4C45B71CFE497DEA06ED49892C0DF727AB545107B2AE959D9AFFC888B22E3';
wwv_flow_api.g_varchar2_table(15) := 'D1427C9E301DCAED58BF8086339AF786146DAAD207B2DF9034D22344B1374B30CB224E1AB2FB28325EA58F5FBB7E1FB79C3439DE8EBFC1E920C2FAD1990A0C5DE92B6D786354AFD893D45AC0A8A2D358038CE9B457EAAE30900DE8D6E0B407C4F28C2CBE';
wwv_flow_api.g_varchar2_table(16) := 'D685B18DF7ECB823940CDC48704BBC01AB3F2D6C5FC2E46BF61B0634CE929C16A1F262DF40D30764A9390FD29E93CC3974E394E10D6E37282F044AEB89A2B1D8AD43F287BB69F6615E8A43CD09DA1A2CFA21B3007A785A6AA55479F40AA2DCEE87B67456';
wwv_flow_api.g_varchar2_table(17) := 'C7B440EC3F2233F9895CE280E749A7BBD0FB4BF27938EBE26B147614B6A67A23325E25F666566AEFA1E29729856ADA89DE31102967D21DB1D0982E8EDF3F8BE454FF7AAA1304F8BD18404C2D0F5728DE2068F189B313EC5AD2354BC2D22204C395A8BC8E';
wwv_flow_api.g_varchar2_table(18) := 'AF28D5137B564B54335249E8C600802A1C69B5F12DC7588898D8FF13346CC7F88A4662163A54F5A73CBF26B4F15FA93E929408C57E428FA03C70FDE24708B55ED2289A407551C0CC6E2EF41500B9A9A5DDC647B55669B1475063FC890984702425DD46A7';
wwv_flow_api.g_varchar2_table(19) := 'DBF462D3FD1DEF8A52DA2E55D3A6D48B016B763B9EF60AF44CC7BC9F35F0FCE6306948A2459B196EE4063D1A74F209F32070FB6D7C1EAA5187AE56BF860E710688E8A826210FD3804732C0D1D2D8849B349FBC2CE3F03537E8B524D7E0F2098F0C16B62E';
wwv_flow_api.g_varchar2_table(20) := '0E0C14C8A540A8B4351D0AB5705AE8608C2A7D713E46C7D0CB141C74A0777914ADC17CF11EB65F8E87257C0DEADD400763FD09BA49BD293A464394260E2C0DD328A503DAC9144A28998115B199C2A3887C1A336106544BF6CBB6129D59D3AA8B38FD22E5';
wwv_flow_api.g_varchar2_table(21) := '5AB3C09609F1DBCF53DD9ECD19B1794091C28ACFE9CAACF802233D5CB0A49A155A15C5B809AFD1BC891BD0470DC2DC1B63DB7D6D075ED3EFC98F85168ED7F37D3FF5FF0C156275A60B73BB4791D10EE8C27A0EAB500AFE5058BFFBC69C799D05DB276415';
wwv_flow_api.g_varchar2_table(22) := '6F46B3F91FDAF5E891E8EAB88D8F8CED6410B95AD086B1F17D2003F2D7949A3B056A1ED1B3376CE03BF1DB5040F8E8A5BD450F117969EF55FAB0B44566CC0ACE885B1882F1B3A745A3FB4301BAF7B43408799439281E11FF728CE661C040622CE5035BA1';
wwv_flow_api.g_varchar2_table(23) := '4CC9B86F250C19365AE41AB31DC283097C7B517FACEFEBA44108F3C79E75DA36635376A36B33ADEE7F4AAE57E973D29F27AFBFCA6CCD81913448AC3C9B8CD333A62E7313E2CB122340AF470B9CBB1408A115693DC9807BD2DD7E6069B891A029222BF71D';
wwv_flow_api.g_varchar2_table(24) := '173B5C4ABD0BCDA9D9720EA4E765F36BF88130654568A46C272CEF8A66CE39A08825F7203DC2918E9BE18A322D052EA63C9550330888D67444B0616BFD53FDC9E296CCCF4065E115B2A06BBB7ADD3F09745FDB3843F9FE9434FC53B134FEE02847F9D0B2';
wwv_flow_api.g_varchar2_table(25) := '770C823A1D886252E38F92CC01EF86D47BE8A788C8A5674BB7AB8CF09F13026E8B022910026B2E6D4F5DB07D42A56E0B5B932B7169106EF16B502123FCD7FABF22AC9C1D225D9F235D57F0DF95C3A8CAF0ACE52A334CF92C7AC159658708CBBFF24805AC';
wwv_flow_api.g_varchar2_table(26) := 'E221FEFB301FD53973583C5DA6DC09C35C14A317FC2AEF12E1E76A2E50E1DC23CCD12A1CC11075998A5F18E6A418B9A07ABF4B84950B2A76EAB7258467D190080E22AC4682D487B35D25CCE5CBC984CCDF119EEE06E18BBB48488AE90721F49E1725ACDE';
wwv_flow_api.g_varchar2_table(27) := '6E86907E62BA84EACF4B4CA8D211CEBF49F8256A698ADFE296264D42E6BC50A072A07A8DC28EAB6194D5C23758BB5D444E2A56A1D490F0BC482316BF5EAE7CE2B60919E6EEFE94CA119CFCE5E3B0C47DC7275DDE0610A727175FBE7CB97D500342A6F29D';
wwv_flow_api.g_varchar2_table(28) := 'CAF5DB379FB879C59E5709DFA3E015BAF582AA27F193542F8BBE1743428679F011BD345AFDC48D2BFEBCE3B09015AE4890CF533CF64F3A2F4409AF4E558AF0AB4F58BC88BB6C494FDCB45610567F91A0B709992FD5BD24CCE549D01A8457F9FD242C606B';
wwv_flow_api.g_varchar2_table(29) := 'BA0E2153C56EF63D3EDE23422F4FD6212C1F86B7D82342F51B8EF73A84B4F68830A7E262FA91098BC7288A1F9950C55EE5DF12FEDC23C25C0111FC2DE197EA1E11626BFA3661997452793AD927C25C815983B072822AC30BFFDFFD22CC5FAE4178859A4F';
wwv_flow_api.g_varchar2_table(30) := 'E1BFFB45583C5949F8708D7A498B6A6E7F09D55FE51584B08108555073FB4C787AB592107593C6FFDD2FC25CE17B02E165425FCDDE12563F5716090F3F02E14310F3B380F0CE3F69AF09EFC82BA6FE0C73CE87469DA5447B4D78E4113E5C7914EAC3D1BB';
wwv_flow_api.g_varchar2_table(31) := '09BFAFF3C44D6B19E169D96F22142FAA4B09D5221A89C3277A83550C451806AD7AE2A6B59CF028A81272CB08D59F774750B8C208FFDD17C2B3F2A9FA26E167EC6E9F17F793B012B482DE22AC5CE48B85FC9E95D25CFE90B95E9790A9DC1D1F9D07834C0B';
wwv_flow_api.g_varchar2_table(32) := '8495DB13A4BBE4276E5A2B080FBFA96B1246B540789847C33785DBE4276E5A2B089958317D37E125DD5FBC5384D78577117E2FC608C93D779190591C00265A4D18B43C7CC2BBDD258C16D3771312B7AF9AE27B28539F1446082F0BFF84908C9EFB27A742';
wwv_flow_api.g_varchar2_table(33) := '487DA313212C47ACE9BB094951D849C24AA4B5F86EC2DB28610AB34D9612FA83BBFF1B61F9B34A9FACA5300B9A220C728D1046A7BABD8FB072FD737708CBC79FFD4CCB13278C9E62F3F784F082C3E3CFDECC851D20AC9CE48BD5601E05B1ED749F534878';
wwv_flow_api.g_varchar2_table(34) := 'A6AAEB10562FBE57C35BA649C88DF061A448E60A78648DA15E448AF0742DC25CB548BDC669127ACF2BDF472AF82A46A4679FFC35614469122A75FCCD5D8C104F6263CE8272BB36E145AC43324E98C2F716807C821D27C4A6900A5C93F07AC9D4BEB46A7C';
wwv_flow_api.g_varchar2_table(35) := '0D7F7E87BF7D2DFF2A54233E0C36F6774199CB07C3A1AB082F1FD4381B3AB35ACCFF2427A32F2FB749481659C35F6857AE8EEF7FAAA139258497C1A0753E9851B282F0F2B4BA8857AC7EBD3F26937318172F67B04542137F07E97FDE5BB9BC3EBECF7959';
wwv_flow_api.g_varchar2_table(36) := 'E9B924410323242C2F273C89BF846AB1F070717419F40DE3F53FB649C8E02F7395A7E077A57C767D729A2F14AB1E61D0A00D092F62551C257A8EB0AA560BF9DCF165E49B0BBCA03297B0F6C4C6E4E02FD1F9D81200E5A38BFB534258C947090FA163905B';
wwv_flow_api.g_varchar2_table(37) := '4E18FC572D9CFE3A398F9F60E2CFF4BDE58AB624FC253A182E3CB372E9F59EF98E8047F835ACEE1208FDA9A685DCEDDDD5A21DF2D6A9EB6C754B130D6722184E979D70E4795E1EE16D580E13669B9C1790D92CDC5E9F2555954C09AFFAA54CFE59ECD711';
wwv_flow_api.g_varchar2_table(38) := '59CA8405B5D1B2843DBCBBFF59ADAA1E21FDA6554FE388E785AFB7C7574B6EE4F6C9829FE29637FA32BDDD71E4A765FB23201BFBE521811022C6B2EAF02869121191D3261F1D73F36D6F2D64F2E42372457CD1979E5439BB2630D1FAA0789B581A939E32';
wwv_flow_api.g_varchar2_table(39) := 'F25673E1BADBDF58C8F4D75110F9CEBCF5C6C78817C5E8B4A9EBB59EE0B46B649109C02D2E48B805B903C35F4050E67B8395BB8C1C9E9F445A456F139ADAA06E040BB6B753DAC44C7B6AF88C8ACC3EBD94C6CBF78BA91C7E57F301E41B84A63EAAB3FE9A';
wwv_flow_api.g_varchar2_table(40) := '0A80FB514A6F07DA719DE582D52A45D9A8B133BD692FE3BC3AF95524904B095DBBA53FCA353E58C30670C359AADB25BA9AC41AD4921E40E4796B3618B79229CF8E4E7245554D26B49D8341DFE2E96D0401CF8E9C6D1BD1B884A6FED481694E6D5421F262';
wwv_flow_api.g_varchar2_table(41) := 'AF3ED2138B56E5ECF8215F5C2014B43F2F5D4B94A925426099A889D366DA7C44AE3EAF5B32B53C0B000AC777C452B28DBDBCA0AB77D776A449C790C5289D126EBAB31B32D1123B627409216C63571732A17530B2625B0B01D160DB25ADB51BB9474B306D';
wwv_flow_api.g_varchar2_table(42) := '6DE4E5861F59451ED6C7CBA38AF6728AAC3B0BAD556732D26C73F7F002E1376AC8539006374DB23B426BD6A0774E5264DEAABF4C53372C6BA9A90DFAC3B0C402A3BBB883992319D4CA44222F3F4B07CE3EEDF9E8DAFA632D8014D9D8BA7BEE68C8859967';
wwv_flow_api.g_varchar2_table(43) := 'FC787C6DED72C15C2641FFD4F3577EE2586A5D3A610CFC65BF007C51A57DDEE4B975D3F5F6735086C1E282AEE4F3298635D0D273C9FE8D4CCD737A80BF3F80F989F71CB2DA44DFA7376FB9F43A59F60CAF42C8D8759EF00D47FB5C3AA3324B80745DA1CD';
wwv_flow_api.g_varchar2_table(44) := '03EA32C9D1FE7ED40BEB0AED02801625151809E7A0ACAC6869EDA9FAC8EB94473A5E87909D7D383EA8292EA868A97C60E96947662312746FC74AA5B3B37B39FFAF9A92AEDDEE47DB393E94202920D8A4EC63CAAD8BE0C7872DA258A6C8ADB749F5FEEA75';
wwv_flow_api.g_varchar2_table(45) := 'F6A1AAF904091FB11ECC942953A64C993265CA942953A64C993265CA942953A64C993265CA942953A61DD17F01FB05E4AABD07C2DD0000000049454E44AE426082';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(9244885550902126)
,p_file_name=>'NFL.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(9222312456782795)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(9222479003782798)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(9222588082782798)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
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
 p_id=>wwv_flow_api.id(9232395613783004)
,p_icon_sequence=>200
,p_icon_subtext=>'Log Out'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Log Out'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
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
 p_id=>wwv_flow_api.id(9233845691783039)
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
 p_id=>wwv_flow_api.id(22349995520646716)
,p_lov_name=>'LAST_TIME_PLAYED'
,p_lov_query=>'.'||wwv_flow_api.id(22349995520646716)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22350239753646718)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'14 days'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22350630432646720)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'7 days'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22351060617646721)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'4 days'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(22223678751162126)
,p_lov_name=>'QBACK'
,p_lov_query=>'.'||wwv_flow_api.id(22223678751162126)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22223957591162130)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Primary'
,p_lov_return_value=>'4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22224379666162134)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Backup'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22224742364162134)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Other'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(27343137057680573)
,p_lov_name=>'TEAMS'
,p_lov_query=>'.'||wwv_flow_api.id(27343137057680573)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(27343448875680580)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Giants'
,p_lov_return_value=>'26'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(22353517597697722)
,p_lov_name=>'YESNO'
,p_lov_query=>'.'||wwv_flow_api.id(22353517597697722)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22353848196697723)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'10'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22354234204697723)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'1'
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
 p_id=>wwv_flow_api.id(9233589291783033)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(9233919509783042)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21812059954869198)
,p_parent_id=>wwv_flow_api.id(9233919509783042)
,p_short_name=>'NFL'
,p_link=>'f?p=&APP_ID.:2:&SESSION.'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21813631708892604)
,p_parent_id=>wwv_flow_api.id(21812059954869198)
,p_short_name=>'AFC-North'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(21814644949903066)
,p_parent_id=>wwv_flow_api.id(21812059954869198)
,p_short_name=>'NFC'
,p_link=>'f?p=&APP_ID.:5:&SESSION.'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22635872147971023)
,p_parent_id=>wwv_flow_api.id(21812059954869198)
,p_short_name=>'AFC-South'
,p_link=>'f?p=&APP_ID.:9:&SESSION.'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22649937385982503)
,p_parent_id=>wwv_flow_api.id(22635872147971023)
,p_short_name=>'Edit AFC South Teams'
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23790563704847159)
,p_parent_id=>wwv_flow_api.id(21812059954869198)
,p_short_name=>'AFC-East'
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23805660402860792)
,p_parent_id=>wwv_flow_api.id(23790563704847159)
,p_short_name=>'Edit AFC East Teams'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23831234874957113)
,p_parent_id=>wwv_flow_api.id(21812059954869198)
,p_short_name=>'AFC-West'
,p_link=>'f?p=&APP_ID.:12:&SESSION.'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23845817167964621)
,p_parent_id=>wwv_flow_api.id(23831234874957113)
,p_short_name=>'Edit AFC West Teams'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23883195472180801)
,p_parent_id=>wwv_flow_api.id(21812059954869198)
,p_short_name=>'NFC-North'
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23898421325217691)
,p_parent_id=>wwv_flow_api.id(23883195472180801)
,p_short_name=>'Edit NFC North Teams'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23918680665238807)
,p_parent_id=>wwv_flow_api.id(21812059954869198)
,p_short_name=>'NFC-South'
,p_link=>'f?p=&APP_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23933704930253591)
,p_parent_id=>wwv_flow_api.id(23918680665238807)
,p_short_name=>'Edit NFC South Teams'
,p_link=>'f?p=&APP_ID.:17:&SESSION.'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23947441845269293)
,p_parent_id=>wwv_flow_api.id(21812059954869198)
,p_short_name=>'NFC-East'
,p_link=>'f?p=&APP_ID.:18:&SESSION.'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23958916494280336)
,p_parent_id=>wwv_flow_api.id(21812059954869198)
,p_short_name=>'NFC-West'
,p_link=>'f?p=&APP_ID.:19:&SESSION.'
,p_page_id=>19
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(23980282968289362)
,p_parent_id=>wwv_flow_api.id(23947441845269293)
,p_short_name=>'Edit NFC East Teams'
,p_link=>'f?p=&APP_ID.:20:&SESSION.'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(24004132577314724)
,p_parent_id=>wwv_flow_api.id(23958916494280336)
,p_short_name=>'Edit NFC West Teams'
,p_link=>'f?p=&APP_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(27267591617195373)
,p_parent_id=>wwv_flow_api.id(9233919509783042)
,p_short_name=>'Game Setup'
,p_link=>'f?p=&APP_ID.:24:&SESSION.'
,p_page_id=>24
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9222662532782801)
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
,p_reference_id=>6046424148478426
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9222779152782833)
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
,p_reference_id=>6046621103478430
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9222853189782834)
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
,p_reference_id=>6046827098478431
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9222981168782834)
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
,p_reference_id=>6047605424478434
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9223093592782834)
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
,p_reference_id=>6047006567478433
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9223102133782835)
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
,p_reference_id=>6047225864478433
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9223224511782835)
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
,p_reference_id=>6047419593478433
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9223356397782836)
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
,p_reference_id=>6048417024478436
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9223422233782836)
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
,p_reference_id=>6047831566478435
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9223571385782837)
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
,p_reference_id=>6048011829478435
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9223663257782837)
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
,p_reference_id=>6048212559478435
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9223743723782837)
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
,p_reference_id=>6048602021478436
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9223826560782838)
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
,p_reference_id=>6048814915478437
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9223940541782838)
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
,p_reference_id=>6049019015478438
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(9224055401782838)
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
,p_reference_id=>6049211757478438
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27128954679732080)
,p_theme_id=>122
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27129380660732087)
,p_page_template_id=>wwv_flow_api.id(27128954679732080)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27129868134732094)
,p_page_template_id=>wwv_flow_api.id(27128954679732080)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27130339393732094)
,p_page_template_id=>wwv_flow_api.id(27128954679732080)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27130867146732094)
,p_page_template_id=>wwv_flow_api.id(27128954679732080)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27131366685732095)
,p_page_template_id=>wwv_flow_api.id(27128954679732080)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27131863664732095)
,p_page_template_id=>wwv_flow_api.id(27128954679732080)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27132326084732095)
,p_page_template_id=>wwv_flow_api.id(27128954679732080)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27132851977732095)
,p_page_template_id=>wwv_flow_api.id(27128954679732080)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27133364988732096)
,p_page_template_id=>wwv_flow_api.id(27128954679732080)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27133804719732098)
,p_theme_id=>122
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27134333346732099)
,p_page_template_id=>wwv_flow_api.id(27133804719732098)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27134818966732099)
,p_page_template_id=>wwv_flow_api.id(27133804719732098)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27135304566732099)
,p_page_template_id=>wwv_flow_api.id(27133804719732098)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27135933974732100)
,p_theme_id=>122
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27136338153732100)
,p_page_template_id=>wwv_flow_api.id(27135933974732100)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27136885911732100)
,p_page_template_id=>wwv_flow_api.id(27135933974732100)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27137312151732104)
,p_page_template_id=>wwv_flow_api.id(27135933974732100)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27232303968597737)
,p_theme_id=>2017
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
,p_reference_id=>9222662532782801
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27232535972597753)
,p_theme_id=>2017
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>27128954679732080
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27232895019597753)
,p_page_template_id=>wwv_flow_api.id(27232535972597753)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27233162591597756)
,p_page_template_id=>wwv_flow_api.id(27232535972597753)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27233437848597756)
,p_page_template_id=>wwv_flow_api.id(27232535972597753)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27233778526597756)
,p_page_template_id=>wwv_flow_api.id(27232535972597753)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27234075766597756)
,p_page_template_id=>wwv_flow_api.id(27232535972597753)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27234344959597757)
,p_page_template_id=>wwv_flow_api.id(27232535972597753)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27234625535597757)
,p_page_template_id=>wwv_flow_api.id(27232535972597753)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27234981605597757)
,p_page_template_id=>wwv_flow_api.id(27232535972597753)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27235291873597757)
,p_page_template_id=>wwv_flow_api.id(27232535972597753)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27235402958597757)
,p_theme_id=>2017
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>27133804719732098
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27235788777597757)
,p_page_template_id=>wwv_flow_api.id(27235402958597757)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27236017688597757)
,p_page_template_id=>wwv_flow_api.id(27235402958597757)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27236373957597757)
,p_page_template_id=>wwv_flow_api.id(27235402958597757)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27236542305597758)
,p_theme_id=>2017
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
,p_reference_id=>9222779152782833
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27236789136597763)
,p_theme_id=>2017
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
,p_reference_id=>9222853189782834
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27236912527597763)
,p_theme_id=>2017
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
,p_reference_id=>9223093592782834
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27237168742597763)
,p_theme_id=>2017
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
,p_reference_id=>9223102133782835
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27237338305597764)
,p_theme_id=>2017
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
,p_reference_id=>9223224511782835
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27237597186597764)
,p_theme_id=>2017
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
,p_reference_id=>9222981168782834
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27237744179597765)
,p_theme_id=>2017
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
,p_reference_id=>9223422233782836
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27237932105597765)
,p_theme_id=>2017
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
,p_reference_id=>9223571385782837
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27238102170597765)
,p_theme_id=>2017
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
,p_reference_id=>9223663257782837
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27238345416597765)
,p_theme_id=>2017
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
,p_reference_id=>9223356397782836
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27238510110597765)
,p_theme_id=>2017
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
,p_reference_id=>9223743723782837
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27238750268597766)
,p_theme_id=>2017
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
,p_reference_id=>9223826560782838
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27238924124597766)
,p_theme_id=>2017
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
,p_reference_id=>9223940541782838
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27239106659597766)
,p_theme_id=>2017
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
,p_reference_id=>9224055401782838
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(27239328607597766)
,p_theme_id=>2017
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>27135933974732100
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27239694189597766)
,p_page_template_id=>wwv_flow_api.id(27239328607597766)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27239970698597767)
,p_page_template_id=>wwv_flow_api.id(27239328607597766)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(27240258487597767)
,p_page_template_id=>wwv_flow_api.id(27239328607597766)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(9230844833782898)
,p_template_name=>'Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-default" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>6062116010478452
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(9230943640782902)
,p_template_name=>'Hot Button (Black)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt5" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>6062216494478453
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(9231048438782902)
,p_template_name=>'Hot Button (Blue)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt1" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>6062308017478453
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(9231103482782902)
,p_template_name=>'Hot Button (Yellow)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt4" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>6062413489478453
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(9231291037782902)
,p_template_name=>'Small Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt2" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>6062506135478453
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'XP Square FFFFFF'
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(9231356853782903)
,p_template_name=>'Small Hot Button (Blue)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt3" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>6062603483478453
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(9231419755782903)
,p_template_name=>'Small Hot Button (Yellow)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt6" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>6062705519478453
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27138250136774455)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27138420161774458)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27138722340774458)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>122
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27253153266597795)
,p_template_name=>'Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-default" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>9230844833782898
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>2017
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27253222860597798)
,p_template_name=>'Hot Button (Black)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt5" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>9230943640782902
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>2017
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27253346889597798)
,p_template_name=>'Hot Button (Blue)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt1" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>9231048438782902
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>2017
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27253497945597798)
,p_template_name=>'Hot Button (Yellow)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt4" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>9231103482782902
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>2017
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27253533431597798)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>27138250136774455
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>2017
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27253679455597798)
,p_template_name=>'Small Button'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt2" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>9231291037782902
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'XP Square FFFFFF'
,p_theme_id=>2017
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27253759339597798)
,p_template_name=>'Small Hot Button (Blue)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt3" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>9231356853782903
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>2017
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27253875565597798)
,p_template_name=>'Small Hot Button (Yellow)'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt6" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_reference_id=>9231419755782903
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>2017
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27253995952597798)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>27138420161774458
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>2017
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(27254080527597798)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>27138722340774458
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>2017
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9224120353782840)
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
,p_reference_id=>6049407584478438
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9224224811782862)
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
,p_reference_id=>6049616366478439
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9224300394782863)
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
,p_reference_id=>6049829231478439
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9224418896782863)
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
,p_reference_id=>6050020909478439
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content with a bracket UI.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9224548385782863)
,p_layout=>'TABLE'
,p_template=>'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>122
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>6050213348478439
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9224602748782863)
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
,p_reference_id=>6050412230478440
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9224757923782863)
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
,p_reference_id=>6050631225478440
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9224854927782863)
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
,p_reference_id=>6050804488478440
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9224943136782863)
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
,p_reference_id=>6051011278478440
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9225012159782863)
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
,p_reference_id=>6051201967478440
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9225116156782863)
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
,p_reference_id=>6051424968478440
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9225274548782863)
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
,p_reference_id=>6051613918478440
,p_translate_this_template=>'N'
,p_template_comment=>'Gray Head, white body'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9225382759782863)
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
,p_reference_id=>6051828267478440
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9225497960782863)
,p_layout=>'TABLE'
,p_template=>'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_theme_id=>122
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>6052030304478440
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9225585094782864)
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
,p_reference_id=>6052224310478440
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9225626334782864)
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
,p_reference_id=>6052414752478444
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9225792406782864)
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
,p_reference_id=>6052623615478444
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9225845662782864)
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
,p_reference_id=>6052820198478444
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9225901065782864)
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
,p_reference_id=>6053013839478444
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9226041748782864)
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
,p_reference_id=>6053224788478444
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9226150596782864)
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
,p_reference_id=>6053403584478444
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9226271396782864)
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
,p_reference_id=>6053619488478444
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9226328121782864)
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
,p_reference_id=>6053824533478444
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9226426127782864)
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
,p_reference_id=>6054010515478445
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9226590802782864)
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
,p_reference_id=>6054225370478445
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
 p_id=>wwv_flow_api.id(9226600684782865)
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
,p_reference_id=>6054409283478445
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9226780732782865)
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
,p_reference_id=>6054600509478446
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9226822826782865)
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
,p_reference_id=>6054800653478446
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9226907088782865)
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
,p_reference_id=>6055024939478446
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(9227071127782865)
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
,p_reference_id=>6055227733478446
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27240428326597768)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="blank-region">',
'#BODY#',
'<div class="clear"></div>',
'</div>'))
,p_page_plug_template_name=>'Blank Region'
,p_theme_id=>2017
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9224120353782840
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27240688117597776)
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
,p_theme_id=>2017
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9224224811782862
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27240828835597776)
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
,p_theme_id=>2017
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9224300394782863
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27241071865597777)
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
,p_theme_id=>2017
,p_theme_class_id=>18
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9224418896782863
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content with a bracket UI.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27241218678597777)
,p_layout=>'TABLE'
,p_template=>'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_theme_id=>2017
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9224548385782863
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27241483696597777)
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
,p_theme_id=>2017
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9224602748782863
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27241657140597777)
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
,p_theme_id=>2017
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9224757923782863
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27241833709597777)
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
,p_theme_id=>2017
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9224854927782863
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27242019829597777)
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
,p_theme_id=>2017
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9224943136782863
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27242273781597777)
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
,p_theme_id=>2017
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9225012159782863
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27242482079597778)
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
,p_theme_id=>2017
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9225116156782863
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27242605458597778)
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
,p_theme_id=>2017
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9225274548782863
,p_translate_this_template=>'N'
,p_template_comment=>'Gray Head, white body'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27242811209597778)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="navigation-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'    <h3>#TITLE#</h3>',
'  <div>',
'    #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Navigation Region'
,p_theme_id=>2017
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9225382759782863
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27243037832597778)
,p_layout=>'TABLE'
,p_template=>'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_theme_id=>2017
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9225497960782863
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27243214730597778)
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
,p_theme_id=>2017
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9225585094782864
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27243444832597778)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_theme_id=>2017
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9225626334782864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27243615654597778)
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
,p_theme_id=>2017
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9225792406782864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27243827601597779)
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
,p_theme_id=>2017
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9225845662782864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27244075820597779)
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
,p_theme_id=>2017
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9225901065782864
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27244295126597779)
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
,p_theme_id=>2017
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9226041748782864
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27244440228597779)
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
,p_theme_id=>2017
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9226150596782864
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27244659130597779)
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
,p_theme_id=>2017
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9226271396782864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27244833751597779)
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
,p_theme_id=>2017
,p_theme_class_id=>10
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9226328121782864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27245057483597779)
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
,p_theme_id=>2017
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9226426127782864
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27245225323597779)
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
,p_theme_id=>2017
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9226590802782864
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
 p_id=>wwv_flow_api.id(27245412875597780)
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
,p_theme_id=>2017
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9226600684782865
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27245674193597780)
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
,p_theme_id=>2017
,p_theme_class_id=>3
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9226780732782865
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27245873488597780)
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
,p_theme_id=>2017
,p_theme_class_id=>3
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9226822826782865
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27246056822597780)
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
,p_theme_id=>2017
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9226907088782865
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(27246269541597780)
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
,p_theme_id=>2017
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>9227071127782865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9228130519782876)
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
,p_reference_id=>6057425770478448
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9228280421782887)
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
,p_reference_id=>6057611880478449
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9228340771782888)
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
,p_reference_id=>6057812581478449
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9228442167782888)
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
,p_reference_id=>6058022532478449
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9228533292782888)
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
,p_reference_id=>6058221021478449
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9228689879782888)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>122
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
,p_reference_id=>6058402970478449
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9228755084782888)
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
,p_reference_id=>6058603176478449
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9228820602782889)
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
,p_reference_id=>6058831498478450
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9228906762782889)
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
,p_reference_id=>6059013678478450
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9229062351782889)
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
,p_reference_id=>6059219151478450
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9229123719782889)
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
,p_reference_id=>6059428941478450
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9229284310782889)
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
,p_reference_id=>6059609473478451
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9229374033782889)
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
,p_reference_id=>6059820659478451
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9229442744782889)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>122
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
,p_reference_id=>6060025480478451
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9229511127782889)
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
,p_reference_id=>6060204022478451
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9229613948782889)
,p_list_template_current=>'<li class="current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>122
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>6060411682478451
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9229711403782889)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets, Alternative'
,p_theme_id=>122
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>6060626871478451
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9229846515782889)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>122
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>6060809368478451
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9229945523782890)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li class="non-current">#TEXT#</li>'
,p_list_template_name=>'Wizard Progress List'
,p_theme_id=>122
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="wizard-progress-list" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_between_items=>'<li class="progress-indicator">&nbsp;</li>'
,p_reference_id=>6061016824478451
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(9230057884782890)
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
,p_reference_id=>6061231676478451
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27248421791597785)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-alt1" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-default" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_name=>'Button List'
,p_theme_id=>2017
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="button-list">'
,p_list_template_after_rows=>'</div>'
,p_reference_id=>9228130519782876
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27248641933597787)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'          <li class="#LIST_STATUS#">',
'            <a href="#LINK#"><span>#TEXT#</span></a>',
'          </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'          <li class="#LIST_STATUS#">',
'            <a href="#LINK#"><span>#TEXT#</span></a>',
'          </li>'))
,p_list_template_name=>'Centered Tab Set'
,p_theme_id=>2017
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
,p_reference_id=>9228280421782887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27248850901597787)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_theme_id=>2017
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
,p_reference_id=>9228340771782888
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27249076520597787)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_theme_id=>2017
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
,p_reference_id=>9228442167782888
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27249278975597788)
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
,p_theme_id=>2017
,p_theme_class_id=>4
,p_list_template_before_rows=>'<div class="horizontal-images-list">'
,p_list_template_after_rows=>'</div>'
,p_reference_id=>9228533292782888
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27249424045597788)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_theme_id=>2017
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
,p_reference_id=>9228689879782888
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27249675820597788)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Horizontal Tabs Rounded List'
,p_theme_id=>2017
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sHTabs">',
'	<div class="sHTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'		</ul>',
'	</div>',
'</div>'))
,p_reference_id=>9228755084782888
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27249864502597788)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Horizontal Tabs Rounded List (Full Width)'
,p_theme_id=>2017
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
,p_reference_id=>9228820602782889
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27250043103597788)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_theme_id=>2017
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
,p_reference_id=>9228906762782889
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27250227298597788)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_theme_id=>2017
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
,p_reference_id=>9229062351782889
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27250444791597788)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_theme_id=>2017
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
,p_reference_id=>9229123719782889
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27250601267597789)
,p_list_template_current=>'<li class="active"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_theme_id=>2017
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sHorizontalTabs">',
'	<div class="sHorizontalTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'		</ul>',
'	</div>',
'</div>'))
,p_reference_id=>9229284310782889
);
end;
/
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27250859093597789)
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
,p_theme_id=>2017
,p_theme_class_id=>5
,p_list_template_before_rows=>'<div class="vertical-images-list">'
,p_list_template_after_rows=>'</div>'
,p_reference_id=>9229374033782889
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27251087346597789)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_theme_id=>2017
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
,p_reference_id=>9229442744782889
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27251264737597789)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_theme_id=>2017
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="vertical-sidebar-list">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
,p_reference_id=>9229511127782889
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27251420969597789)
,p_list_template_current=>'<li class="current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_theme_id=>2017
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>9229613948782889
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27251689625597789)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets, Alternative'
,p_theme_id=>2017
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>9229711403782889
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27251816369597789)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_theme_id=>2017
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>9229846515782889
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27252035914597790)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li class="non-current">#TEXT#</li>'
,p_list_template_name=>'Wizard Progress List'
,p_theme_id=>2017
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="wizard-progress-list" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_between_items=>'<li class="progress-indicator">&nbsp;</li>'
,p_reference_id=>9229945523782890
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(27252229396597790)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Wizard Progress List, Horizontal Train'
,p_theme_id=>2017
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="sHorizontalProgressList">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
,p_reference_id=>9230057884782890
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9227131340782867)
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
,p_reference_id=>6055413934478446
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(9227131340782867)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9227297786782873)
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
,p_reference_id=>6055623553478447
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(9227297786782873)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9227321564782873)
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
,p_reference_id=>6055825798478447
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(9227321564782873)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9227486762782873)
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
,p_reference_id=>6056019380478447
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(9227486762782873)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9227520831782874)
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
,p_reference_id=>6056208903478447
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9227633929782874)
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
,p_reference_id=>6056432328478447
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(9227633929782874)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9227722225782874)
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
,p_reference_id=>6056607794478448
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(9227722225782874)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9227858339782874)
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
,p_reference_id=>6056832654478448
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9227949373782874)
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
,p_reference_id=>6057024535478448
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(9228026058782874)
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
,p_reference_id=>6057214281478448
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27246417099597780)
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
,p_theme_id=>2017
,p_theme_class_id=>1
,p_reference_id=>9227131340782867
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(27246417099597780)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27246654203597784)
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
,p_theme_id=>2017
,p_theme_class_id=>7
,p_reference_id=>9227297786782873
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(27246654203597784)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27246884478597784)
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
,p_theme_id=>2017
,p_theme_class_id=>2
,p_reference_id=>9227321564782873
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(27246884478597784)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27247003898597784)
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
,p_theme_id=>2017
,p_theme_class_id=>3
,p_reference_id=>9227486762782873
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(27247003898597784)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27247211613597784)
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
,p_theme_id=>2017
,p_theme_class_id=>1
,p_reference_id=>9227520831782874
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27247470880597784)
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
,p_theme_id=>2017
,p_theme_class_id=>4
,p_reference_id=>9227633929782874
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(27247470880597784)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27247615847597785)
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
,p_theme_id=>2017
,p_theme_class_id=>5
,p_reference_id=>9227722225782874
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(27247615847597785)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27247889269597785)
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
,p_theme_id=>2017
,p_theme_class_id=>7
,p_reference_id=>9227858339782874
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27248087824597785)
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
,p_theme_id=>2017
,p_theme_class_id=>6
,p_reference_id=>9227949373782874
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(27248210714597785)
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
,p_theme_id=>2017
,p_theme_class_id=>6
,p_reference_id=>9228026058782874
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9230192610782892)
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
,p_reference_id=>6061409658478452
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9230226640782897)
,p_template_name=>'No Label'
,p_template_body1=>'<span class="hidden-label">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>122
,p_theme_class_id=>13
,p_reference_id=>6061509001478452
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9230398558782897)
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="optional">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>122
,p_theme_class_id=>3
,p_reference_id=>6061606055478452
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9230425879782897)
,p_template_name=>'Optional with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>122
,p_theme_class_id=>1
,p_reference_id=>6061725198478452
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9230550008782897)
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999" /> <span class="required">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>122
,p_theme_class_id=>4
,p_reference_id=>6061820634478452
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9230683157782897)
,p_template_name=>'Required with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUI'
||'RED#" tabindex="999" /> '
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>122
,p_theme_class_id=>2
,p_reference_id=>6061902112478452
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(9230721703782897)
,p_template_name=>'blueLable'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #0404B4; font-size: 14px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>122
,p_theme_class_id=>1
,p_reference_id=>6062004273478452
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27252407018597791)
,p_template_name=>'BlueRequired'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #0404B4; font-size: 14px; font-family : calibri, verdana, sans-serif"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999"/>',
''))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>2017
,p_theme_class_id=>2
,p_reference_id=>9230192610782892
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27252516213597794)
,p_template_name=>'No Label'
,p_template_body1=>'<span class="hidden-label">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>2017
,p_theme_class_id=>13
,p_reference_id=>9230226640782897
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27252674157597794)
,p_template_name=>'Optional'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="optional">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>2017
,p_theme_class_id=>3
,p_reference_id=>9230398558782897
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27252766324597794)
,p_template_name=>'Optional with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>2017
,p_theme_class_id=>1
,p_reference_id=>9230425879782897
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27252872377597794)
,p_template_name=>'Required'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999" /> <span class="required">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>2017
,p_theme_class_id=>4
,p_reference_id=>9230550008782897
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27252909651597795)
,p_template_name=>'Required with help'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_22/images/required.png" alt="#VALUE_REQUI'
||'RED#" tabindex="999" /> '
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>2017
,p_theme_class_id=>2
,p_reference_id=>9230683157782897
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(27253045909597795)
,p_template_name=>'blueLable'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999";',
'style="text-align: center; color: #0404B4; font-size: 14px; font-family : calibri, verdana, sans-serif">'))
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>2017
,p_theme_class_id=>1
,p_reference_id=>9230721703782897
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(9231599348782903)
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
,p_reference_id=>6062825590478453
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(9231640478782907)
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>122
,p_theme_class_id=>2
,p_reference_id=>6062930903478454
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(27254747852597804)
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
,p_theme_id=>2017
,p_theme_class_id=>1
,p_reference_id=>9231599348782903
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(27254854368597806)
,p_name=>'Hierarchical Menu'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>2017
,p_theme_class_id=>2
,p_reference_id=>9231640478782907
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(9232058252782915)
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
,p_reference_id=>6063326581478455
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(27255299421597811)
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
,p_theme_id=>2017
,p_theme_class_id=>1
,p_reference_id=>9232058252782915
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(9231718264782909)
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
,p_reference_id=>6063001018478454
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(9231876974782914)
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
,p_reference_id=>6063109143478455
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(9231999380782914)
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
,p_reference_id=>6063225990478455
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(27254904698597807)
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
,p_theme_id=>2017
,p_theme_class_id=>1
,p_reference_id=>9231718264782909
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(27255025276597810)
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
,p_theme_id=>2017
,p_theme_class_id=>2
,p_reference_id=>9231876974782914
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(27255142063597811)
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
,p_theme_id=>2017
,p_theme_class_id=>3
,p_reference_id=>9231999380782914
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(9232182029782941)
,p_theme_id=>122
,p_theme_name=>'SafeGuardProperties'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_reference_id=>6063514108478459
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(9223571385782837)
,p_error_template=>wwv_flow_api.id(9223102133782835)
,p_printer_friendly_template=>wwv_flow_api.id(9223356397782836)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(9222662532782801)
,p_default_button_template=>wwv_flow_api.id(9230844833782898)
,p_default_region_template=>wwv_flow_api.id(9226041748782864)
,p_default_chart_template=>wwv_flow_api.id(9225012159782863)
,p_default_form_template=>wwv_flow_api.id(9225116156782863)
,p_default_reportr_template=>wwv_flow_api.id(9226041748782864)
,p_default_tabform_template=>wwv_flow_api.id(9226041748782864)
,p_default_wizard_template=>wwv_flow_api.id(9226907088782865)
,p_default_menur_template=>wwv_flow_api.id(9224548385782863)
,p_default_listr_template=>wwv_flow_api.id(9224943136782863)
,p_default_irr_template=>wwv_flow_api.id(9225626334782864)
,p_default_report_template=>wwv_flow_api.id(9227633929782874)
,p_default_label_template=>wwv_flow_api.id(9230425879782897)
,p_default_menu_template=>wwv_flow_api.id(9231599348782903)
,p_default_calendar_template=>wwv_flow_api.id(9231718264782909)
,p_default_list_template=>wwv_flow_api.id(9229613948782889)
,p_default_option_label=>wwv_flow_api.id(9230425879782897)
,p_default_required_label=>wwv_flow_api.id(9230683157782897)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(122),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(27255497863597831)
,p_theme_id=>2017
,p_theme_name=>'SafeGuardProperties'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_reference_id=>9232182029782941
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(27237932105597765)
,p_default_dialog_template=>wwv_flow_api.id(27235402958597757)
,p_error_template=>wwv_flow_api.id(27237168742597763)
,p_printer_friendly_template=>wwv_flow_api.id(27238345416597765)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(27232303968597737)
,p_default_button_template=>wwv_flow_api.id(27253153266597795)
,p_default_region_template=>wwv_flow_api.id(27244295126597779)
,p_default_chart_template=>wwv_flow_api.id(27242273781597777)
,p_default_form_template=>wwv_flow_api.id(27242482079597778)
,p_default_reportr_template=>wwv_flow_api.id(27244295126597779)
,p_default_tabform_template=>wwv_flow_api.id(27244295126597779)
,p_default_wizard_template=>wwv_flow_api.id(27246056822597780)
,p_default_menur_template=>wwv_flow_api.id(27241218678597777)
,p_default_listr_template=>wwv_flow_api.id(27242019829597777)
,p_default_irr_template=>wwv_flow_api.id(27243444832597778)
,p_default_report_template=>wwv_flow_api.id(27247470880597784)
,p_default_label_template=>wwv_flow_api.id(27252766324597794)
,p_default_menu_template=>wwv_flow_api.id(27254747852597804)
,p_default_calendar_template=>wwv_flow_api.id(27254904698597807)
,p_default_list_template=>wwv_flow_api.id(27251420969597789)
,p_default_nav_list_position=>'TOP'
,p_default_dialogbtnr_template=>wwv_flow_api.id(27241657140597777)
,p_default_dialogr_template=>wwv_flow_api.id(27241657140597777)
,p_default_option_label=>wwv_flow_api.id(27252766324597794)
,p_default_required_label=>wwv_flow_api.id(27252909651597795)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(2017),'')
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
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27139102429774460)
,p_theme_id=>122
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(27254206714597800)
,p_theme_id=>2017
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27139597214774463)
,p_theme_id=>122
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(27138722340774458)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(27139102429774460)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27139999031774465)
,p_theme_id=>122
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(27138722340774458)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(27139102429774460)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27254439680597802)
,p_theme_id=>2017
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(27254080527597798)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(27254206714597800)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(27254663035597804)
,p_theme_id=>2017
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(27254080527597798)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(27254206714597800)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
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
 p_id=>wwv_flow_api.id(22166682871929860)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(9232464668783015)
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
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(9232209277782987)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>2017
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_nav_bar_type=>'NAVBAR'
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
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_tab_set=>'TS1'
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27237932105597765)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20161002065829'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9234010022783043)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26764484647948773)
,p_plug_name=>'blank_region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21816336142951742)
,p_plug_name=>'Welcome to the NFL'
,p_parent_plug_id=>wwv_flow_api.id(26764484647948773)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26718978193894048)
,p_name=>'metLife'
,p_parent_plug_id=>wwv_flow_api.id(26764484647948773)
,p_template=>wwv_flow_api.id(27240428326597768)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 56'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27247470880597784)
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26719558560894060)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26719970580894062)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'App'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26720392343894063)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>'Question'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26720722289894063)
,p_query_column_id=>4
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>4
,p_column_heading=>'Answer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26721104370894063)
,p_query_column_id=>5
,p_column_alias=>'PIC'
,p_column_display_sequence=>5
,p_column_heading=>'Metlife Stadium'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Attachment:Download:'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26721526435894064)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Filename'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26721949254894064)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26722349911894064)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26773000223995147)
,p_plug_name=>'right_blank_region'
,p_parent_plug_id=>wwv_flow_api.id(26764484647948773)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26782235033045722)
,p_name=>'football'
,p_parent_plug_id=>wwv_flow_api.id(26764484647948773)
,p_template=>wwv_flow_api.id(27240428326597768)
,p_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 57'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27247470880597784)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26783740805049448)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'NFL Divisions'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'<img src=#WORKSPACE_IMAGES#fb-75.png border="0">'
,p_column_alignment=>'CENTER'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26784142825049450)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'App'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26784573949049450)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>'Question'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26784958253049451)
,p_query_column_id=>4
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>4
,p_column_heading=>'Answer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26785374647049451)
,p_query_column_id=>5
,p_column_alias=>'PIC'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Attachment:Download:'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26785725659049451)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Filename'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26786144674049452)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26786528971049452)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(27269535801281036)
,p_name=>'Games'
,p_parent_plug_id=>wwv_flow_api.id(26764484647948773)
,p_template=>wwv_flow_api.id(27240428326597768)
,p_display_sequence=>26
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 57'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27247470880597784)
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27271019021284263)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Game Match Up'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'<img src=#WORKSPACE_IMAGES#fb-75.png border="0">'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27271401970284264)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'App'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27271836042284264)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>'Question'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27272289676284265)
,p_query_column_id=>4
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>4
,p_column_heading=>'Answer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27272687094284265)
,p_query_column_id=>5
,p_column_alias=>'PIC'
,p_column_display_sequence=>5
,p_column_heading=>'Set Game'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Attachment:Download:'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27273003881284265)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Filename'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27273413277284265)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27273869386284266)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21816613822966988)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21816336142951742)
,p_button_name=>'NFL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'NFL Divisions'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'NFL'
,p_page_mode=>'NORMAL'
,p_step_title=>'NFL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27237932105597765)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20161001092930'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21811676249869192)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21821617635719818)
,p_plug_name=>'blank_Reg'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21821989470724178)
,p_plug_name=>'Border'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21833349354888677)
,p_name=>'AFC'
,p_parent_plug_id=>wwv_flow_api.id(21821989470724178)
,p_template=>wwv_flow_api.id(27241657140597777)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 47'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27247470880597784)
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21833993000888688)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21834363218888692)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'App'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21834799411888693)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>'Question'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21835143743888693)
,p_query_column_id=>4
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>4
,p_column_heading=>'Answer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21835598916888693)
,p_query_column_id=>5
,p_column_alias=>'PIC'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Attachment:Download:'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21835980377888693)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Filename'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21836311099888694)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21836700976888694)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21886979707994271)
,p_name=>'NFC'
,p_parent_plug_id=>wwv_flow_api.id(21821989470724178)
,p_template=>wwv_flow_api.id(27241657140597777)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 48'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27247470880597784)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21887597865994274)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21887990796994275)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'App'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21888344111994275)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>'Question'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21888740377994276)
,p_query_column_id=>4
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>4
,p_column_heading=>'Answer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21889178841994276)
,p_query_column_id=>5
,p_column_alias=>'PIC'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Attachment:Download:'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21889588597994276)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Filename'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21889904882994277)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21890365520994277)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21915771664282149)
,p_name=>'AFC north'
,p_parent_plug_id=>wwv_flow_api.id(21821989470724178)
,p_template=>wwv_flow_api.id(27240428326597768)
,p_display_sequence=>42
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 46'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27247470880597784)
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21916382260282151)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'<img src=#WORKSPACE_IMAGES#fb-20.png border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21916776532282151)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'App'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21917136105282151)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>'Question'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21917527144282152)
,p_query_column_id=>4
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>4
,p_column_heading=>'Answer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21917957454282152)
,p_query_column_id=>5
,p_column_alias=>'PIC'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Attachment:Download:'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21918301675282152)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Filename'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21918704977282153)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21919146322282153)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21940520418402317)
,p_name=>'AFC South'
,p_parent_plug_id=>wwv_flow_api.id(21821989470724178)
,p_template=>wwv_flow_api.id(27240428326597768)
,p_display_sequence=>43
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 51'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27247470880597784)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21941144048402320)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'<img src=#WORKSPACE_IMAGES#fb-20.png border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21941503487402320)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'App'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21941958260402321)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>'Question'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21942331249402321)
,p_query_column_id=>4
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>4
,p_column_heading=>'Answer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21942780862402321)
,p_query_column_id=>5
,p_column_alias=>'PIC'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Attachment:Download:'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21943167883402321)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Filename'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21943511045402322)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21943964537402322)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21970567558461610)
,p_name=>'AFC East'
,p_parent_plug_id=>wwv_flow_api.id(21821989470724178)
,p_template=>wwv_flow_api.id(27240428326597768)
,p_display_sequence=>44
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 49'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27247470880597784)
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21971112387461613)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'<img src=#WORKSPACE_IMAGES#fb-20.png border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21971515849461613)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'App'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21971995009461613)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>'Question'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21972310708461613)
,p_query_column_id=>4
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>4
,p_column_heading=>'Answer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21972797647461614)
,p_query_column_id=>5
,p_column_alias=>'PIC'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Attachment:Download:'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21973167970461614)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Filename'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21973511150461614)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21973988383461615)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(22005422099504798)
,p_name=>'AFC West'
,p_parent_plug_id=>wwv_flow_api.id(21821989470724178)
,p_template=>wwv_flow_api.id(27240428326597768)
,p_display_sequence=>45
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 50'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27247470880597784)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22005980237504801)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'<img src=#WORKSPACE_IMAGES#fb-20.png border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22006319318504801)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'App'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22006742488504801)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>'Question'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22007146173504802)
,p_query_column_id=>4
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>4
,p_column_heading=>'Answer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22007507151504802)
,p_query_column_id=>5
,p_column_alias=>'PIC'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Attachment:Download:'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22007923913504802)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Filename'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22008379829504802)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22008787202504803)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(22088873325625786)
,p_name=>'NFC-north'
,p_parent_plug_id=>wwv_flow_api.id(21821989470724178)
,p_template=>wwv_flow_api.id(27240428326597768)
,p_display_sequence=>52
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 52'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27247470880597784)
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22089444803625790)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'<img src=#WORKSPACE_IMAGES#fb-20.png border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22089822883625790)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'App'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22090219646625790)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>'Question'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22090680286625791)
,p_query_column_id=>4
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>4
,p_column_heading=>'Answer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22091051364625791)
,p_query_column_id=>5
,p_column_alias=>'PIC'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Attachment:Download:'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22091423783625791)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Filename'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22091838518625791)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22092287787625792)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(22108593438657872)
,p_name=>'NFC-south'
,p_parent_plug_id=>wwv_flow_api.id(21821989470724178)
,p_template=>wwv_flow_api.id(27240428326597768)
,p_display_sequence=>53
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 53'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27247470880597784)
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22109190321657874)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'<img src=#WORKSPACE_IMAGES#fb-20.png border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22109555134657874)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'App'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22109987403657875)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>'Question'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22110320453657875)
,p_query_column_id=>4
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>4
,p_column_heading=>'Answer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22110729452657875)
,p_query_column_id=>5
,p_column_alias=>'PIC'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Attachment:Download:'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22111180011657876)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Filename'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22111557833657876)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22111935075657876)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(22130914330688032)
,p_name=>'NFC-East'
,p_parent_plug_id=>wwv_flow_api.id(21821989470724178)
,p_template=>wwv_flow_api.id(27240428326597768)
,p_display_sequence=>54
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 54'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27247470880597784)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22131585463688034)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'<img src=#WORKSPACE_IMAGES#fb-20.png border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22131972849688036)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'App'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22132378155688037)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>'Question'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22132707632688037)
,p_query_column_id=>4
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>4
,p_column_heading=>'Answer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22133193957688037)
,p_query_column_id=>5
,p_column_alias=>'PIC'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Attachment:Download:'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22133527964688038)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Filename'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22133969721688038)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22134337161688038)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(22147948205708913)
,p_name=>'NFC-West'
,p_parent_plug_id=>wwv_flow_api.id(21821989470724178)
,p_template=>wwv_flow_api.id(27240428326597768)
,p_display_sequence=>55
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "ID", ',
'"APP",',
'"QUESTION",',
'"ANSWER",',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 55'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(27247470880597784)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
end;
/
begin
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22148547073708915)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'<img src=#WORKSPACE_IMAGES#fb-20.png border="0">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22148900262708915)
,p_query_column_id=>2
,p_column_alias=>'APP'
,p_column_display_sequence=>2
,p_column_heading=>'App'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22149353485708915)
,p_query_column_id=>3
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>3
,p_column_heading=>'Question'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22149712195708917)
,p_query_column_id=>4
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>4
,p_column_heading=>'Answer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22150177658708917)
,p_query_column_id=>5
,p_column_alias=>'PIC'
,p_column_display_sequence=>5
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:RSA_ADMIN_FREQ_QUESTIONS:PIC:ID::::::Attachment:Download:'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22150507405708917)
,p_query_column_id=>6
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>6
,p_column_heading=>'Filename'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22150934372708918)
,p_query_column_id=>7
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22151316858708919)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update'
,p_hidden_column=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'AFC-East'
,p_page_mode=>'NORMAL'
,p_step_title=>'AFC-East'
,p_step_sub_title=>'AFC-East'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27237338305597764)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160918081805'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23780236258847133)
,p_plug_name=>'AFC-East'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27243444832597778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "TEAM_ID", ',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE",',
'"QTBACK",',
'"QB_RANK",',
'"OFFENSE_RANK",',
'"DEFENSE_RANK",',
'"RUSHING_RANK",',
'"PASSING_RANK",',
'"TIME_LAST_GAME",',
'"WINS",',
'"LOSS",',
'"STREAK",',
'"DOME",',
'"GRASS",',
'"TEAM",',
'"SACKS",',
'"INTERCEPTIONS",',
'"DIVISION"',
'from "#OWNER#"."FB_TEAMS" ',
'WHERE "DIVISION" = ''AFC-EAST''',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23780651290847137)
,p_name=>'AFC-North'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::P11_TEAM_ID:#TEAM_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_icon_view_columns_per_row=>1
,p_owner=>'CHRISTIAN.GARDNER'
,p_internal_uid=>23780651290847137
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23780773176847139)
,p_db_column_name=>'TEAM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Team Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23781179946847143)
,p_db_column_name=>'PIC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Helmet'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'IMAGE:FB_TEAMS:PIC:TEAM_ID::::::Attachment:Download:'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23781501295847143)
,p_db_column_name=>'FILENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23781997992847144)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23782396176847144)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23782797952847144)
,p_db_column_name=>'QTBACK'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Qtback'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(22223678751162126)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23783100085847144)
,p_db_column_name=>'QB_RANK'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Qb Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23783518884847145)
,p_db_column_name=>'OFFENSE_RANK'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Offense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23783975567847145)
,p_db_column_name=>'DEFENSE_RANK'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Defense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23784368993847145)
,p_db_column_name=>'RUSHING_RANK'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Rushing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23784783024847145)
,p_db_column_name=>'PASSING_RANK'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Passing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23785178739847146)
,p_db_column_name=>'TIME_LAST_GAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Time Last Game'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23785597860847147)
,p_db_column_name=>'WINS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Wins'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23785923121847147)
,p_db_column_name=>'LOSS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Loss'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23786320927847147)
,p_db_column_name=>'STREAK'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Streak'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23786754163847148)
,p_db_column_name=>'DOME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Dome'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23787138427847148)
,p_db_column_name=>'GRASS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Grass'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23787560061847148)
,p_db_column_name=>'TEAM'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Team'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23787909096847148)
,p_db_column_name=>'SACKS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Sacks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23788325557847149)
,p_db_column_name=>'INTERCEPTIONS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Interceptions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23788791391847149)
,p_db_column_name=>'DIVISION'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23789175987847152)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'237892'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TEAM:PIC:QTBACK:QB_RANK:OFFENSE_RANK:DEFENSE_RANK:RUSHING_RANK:PASSING_RANK:TIME_LAST_GAME:WINS:LOSS:STREAK:DOME:GRASS:SACKS:INTERCEPTIONS:DIVISION:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23790093235847157)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23789656190847155)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23780236258847133)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'AFC-North'
,p_page_mode=>'NORMAL'
,p_step_title=>'AFC-North'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27237338305597764)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160915192047'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21813254822892604)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22176553051929962)
,p_plug_name=>'AFC-North'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27243444832597778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "TEAM_ID", ',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE",',
'"QTBACK",',
'"QB_RANK",',
'"OFFENSE_RANK",',
'"DEFENSE_RANK",',
'"RUSHING_RANK",',
'"PASSING_RANK",',
'"TIME_LAST_GAME",',
'"WINS",',
'"LOSS",',
'"STREAK",',
'"DOME",',
'"GRASS",',
'"TEAM",',
'"SACKS",',
'"INTERCEPTIONS"',
'from "#OWNER#"."FB_TEAMS" ',
'WHERE "DIVISION" = ''AFC-NORTH''',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22176993861929962)
,p_name=>'AFC-North'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_TEAM_ID:#TEAM_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_icon_view_columns_per_row=>1
,p_owner=>'CHRISTIAN.GARDNER'
,p_internal_uid=>22176993861929962
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22177029758929966)
,p_db_column_name=>'TEAM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Team Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22177457890929972)
,p_db_column_name=>'PIC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Helmet'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'IMAGE:FB_TEAMS:PIC:TEAM_ID::::::Attachment:Download:'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22177857153929972)
,p_db_column_name=>'FILENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22178209750929973)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22178618119929973)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22179014412929974)
,p_db_column_name=>'QTBACK'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Qtback'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(22223678751162126)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22179481165929974)
,p_db_column_name=>'QB_RANK'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Qb Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22179868632929975)
,p_db_column_name=>'OFFENSE_RANK'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Offense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22180285057929975)
,p_db_column_name=>'DEFENSE_RANK'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Defense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22180664101929975)
,p_db_column_name=>'RUSHING_RANK'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Rushing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22181079170929976)
,p_db_column_name=>'PASSING_RANK'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Passing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22181413481929976)
,p_db_column_name=>'TIME_LAST_GAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Time Last Game'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22181858788929977)
,p_db_column_name=>'WINS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Wins'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22182253561929977)
,p_db_column_name=>'LOSS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Loss'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22182680997929977)
,p_db_column_name=>'STREAK'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Streak'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22183041958929978)
,p_db_column_name=>'DOME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Dome'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22183442705929978)
,p_db_column_name=>'GRASS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Grass'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22347632441601447)
,p_db_column_name=>'TEAM'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Team'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22362808668869825)
,p_db_column_name=>'SACKS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Sacks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22364957997968164)
,p_db_column_name=>'INTERCEPTIONS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Interceptions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22185080795059083)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221851'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TEAM:PIC:QTBACK:QB_RANK:OFFENSE_RANK:DEFENSE_RANK:RUSHING_RANK:PASSING_RANK:TIME_LAST_GAME:WINS:LOSS:STREAK:DOME:GRASS:SACKS:INTERCEPTIONS:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22183861155929978)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22176553051929962)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'NFC'
,p_page_mode=>'NORMAL'
,p_step_title=>'NFC'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160910170359'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21814273447903066)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'Edit AFC North Teams'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit AFC North Teams'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(27237932105597765)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20161001102308'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22165324749929852)
,p_plug_name=>'Edit AFC North Teams'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22355452981751162)
,p_plug_name=>'Team'
,p_parent_plug_id=>wwv_flow_api.id(22165324749929852)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22356623684768488)
,p_plug_name=>'stats'
,p_parent_plug_id=>wwv_flow_api.id(22165324749929852)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22358141270783957)
,p_plug_name=>'Record'
,p_parent_plug_id=>wwv_flow_api.id(22165324749929852)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22359361247800459)
,p_plug_name=>'Home Field'
,p_parent_plug_id=>wwv_flow_api.id(22165324749929852)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22355136117737850)
,p_plug_name=>'border'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22360859649822464)
,p_plug_name=>'blank_Reg'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22166023926929853)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22165324749929852)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22165974299929853)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22165324749929852)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P6_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22165830027929853)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22165324749929852)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253346889597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P6_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22165763616929853)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22165324749929852)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P6_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22167973144929865)
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22168364707929869)
,p_name=>'P6_TEAM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22355452981751162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team Id'
,p_source=>'TEAM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22168783244929914)
,p_name=>'P6_PIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22355452981751162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pic'
,p_source=>'PIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'LAST_UPDATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22169047167929916)
,p_name=>'P6_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22165324749929852)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22169478166929917)
,p_name=>'P6_MIMETYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22165324749929852)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22169883682929917)
,p_name=>'P6_LAST_UPDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22165324749929852)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update'
,p_source=>'LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22170206443929917)
,p_name=>'P6_QTBACK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22356623684768488)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qtback'
,p_source=>'QTBACK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QBACK'
,p_lov=>'.'||wwv_flow_api.id(22223678751162126)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27253045909597795)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22170615768929918)
,p_name=>'P6_QB_RANK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(22356623684768488)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qb Rank'
,p_source=>'QB_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27253045909597795)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22171089461929918)
,p_name=>'P6_OFFENSE_RANK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(22356623684768488)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Offense Rank'
,p_source=>'OFFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27253045909597795)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22171416780929918)
,p_name=>'P6_DEFENSE_RANK'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(22356623684768488)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defense Rank'
,p_source=>'DEFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22171824906929918)
,p_name=>'P6_RUSHING_RANK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(22356623684768488)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rushing Rank'
,p_source=>'RUSHING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22172265572929919)
,p_name=>'P6_PASSING_RANK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(22356623684768488)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Passing Rank'
,p_source=>'PASSING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22172687391929919)
,p_name=>'P6_TIME_LAST_GAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(22358141270783957)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Days Since Last Game'
,p_source=>'TIME_LAST_GAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LAST_TIME_PLAYED'
,p_lov=>'.'||wwv_flow_api.id(22349995520646716)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22173099132929919)
,p_name=>'P6_WINS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(22358141270783957)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wins'
,p_source=>'WINS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22173466467929919)
,p_name=>'P6_LOSS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(22358141270783957)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loss'
,p_source=>'LOSS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22173821613929920)
,p_name=>'P6_STREAK'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(22358141270783957)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Streak'
,p_source=>'STREAK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22174232319929920)
,p_name=>'P6_DOME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(22359361247800459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dome'
,p_source=>'DOME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22174641969929920)
,p_name=>'P6_GRASS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(22359361247800459)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grass'
,p_source=>'GRASS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22349023978605706)
,p_name=>'P6_TEAM'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(22355452981751162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team'
,p_source=>'TEAM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27253045909597795)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22361619913840305)
,p_name=>'P6_HOME_FIELD'
,p_item_sequence=>155
,p_item_plug_id=>wwv_flow_api.id(22359361247800459)
,p_item_default=>'Home Field'
,p_prompt=>'Home Field'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22363903628875851)
,p_name=>'P6_SACKS'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(22356623684768488)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sacks'
,p_source=>'SACKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22366016538975740)
,p_name=>'P6_INTERCEPTIONS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(22356623684768488)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interceptions'
,p_source=>'INTERCEPTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22175411674929923)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P6_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22175849377929926)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P6_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22176254355929926)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22165974299929853)
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'AFC-South'
,p_page_mode=>'NORMAL'
,p_step_title=>'AFC-South'
,p_step_sub_title=>'AFC-South'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27237338305597764)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160915195122'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22626029393970998)
,p_plug_name=>'AFC-South'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27243444832597778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "TEAM_ID", ',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE",',
'"QTBACK",',
'"QB_RANK",',
'"OFFENSE_RANK",',
'"DEFENSE_RANK",',
'"RUSHING_RANK",',
'"PASSING_RANK",',
'"TIME_LAST_GAME",',
'"WINS",',
'"LOSS",',
'"STREAK",',
'"DOME",',
'"GRASS",',
'"TEAM",',
'"SACKS",',
'"INTERCEPTIONS",',
'"DIVISION"',
'from "#OWNER#"."FB_TEAMS" ',
'WHERE "DIVISION" = ''AFC-SOUTH''',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22626367106971001)
,p_name=>'AFC-North'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_TEAM_ID:#TEAM_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_icon_view_columns_per_row=>1
,p_owner=>'CHRISTIAN.GARDNER'
,p_internal_uid=>22626367106971001
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22626438433971002)
,p_db_column_name=>'TEAM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Team Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22626809187971005)
,p_db_column_name=>'PIC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Helmet'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'IMAGE:FB_TEAMS:PIC:TEAM_ID::::::Attachment:Download:'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22627260811971006)
,p_db_column_name=>'FILENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22627625501971006)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22628056667971009)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22628493812971009)
,p_db_column_name=>'QTBACK'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Qtback'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(22223678751162126)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22628866998971011)
,p_db_column_name=>'QB_RANK'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Qb Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22629247411971011)
,p_db_column_name=>'OFFENSE_RANK'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Offense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22629601020971011)
,p_db_column_name=>'DEFENSE_RANK'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Defense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22630040882971012)
,p_db_column_name=>'RUSHING_RANK'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Rushing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22630402819971012)
,p_db_column_name=>'PASSING_RANK'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Passing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22630803849971012)
,p_db_column_name=>'TIME_LAST_GAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Time Last Game'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22631277283971012)
,p_db_column_name=>'WINS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Wins'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22631664664971013)
,p_db_column_name=>'LOSS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Loss'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22632092927971013)
,p_db_column_name=>'STREAK'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Streak'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22632478544971013)
,p_db_column_name=>'DOME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Dome'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22632800531971014)
,p_db_column_name=>'GRASS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Grass'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22633231379971014)
,p_db_column_name=>'TEAM'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Team'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22633633183971014)
,p_db_column_name=>'SACKS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Sacks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22634052227971014)
,p_db_column_name=>'INTERCEPTIONS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Interceptions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22659133012030226)
,p_db_column_name=>'DIVISION'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22634439481971015)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'226345'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TEAM:PIC:QTBACK:QB_RANK:OFFENSE_RANK:DEFENSE_RANK:RUSHING_RANK:PASSING_RANK:TIME_LAST_GAME:WINS:LOSS:STREAK:DOME:GRASS:SACKS:INTERCEPTIONS:DIVISION:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22635304960971019)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22634959877971017)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22626029393970998)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'Edit AFC South Teams'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit AFC South Teams'
,p_step_sub_title=>'Edit AFC South Teams'
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
,p_last_upd_yyyymmddhh24miss=>'20160915193741'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22636727127982485)
,p_plug_name=>'Edit AFC North Teams'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22639974036982492)
,p_plug_name=>'Team'
,p_parent_plug_id=>wwv_flow_api.id(22636727127982485)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22641500170982495)
,p_plug_name=>'stats'
,p_parent_plug_id=>wwv_flow_api.id(22636727127982485)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22645126185982498)
,p_plug_name=>'Record'
,p_parent_plug_id=>wwv_flow_api.id(22636727127982485)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22647098811982500)
,p_plug_name=>'Home Field'
,p_parent_plug_id=>wwv_flow_api.id(22636727127982485)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22648665888982501)
,p_plug_name=>'border'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22649037524982502)
,p_plug_name=>'blank_Reg'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22649574923982503)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22637539159982488)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22636727127982485)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22637108848982486)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22636727127982485)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P10_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22637970741982489)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22636727127982485)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P10_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22638352975982489)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22636727127982485)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P10_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22651477410982512)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22638782792982489)
,p_name=>'P10_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22636727127982485)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22639135569982491)
,p_name=>'P10_MIMETYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22636727127982485)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22639503663982492)
,p_name=>'P10_LAST_UPDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22636727127982485)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update'
,p_source=>'LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22640353567982493)
,p_name=>'P10_TEAM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22639974036982492)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team Id'
,p_source=>'TEAM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22640798514982493)
,p_name=>'P10_TEAM'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(22639974036982492)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team'
,p_source=>'TEAM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22641170639982494)
,p_name=>'P10_PIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22639974036982492)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pic'
,p_source=>'PIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'LAST_UPDATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22641929499982495)
,p_name=>'P10_QTBACK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22641500170982495)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qtback'
,p_source=>'QTBACK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QBACK'
,p_lov=>'.'||wwv_flow_api.id(22223678751162126)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22642336200982495)
,p_name=>'P10_QB_RANK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(22641500170982495)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qb Rank'
,p_source=>'QB_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22642721940982496)
,p_name=>'P10_OFFENSE_RANK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(22641500170982495)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Offense Rank'
,p_source=>'OFFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22643106767982496)
,p_name=>'P10_DEFENSE_RANK'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(22641500170982495)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defense Rank'
,p_source=>'DEFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22643528348982497)
,p_name=>'P10_RUSHING_RANK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(22641500170982495)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rushing Rank'
,p_source=>'RUSHING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22643921631982497)
,p_name=>'P10_SACKS'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(22641500170982495)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sacks'
,p_source=>'SACKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22644300540982497)
,p_name=>'P10_PASSING_RANK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(22641500170982495)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Passing Rank'
,p_source=>'PASSING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22644749424982498)
,p_name=>'P10_INTERCEPTIONS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(22641500170982495)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interceptions'
,p_source=>'INTERCEPTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22645514218982498)
,p_name=>'P10_TIME_LAST_GAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(22645126185982498)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Days Since Last Game'
,p_source=>'TIME_LAST_GAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LAST_TIME_PLAYED'
,p_lov=>'.'||wwv_flow_api.id(22349995520646716)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22645945869982499)
,p_name=>'P10_WINS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(22645126185982498)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wins'
,p_source=>'WINS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22646399684982499)
,p_name=>'P10_LOSS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(22645126185982498)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loss'
,p_source=>'LOSS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22646732034982500)
,p_name=>'P10_STREAK'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(22645126185982498)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Streak'
,p_source=>'STREAK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22647448929982500)
,p_name=>'P10_HOME_FIELD'
,p_item_sequence=>155
,p_item_plug_id=>wwv_flow_api.id(22647098811982500)
,p_item_default=>'Home Field'
,p_prompt=>'Home Field'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22647879396982501)
,p_name=>'P10_DOME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(22647098811982500)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dome'
,p_source=>'DOME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22648250869982501)
,p_name=>'P10_GRASS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(22647098811982500)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grass'
,p_source=>'GRASS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22658529564020080)
,p_name=>'P10_DIVISION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(22647098811982500)
,p_use_cache_before_default=>'NO'
,p_item_default=>'AFC-SOUTH'
,p_prompt=>'Division'
,p_source=>'DIVISION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22650154211982503)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P10_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22650559998982511)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P10_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22650959461982512)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22637108848982486)
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'Edit AFC East Teams'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit AFC East Teams'
,p_step_sub_title=>'Edit AFC East Teams'
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
,p_last_upd_yyyymmddhh24miss=>'20160918083642'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23791929844860761)
,p_plug_name=>'Edit AFC North Teams'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23795144562860778)
,p_plug_name=>'Team'
,p_parent_plug_id=>wwv_flow_api.id(23791929844860761)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23796749963860783)
,p_plug_name=>'stats'
,p_parent_plug_id=>wwv_flow_api.id(23791929844860761)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23800348067860787)
,p_plug_name=>'Record'
,p_parent_plug_id=>wwv_flow_api.id(23791929844860761)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23802361762860789)
,p_plug_name=>'Home Field'
,p_parent_plug_id=>wwv_flow_api.id(23791929844860761)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23804326673860790)
,p_plug_name=>'border'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23804727888860790)
,p_plug_name=>'blank_Reg'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23805180491860791)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23792383966860768)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23791929844860761)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23793589760860769)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23791929844860761)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P11_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23792778213860769)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23791929844860761)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P11_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23793153044860769)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23791929844860761)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P11_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(23807163038860797)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23793994783860770)
,p_name=>'P11_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23791929844860761)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23794306304860777)
,p_name=>'P11_MIMETYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23791929844860761)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23794731501860778)
,p_name=>'P11_LAST_UPDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23791929844860761)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update'
,p_source=>'LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23795500651860781)
,p_name=>'P11_TEAM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23795144562860778)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team Id'
,p_source=>'TEAM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23795948013860782)
,p_name=>'P11_TEAM'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(23795144562860778)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team'
,p_source=>'TEAM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23796332766860783)
,p_name=>'P11_PIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23795144562860778)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pic'
,p_source=>'PIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'LAST_UPDATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23797110124860784)
,p_name=>'P11_QTBACK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(23796749963860783)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qtback'
,p_source=>'QTBACK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QBACK'
,p_lov=>'.'||wwv_flow_api.id(22223678751162126)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23797595339860785)
,p_name=>'P11_QB_RANK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(23796749963860783)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qb Rank'
,p_source=>'QB_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23797978626860785)
,p_name=>'P11_OFFENSE_RANK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(23796749963860783)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Offense Rank'
,p_source=>'OFFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23798383182860785)
,p_name=>'P11_DEFENSE_RANK'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(23796749963860783)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defense Rank'
,p_source=>'DEFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23798749705860785)
,p_name=>'P11_RUSHING_RANK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(23796749963860783)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rushing Rank'
,p_source=>'RUSHING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23799126712860786)
,p_name=>'P11_SACKS'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(23796749963860783)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sacks'
,p_source=>'SACKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23799509346860786)
,p_name=>'P11_PASSING_RANK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(23796749963860783)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Passing Rank'
,p_source=>'PASSING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23799938960860786)
,p_name=>'P11_INTERCEPTIONS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(23796749963860783)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interceptions'
,p_source=>'INTERCEPTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23800713552860787)
,p_name=>'P11_TIME_LAST_GAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(23800348067860787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Days Since Last Game'
,p_source=>'TIME_LAST_GAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LAST_TIME_PLAYED'
,p_lov=>'.'||wwv_flow_api.id(22349995520646716)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23801183314860788)
,p_name=>'P11_WINS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(23800348067860787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wins'
,p_source=>'WINS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23801586789860788)
,p_name=>'P11_LOSS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(23800348067860787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loss'
,p_source=>'LOSS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23801958278860788)
,p_name=>'P11_STREAK'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(23800348067860787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Streak'
,p_source=>'STREAK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23802723562860789)
,p_name=>'P11_HOME_FIELD'
,p_item_sequence=>155
,p_item_plug_id=>wwv_flow_api.id(23802361762860789)
,p_item_default=>'Home Field'
,p_prompt=>'Home Field'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23803184872860789)
,p_name=>'P11_DOME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(23802361762860789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dome'
,p_source=>'DOME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23803540380860789)
,p_name=>'P11_GRASS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(23802361762860789)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grass'
,p_source=>'GRASS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23803953764860790)
,p_name=>'P11_DIVISION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(23802361762860789)
,p_use_cache_before_default=>'NO'
,p_item_default=>'AFC-EAST'
,p_prompt=>'Division'
,p_source=>'DIVISION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23805870773860792)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P11_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23806297803860796)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P11_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23806681863860797)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23793589760860769)
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'AFC-West'
,p_page_mode=>'NORMAL'
,p_step_title=>'AFC-West'
,p_step_sub_title=>'AFC-West'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27237338305597764)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160918084050'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23821012351957098)
,p_plug_name=>'AFC-West'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27243444832597778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "TEAM_ID", ',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE",',
'"QTBACK",',
'"QB_RANK",',
'"OFFENSE_RANK",',
'"DEFENSE_RANK",',
'"RUSHING_RANK",',
'"PASSING_RANK",',
'"TIME_LAST_GAME",',
'"WINS",',
'"LOSS",',
'"STREAK",',
'"DOME",',
'"GRASS",',
'"TEAM",',
'"SACKS",',
'"INTERCEPTIONS",',
'"DIVISION"',
'from "#OWNER#"."FB_TEAMS" ',
'WHERE "DIVISION" = ''AFC-WEST''',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23821412967957099)
,p_name=>'AFC-North'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_TEAM_ID:#TEAM_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_icon_view_columns_per_row=>1
,p_owner=>'CHRISTIAN.GARDNER'
,p_internal_uid=>23821412967957099
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23821597646957100)
,p_db_column_name=>'TEAM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Team Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23821850105957101)
,p_db_column_name=>'PIC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Helmet'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'IMAGE:FB_TEAMS:PIC:TEAM_ID::::::Attachment:Download:'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23822215672957101)
,p_db_column_name=>'FILENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23822649857957101)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23823021590957102)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23823459472957102)
,p_db_column_name=>'QTBACK'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Qtback'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(22223678751162126)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23823841768957102)
,p_db_column_name=>'QB_RANK'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Qb Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23824276152957103)
,p_db_column_name=>'OFFENSE_RANK'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Offense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23824614267957103)
,p_db_column_name=>'DEFENSE_RANK'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Defense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23825063644957103)
,p_db_column_name=>'RUSHING_RANK'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Rushing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23825409788957104)
,p_db_column_name=>'PASSING_RANK'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Passing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23825847904957104)
,p_db_column_name=>'TIME_LAST_GAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Time Last Game'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23826281855957104)
,p_db_column_name=>'WINS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Wins'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23826662627957105)
,p_db_column_name=>'LOSS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Loss'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23827028466957105)
,p_db_column_name=>'STREAK'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Streak'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23827439337957105)
,p_db_column_name=>'DOME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Dome'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23827806176957105)
,p_db_column_name=>'GRASS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Grass'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23828267003957106)
,p_db_column_name=>'TEAM'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Team'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23828627009957106)
,p_db_column_name=>'SACKS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Sacks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23829091742957106)
,p_db_column_name=>'INTERCEPTIONS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Interceptions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23829462765957107)
,p_db_column_name=>'DIVISION'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23829845774957108)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'238299'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TEAM:PIC:QTBACK:QB_RANK:OFFENSE_RANK:DEFENSE_RANK:RUSHING_RANK:PASSING_RANK:TIME_LAST_GAME:WINS:LOSS:STREAK:DOME:GRASS:SACKS:INTERCEPTIONS:DIVISION:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23830753361957112)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23830311692957109)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23821012351957098)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'Edit AFC West Teams'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit AFC West Teams'
,p_step_sub_title=>'Edit AFC West Teams'
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
,p_last_upd_yyyymmddhh24miss=>'20160918083729'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23832118422964602)
,p_plug_name=>'Edit AFC North Teams'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23835343121964606)
,p_plug_name=>'Team'
,p_parent_plug_id=>wwv_flow_api.id(23832118422964602)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23836909273964608)
,p_plug_name=>'stats'
,p_parent_plug_id=>wwv_flow_api.id(23832118422964602)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23840501851964614)
,p_plug_name=>'Record'
,p_parent_plug_id=>wwv_flow_api.id(23832118422964602)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23842526854964617)
,p_plug_name=>'Home Field'
,p_parent_plug_id=>wwv_flow_api.id(23832118422964602)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23844507388964619)
,p_plug_name=>'border'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23844955977964619)
,p_plug_name=>'blank_Reg'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23845356219964620)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23832538843964603)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23832118422964602)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23833767399964603)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23832118422964602)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P13_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23832937581964603)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23832118422964602)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P13_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23833373840964603)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23832118422964602)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P13_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(23847311131964624)
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23834108926964604)
,p_name=>'P13_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23832118422964602)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23834547711964605)
,p_name=>'P13_MIMETYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23832118422964602)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23834984855964606)
,p_name=>'P13_LAST_UPDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23832118422964602)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update'
,p_source=>'LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23835745793964607)
,p_name=>'P13_TEAM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23835343121964606)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team Id'
,p_source=>'TEAM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23836125216964607)
,p_name=>'P13_TEAM'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(23835343121964606)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team'
,p_source=>'TEAM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23836597664964607)
,p_name=>'P13_PIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23835343121964606)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pic'
,p_source=>'PIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'LAST_UPDATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23837360556964608)
,p_name=>'P13_QTBACK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(23836909273964608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qtback'
,p_source=>'QTBACK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QBACK'
,p_lov=>'.'||wwv_flow_api.id(22223678751162126)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23837755545964608)
,p_name=>'P13_QB_RANK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(23836909273964608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qb Rank'
,p_source=>'QB_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23838171257964609)
,p_name=>'P13_OFFENSE_RANK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(23836909273964608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Offense Rank'
,p_source=>'OFFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23838534554964609)
,p_name=>'P13_DEFENSE_RANK'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(23836909273964608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defense Rank'
,p_source=>'DEFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23838990122964609)
,p_name=>'P13_RUSHING_RANK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(23836909273964608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rushing Rank'
,p_source=>'RUSHING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23839385196964613)
,p_name=>'P13_SACKS'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(23836909273964608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sacks'
,p_source=>'SACKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23839742454964614)
,p_name=>'P13_PASSING_RANK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(23836909273964608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Passing Rank'
,p_source=>'PASSING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23840192230964614)
,p_name=>'P13_INTERCEPTIONS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(23836909273964608)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interceptions'
,p_source=>'INTERCEPTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23840900225964615)
,p_name=>'P13_TIME_LAST_GAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(23840501851964614)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Days Since Last Game'
,p_source=>'TIME_LAST_GAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LAST_TIME_PLAYED'
,p_lov=>'.'||wwv_flow_api.id(22349995520646716)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23841318201964616)
,p_name=>'P13_WINS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(23840501851964614)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wins'
,p_source=>'WINS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23841705112964616)
,p_name=>'P13_LOSS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(23840501851964614)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loss'
,p_source=>'LOSS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23842125417964617)
,p_name=>'P13_STREAK'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(23840501851964614)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Streak'
,p_source=>'STREAK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23842942222964617)
,p_name=>'P13_HOME_FIELD'
,p_item_sequence=>155
,p_item_plug_id=>wwv_flow_api.id(23842526854964617)
,p_item_default=>'Home Field'
,p_prompt=>'Home Field'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23843350433964618)
,p_name=>'P13_DOME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(23842526854964617)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dome'
,p_source=>'DOME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23843780239964618)
,p_name=>'P13_GRASS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(23842526854964617)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grass'
,p_source=>'GRASS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23844120714964618)
,p_name=>'P13_DIVISION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(23842526854964617)
,p_use_cache_before_default=>'NO'
,p_item_default=>'AFC-WEST'
,p_prompt=>'Division'
,p_source=>'DIVISION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23846001834964622)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P13_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23846483296964623)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P13_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23846826345964623)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23833767399964603)
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'NFC-North'
,p_page_mode=>'NORMAL'
,p_step_title=>'NFC-North'
,p_step_sub_title=>'NFC-North'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27237338305597764)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160918091859'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23872397728173304)
,p_plug_name=>'NFC-North'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27243444832597778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "TEAM_ID", ',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE",',
'"QTBACK",',
'"QB_RANK",',
'"OFFENSE_RANK",',
'"DEFENSE_RANK",',
'"RUSHING_RANK",',
'"PASSING_RANK",',
'"TIME_LAST_GAME",',
'"WINS",',
'"LOSS",',
'"STREAK",',
'"DOME",',
'"GRASS",',
'"TEAM",',
'"SACKS",',
'"INTERCEPTIONS",',
'"DIVISION"',
'from "#OWNER#"."FB_TEAMS" ',
'WHERE "DIVISION" = ''NFC-NORTH''',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23872783551173305)
,p_name=>'AFC-North'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::P15_TEAM_ID:#TEAM_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_icon_view_columns_per_row=>1
,p_owner=>'CHRISTIAN.GARDNER'
,p_internal_uid=>23872783551173305
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23872838922173306)
,p_db_column_name=>'TEAM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Team Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23873218069173308)
,p_db_column_name=>'PIC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Helmet'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'IMAGE:FB_TEAMS:PIC:TEAM_ID::::::Attachment:Download:'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23873650171173308)
,p_db_column_name=>'FILENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23874078688173308)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23874479925173309)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23874895364173309)
,p_db_column_name=>'QTBACK'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Qtback'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(22223678751162126)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23875269488173309)
,p_db_column_name=>'QB_RANK'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Qb Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23875671656173310)
,p_db_column_name=>'OFFENSE_RANK'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Offense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23876020602173310)
,p_db_column_name=>'DEFENSE_RANK'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Defense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23876459826173310)
,p_db_column_name=>'RUSHING_RANK'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Rushing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23876874053173310)
,p_db_column_name=>'PASSING_RANK'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Passing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23877221379173311)
,p_db_column_name=>'TIME_LAST_GAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Time Last Game'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23877610976173311)
,p_db_column_name=>'WINS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Wins'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23878080426173311)
,p_db_column_name=>'LOSS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Loss'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23878431443173311)
,p_db_column_name=>'STREAK'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Streak'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23878840970173312)
,p_db_column_name=>'DOME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Dome'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23879278365173312)
,p_db_column_name=>'GRASS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Grass'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23879665757173313)
,p_db_column_name=>'TEAM'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Team'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23880041388173313)
,p_db_column_name=>'SACKS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Sacks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23880461412173313)
,p_db_column_name=>'INTERCEPTIONS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Interceptions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23880839870173314)
,p_db_column_name=>'DIVISION'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23881250918173314)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'238813'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TEAM:PIC:QTBACK:QB_RANK:OFFENSE_RANK:DEFENSE_RANK:RUSHING_RANK:PASSING_RANK:TIME_LAST_GAME:WINS:LOSS:STREAK:DOME:GRASS:SACKS:INTERCEPTIONS:DIVISION:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23883389528204587)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23881723176173315)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23872397728173304)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'Edit NFC North Teams'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit NFC North Teams'
,p_step_sub_title=>'Edit NFC West Teams'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160918091803'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23884792055217671)
,p_plug_name=>'Edit AFC North Teams'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23887917460217678)
,p_plug_name=>'Team'
,p_parent_plug_id=>wwv_flow_api.id(23884792055217671)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23889570901217681)
,p_plug_name=>'stats'
,p_parent_plug_id=>wwv_flow_api.id(23884792055217671)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23893121514217686)
,p_plug_name=>'Record'
,p_parent_plug_id=>wwv_flow_api.id(23884792055217671)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23895179896217688)
,p_plug_name=>'Home Field'
,p_parent_plug_id=>wwv_flow_api.id(23884792055217671)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23897189593217689)
,p_plug_name=>'border'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23897538487217690)
,p_plug_name=>'blank_Reg'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23897965881217690)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23885166105217673)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23884792055217671)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23886397956217676)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23884792055217671)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P15_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23885595871217673)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23884792055217671)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P15_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23885953345217673)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23884792055217671)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P15_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(23899923890217693)
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23886761467217676)
,p_name=>'P15_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23884792055217671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23887137234217677)
,p_name=>'P15_MIMETYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23884792055217671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23887573707217678)
,p_name=>'P15_LAST_UPDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23884792055217671)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update'
,p_source=>'LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23888353222217679)
,p_name=>'P15_TEAM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23887917460217678)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team Id'
,p_source=>'TEAM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23888712697217680)
,p_name=>'P15_TEAM'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(23887917460217678)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team'
,p_source=>'TEAM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23889195441217680)
,p_name=>'P15_PIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23887917460217678)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pic'
,p_source=>'PIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'LAST_UPDATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23889908002217682)
,p_name=>'P15_QTBACK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(23889570901217681)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qtback'
,p_source=>'QTBACK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QBACK'
,p_lov=>'.'||wwv_flow_api.id(22223678751162126)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23890316072217684)
,p_name=>'P15_QB_RANK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(23889570901217681)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qb Rank'
,p_source=>'QB_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23890721354217684)
,p_name=>'P15_OFFENSE_RANK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(23889570901217681)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Offense Rank'
,p_source=>'OFFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23891142749217684)
,p_name=>'P15_DEFENSE_RANK'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(23889570901217681)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defense Rank'
,p_source=>'DEFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23891573810217685)
,p_name=>'P15_RUSHING_RANK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(23889570901217681)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rushing Rank'
,p_source=>'RUSHING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23891914205217685)
,p_name=>'P15_SACKS'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(23889570901217681)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sacks'
,p_source=>'SACKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23892366453217685)
,p_name=>'P15_PASSING_RANK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(23889570901217681)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Passing Rank'
,p_source=>'PASSING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23892785507217685)
,p_name=>'P15_INTERCEPTIONS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(23889570901217681)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interceptions'
,p_source=>'INTERCEPTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23893583121217686)
,p_name=>'P15_TIME_LAST_GAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(23893121514217686)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Days Since Last Game'
,p_source=>'TIME_LAST_GAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LAST_TIME_PLAYED'
,p_lov=>'.'||wwv_flow_api.id(22349995520646716)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23893988626217686)
,p_name=>'P15_WINS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(23893121514217686)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wins'
,p_source=>'WINS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23894304236217687)
,p_name=>'P15_LOSS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(23893121514217686)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loss'
,p_source=>'LOSS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23894704329217687)
,p_name=>'P15_STREAK'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(23893121514217686)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Streak'
,p_source=>'STREAK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23895518708217688)
,p_name=>'P15_HOME_FIELD'
,p_item_sequence=>155
,p_item_plug_id=>wwv_flow_api.id(23895179896217688)
,p_item_default=>'Home Field'
,p_prompt=>'Home Field'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23895943796217688)
,p_name=>'P15_DOME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(23895179896217688)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dome'
,p_source=>'DOME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23896381173217689)
,p_name=>'P15_GRASS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(23895179896217688)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grass'
,p_source=>'GRASS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23896731651217689)
,p_name=>'P15_DIVISION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(23895179896217688)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NFC-NORTH'
,p_prompt=>'Division'
,p_source=>'DIVISION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23899060113217692)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P15_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23898614606217692)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P15_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23899486352217692)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23886397956217676)
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'NFC-South'
,p_page_mode=>'NORMAL'
,p_step_title=>'NFC-South'
,p_step_sub_title=>'NFC-South'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27237338305597764)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160922200130'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23908451636238796)
,p_plug_name=>'NFC-South'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27243444832597778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "TEAM_ID", ',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE",',
'"QTBACK",',
'"QB_RANK",',
'"OFFENSE_RANK",',
'"DEFENSE_RANK",',
'"RUSHING_RANK",',
'"PASSING_RANK",',
'"TIME_LAST_GAME",',
'"WINS",',
'"LOSS",',
'"STREAK",',
'"DOME",',
'"GRASS",',
'"TEAM",',
'"SACKS",',
'"INTERCEPTIONS",',
'"DIVISION"',
'from "#OWNER#"."FB_TEAMS" ',
'WHERE "DIVISION" = ''NFC-SOUTH''',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23908812071238796)
,p_name=>'AFC-North'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::P17_TEAM_ID:#TEAM_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_icon_view_columns_per_row=>1
,p_owner=>'CHRISTIAN.GARDNER'
,p_internal_uid=>23908812071238796
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23908928339238798)
,p_db_column_name=>'TEAM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Team Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23909332104238798)
,p_db_column_name=>'PIC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Helmet'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'IMAGE:FB_TEAMS:PIC:TEAM_ID::::::Attachment:Download:'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23909787721238799)
,p_db_column_name=>'FILENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23910107417238799)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23910521573238799)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23910965517238799)
,p_db_column_name=>'QTBACK'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Qtback'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(22223678751162126)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23911222569238800)
,p_db_column_name=>'QB_RANK'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Qb Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23911643375238800)
,p_db_column_name=>'OFFENSE_RANK'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Offense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23912075483238801)
,p_db_column_name=>'DEFENSE_RANK'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Defense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23912434726238801)
,p_db_column_name=>'RUSHING_RANK'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Rushing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23912895725238801)
,p_db_column_name=>'PASSING_RANK'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Passing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23913205706238802)
,p_db_column_name=>'TIME_LAST_GAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Time Last Game'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23913672709238802)
,p_db_column_name=>'WINS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Wins'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23914028936238802)
,p_db_column_name=>'LOSS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Loss'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23914415823238802)
,p_db_column_name=>'STREAK'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Streak'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23914870273238803)
,p_db_column_name=>'DOME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Dome'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23915262712238803)
,p_db_column_name=>'GRASS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Grass'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23915615619238803)
,p_db_column_name=>'TEAM'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Team'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23916015315238804)
,p_db_column_name=>'SACKS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Sacks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23916409387238804)
,p_db_column_name=>'INTERCEPTIONS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Interceptions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23916812333238804)
,p_db_column_name=>'DIVISION'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23917243744238804)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'239173'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TEAM:PIC:QTBACK:QB_RANK:OFFENSE_RANK:DEFENSE_RANK:RUSHING_RANK:PASSING_RANK:TIME_LAST_GAME:WINS:LOSS:STREAK:DOME:GRASS:SACKS:INTERCEPTIONS:DIVISION:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23918107644238806)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23917742475238805)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23908451636238796)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'Edit NFC South Teams'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit NFC South Teams'
,p_step_sub_title=>'Edit NFC South Teams'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160918092310'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23920057437253578)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23920469547253578)
,p_plug_name=>'Edit AFC North Teams'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23923694967253581)
,p_plug_name=>'Team'
,p_parent_plug_id=>wwv_flow_api.id(23920469547253578)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23925280619253583)
,p_plug_name=>'stats'
,p_parent_plug_id=>wwv_flow_api.id(23920469547253578)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23928843581253585)
,p_plug_name=>'Record'
,p_parent_plug_id=>wwv_flow_api.id(23920469547253578)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23930896968253587)
,p_plug_name=>'Home Field'
,p_parent_plug_id=>wwv_flow_api.id(23920469547253578)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23932822664253590)
,p_plug_name=>'border'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23933252485253590)
,p_plug_name=>'blank_Reg'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23920847181253579)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23920469547253578)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23922023329253580)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23920469547253578)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P17_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23921244195253579)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23920469547253578)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P17_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23921609351253579)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23920469547253578)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P17_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(23935256801253592)
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23922442278253580)
,p_name=>'P17_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23920469547253578)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23922805732253580)
,p_name=>'P17_MIMETYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23920469547253578)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23923225303253581)
,p_name=>'P17_LAST_UPDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23920469547253578)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update'
,p_source=>'LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23924042390253582)
,p_name=>'P17_TEAM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23923694967253581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team Id'
,p_source=>'TEAM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23924409133253582)
,p_name=>'P17_TEAM'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(23923694967253581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team'
,p_source=>'TEAM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23924898727253582)
,p_name=>'P17_PIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23923694967253581)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pic'
,p_source=>'PIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'LAST_UPDATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23925669665253583)
,p_name=>'P17_QTBACK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(23925280619253583)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qtback'
,p_source=>'QTBACK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QBACK'
,p_lov=>'.'||wwv_flow_api.id(22223678751162126)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23926091641253583)
,p_name=>'P17_QB_RANK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(23925280619253583)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qb Rank'
,p_source=>'QB_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23926433159253583)
,p_name=>'P17_OFFENSE_RANK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(23925280619253583)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Offense Rank'
,p_source=>'OFFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23926851760253584)
,p_name=>'P17_DEFENSE_RANK'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(23925280619253583)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defense Rank'
,p_source=>'DEFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23927289032253584)
,p_name=>'P17_RUSHING_RANK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(23925280619253583)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rushing Rank'
,p_source=>'RUSHING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23927624580253584)
,p_name=>'P17_SACKS'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(23925280619253583)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sacks'
,p_source=>'SACKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23928082612253584)
,p_name=>'P17_PASSING_RANK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(23925280619253583)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Passing Rank'
,p_source=>'PASSING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23928428822253585)
,p_name=>'P17_INTERCEPTIONS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(23925280619253583)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interceptions'
,p_source=>'INTERCEPTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23929277816253586)
,p_name=>'P17_TIME_LAST_GAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(23928843581253585)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Days Since Last Game'
,p_source=>'TIME_LAST_GAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LAST_TIME_PLAYED'
,p_lov=>'.'||wwv_flow_api.id(22349995520646716)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23929618314253586)
,p_name=>'P17_WINS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(23928843581253585)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wins'
,p_source=>'WINS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23930032762253586)
,p_name=>'P17_LOSS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(23928843581253585)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loss'
,p_source=>'LOSS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23930492683253586)
,p_name=>'P17_STREAK'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(23928843581253585)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Streak'
,p_source=>'STREAK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23931293866253587)
,p_name=>'P17_HOME_FIELD'
,p_item_sequence=>155
,p_item_plug_id=>wwv_flow_api.id(23930896968253587)
,p_item_default=>'Home Field'
,p_prompt=>'Home Field'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23931688787253588)
,p_name=>'P17_DOME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(23930896968253587)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dome'
,p_source=>'DOME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23932044539253588)
,p_name=>'P17_GRASS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(23930896968253587)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grass'
,p_source=>'GRASS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23932455155253589)
,p_name=>'P17_DIVISION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(23930896968253587)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NFC-SOUTH'
,p_prompt=>'Division'
,p_source=>'DIVISION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23934350890253592)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P17_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23933927124253591)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P17_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23934765152253592)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23922023329253580)
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'NFC-East'
,p_page_mode=>'NORMAL'
,p_step_title=>'NFC-East'
,p_step_sub_title=>'NFC-East'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27237338305597764)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160918092941'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23937192834269282)
,p_plug_name=>'NFC-East'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27243444832597778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "TEAM_ID", ',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE",',
'"QTBACK",',
'"QB_RANK",',
'"OFFENSE_RANK",',
'"DEFENSE_RANK",',
'"RUSHING_RANK",',
'"PASSING_RANK",',
'"TIME_LAST_GAME",',
'"WINS",',
'"LOSS",',
'"STREAK",',
'"DOME",',
'"GRASS",',
'"TEAM",',
'"SACKS",',
'"INTERCEPTIONS",',
'"DIVISION"',
'from "#OWNER#"."FB_TEAMS" ',
'WHERE "DIVISION" = ''NFC-EAST''',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23937579953269282)
,p_name=>'AFC-North'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::P20_TEAM_ID:#TEAM_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_icon_view_columns_per_row=>1
,p_owner=>'CHRISTIAN.GARDNER'
,p_internal_uid=>23937579953269282
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23937605140269282)
,p_db_column_name=>'TEAM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Team Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23938047835269283)
,p_db_column_name=>'PIC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Helmet'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'IMAGE:FB_TEAMS:PIC:TEAM_ID::::::Attachment:Download:'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23938408434269283)
,p_db_column_name=>'FILENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23938826636269284)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23939270050269284)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23939601399269284)
,p_db_column_name=>'QTBACK'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Qtback'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(22223678751162126)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23940053909269284)
,p_db_column_name=>'QB_RANK'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Qb Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23940486837269285)
,p_db_column_name=>'OFFENSE_RANK'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Offense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23940863215269285)
,p_db_column_name=>'DEFENSE_RANK'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Defense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23941255923269286)
,p_db_column_name=>'RUSHING_RANK'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Rushing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23941611301269286)
,p_db_column_name=>'PASSING_RANK'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Passing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23942027456269288)
,p_db_column_name=>'TIME_LAST_GAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Time Last Game'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23942471486269289)
,p_db_column_name=>'WINS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Wins'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23942881564269289)
,p_db_column_name=>'LOSS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Loss'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23943278554269289)
,p_db_column_name=>'STREAK'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Streak'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23943690770269289)
,p_db_column_name=>'DOME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Dome'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23944028307269290)
,p_db_column_name=>'GRASS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Grass'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23944473283269290)
,p_db_column_name=>'TEAM'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Team'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23944868477269290)
,p_db_column_name=>'SACKS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Sacks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23945217738269291)
,p_db_column_name=>'INTERCEPTIONS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Interceptions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23945620126269291)
,p_db_column_name=>'DIVISION'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23946049340269291)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'239461'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TEAM:PIC:QTBACK:QB_RANK:OFFENSE_RANK:DEFENSE_RANK:RUSHING_RANK:PASSING_RANK:TIME_LAST_GAME:WINS:LOSS:STREAK:DOME:GRASS:SACKS:INTERCEPTIONS:DIVISION:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23946926560269292)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23946595833269292)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23937192834269282)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'NFC-West'
,p_page_mode=>'NORMAL'
,p_step_title=>'NFC-West'
,p_step_sub_title=>'NFC-West'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_step_template=>wwv_flow_api.id(27237338305597764)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160918093324'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23948648541280325)
,p_plug_name=>'NFC-West'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27243444832597778)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select "TEAM_ID", ',
'dbms_lob.getlength("PIC") "PIC",',
'"FILENAME",',
'"MIMETYPE",',
'"LAST_UPDATE",',
'"QTBACK",',
'"QB_RANK",',
'"OFFENSE_RANK",',
'"DEFENSE_RANK",',
'"RUSHING_RANK",',
'"PASSING_RANK",',
'"TIME_LAST_GAME",',
'"WINS",',
'"LOSS",',
'"STREAK",',
'"DOME",',
'"GRASS",',
'"TEAM",',
'"SACKS",',
'"INTERCEPTIONS",',
'"DIVISION"',
'from "#OWNER#"."FB_TEAMS" ',
'WHERE "DIVISION" = ''NFC-WEST''',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23949080165280326)
,p_name=>'AFC-North'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_TEAM_ID:#TEAM_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_icon_view_columns_per_row=>1
,p_owner=>'CHRISTIAN.GARDNER'
,p_internal_uid=>23949080165280326
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23949195150280326)
,p_db_column_name=>'TEAM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Team Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23949543752280327)
,p_db_column_name=>'PIC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Helmet'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'IMAGE:FB_TEAMS:PIC:TEAM_ID::::::Attachment:Download:'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23949942162280327)
,p_db_column_name=>'FILENAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23950308231280327)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23950767114280328)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Update'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23951141399280328)
,p_db_column_name=>'QTBACK'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Qtback'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(22223678751162126)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23951544637280328)
,p_db_column_name=>'QB_RANK'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Qb Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23951989196280329)
,p_db_column_name=>'OFFENSE_RANK'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Offense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23952395164280329)
,p_db_column_name=>'DEFENSE_RANK'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Defense Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23952757363280329)
,p_db_column_name=>'RUSHING_RANK'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Rushing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23953199705280330)
,p_db_column_name=>'PASSING_RANK'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Passing Rank'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23953532217280331)
,p_db_column_name=>'TIME_LAST_GAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Time Last Game'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23953910715280331)
,p_db_column_name=>'WINS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Wins'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23954350553280331)
,p_db_column_name=>'LOSS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Loss'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23954717010280332)
,p_db_column_name=>'STREAK'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Streak'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23955131825280332)
,p_db_column_name=>'DOME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Dome'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23955594549280332)
,p_db_column_name=>'GRASS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Grass'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23955917465280333)
,p_db_column_name=>'TEAM'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Team'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23956394736280333)
,p_db_column_name=>'SACKS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Sacks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23956703277280333)
,p_db_column_name=>'INTERCEPTIONS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Interceptions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23957177751280334)
,p_db_column_name=>'DIVISION'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Division'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23957544746280334)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'239576'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TEAM:PIC:QTBACK:QB_RANK:OFFENSE_RANK:DEFENSE_RANK:RUSHING_RANK:PASSING_RANK:TIME_LAST_GAME:WINS:LOSS:STREAK:DOME:GRASS:SACKS:INTERCEPTIONS:DIVISION:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23958414336280335)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23958050514280335)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23948648541280325)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'Edit NFC East Teams'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit NFC East Teams'
,p_step_sub_title=>'Edit NFC East Teams'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160918093014'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23966540338289341)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23966928001289342)
,p_plug_name=>'Edit AFC North Teams'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23970157364289346)
,p_plug_name=>'Team'
,p_parent_plug_id=>wwv_flow_api.id(23966928001289342)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23971790323289350)
,p_plug_name=>'stats'
,p_parent_plug_id=>wwv_flow_api.id(23966928001289342)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23975397143289356)
,p_plug_name=>'Record'
,p_parent_plug_id=>wwv_flow_api.id(23966928001289342)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23977334971289358)
,p_plug_name=>'Home Field'
,p_parent_plug_id=>wwv_flow_api.id(23966928001289342)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23979345354289360)
,p_plug_name=>'border'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23979743883289360)
,p_plug_name=>'blank_Reg'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23967310911289342)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23966928001289342)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23968504770289344)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23966928001289342)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P20_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23967778367289344)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23966928001289342)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P20_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23968194873289344)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23966928001289342)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P20_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(23981793637289365)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23968954317289344)
,p_name=>'P20_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23966928001289342)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23969327475289345)
,p_name=>'P20_MIMETYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23966928001289342)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23969784750289345)
,p_name=>'P20_LAST_UPDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23966928001289342)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update'
,p_source=>'LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23970596784289349)
,p_name=>'P20_TEAM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23970157364289346)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team Id'
,p_source=>'TEAM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23970987644289349)
,p_name=>'P20_TEAM'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(23970157364289346)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team'
,p_source=>'TEAM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23971326551289349)
,p_name=>'P20_PIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23970157364289346)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pic'
,p_source=>'PIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'LAST_UPDATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23972130590289350)
,p_name=>'P20_QTBACK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(23971790323289350)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qtback'
,p_source=>'QTBACK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QBACK'
,p_lov=>'.'||wwv_flow_api.id(22223678751162126)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23972512054289351)
,p_name=>'P20_QB_RANK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(23971790323289350)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qb Rank'
,p_source=>'QB_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23972984667289351)
,p_name=>'P20_OFFENSE_RANK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(23971790323289350)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Offense Rank'
,p_source=>'OFFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23973377736289351)
,p_name=>'P20_DEFENSE_RANK'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(23971790323289350)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defense Rank'
,p_source=>'DEFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23973706206289355)
,p_name=>'P20_RUSHING_RANK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(23971790323289350)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rushing Rank'
,p_source=>'RUSHING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23974105505289355)
,p_name=>'P20_SACKS'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(23971790323289350)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sacks'
,p_source=>'SACKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23974503159289356)
,p_name=>'P20_PASSING_RANK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(23971790323289350)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Passing Rank'
,p_source=>'PASSING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23974947349289356)
,p_name=>'P20_INTERCEPTIONS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(23971790323289350)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interceptions'
,p_source=>'INTERCEPTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23975748566289357)
,p_name=>'P20_TIME_LAST_GAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(23975397143289356)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Days Since Last Game'
,p_source=>'TIME_LAST_GAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LAST_TIME_PLAYED'
,p_lov=>'.'||wwv_flow_api.id(22349995520646716)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23976117199289357)
,p_name=>'P20_WINS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(23975397143289356)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wins'
,p_source=>'WINS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23976540617289357)
,p_name=>'P20_LOSS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(23975397143289356)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loss'
,p_source=>'LOSS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23976964604289357)
,p_name=>'P20_STREAK'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(23975397143289356)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Streak'
,p_source=>'STREAK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23977728595289358)
,p_name=>'P20_HOME_FIELD'
,p_item_sequence=>155
,p_item_plug_id=>wwv_flow_api.id(23977334971289358)
,p_item_default=>'Home Field'
,p_prompt=>'Home Field'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23978189357289359)
,p_name=>'P20_DOME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(23977334971289358)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dome'
,p_source=>'DOME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23978586700289359)
,p_name=>'P20_GRASS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(23977334971289358)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grass'
,p_source=>'GRASS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23978956390289359)
,p_name=>'P20_DIVISION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(23977334971289358)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NFC-EAST'
,p_prompt=>'Division'
,p_source=>'DIVISION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23980859622289364)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P20_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23980422527289362)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P20_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23981239703289365)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23968504770289344)
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'Edit NFC West Teams'
,p_page_mode=>'NORMAL'
,p_step_title=>'Edit NFC West Teams'
,p_step_sub_title=>'Edit NFC West Teams'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160918093423'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23990499226314705)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23990892801314707)
,p_plug_name=>'Edit AFC North Teams'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23994021643314712)
,p_plug_name=>'Team'
,p_parent_plug_id=>wwv_flow_api.id(23990892801314707)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23995692593314714)
,p_plug_name=>'stats'
,p_parent_plug_id=>wwv_flow_api.id(23990892801314707)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23999249576314719)
,p_plug_name=>'Record'
,p_parent_plug_id=>wwv_flow_api.id(23990892801314707)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24001248956314721)
,p_plug_name=>'Home Field'
,p_parent_plug_id=>wwv_flow_api.id(23990892801314707)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24003228351314723)
,p_plug_name=>'border'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24003613318314723)
,p_plug_name=>'blank_Reg'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23991288439314708)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(23990892801314707)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23992469458314708)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(23990892801314707)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P21_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23991611468314708)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23990892801314707)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P21_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23992058950314708)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(23990892801314707)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253222860597798)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P21_TEAM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24005610132314725)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23992828857314709)
,p_name=>'P21_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23990892801314707)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23993283998314710)
,p_name=>'P21_MIMETYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23990892801314707)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23993685539314710)
,p_name=>'P21_LAST_UPDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23990892801314707)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Update'
,p_source=>'LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23994406767314712)
,p_name=>'P21_TEAM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23994021643314712)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team Id'
,p_source=>'TEAM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23994838941314713)
,p_name=>'P21_TEAM'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(23994021643314712)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team'
,p_source=>'TEAM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23995236490314713)
,p_name=>'P21_PIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23994021643314712)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pic'
,p_source=>'PIC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'LAST_UPDATE'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23996086344314715)
,p_name=>'P21_QTBACK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(23995692593314714)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qtback'
,p_source=>'QTBACK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QBACK'
,p_lov=>'.'||wwv_flow_api.id(22223678751162126)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23996407940314716)
,p_name=>'P21_QB_RANK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(23995692593314714)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qb Rank'
,p_source=>'QB_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23996828108314716)
,p_name=>'P21_OFFENSE_RANK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(23995692593314714)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Offense Rank'
,p_source=>'OFFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23997227301314717)
,p_name=>'P21_DEFENSE_RANK'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(23995692593314714)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Defense Rank'
,p_source=>'DEFENSE_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23997631944314717)
,p_name=>'P21_RUSHING_RANK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(23995692593314714)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rushing Rank'
,p_source=>'RUSHING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23998038192314717)
,p_name=>'P21_SACKS'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(23995692593314714)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sacks'
,p_source=>'SACKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23998403213314717)
,p_name=>'P21_PASSING_RANK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(23995692593314714)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Passing Rank'
,p_source=>'PASSING_RANK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23998848245314719)
,p_name=>'P21_INTERCEPTIONS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(23995692593314714)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interceptions'
,p_source=>'INTERCEPTIONS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23999639831314720)
,p_name=>'P21_TIME_LAST_GAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(23999249576314719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Days Since Last Game'
,p_source=>'TIME_LAST_GAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LAST_TIME_PLAYED'
,p_lov=>'.'||wwv_flow_api.id(22349995520646716)||'.'
,p_cSize=>32
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24000074431314720)
,p_name=>'P21_WINS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(23999249576314719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Wins'
,p_source=>'WINS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24000409894314720)
,p_name=>'P21_LOSS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(23999249576314719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Loss'
,p_source=>'LOSS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24000882512314721)
,p_name=>'P21_STREAK'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(23999249576314719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Streak'
,p_source=>'STREAK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24001623033314721)
,p_name=>'P21_HOME_FIELD'
,p_item_sequence=>155
,p_item_plug_id=>wwv_flow_api.id(24001248956314721)
,p_item_default=>'Home Field'
,p_prompt=>'Home Field'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24002050693314722)
,p_name=>'P21_DOME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(24001248956314721)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dome'
,p_source=>'DOME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24002487899314722)
,p_name=>'P21_GRASS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(24001248956314721)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grass'
,p_source=>'GRASS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YESNO'
,p_lov=>'.'||wwv_flow_api.id(22353517597697722)||'.'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24002888458314722)
,p_name=>'P21_DIVISION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(24001248956314721)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NFC-WEST'
,p_prompt=>'Division'
,p_source=>'DIVISION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24004733562314725)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P21_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24004377860314724)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of FB_TEAMS'
,p_attribute_02=>'FB_TEAMS'
,p_attribute_03=>'P21_TEAM_ID'
,p_attribute_04=>'TEAM_ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24005171013314725)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23992469458314708)
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'Game Setup'
,p_page_mode=>'NORMAL'
,p_step_title=>'Game Setup'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20161008104141'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27267157069195369)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241218678597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9233589291783033)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(27254747852597804)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27267761006206758)
,p_plug_name=>'Select Teams'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27268156175219737)
,p_plug_name=>'Vistors'
,p_parent_plug_id=>wwv_flow_api.id(27267761006206758)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27268416159223649)
,p_plug_name=>'At'
,p_parent_plug_id=>wwv_flow_api.id(27267761006206758)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27268902330231205)
,p_plug_name=>'Home Team'
,p_parent_plug_id=>wwv_flow_api.id(27267761006206758)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27737921282197578)
,p_plug_name=>'BLANK'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27790397504441123)
,p_plug_name=>'Visitor_stats'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27771475116291741)
,p_button_sequence=>20
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253153266597795)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27771205053291741)
,p_button_sequence=>10
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253153266597795)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27771350539291741)
,p_button_sequence=>20
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253153266597795)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27771595442291741)
,p_button_sequence=>20
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253153266597795)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27340084459578616)
,p_name=>'P24_VISITOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27268156175219737)
,p_prompt=>'<font face="Agfa Rotis Semi Serif" size="9" color="red">Visiting Team</font>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER-CENTER'
,p_field_template=>wwv_flow_api.id(27252674157597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27343818622688503)
,p_name=>'P24_VISITING_TEAM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27268156175219737)
,p_prompt=>'Visiting Team'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TEAMS'
,p_lov=>'.'||wwv_flow_api.id(27343137057680573)||'.'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27344534458716839)
,p_name=>'P24_HOME'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(27268902330231205)
,p_prompt=>'<font face="Agfa Rotis Semi Serif" size="9" color="blue">The Home Team</font>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER-CENTER'
,p_field_template=>wwv_flow_api.id(27252674157597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27345813971747876)
,p_name=>'P24_HOME_TEAM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27268902330231205)
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TEAMS'
,p_lov=>'.'||wwv_flow_api.id(27343137057680573)||'.'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27372029251917820)
,p_name=>'P24_AFC_V'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(27268156175219737)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'"PIC"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 47'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27373762951953993)
,p_name=>'P24_NFC_V2'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(27268156175219737)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'"PIC"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 48'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27376124305009690)
,p_name=>'P24_XNFC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(27268902330231205)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'"PIC"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 48'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27379051589070818)
,p_name=>'P24_XAFC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(27268902330231205)
,p_prompt=>'XAFC'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'"PIC"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 47'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27736494886171961)
,p_name=>'P24_NFC_V'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(27268156175219737)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'"PIC"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 48'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27737598690190211)
,p_name=>'P24_AFC_H'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(27268902330231205)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(27252516213597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'"PIC"',
'from "#OWNER#"."RSA_ADMIN_FREQ_QUESTIONS" ',
'where id  = 47'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27773051310291755)
,p_name=>'P24_FILENAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27790397504441123)
,p_prompt=>'FILENAME'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27773439117291757)
,p_name=>'P24_MIMETYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(27790397504441123)
,p_prompt=>'MIMETYPE'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27773813890291757)
,p_name=>'P24_LAST_UPDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27790397504441123)
,p_prompt=>'LAST_UPDATE'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27774274486291758)
,p_name=>'P24_QTBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27790397504441123)
,p_prompt=>'QTBACK'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100px; height: 12px"'
,p_field_template=>wwv_flow_api.id(27253045909597795)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27774636484291758)
,p_name=>'P24_QB_RANK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27790397504441123)
,p_prompt=>'QB Ranked:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(27253045909597795)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27775097737291759)
,p_name=>'P24_OFFENSE_RANK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(27790397504441123)
,p_prompt=>'Offense Ranking:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(27253045909597795)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27775416844291759)
,p_name=>'P24_DEFENSE_RANK'
,p_item_sequence=>70
,p_prompt=>'DEFENSE_RANK'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27775899951291759)
,p_name=>'P24_RUSHING_RANK'
,p_item_sequence=>80
,p_prompt=>'RUSHING_RANK'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27776272006291759)
,p_name=>'P24_PASSING_RANK'
,p_item_sequence=>90
,p_prompt=>'PASSING_RANK'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27776695226291760)
,p_name=>'P24_TIME_LAST_GAME'
,p_item_sequence=>100
,p_prompt=>'TIME_LAST_GAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27777064170291760)
,p_name=>'P24_WINS'
,p_item_sequence=>110
,p_prompt=>'WINS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27777438474291761)
,p_name=>'P24_LOSS'
,p_item_sequence=>120
,p_prompt=>'LOSS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27777894799291761)
,p_name=>'P24_STREAK'
,p_item_sequence=>130
,p_prompt=>'STREAK'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27778240986291762)
,p_name=>'P24_DOME'
,p_item_sequence=>140
,p_prompt=>'DOME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27778665934291762)
,p_name=>'P24_GRASS'
,p_item_sequence=>150
,p_prompt=>'GRASS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27779077493291762)
,p_name=>'P24_TEAM'
,p_item_sequence=>160
,p_prompt=>'TEAM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27779467553291762)
,p_name=>'P24_SACKS'
,p_item_sequence=>170
,p_prompt=>'SACKS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27779847528291763)
,p_name=>'P24_INTERCEPTIONS'
,p_item_sequence=>180
,p_prompt=>'INTERCEPTIONS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27780240970291763)
,p_name=>'P24_DIVISION'
,p_item_sequence=>190
,p_prompt=>'DIVISION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27782468420425502)
,p_name=>'QTBACK'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_VISITING_TEAM'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27782889070425506)
,p_event_id=>wwv_flow_api.id(27782468420425502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_QTBACK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select case when qtback = 4 then ''Primary''',
'            when qtback = 2 then ''Backup''',
'            when qtback = 1 then ''Other'' end AS QTBACK ',
'from fb_teams',
'where team_id = :P24_VISITING_TEAM'))
,p_attribute_07=>'P24_VISITING_TEAM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27792140325485786)
,p_event_id=>wwv_flow_api.id(27782468420425502)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_QB_RANK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT QB_RANK',
'FROM FB_TEAMS',
'WHERE TEAM_ID = :P24_VISITING_TEAM'))
,p_attribute_07=>'P24_VISITING_TEAM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27792778850508860)
,p_event_id=>wwv_flow_api.id(27782468420425502)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_OFFENSE_RANK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT OFFENSE_RANK',
'FROM FB_TEAMS',
'WHERE TEAM_ID = :P24_VISITING_TEAM',
''))
,p_attribute_07=>'P24_VISITING_TEAM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'Page 101'
,p_page_mode=>'NORMAL'
,p_step_title=>'FB_Model - 101'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(27232535972597753)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160915182822'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9245683550944414)
,p_plug_name=>'border'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9232792947783023)
,p_plug_name=>'Log In'
,p_parent_plug_id=>wwv_flow_api.id(9245683550944414)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9246227672954982)
,p_plug_name=>'football field'
,p_parent_plug_id=>wwv_flow_api.id(9245683550944414)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(27241657140597777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9233030745783028)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(9232792947783023)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253153266597795)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9232882189783026)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9232792947783023)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9232989967783028)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9232792947783023)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(27252766324597794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9233290819783032)
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
 p_id=>wwv_flow_api.id(9233199464783029)
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
 p_id=>wwv_flow_api.id(9233432687783033)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9233372953783032)
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
,p_user_interface_id=>wwv_flow_api.id(9232209277782987)
,p_name=>'FB Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'FB Login Page'
,p_step_sub_title=>'FB Login Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(27232303968597737)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_last_updated_by=>'CHRISTIAN.GARDNER'
,p_last_upd_yyyymmddhh24miss=>'20160915182912'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9235843582801950)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
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
 p_id=>wwv_flow_api.id(9238872278801969)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(27240428326597768)
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
 p_id=>wwv_flow_api.id(9236285051801953)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(9235843582801950)
,p_button_name=>'P175_LOGIN'
,p_button_static_id=>'P175_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(27253153266597795)
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
 p_id=>wwv_flow_api.id(9240528095801974)
,p_branch_name=>'GO_TO_HOMEPAGE'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(9236285051801953)
,p_branch_sequence=>50
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9236650853801955)
,p_name=>'P175_APP_TITLE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9235843582801950)
,p_prompt=>'<font face="Agfa Rotis Semi Serif" size="5" color="gray">&nbsp&nbsp&nbsp&nbsp&nbsp Model Management</font>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(27252674157597794)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9237069211801958)
,p_name=>'P175_USERNAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9235843582801950)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(27252407018597791)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application user name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9237939645801963)
,p_name=>'P175_PASSWORD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9235843582801950)
,p_prompt=>'&nbspPassword'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_cHeight=>1
,p_new_grid=>true
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(27252407018597791)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Please enter your application password.'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9239277704801972)
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
 p_id=>wwv_flow_api.id(9239613952801973)
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
 p_id=>wwv_flow_api.id(9240027488801974)
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
 p_id=>wwv_flow_api.id(9243024626813570)
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
