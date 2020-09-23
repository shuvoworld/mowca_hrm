<?php
  //https://pdocrud.com/demo/pages/related-data
  $page_title = 'Contact Directory';
  require_once('includes/load.php');
  require_once ('libs/script/pdocrud.php');
  include_once('layouts/header.php');
  page_require_level(2);


$pdocrud = new PDOCrud(false, "pure", "pure");

$pdocrud->addPlugin("select2");//to add plugin

$pdocrud->crudTableCol(array("name","agency_name", "office_name", "designation_name", "mobile_no", "email", "updated_at"));
$pdocrud->colRename("নাম", "দপ্তর/সংস্থা", "অফিস", "পদবী", "মোবাইল",  "ইমেইল", "তথ্য পরিবর্তনের তারিখ");

if (isset($user['agency_id'])) {
  $agency_query = "select id, name, name_BN from agencies where id = {$user['agency_id']} ";
}
else{
  $agency_query = "select id, name, name_BN from `agencies` WHERE 1";
}

$pdocrud->fieldTypes("agency_id", "select"); //change type to select
$pdocrud->fieldDataBinding("agency_id", $agency_query, "id", "name_BN", "sql");

$pdocrud->fieldTypes("organization_level_id", "select"); //change type to select
$pdocrud->fieldDataBinding("organization_level_id", "organization_levels", "id", "name_BN", "db");

$pdocrud->fieldTypes("office_id", "select"); //change type to select
$pdocrud->fieldDataBinding("office_id", "organization_types", "id", "name", "db");

$pdocrud->fieldTypes("designation_id", "select"); //change type to select
$pdocrud->fieldDataBinding("designation_id", "designations", "id", "name", "db");

$pdocrud->fieldTypes("division_id", "select"); //change type to select
$pdocrud->fieldDataBinding("division_id", "divisions", "id", "name_BN", "db"); //load select data

$pdocrud->fieldTypes("district_id", "select"); //change type to select
$pdocrud->fieldDataBinding("district_id", "districts", "id", "name_BN", "db"); //load select data

$pdocrud->fieldTypes("upazila_id", "select"); //change type to select
$pdocrud->fieldDataBinding("upazila_id", "upazilas", "id", "name_BN", "db"); //load select data

$pdocrud->fieldDependent("district_id", "division_id", "division_id");
$pdocrud->fieldDependent("upazila_id", "district_id", "district_id");



$pdocrud->fieldRenameLable("agency_id", "দপ্তর/সংস্থা");//Rename label
$pdocrud->fieldRenameLable("name", "নাম");//Rename label
$pdocrud->fieldRenameLable("office_id", "প্রতিষ্ঠান/প্রকল্প");//Rename label।
$pdocrud->fieldRenameLable("organization_level_id", "কোন পর্যায়ের অফিস");//Rename label
$pdocrud->fieldRenameLable("mobile_no", "মোবাইল");//Rename label
$pdocrud->fieldRenameLable("alternate_mobile_no", "বিকল্প মোবাইল");//Rename label
$pdocrud->fieldRenameLable("dob", "জন্ম তারিখ");//Rename label
$pdocrud->fieldRenameLable("email", "ইমেইল");//Rename label
$pdocrud->fieldRenameLable("telephone", "টেলিফোন");//Rename label
$pdocrud->fieldRenameLable("division_id", "বিভাগ");//Rename label
$pdocrud->fieldRenameLable("district_id", "জেলা");//Rename label
$pdocrud->fieldRenameLable("upazila_id", "উপজেলা");//Rename label
$pdocrud->fieldRenameLable("designation_id", "পদবী");//Rename label


$pdocrud->formFieldValue("updated_by", $user["id"]);
$pdocrud->fieldDataAttr("updated_by", array("disabled"=>"disabled"));
$pdocrud->fieldDataAttr("updated_at", array("disabled"=>"disabled"));


$pdocrud->fieldHideLable("agency_name");
$pdocrud->fieldDataAttr("agency_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("agency_name", array("disabled"=>"disabled"));
$pdocrud->fieldHideLable("office_name");
$pdocrud->fieldDataAttr("office_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("office_name", array("disabled"=>"disabled"));
$pdocrud->fieldHideLable("organization_level_name");
$pdocrud->fieldDataAttr("organization_level_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("organization_level_name", array("disabled"=>"disabled"));
$pdocrud->fieldHideLable("designation_name");
$pdocrud->fieldDataAttr("designation_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("designation_name", array("disabled"=>"disabled"));
$pdocrud->fieldHideLable("division_name");
$pdocrud->fieldDataAttr("division_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("division_name", array("disabled"=>"disabled"));
$pdocrud->fieldHideLable("district_name");
$pdocrud->fieldDataAttr("district_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("district_name", array("disabled"=>"disabled"));
$pdocrud->fieldHideLable("upazila_name");
$pdocrud->fieldDataAttr("upazila_name", array("style"=>"display:none"));
$pdocrud->fieldDataAttr("upazila_name", array("disabled"=>"disabled"));



$pdocrud->fieldDisplayOrder(array(
  "agency_id","organization_level_id", "office_id", 
  "name","designation_id", "mobile_no","telephone", "alternate_mobile_no",
  "email", "dob", "division_id", "district_id", "upazila_id",
  "updated_at", "updated_by"
));

$pdocrud->fieldGroups("agency",array("agency_id", "organization_level_id", "office_id"));
$pdocrud->fieldGroups("Naming",array("name","designation_id",));
$pdocrud->fieldGroups("contact",array("mobile_no","telephone", "alternate_mobile_no"));
$pdocrud->fieldGroups("email",array("email", "dob"));
$pdocrud->fieldGroups("geolocation",array("division_id", "district_id", "upazila_id"));
$pdocrud->fieldGroups("update_info",array("updated_at", "updated_by"));


$pdocrud->addCallback("before_insert", "beforeInsertContactCallBack");
echo $pdocrud->dbTable("contact_directory")->render();
echo $pdocrud->loadPluginJsCode("select2","select");//to add plugin call on select elements
?>