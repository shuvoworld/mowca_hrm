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

$pdocrud->fieldTypes("quota_id", "select"); //change type to select
$pdocrud->fieldDataBinding("quota_id", "quotas", "id", "name", "db");

$pdocrud->fieldTypes("sex_id", "select"); //change type to select
$pdocrud->fieldDataBinding("sex_id", "sex", "id", "name", "db");

$pdocrud->fieldTypes("religion_id", "select"); //change type to select
$pdocrud->fieldDataBinding("religion_id", "religions", "id", "name", "db");

$pdocrud->fieldTypes("bloodgroup_id", "select"); //change type to select
$pdocrud->fieldDataBinding("bloodgroup_id", "bloodgroups", "id", "name", "db");


$pdocrud->fieldTypes("division_id", "select"); //change type to select
$pdocrud->fieldDataBinding("division_id", "divisions", "id", "name_BN", "db"); //load select data

$pdocrud->crudRemoveCol(array("created_at", "is_active", "code"));

//$pdocrud->crudTableCol(array("ID","Name","Directorate","Division","District", "Upazila", "Contact"));//optional
//$pdocrud->relatedData('agency_id','agencies','id','name_BN');
// $pdocrud->relatedData('division_id','divisions','id','name_BN');
// $pdocrud->relatedData('district_id','districts','id','name_BN');
// $pdocrud->relatedData('upazila_id','upazilas','id','name_BN');

$pdocrud->fieldRenameLable("agency_id", "Agency");//Rename label
$pdocrud->fieldRenameLable("name_BN", "Name (Bangla)");//Rename label
$pdocrud->fieldRenameLable("name_BN", "Name (English)");//Rename label

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

$pdocrud->fieldHideLable("quota_name");
$pdocrud->fieldDataAttr("quota_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("quota_name", array("disabled"=>"disabled"));

$pdocrud->fieldHideLable("sex_name");
$pdocrud->fieldDataAttr("sex_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("sex_name", array("disabled"=>"disabled"));

$pdocrud->fieldHideLable("religious_name");
$pdocrud->fieldDataAttr("religious_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("religious_name", array("disabled"=>"disabled"));

$pdocrud->fieldHideLable("bloodgroup_name");
$pdocrud->fieldDataAttr("bloodgroup_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("bloodgroup_name", array("disabled"=>"disabled"));

$pdocrud->fieldGroups("Naming",array("agency_id", "name_BN","name_EN"));
$pdocrud->fieldGroups("family_info",array("father_name","mother_name"));
$pdocrud->fieldGroups("id_contact",array("national_id","mobile_no", "email"));
$pdocrud->fieldGroups("attribute",array("quota_id","sex_id", "religion_id", "bloodgroup_id"));



$pdocrud->addCallback("before_update", "beforeUpdateCallBack");



echo $pdocrud->dbTable("employees")->render();
echo $pdocrud->loadPluginJsCode("select2","select");//to add plugin call on select elements
?>