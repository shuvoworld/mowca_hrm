<?php
  //https://pdocrud.com/demo/pages/related-data
  $page_title = 'All Movein/Join';
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

$pdocrud->fieldTypes("sanctionedpost_id", "select"); //change type to select
$pdocrud->fieldDataBinding("sanctionedpost_id", "sanctionedposts", "id", array("organization_name","designation_name"), "db", " => "); //load select data

$pdocrud->fieldTypes("employee_id", "select"); //change type to select
$pdocrud->fieldDataBinding("employee_id", "employees", "id", array("name_BN","mobile"), "db", " => "); //load select data

$pdocrud->fieldTypes("reason_of_posting", "select"); //change type to select
$pdocrud->fieldDataBinding("reason_of_posting", "reason_of_postings", "id", "name", "db"); //load select data

$pdocrud->fieldTypes("type_of_posting", "select"); //change type to select
$pdocrud->fieldDataBinding("type_of_posting", "type_of_posting", "id", "name_BN", "db"); //load select data

$pdocrud->fieldTypes("employee_id", "select"); //change type to select
$pdocrud->fieldDataBinding("employee_id", "employees", "id", array("name_BN", "mobile_no", "national_id"), "db", " => "); //load select data

$pdocrud->fieldTypes("current", "select");
$pdocrud->fieldDataBinding("current", array("Yes"=>"Yes","No"=>"No"), "", "","array");//add data binding using array
$pdocrud->formFieldValue("created_by", $user["id"]);

$pdocrud->addCallback("before_insert","beforeInsertMovein");


$pdocrud->fieldDataAttr("created_at", array("disabled"=>"disabled"));

echo $pdocrud->dbTable("movein")->render();
echo $pdocrud->loadPluginJsCode("select2","select");//to add plugin call on select elements
?>