<?php
  //https://pdocrud.com/demo/pages/related-data
  $page_title = 'All Employees';
  require_once('includes/load.php');
  require_once ('libs/script/pdocrud.php');
  include_once('layouts/header.php');
  page_require_level(2);


$pdocrud = new PDOCrud(false, "pure", "pure");
$pdocrud->crudTableCol(array("name_BN","last_name","user_name","gender"));

if (isset($user['agency_id'])) {
  $pdocrud->where("agency_id", $user['agency_id'], "=");
  
  $agency_query = "select * from agencies where id = {$user['agency_id']} ";
}
else{
  $agency_query = "select * from `agencies` WHERE 1";
}


$pdocrud->fieldTypes("agency_id", "select"); //change type to select
$pdocrud->addPlugin("select2");//to add plugin
$pdocrud->fieldDataBinding("agency_id", $agency_query, "id", "name_BN", "sql");

$pdocrud->fieldTypes("organization_type_id", "select"); //change type to select
$pdocrud->fieldDataBinding("organization_type_id", "organization_types", "id", "name_BN", "db"); //load select data

$pdocrud->fieldTypes("organization_level_id", "select"); //change type to select
$pdocrud->fieldDataBinding("organization_level_id", "organization_levels", "id", "name_BN", "db"); //load select data


$pdocrud->fieldTypes("division_id", "select"); //change type to select
$pdocrud->fieldDataBinding("division_id", "divisions", "id", "name_BN", "db"); //load select data

$pdocrud->fieldTypes("district_id", "select"); //change type to select
$pdocrud->fieldDataBinding("district_id", "districts", "id", "name_BN", "db"); //load select data

$pdocrud->fieldTypes("upazila_id", "select"); //change type to select
$pdocrud->fieldDataBinding("upazila_id", "upazilas", "id", "name_BN", "db"); //load select data

$pdocrud->fieldDependent("district_id", "division_id", "division_id"); //now on change of country it will change state
$pdocrud->fieldDependent("upazila_id", "district_id", "district_id"); //now on change of country it will change state

$pdocrud->crudRemoveCol(array("name","organization_level_id","organization_type_id","contact_email", "cretaed_at", "is_active"));

//$pdocrud->crudTableCol(array("ID","Name","Directorate","Division","District", "Upazila", "Contact"));//optional
//$pdocrud->relatedData('agency_id','agencies','id','name_BN');
$pdocrud->relatedData('division_id','divisions','id','name_BN');
$pdocrud->relatedData('district_id','districts','id','name_BN');
$pdocrud->relatedData('upazila_id','upazilas','id','name_BN');

$pdocrud->fieldRenameLable("agency_id", "Agency");//Rename label
$pdocrud->fieldRenameLable("division_id", "Division");//Rename label
$pdocrud->fieldRenameLable("district_id", "District");//Rename label
$pdocrud->fieldRenameLable("upazila_id", "Upazila");//Rename label
$pdocrud->fieldRenameLable("organization_type_id", "Type");//Rename label
$pdocrud->fieldRenameLable("organization_level_id", "Level");//Rename label

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

$pdocrud->fieldGroups("Naming",array("name","name_BN"));
$pdocrud->fieldGroups("Organization Attribute",array("agency_id","organization_type_id","organization_level_id"));
$pdocrud->fieldGroups("Geo Location",array("division_id","district_id", "upazila_id"));



$pdocrud->addCallback("before_update", "beforeUpdateCallBack");



echo $pdocrud->dbTable("organizations")->render();
echo $pdocrud->loadPluginJsCode("select2","select");//to add plugin call on select elements
?>