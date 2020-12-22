<?php
@session_start();
/*enable this for development purpose */
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
error_reporting(-1);
date_default_timezone_set(@date_default_timezone_get());
define('PDOCrudABSPATH', dirname(__FILE__) . '/');
require_once PDOCrudABSPATH . "config/config.php";
spl_autoload_register('pdocrudAutoLoad');

function pdocrudAutoLoad($class) {
    if (file_exists(PDOCrudABSPATH . "classes/" . $class . ".php"))
        require_once PDOCrudABSPATH . "classes/" . $class . ".php";
}

if (isset($_REQUEST["pdocrud_instance"])) {
    $fomplusajax = new PDOCrudAjaxCtrl();
    $fomplusajax->handleRequest();
}

//example of how to add action function
function beforeloginCallback($data, $obj) {  
    $data["users"]["password"] = md5($data["users"]["password"]);
    return $data;
}
 
 
 
function afterLoginCallBack($data, $obj) {
    @session_start();
    if (count($data)) {
        $_SESSION["data"] = $data;
    }
    else{
        //no record found so don't redirect
        $obj->formRedirection("");
    }
}

function getAmount($data, $obj){
    //you can use the print_r($data) to understand how to get the various fields and their values
    $pdomodel = $obj->getPDOModelObj();
    $category_id = $data["post_data"]["value"];
    $pdomodel->where("expense_category_id",$category_id,"=");
    $output =  $pdomodel->select("expense_category");
    echo $output[0]["amount"];
}

function beforeUpdateCallBack($data, $obj) {
    $data['organizations']['updated_by'] = $_SESSION['user_id'];
    $data['organizations']['updated_at'] = date('Y/m/d h:i:s a', time());
    return $data;
}

function beforeInsertSanctionedPost($data, $obj) {
 $pdomodel = $obj->getPDOModelObj();
 $designation_id = $data['sanctionedposts']['designation_id'];
 $organization_id = $data['sanctionedposts']['organization_id'];
 $pdomodel->where("id",$designation_id,"=");
 $designation =  $pdomodel->select("designations");

 $pdomodel->where("id",$organization_id,"=");
 $organization =  $pdomodel->select("organizations");
 
 $data['sanctionedposts']['designation_name'] = $designation[0]['name'];
 $data['sanctionedposts']['organization_name'] = $organization[0]['name'];
 $data['sanctionedposts']['created_at'] = date('Y/m/d h:i:s a', time());
 $data['sanctionedposts']['status'] = "Vacant";
 return $data;

}

function beforeInsertPosting($data, $obj) {
    // $pdocrud = new PDOCrud(); 
    // $pdomodel = $pdocrud->getPDOModelObj();
    $data['posting']['created_at'] = date('Y/m/d h:i:s a', time());
    $data['posting']['updated_at'] = date('Y/m/d h:i:s a', time());
    // $status = 'Vacant';
    // if($data['posting']['current'] == 'Yes' && $data['posting']['type_of_posting'] == 1){
    //     $status = 'Filled';
    // }
    // $updateData = array(
    //     'status' => $status
    // );
    // $pdomodel->where("id", $data['posting']['sanctionedpost_id']);
    // $pdomodel->update("sanctionedposts", $updateData);
    return $data;

}

function beforeUpdatePosting($data, $obj) {
    //$pdocrud = new PDOCrud(); 
    //$pdomodel = $pdocrud->getPDOModelObj();
    $data['posting']['updated_at'] = date('Y/m/d h:i:s a', time());
    // $status = 'Vacant';
    // if($data['posting']['current'] == 'Yes' && $data['posting']['type_of_posting'] == 1){
    //     $status = 'Filled';
    // }
    // $updateData = array(
    //     'status' => $status
    // );
    // $pdomodel->where("id", $data['posting']['sanctionedpost_id']);
    // $pdomodel->update("sanctionedposts", $updateData);
    return $data;

}

    
    function beforeEmployeeInsertCallBack($data, $obj) {
        $data['employees']['updated_by'] = $_SESSION['user_id'];
        $data['employees']['updated_at'] = date('Y/m/d h:i:s a', time());
        return $data;
    }

    function beforeEmployeeUpdateCallBack($data, $obj) {
        $data['employees']['updated_by'] = $_SESSION['user_id'];
        $data['employees']['updated_at'] = date('Y/m/d h:i:s a', time());
        
        $pdomodel = $obj->getPDOModelObj();
        $updateData = array(
            $status = 'Vacant'
        );
        
        $pdomodel->where("id", $data['employees']['posting_sanctionedpost_id']);
        $pdomodel->update("sanctionedposts", $updateData);
        return $data;
    }


    
    function beforeInsertContactCallBack($data, $obj) {
        $pdomodel = $obj->getPDOModelObj();
        
        $designation_id = $data['contact_directory']['designation_id'];
        $office_id = $data['contact_directory']['office_id'];
        $organization_level_id = $data['contact_directory']['organization_level_id'];
        $agency_id = $data['contact_directory']['agency_id'];
        $division_id = $data['contact_directory']['division_id'];
        $district_id = $data['contact_directory']['district_id'];
        $upazila_id = $data['contact_directory']['upazila_id'];
        
        $pdomodel->where("id",$designation_id,"=");
        $designation =  $pdomodel->select("designations");
        $pdomodel->where("id",$designation_id,"=");
        $designation =  $pdomodel->select("designations");
        $pdomodel->where("id",$office_id,"=");
        $organization_types =  $pdomodel->select("organization_types");
        $pdomodel->where("id",$organization_level_id,"=");
        $organization_levels =  $pdomodel->select("organization_levels");
        $pdomodel->where("id",$agency_id,"=");
        $agencies =  $pdomodel->select("agencies");

        $pdomodel->where("id",$division_id,"=");
        $divisions =  $pdomodel->select("divisions");
        $pdomodel->where("id",$district_id,"=");
        $districts =  $pdomodel->select("districts");
        $pdomodel->where("id",$upazila_id,"=");
        $upazilas =  $pdomodel->select("upazilas");

        
        $data['contact_directory']['designation_name'] = $designation[0]['name'];
        $data['contact_directory']['organization_level_name'] = $organization_levels[0]['name_BN'];
        $data['contact_directory']['office_name'] = $organization_types[0]['name_BN'];
        $data['contact_directory']['agency_name'] = $agencies[0]['name_BN'];
        $data['contact_directory']['division_name'] = $divisions[0]['name_BN'];
        $data['contact_directory']['district_name'] = $districts[0]['name_BN'];
        $data['contact_directory']['upazila_name'] = $upazilas[0]['name_BN'];
        $data['contact_directory']['updated_at'] = date('Y/m/d h:i:s a', time());
        return $data;
        
    }

