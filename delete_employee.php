<?php
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
?>
<?php
  $employee = find_by_id('employees',(int)$_GET['id']);
  if(!$employee){
    $session->msg("d","Missing Employee id.");
    redirect('employees.php');
  }
?>
<?php
  $delete_id = delete_by_id('employees',(int)$employee['id']);
  if($delete_id){
      $session->msg("s","Information deleted.");
      redirect('employees.php');
  } else {
      $session->msg("d","Info deletion failed.");
      redirect('employees.php');
  }
?>
