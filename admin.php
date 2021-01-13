<?php
  $page_title = 'Admin Home Page';
    require_once('includes/load.php');
   page_require_level(2);
   include_once('layouts/header.php');
   require_once ('libs/script/pdocrud.php');
   
?>
<div class="row">
   <div class="col-md-6">
     <?php echo display_msg($msg); ?>
   </div>
</div>
  <div class="row">

  <div class="row">
  <div class="col-md-12">
  <h3>ড্যাশবোর্ড</h3>
   <?php
    $pdocrud = new PDOCrud();
    
    $pdocrud->tableHeading("সার্বিক অবস্থা");
    
    $pdocrud->addFilter("agency_filter", "দপ্তর/সংস্থা", "agency", "dropdown");
    $pdocrud->setFilterSource("agency_filter", "agencies", "name_BN", "name_BN as agency", "db");
    
    $pdocrud->addFilter("status_filter", "পদের স্ট্যাটাস", "status", "radio");
    $pdocrud->setFilterSource("status_filter", array("Vacant" => "Vacant", "Filled" => "Filled"), "", "", "array");
    
    $pdocrud->addFilter("DistrictFilter", "জেলা", "district", "dropdown");
    $pdocrud->setFilterSource("DistrictFilter", "districts", "name_BN", "name_BN as district", "db");
    
    $pdocrud->setSettings("addbtn", false);
    $pdocrud->setSettings("editbtn", false);
    $pdocrud->setSettings("viewbtn", false);
    $pdocrud->setSettings("delbtn", false);
    $pdocrud->setSettings("actionbtn", false);
    echo $pdocrud->dbTable("v_poststatus")->render();
   ?>
  </div>
  </div>



<?php include_once('layouts/footer.php'); ?>
