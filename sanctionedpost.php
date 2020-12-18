<?php
  //https://pdocrud.com/demo/pages/related-data
  $page_title = 'All Posts';
  require_once('includes/load.php');
  //require_once('includes/load.php');
  require_once ('libs/script/pdocrud.php');
  include_once('layouts/header.php');
  page_require_level(1);
  // Checkin What level user has permission to view this page
  // page_require_level(2);

   // You need to set template name and sking name 'pure' in settings page
// It can be done directly in config page also      

$pdocrud = new PDOCrud(false, "pure", "pure");
$pdocrud->addPlugin("select2");//to add plugin 

$pdocrud->crudTableCol(array("designation_name","organization_name", "division_id","district_id", "upazila_id", "status"));
$pdocrud->fieldRenameLable("designation_id", "পদবী");
$pdocrud->fieldRenameLable("organization_id", "প্রতিষ্ঠান");
$pdocrud->fieldRenameLable("status", "শুন্য/পূরনকৃত?");

$pdocrud->colRename("designation_id", "পদবী");
$pdocrud->colRename("organization_id", "প্রতিষ্ঠান");
$pdocrud->colRename("status", "শুন্য/পূরনকৃত?");
$pdocrud->colRename("division_id", "বিভাগ");
$pdocrud->colRename("district_id", "জেলা");
$pdocrud->colRename("upazila_id", "উপজেলা");

$pdocrud->fieldTypes("designation_id", "select"); //change type to select
$pdocrud->fieldDataBinding("designation_id", "designations", "id", "name", "db"); //load select data


$pdocrud->fieldTypes("division_id", "select"); //change type to select
$pdocrud->fieldDataBinding("division_id", "divisions", "id", "name_BN", "db");

$pdocrud->fieldTypes("district_id", "select"); //change type to select
$pdocrud->fieldDataBinding("district_id", "districts", "id", "name_BN", "db");

$pdocrud->fieldTypes("upazila_id", "select"); //change type to select
$pdocrud->fieldDataBinding("upazila_id", "upazilas", "id", "name_BN", "db");

$pdocrud->fieldTypes("organization_id", "select"); //change type to select
$pdocrud->fieldDataBinding("organization_id", "organizations", "id", "name", "db"); //load select data

$pdocrud->fieldDependent("district_id", "division_id", "division_id");
$pdocrud->fieldDependent("upazila_id", "district_id", "district_id");
$pdocrud->fieldDependent("organization_id", "upazila_id", "upazila_id");

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

echo $pdocrud->dbTable("sanctionedposts")->render();
echo $pdocrud->loadPluginJsCode("select2","select");//to add plugin call on select elements
?>