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
  <div class="col-md-12">
  <h3>এক নজরে সার্বিক অবস্থা</h3>
  <table id="summary" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>প্রতিষ্ঠান</th>
                <th>পদবী</th>
                <th>জেলা</th>
                <th>উপজেলা</th>
                <th>মোট পদ</th>
                <th>পূরনকৃত</th>
                <th>খালি</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>উপ-পরিচালকের কার্যালয়</th>
                <th>উপ-পরিচালক</th>
                <th>ভোলা</th>
                <th>বোরহানউদ্দীন</th>
                <th>১</th>
                <th>০</th>
                <th style="background-color: green; color: white">১</th>
            </tr>
            <tr>
                <th>উপ-পরিচালকের কার্যালয়</th>
                <th>উপ-পরিচালক</th>
                <th>রাঙ্গামাটি</th>
                <th>রাঙ্গামাটি সদর</th>
                <th>১</th>
                <th>১</th>
                <th style="background-color: red; color: white">০</th>
            </tr>
            <tr>
                <th>উপজেলা মহিলা বিষয়ক কর্মকর্তার কার্যালয়</th>
                <th>উপজেলা মহিলা বিষয়ক কর্মকর্তা</th>
                <th>রাঙ্গামাটি</th>
                <th>রাঙ্গামাটি সদর</th>
                <th>১</th>
                <th>১</th>
                <th style="background-color: red; color: white">০</th>
            </tr>
            <tr>
                <th>উপ-পরিচালকের কার্যালয়</th>
                <th>উপ-পরিচালক</th>
                <th>রাঙ্গামাটি</th>
                <th>রাঙ্গামাটি সদর</th>
                <th>১</th>
                <th>১</th>
                <th>০</th>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <th>প্রতিষ্ঠান</th>
                <th>জেলা</th>
                <th>উপজেলা</th>
                <th>পদবী</th>
                <th>মোট পদ</th>
                <th>পূরনকৃত</th>
                <th>খালি</th>
            </tr>
        </tfoot>
    </table>
  </div>
  </div>



<?php include_once('layouts/footer.php'); ?>
