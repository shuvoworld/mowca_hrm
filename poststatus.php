<?php
  //https://pdocrud.com/demo/pages/related-data
  $page_title = 'পদ ভিত্তিক রিপোর্ট';
  require_once('includes/load.php');
  //require_once('includes/load.php');
  require_once ('libs/script/pdocrud.php');
  include_once('layouts/header.php');
  page_require_level(1);
  

$pdocrud = new PDOCrud(false, "pure", "pure");

$pdocrud->setSettings("deleteMultipleBtn", false);
$pdocrud->setSettings("recordsPerPageDropdown", false);
$pdocrud->setSettings("recordsPerPageDropdown", false);
$pdocrud->setSettings("addbtn", false);
$pdocrud->setSettings("editbtn", false);
$pdocrud->setSettings("viewbtn", false);
$pdocrud->setSettings("delbtn", false);
$pdocrud->setSettings("actionbtn", false);
$pdocrud->setSettings("checkboxCol", false);

$pdocrud->joinTable("employees", "employees.id = posting.employee_id", "INNER JOIN");
$pdocrud->joinTable("sanctionedposts", "sanctionedposts.id = posting.sanctionedpost_id", "INNER JOIN");

$pdocrud->crudTableCol(array(
  "designation_name",
  "organization_name",
  "employees.name_BN as employee",
  "sanctionedposts.status as poststaus"
));

$pdocrud->addPlugin("select2");//to add plugin 

$pdocrud->fieldTypes("designation_id", "select"); //change type to select
$pdocrud->fieldDataBinding("designation_id", "designations", "id", "name", "db"); //load select data

$pdocrud->fieldTypes("organization_id", "select"); //change type to select
$pdocrud->fieldDataBinding("organization_id", "organizations", "id", "name", "db"); //load select data

$pdocrud->addCallback("before_insert","beforeInsertSanctionedPost");


$pdocrud->fieldHideLable("designation_name");
$pdocrud->fieldDataAttr("designation_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("designation_name", array("disabled"=>"disabled"));
$pdocrud->fieldHideLable("organization_name");
$pdocrud->fieldDataAttr("organization_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("organization_name", array("disabled"=>"disabled"));
$pdocrud->fieldDataAttr("created_at", array("disabled"=>"disabled"));
$pdocrud->fieldDataAttr("status", array("disabled"=>"disabled"));
$pdocrud->fieldDataAttr("employee_id", array("disabled"=>"disabled"));

echo $pdocrud->dbTable("posting")->render();
echo $pdocrud->loadPluginJsCode("select2","select");//to add plugin call on select elements
?>