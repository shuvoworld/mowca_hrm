<?php
  //https://pdocrud.com/demo/pages/related-data
  $page_title = 'All Organizations';
  require_once('includes/load.php');
  require_once ('libs/script/pdocrud.php');
  include_once('layouts/header.php');
  page_require_level(2);


$pdocrud = new PDOCrud(false, "pure", "pure");

if (isset($user['agency_id'])) {
  $pdocrud->where("agency_id", $user['agency_id'], "=");
  
  $agency_query = "select * from agencies where id = {$user['agency_id']} ";
}
else{
  $agency_query = "select * from `agencies` WHERE 1";
}
$pdocrud->addPlugin("ckeditor");
$action = "org_dashboard.php?id={pk}";
$text = '<i class="fa fa-bank" style="font-size:24px" title="Show Posts"></i>';
$attr = array("title"=>"Redirect URL");

$pdocrud->tableHeading("প্রতিষ্ঠানের ডাটাবেজ");
$pdocrud->enqueueBtnActions("url", $action, "url",$text,"booking_status", $attr);

$pdocrud->addPlugin("ckeditor");
$pdocrud->fieldTypes("agency_id", "select"); //change type to select
$pdocrud->addPlugin("select2");//to add plugin
$pdocrud->fieldDataBinding("agency_id", $agency_query, "id", "name_BN", "sql");

$pdocrud->fieldTypes("organization_type_id", "select"); //change type to select
$pdocrud->fieldDataBinding("organization_type_id", "organization_types", "id", "name_BN", "db");

$pdocrud->fieldTypes("organization_level_id", "select"); //change type to select
$pdocrud->fieldDataBinding("organization_level_id", "organization_levels", "id", "name_BN", "db");


$pdocrud->fieldTypes("division_id", "select"); //change type to select
$pdocrud->fieldDataBinding("division_id", "divisions", "id", "name_BN", "db");

$pdocrud->fieldTypes("district_id", "select"); //change type to select
$pdocrud->fieldDataBinding("district_id", "districts", "id", "name_BN", "db");

$pdocrud->fieldTypes("upazila_id", "select"); //change type to select
$pdocrud->fieldDataBinding("upazila_id", "upazilas", "id", "name_BN", "db");

$pdocrud->fieldDependent("district_id", "division_id", "division_id");
$pdocrud->fieldDependent("upazila_id", "district_id", "district_id");


//$pdocrud->crudTableCol(array("ID","Name","Directorate","Division","District", "Upazila", "Contact"));//optional
//$pdocrud->relatedData('agency_id','agencies','id','name_BN');
$pdocrud->relatedData('division_id','divisions','id','name_BN');
$pdocrud->relatedData('district_id','districts','id','name_BN');
$pdocrud->relatedData('upazila_id','upazilas','id','name_BN');
$pdocrud->relatedData('organization_type_id','organization_types','id','name_BN');
$pdocrud->crudTableCol(array("name","division_id","district_id","upazila_id","organization_type_id","contact_no","email"));

$pdocrud->fieldNotMandatory("email");
$pdocrud->fieldNotMandatory("organization_level_id");
$pdocrud->fieldNotMandatory("contact_no");
$pdocrud->fieldNotMandatory("address");

$pdocrud->fieldRenameLable("agency_id", "দপ্তর/সংস্থা");//Rename label
$pdocrud->fieldRenameLable("division_id", "বিভাগ");//Rename label
$pdocrud->fieldRenameLable("district_id", "জেলা");//Rename label
$pdocrud->fieldRenameLable("upazila_id", "উপজেলা");//Rename label
$pdocrud->fieldRenameLable("organization_type_id", "ধরণ");//Rename label
$pdocrud->fieldRenameLable("organization_level_id", "লেভেল");//Rename label
$pdocrud->fieldRenameLable("contact_no", "যোগাযোগের নম্বর");//Rename label
$pdocrud->fieldRenameLable("email", "ইমেইল");//Rename label

$pdocrud->colRename("name", "প্রতিষ্ঠানের নাম");
$pdocrud->colRename("agency_id", "দপ্তর/সংস্থা");
$pdocrud->colRename("division_id", "বিভাগ");
$pdocrud->colRename("district_id", "জেলা");
$pdocrud->colRename("upazila_id", "উপজেলা");
$pdocrud->colRename("organization_type_id", "ধরণ");
$pdocrud->colRename("contact_no", "যোগাযোগের নম্বর");
$pdocrud->colRename("email", "ইমেইল");

$pdocrud->fieldDataAttr("created_at", array("disabled"=>"disabled"));
$pdocrud->fieldHideLable("created_by");
$pdocrud->fieldDataAttr("created_by", array("style"=>"display:none"));

$pdocrud->addCallback("before_insert", "beforeInsertCallBack");
$pdocrud->formFieldValue("created_by", $user["id"]);
$pdocrud->formFieldValue("updated_by", $user["id"]);
$pdocrud->fieldHideLable("updated_by");
$pdocrud->fieldDataAttr("updated_by", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("updated_at", array("disabled"=>"disabled"));
$pdocrud->formFieldValue("is_active", 1);
$pdocrud->fieldHideLable("is_active");
$pdocrud->fieldDataAttr("is_active", array("style"=>"display:none"));

$pdocrud->fieldGroups("Naming",array("name_BN", "agency_id"));
$pdocrud->fieldGroups("Organization Attribute",array("organization_type_id","organization_level_id"));
$pdocrud->fieldGroups("Geo Location",array("division_id","district_id", "upazila_id"));



$pdocrud->addCallback("before_update", "beforeUpdateCallBack");

$pdocrud->fieldCssClass("details", array("ckeditor"));


echo $pdocrud->dbTable("organizations")->render();
echo $pdocrud->loadPluginJsCode("select2","select");//to add plugin call on select elements
echo $pdocrud->loadPluginJsCode("ckeditor","b3JnYW5pemF0aW9ucyMkYWRkcmVzc0AzZHNmc2RmKio5OTM0MzI0");
?>