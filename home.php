<?php
  $page_title = 'Home Page';
  require_once('includes/load.php');
  if (!$session->isUserLoggedIn(true)) { redirect('index.php', false);}
  $users  = find_by_id('users', $_SESSION['user_id']);
  $agency = find_by_id('agencies', $users['agency_id']);
?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-12">
    <?php echo display_msg($msg); ?>
  </div>
 <div class="col-md-12">
    <div class="panel">
      <div class="jumbotron text-center">
         <h2>পিডিএস সিস্টেম এ আপনাকে স্বাগতম <?php if (isset($agency['name_BN'])) echo $agency['name_BN'] ?></h2>
      </div>
    </div>
 </div>
</div>
<?php include_once('layouts/footer.php'); ?>
