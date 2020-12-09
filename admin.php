<?php
  $page_title = 'Admin Home Page';
    require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(1);
   include_once('layouts/header.php');
   require_once ('libs/script/pdocrud.php');
   $pdocrud = new PDOCrud();

  $all_employees = mysqli_num_rows($db->query("select * FROM employees where is_active = 1"));
  $all_organizations = mysqli_num_rows($db->query("select * FROM organizations"));
?>
<div class="row">
   <div class="col-md-6">
     <?php echo display_msg($msg); ?>
   </div>
</div>
  <div class="row">

  <div class="row">
   <div class="col-md-12">
      <div class="panel">
        <div class="jumbotron text-center">
           <h2>মহিলা ও শিশু বিষয়ক মন্ত্রণালয়ের পিডিএস সিস্টেম এ আপনাকে স্বাগতম</h2>
        </div>
      </div>
   </div>
  </div>

  <div class="row">
      <?php

    $pdocrud->setQuery(
            "SELECT
	    organizations.name_BN as 'প্রতিষ্ঠান',
	    COUNT(sanctionedposts.id) AS 'মঞ্জুরীকৃতপদ'
        FROM
	    sanctionedposts
        LEFT JOIN organizations ON sanctionedposts.organization_id = organizations.id
    ");
    echo $pdocrud->render("SQL");
      ?>
  </div>



<?php include_once('layouts/footer.php'); ?>
