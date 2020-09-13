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


function beforeInsertCallBack($data, $obj) {
    //print_r($data);
     $data['organizations']['created_by'] = $_SESSION['user_id'];
     $data['organizations']['updated_by'] = $_SESSION['user_id'];
     $data['organizations']['created_at'] = date('Y/m/d h:i:s a', time());
     $data['organizations']['updated_at'] = date('Y/m/d h:i:s a', time());
     return $data;
  
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
     return $data;
  
 }

 function beforeInsertPosting($data, $obj) {
    $pdomodel = $obj->getPDOModelObj();
    $designation_id = $data['posting']['designation_id'];
    $organization_id = $data['posting']['organization_id'];
    $pdomodel->where("id",$designation_id,"=");
    $designation =  $pdomodel->select("designations");

    $pdomodel->where("id",$organization_id,"=");
    $organization =  $pdomodel->select("organizations");
    
    $data['posting']['designation_name'] = $designation[0]['name'];
    $data['posting']['organization_name'] = $organization[0]['name'];
    $data['posting']['created_at'] = date('Y/m/d h:i:s a', time());
    return $data;
 
}


function beforeInsertMovein($data, $obj) {
//http://demo.digitaldreamstech.com/PDOModel/documentation/pdo/insert.php

    $pdomodel = $obj->getPDOModelObj();
    $sanctionedpost_id = $data['movein']['sanctionedpost_id'];
    $pdomodel->where("id",$sanctionedpost_id,"=");
    $sanctionedpost =  $pdomodel->select("sanctionedposts");
    
    $data['movein']['created_at'] = date('Y/m/d h:i:s a', time());

    $pdocrud = new PDOCrud(); 
    $insertData = array(
        "designation_id" => $sanctionedpost[0]['designation_id'], 
        "designation_name" =>  $sanctionedpost[0]['designation_name'], 
        "organization_id" =>$sanctionedpost[0]['organization_id'],
        "organization_name" => $sanctionedpost[0]['organization_name'],
        "employee_id" => $data['movein']['employee_id'],
        "start_date" => $data['movein']['join_date'],
        "type_of_posting" => $data['movein']['type_of_posting'],
        "reason_of_posting" => $data['movein']['reason_of_posting'],
        "created_at" => date('Y/m/d h:i:s a', time()),
        "current" => "Yes"
    );
    $pdocrud->getPDOModelObj()->insert("posting", $insertData);
    
    return $data;
 
}

