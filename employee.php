<?php
  //https://pdocrud.com/demo/pages/related-data
  $page_title = 'All Employees';
  require_once('includes/load.php');
  require_once ('libs/script/pdocrud.php');
  include_once('layouts/header.php');
  page_require_level(2);

$pdocrud = new PDOCrud(false, "pure", "pure");
$pdocrud->addPlugin("select2");//to add plugin
//$pdocrud->multiTableRelationDisplay("tab", "প্রোফাইল");

$pEmployeePosting = new PDOCrud(false, "pure", "pure");
$pEmployeePosting->dbTable("posting");

$pEmployeePosting->formFields(array("sanctionedpost_id","type_of_posting","employee_id", "start_date", "end_date", "current"));
$pEmployeePosting->crudTableCol(array(
  "sanctionedpost_id",
  "employee_id",
  "start_date",
  "end_date",
  "current"
));

$pEmployeePosting->crudTableCol(array("sanctionedpost_id","type_of_posting","start_date","end_date","current"));
$pEmployeePosting->fieldRenameLable("sanctionedpost_id", "পদবী");
$pEmployeePosting->fieldRenameLable("type_of_posting", "টাইপ");
$pEmployeePosting->fieldRenameLable("start_date", "শুরু");
$pEmployeePosting->fieldRenameLable("end_date", "শেষ");
$pEmployeePosting->fieldRenameLable("current", "কর্মরত কিনা?");

$pEmployeePosting->colRename("sanctionedpost_id", "পদবী");
$pEmployeePosting->colRename("type_of_posting", "টাইপ");
$pEmployeePosting->colRename("start_date", "শুরু");
$pEmployeePosting->colRename("end_date", "শেষ");
$pEmployeePosting->colRename("current", "কর্মরত কিনা?");

$pEmployeePosting->fieldTypes("sanctionedpost_id", "select"); //change type to select
$pEmployeePosting->fieldDataBinding("sanctionedpost_id", "sanctionedposts", "id", array("designation_name", "organization_name"), "db", " --> ");
$pEmployeePosting->fieldTypes("type_of_posting", "select"); //change type to select
$pEmployeePosting->fieldDataBinding("type_of_posting", "type_of_posting", "id", "name_BN", "db"); //load select data
$pEmployeePosting->fieldTypes("reason_of_posting", "select"); //change type to select
$pEmployeePosting->fieldDataBinding("reason_of_posting", "reason_of_postings", "id", "name", "db"); //load select data
$pEmployeePosting->fieldTypes("current", "select");
$pEmployeePosting->fieldDataBinding("current", array("Yes"=>"Yes","No"=>"No"), "", "","array");
$pEmployeePosting->fieldHideLable("employee_id");
$pEmployeePosting->fieldDataAttr("employee_id", array("style"=>"display:none"));
$pEmployeePosting->fieldHideLable("created_at");
$pEmployeePosting->fieldDataAttr("created_at", array("style"=>"display:none"));
$pEmployeePosting->fieldDataAttr("created_at", array("disabled"=>"disabled"));

$pdocrud->multiTableRelation("id", "employee_id", $pEmployeePosting);
//$pEmployeePosting->multiTableRelationDisplay("tab", "পোস্টিং");


$pEmployeePromotion = new PDOCrud(false, "pure", "pure");
$pEmployeePromotion->dbTable("promotion");


$pdocrud->multiTableRelation("id", "employee_id", $pEmployeePromotion);
//$pEmployeePromotion->multiTableRelationDisplay("tab", "প্রোমোশন");

if (isset($user['agency_id'])) {
  $pdocrud->where("agency_id", $user['agency_id'], "=");
  
  $agency_query = "select name, name_BN from agencies where id = {$user['agency_id']} ";
}
else{
  $agency_query = "select name, name_BN from `agencies` WHERE 1";
}


$pdocrud->fieldDataBinding("agency_id", $agency_query, "id", "name_BN", "sql");

$pdocrud->addPlugin("ckeditor");

if (isset($user['agency_id'])) {
  $agency_query = "select id, name, name_BN from agencies where id = {$user['agency_id']} ";
}
else{
  $agency_query = "select id, name, name_BN from `agencies` WHERE 1";
}

$pdocrud->tableHeading("কর্মকর্তা/কর্মচারী ডাটাবেজ");

$pdocrud->fieldTypes("employee_image", "image");//change type to image
//$pdocrud->formFields (array("employee_image"));

$pdocrud->fieldTypes("agency_id", "select"); //change type to select
$pdocrud->fieldDataBinding("agency_id", $agency_query, "id", "name_BN", "sql");

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

$pdocrud->crudTableCol(array("name_BN","national_id", "mobile_no", "email", "updated_at"));

$pdocrud->colRename("name_BN", "নাম");
$pdocrud->colRename("mobile_no", "মোবাইল");
$pdocrud->colRename("email", "ইমেইল");
$pdocrud->colRename("updated_at", "তথ্য পরিবর্তনের তারিখ");

$pdocrud->fieldRenameLable("code", "কোড");//Rename label
$pdocrud->fieldRenameLable("agency_id", "দপ্তর");//Rename label
$pdocrud->fieldRenameLable("name_BN", "নাম (বাংলা)");//Rename label
$pdocrud->fieldRenameLable("name_EN", "নাম (ইংরেজি)");//Rename label
$pdocrud->fieldRenameLable("national_id", "জাতীয় পরিচয়পত্র নং");
$pdocrud->fieldRenameLable("mobile_no", "মোবাইল");
$pdocrud->fieldRenameLable("alternate_mobile_no", "বিকল্প মোবাইল");
$pdocrud->fieldRenameLable("email", "ইমেইল");
$pdocrud->fieldRenameLable("mother_name", "মার নাম (বাংলায়)");
$pdocrud->fieldRenameLable("father_name", "বাবার নাম (বাংলায়)");
$pdocrud->fieldRenameLable("quota_id", "কোটা");
$pdocrud->fieldRenameLable("sex_id", "লিঙ্গ");
$pdocrud->fieldRenameLable("religion_id", "ধর্ম");
$pdocrud->colRename("marital_status_id", "বৈবাহিক অবস্থা");
$pdocrud->fieldRenameLable("bloodgroup_id", "রক্তের গ্রুপ");
$pdocrud->fieldRenameLable("dob", "জন্ম তারিখ");
$pdocrud->fieldRenameLable("prl_date", "পিআরএল তারিখ");
$pdocrud->fieldRenameLable("permanent_address", "স্থায়ী ঠিকানা");
$pdocrud->fieldRenameLable("details", "অন্যান্য তথ্য");

$pdocrud->fieldRenameLable("permanent_division_id", "স্থায়ী বিভাগ");
$pdocrud->fieldRenameLable("permanent_district_id", "স্থায়ী জেলা");
$pdocrud->fieldRenameLable("permanent_upazila_id", "স্থায়ী উপজেলা");
$pdocrud->fieldRenameLable("educational_qualification_id", "সর্বশেষ শিক্ষাগত যোগ্যতা");
$pdocrud->fieldRenameLable("joining_govt_service_date", "সকারি চাকুরীতে যোগদানের তারিখ");
$pdocrud->fieldRenameLable("present_place_joing_date", "বর্তমান কর্মস্থলে যোগদানের তারিখ");
$pdocrud->fieldRenameLable("present_post_joining_date", "বর্তমান পদে যোগদানের তারিখ");
$pdocrud->fieldRenameLable("last_promoted_post_id", "সর্বশেষ পদোন্নতি প্রাপ্ত পদ");
$pdocrud->fieldRenameLable("last_promotion_date", "সর্বশেষ পদোন্নতির তারিখ");

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
$pdocrud->fieldDataAttr("religion_name", array("style"=>"display:none"));
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

$pdocrud->fieldDisplayOrder(array("agency_id","code","name_BN","name_EN","mother_name", "father_name","dob","prl_date","national_id", "mobile_no",
"alternate_mobile_no", "email", "quota_id","sex_id", "religion_id", "bloodgroup_id","educational_qualification_id","marital_status_id",
"permanent_division_id","permanent_district_id", "permanent_upazila_id", "permanent_address",
"joining_govt_service_date","present_place_joing_date", "present_post_joining_date",
"last_promoted_post_id", "last_promotion_date", "details",
"created_at", "created_by", "updated_at", "updated_by"
));
$pdocrud->fieldNotMandatory("alternate_mobile_no");
$pdocrud->fieldNotMandatory("quota_id");
$pdocrud->fieldNotMandatory("sex_id");
$pdocrud->fieldNotMandatory("religion_id");
$pdocrud->fieldNotMandatory("bloodgroup_id");
$pdocrud->fieldNotMandatory("marital_status_id");
$pdocrud->fieldNotMandatory("name_EN");
$pdocrud->fieldNotMandatory("code");
$pdocrud->fieldNotMandatory("details");
$pdocrud->fieldNotMandatory("permanent_address");
$pdocrud->fieldNotMandatory("educational_qualification_id");
$pdocrud->fieldNotMandatory("last_promoted_post_id");
$pdocrud->fieldNotMandatory("last_promotion_date");

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
echo $pdocrud->loadPluginJsCode("select2","select");//to add plugin call on select elements
?>