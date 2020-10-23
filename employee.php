<?php
  //https://pdocrud.com/demo/pages/related-data
  $page_title = 'All Employees';
  require_once('includes/load.php');
  require_once ('libs/script/pdocrud.php');
  include_once('layouts/header.php');
  page_require_level(2);


$pdocrud = new PDOCrud(false, "pure", "pure");

if (isset($user['agency_id'])) {
  $pdocrud->where("agency_id", $user['agency_id'], "=");
  
  $agency_query = "select name, name_BN from agencies where id = {$user['agency_id']} ";
}
else{
  $agency_query = "select name, name_BN from `agencies` WHERE 1";
}



$pdocrud->fieldTypes("agency_id", "select"); //change type to select
$pdocrud->addPlugin("select2");//to add plugin
$pdocrud->fieldDataBinding("agency_id", $agency_query, "id", "name_BN", "sql");

$pdocrud->addPlugin("ckeditor");


$pdocrud->fieldTypes("quota_id", "select"); //change type to select
$pdocrud->fieldDataBinding("quota_id", "quotas", "id", "name", "db");

$pdocrud->fieldTypes("sex_id", "select"); //change type to select
$pdocrud->fieldDataBinding("sex_id", "sex", "id", "name", "db");

$pdocrud->fieldTypes("religion_id", "select"); //change type to select
$pdocrud->fieldDataBinding("religion_id", "religions", "id", "name", "db");

$pdocrud->fieldTypes("bloodgroup_id", "select"); //change type to select
$pdocrud->fieldDataBinding("bloodgroup_id", "bloodgroups", "id", "name", "db");

$pdocrud->fieldTypes("educational_qualification_id", "select"); //change type to select
$pdocrud->fieldDataBinding("educational_qualification_id", "educational_qualifications", "id", "name", "db");

$pdocrud->fieldTypes("last_promoted_post_id", "select"); //change type to select
$pdocrud->fieldDataBinding("last_promoted_post_id", "designations", "id", "name", "db");

$pdocrud->fieldTypes("marital_status_id", "select"); //change type to select
$pdocrud->fieldDataBinding("marital_status_id", "marital_statuses", "id", "name", "db");

$pdocrud->fieldTypes("permanent_division_id", "select"); //change type to select
$pdocrud->fieldDataBinding("permanent_division_id", "divisions", "id", "name_BN", "db"); //load select data

$pdocrud->fieldTypes("permanent_district_id", "select"); //change type to select
$pdocrud->fieldDataBinding("permanent_district_id", "districts", "id", "name_BN", "db"); //load select data

$pdocrud->fieldTypes("permanent_upazila_id", "select"); //change type to select
$pdocrud->fieldDataBinding("permanent_upazila_id", "upazilas", "id", "name_BN", "db"); //load select data

$pdocrud->fieldDependent("permanent_district_id", "permanent_division_id", "division_id");
$pdocrud->fieldDependent("permanent_upazila_id", "permanent_district_id", "district_id");


$pdocrud->colRename("নাম", "দপ্তর/সংস্থা", "মোবাইল", "ইমেইল", "তথ্য পরিবর্তনের তারিখ");
$pdocrud->crudTableCol(array("name_BN","agency_name", "mobile_no", "email", "updated_at"));



$pdocrud->fieldRenameLable("agency_id", "Agency");//Rename label
$pdocrud->fieldRenameLable("name_BN", "Name (Bangla)");//Rename label
$pdocrud->fieldRenameLable("name_EN", "Name (English)");//Rename label

$pdocrud->fieldDataAttr("created_at", array("disabled"=>"disabled"));

$pdocrud->addCallback("before_insert", "beforeInsertCallBack");
$pdocrud->formFieldValue("created_by", $user["id"]);
$pdocrud->fieldDataAttr("created_by", array("disabled"=>"disabled"));
$pdocrud->formFieldValue("updated_by", $user["id"]);
$pdocrud->fieldDataAttr("updated_by", array("disabled"=>"disabled"));
$pdocrud->fieldDataAttr("updated_at", array("disabled"=>"disabled"));

$pdocrud->formFieldValue("is_active", 1);
$pdocrud->fieldHideLable("is_active");
$pdocrud->fieldDataAttr("is_active", array("style"=>"display:none"));

$pdocrud->fieldHideLable("agency_name");
$pdocrud->fieldDataAttr("agency_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("agency_name", array("disabled"=>"disabled"));

$pdocrud->fieldHideLable("quota_name");
$pdocrud->fieldDataAttr("quota_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("quota_name", array("disabled"=>"disabled"));

$pdocrud->fieldHideLable("sex_name");
$pdocrud->fieldDataAttr("sex_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("sex_name", array("disabled"=>"disabled"));

$pdocrud->fieldHideLable("educational_qualification_name");
$pdocrud->fieldDataAttr("educational_qualification_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("educational_qualification_name", array("disabled"=>"disabled"));

$pdocrud->fieldHideLable("religion_name");
$pdocrud->fieldDataAttr("religioreligion_nameus_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("religion_name", array("disabled"=>"disabled"));

$pdocrud->fieldHideLable("permanent_division_name");
$pdocrud->fieldDataAttr("permanent_division_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("permanent_division_name", array("disabled"=>"disabled"));
$pdocrud->fieldHideLable("permanent_district_name");
$pdocrud->fieldDataAttr("permanent_district_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("permanent_district_name", array("disabled"=>"disabled"));
$pdocrud->fieldHideLable("permanent_upazila_name");
$pdocrud->fieldDataAttr("permanent_upazila_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("permanent_upazila_name", array("disabled"=>"disabled"));

$pdocrud->fieldHideLable("bloodgroup_name");
$pdocrud->fieldDataAttr("bloodgroup_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("bloodgroup_name", array("disabled"=>"disabled"));

$pdocrud->fieldHideLable("marital_status_name");
$pdocrud->fieldDataAttr("marital_status_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("marital_status_name", array("disabled"=>"disabled"));

$pdocrud->fieldHideLable("last_promoted_post_name");
$pdocrud->fieldDataAttr("last_promoted_post_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("last_promoted_post_name", array("disabled"=>"disabled"));

$pdocrud->fieldDisplayOrder(array("agency_id","code","name_BN","name_EN","father_name","mother_name","dob","prl_date","national_id", "mobile_no", 
"alternate_mobile_no", "email", "quota_id","sex_id", "religion_id", "bloodgroup_id","educational_qualification_id","marital_status_id",
"permanent_division_id","permanent_district_id", "permanent_upazila_id", "permanent_address",
"joining_govt_service_date","present_place_joing_date", "present_post_joining_date",
"last_promoted_post_id", "last_promotion_date", "details",
"created_at", "created_by", "updated_at", "updated_by"
));

$pdocrud->fieldGroups("agency",array("agency_id", "code"));
$pdocrud->fieldGroups("Naming",array("name_BN","name_EN"));
$pdocrud->fieldGroups("family_info",array("father_name","mother_name"));
$pdocrud->fieldGroups("Date",array("dob", "prl_date","national_id"));
$pdocrud->fieldGroups("id_contact",array("mobile_no","alternate_mobile_no", "email"));
$pdocrud->fieldGroups("attribute",array("quota_id","sex_id", "religion_id"));
$pdocrud->fieldGroups("attribute_second",array("bloodgroup_id","educational_qualification_id","marital_status_id"));
$pdocrud->fieldGroups("Permanent_Address",array("permanent_division_id","permanent_district_id", "permanent_upazila_id"));
$pdocrud->fieldGroups("service_dates",array("joining_govt_service_date","present_place_joing_date", "present_post_joining_date"));
$pdocrud->fieldGroups("last_promotion",array("last_promoted_post_id", "last_promotion_date"));
$pdocrud->fieldGroups("create_info",array("created_at", "created_by"));
$pdocrud->fieldGroups("update_info",array("updated_at", "updated_by"));



$pdocrud->addCallback("before_update", "beforeEmployeeUpdateCallBack");


$pdocrud->fieldCssClass("details", array("ckeditor"));
echo $pdocrud->dbTable("employees")->render();
echo $pdocrud->loadPluginJsCode("ckeditor","ZW1wbG95ZWVzIyRkZXRhaWxzQDNkc2ZzZGYqKjk5MzQzMjQ=");
echo $pdocrud->loadPluginJsCode("select2","select");//to add plugin call on select elements
?>