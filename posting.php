<?php
  //https://pdocrud.com/demo/pages/related-data
  $page_title = 'All Postings';
  require_once('includes/load.php');
  //require_once('includes/load.php');
  require_once ('libs/script/pdocrud.php');
  include_once('layouts/header.php');
  page_require_level(2);
  // Checkin What level user has permission to view this page
  // page_require_level(2);

   // You need to set template name and sking name 'pure' in settings page
// It can be done directly in config page also      

$pdocrud = new PDOCrud(false, "pure", "pure");
$pdocrud->addPlugin("select2");//to add plugin 

$pdocrud->crudTableCol(array("employee_id","start_date","end_date","type_of_posting"));
$pdocrud->formFields(array("division_id","district_id","upazila_id","organization_id","sanctionedpost_id","type_of_posting","employee_id", "start_date", "end_date", "current"));
$pdocrud->colRename("sanctionedpost_id", "পদবী");
$pdocrud->colRename("organization_name", "অফিস");


$pdocrud->fieldTypes("division_id", "select"); //change type to select
$pdocrud->fieldDataBinding("division_id", "divisions", "id", "name_BN", "db");

$pdocrud->fieldTypes("district_id", "select"); //change type to select
$pdocrud->fieldDataBinding("district_id", "districts", "id", "name_BN", "db");

$pdocrud->fieldTypes("upazila_id", "select"); //change type to select
$pdocrud->fieldDataBinding("upazila_id", "upazilas", "id", "name_BN", "db");

$pdocrud->fieldTypes("organization_id", "select"); //change type to select
$pdocrud->fieldDataBinding("organization_id", "organizations", "id", "name", "db");

$pdocrud->fieldTypes("sanctionedpost_id", "select"); //change type to select
$pdocrud->fieldDataBinding("sanctionedpost_id", "sanctionedposts", "id", "designation_name", "db");

$pdocrud->fieldDependent("district_id", "division_id", "division_id");
$pdocrud->fieldDependent("upazila_id", "district_id", "district_id");
$pdocrud->fieldDependent("organization_id", "upazila_id", "upazila_id");
$pdocrud->fieldDependent("sanctionedpost_id", "organization_id", "organization_id");

$pdocrud->relatedData('type_of_posting','type_of_posting','id', "name_BN");
$pdocrud->relatedData('employee_id','employees','id', "name_BN");

$pdocrud->fieldTypes("current", "select");
$pdocrud->fieldDataBinding("current", array("Yes"=>"Yes","No"=>"No"), "", "","array");//add data binding using array
$pdocrud->fieldNotMandatory("end_date");
$pdocrud->addCallback("before_insert","beforeInsertPosting");
$pdocrud->addCallback("before_update", "beforeUpdatePosting");  

$pdocrud->formFieldValue("created_at", date('Y/m/d h:i:s a', time()), true);
$pdocrud->fieldDataAttr("created_at", array("disabled"=>"disabled"));


echo $pdocrud->dbTable("posting")->render();
echo $pdocrud->loadPluginJsCode("select2","select");//to add plugin call on select elements
?>