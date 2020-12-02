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

$pdocrud->fieldTypes("designation_id", "select"); //change type to select
$pdocrud->fieldDataBinding("designation_id", "designations", "id", "name", "db"); //load select data

$pdocrud->fieldTypes("organization_id", "select"); //change type to select
$pdocrud->fieldDataBinding("organization_id", "organizations", "id", "name", "db"); //load select data

$pdocrud->fieldTypes("type_of_posting", "select"); //change type to select
$pdocrud->fieldDataBinding("type_of_posting", "type_of_posting", "id", "name_BN", "db"); //load select data

$pdocrud->fieldTypes("employee_id", "select"); //change type to select
$pdocrud->fieldDataBinding("employee_id", "employees", "id", array("name_BN", "mobile_no", "national_id"), "db", " => "); //load select data

$pdocrud->fieldTypes("current", "select");
$pdocrud->fieldDataBinding("current", array("Yes"=>"Yes","No"=>"No"), "", "","array");//add data binding using array

$pdocrud->crudTableCol(["designation_name","employee_id", "organization_name", "start_date", "end_date"]);

$pdocrud->addCallback("before_insert","beforeInsertPosting");
$pdocrud->addCallback("before_update", "beforeInsertPosting"); 

$pdocrud->fieldHideLable("designation_name");
$pdocrud->fieldDataAttr("designation_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("designation_name", array("disabled"=>"disabled"));
$pdocrud->fieldHideLable("organization_name");
$pdocrud->fieldDataAttr("organization_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("organization_name", array("disabled"=>"disabled"));
$pdocrud->fieldDataAttr("created_at", array("disabled"=>"disabled"));

echo $pdocrud->dbTable("posting")->render();
echo $pdocrud->loadPluginJsCode("select2","select");//to add plugin call on select elements
?>