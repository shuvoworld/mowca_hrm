<?php
  $page_title = 'All Employees';
  require_once('includes/load.php');
  //require_once('includes/load.php');
  require_once ('libs/script/pdocrud.php');
  include_once('layouts/header.php');
  page_require_level(1);
  // Checkin What level user has permission to view this page
  // page_require_level(2);

   // You need to set template name and sking name 'pure' in settings page
// It can be done directly in config page also      
$pdocrud = new PDOCrud(false, "bootstrap", "pure");// or you can set template name and skin name as pure in constructor.
echo $pdocrud->dbTable("marital_statuses")->render();
?>