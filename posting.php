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
$pdocrud->formFields(array("sanctionedpost_id","type_of_posting","employee_id", "start_date", "end_date", "current"));
$pdocrud->colRename("sanctionedpost_id", "পদবী");
$pdocrud->colRename("organization_name", "অফিস");
// $pdocrud->colRename("status", "পদের অবস্থা");
// $pdocrud->colRename("current", "কর্মরত?");

$pdocrud->subQueryColumn("sanctionedpost_id", "select designation_name from sanctionedposts where id = sanctionedpost_id");
$pdocrud->subQueryColumn("organization_name", "select organization_name from sanctionedposts where id = sanctionedpost_id");


 $pdocrud->fieldTypes("sanctionedpost_id", "select"); //change type to select
 $pdocrud->fieldDataBinding("sanctionedpost_id", "sanctionedposts", "id", array("designation_name", "organization_name"), "db", " --> "); //load select data


$pdocrud->relatedData('type_of_posting','type_of_posting','id', "name_BN");
$pdocrud->relatedData('employee_id','employees','id', "name_BN");

$pdocrud->fieldTypes("current", "select");
$pdocrud->fieldDataBinding("current", array("Yes"=>"Yes","No"=>"No"), "", "","array");//add data binding using array

//$pdocrud->addCallback("before_insert","beforeInsertPosting");

$pdocrud->formFieldValue("created_at", date('Y/m/d h:i:s a', time()), true);
$pdocrud->fieldDataAttr("created_at", array("disabled"=>"disabled"));


echo $pdocrud->dbTable("posting")->render();
echo $pdocrud->loadPluginJsCode("select2","select");//to add plugin call on select elements
?>