<?php
  ob_start();
  require_once('includes/load.php');
  if($session->isUserLoggedIn(true)) { redirect('home.php', false);}
?>
<?php include_once('layouts/header.php'); ?>

<div class="login-page">
    <div class="text-center">
      <img src="layouts/images/bangladesh-govt.png" width="100" /> <h3>মহিলা ও শিশু বিষয়ক মন্ত্রণালয় </h3> <h4>পিডিএস সিস্টেম</h4>
     </div>
     <?php echo display_msg($msg); ?>
      <form method="post" action="auth.php" class="clearfix">
        <div class="form-group">
              <label for="username" class="control-label">লগইন আইডি</label>
              <input type="name" class="form-control" name="username" style="background: none; border: 1px solid #CFA5D6;">
        </div>
        <div class="form-group">
            <label for="Password" class="control-label">পাসওয়ার্ড</label>
            <input type="password" name= "password" class="form-control" style="background: none; border: 1px solid #CFA5D6;">
        </div>
        <div class="form-group">
                <button type="submit" class="btn btn-primary  pull-right">লগইন করুন</button>
        </div>
    </form>
    


    <div style="font-size:14px; text-decoration: underline; text-align: center; margin-top: 10px;">সমস্যা ও কারিগরী সাহায্য পাওয়ার জন্য</div>
    <div style="font-size:12px; text-decoration: none; text-align: center">ফোন করুনঃ +৮৮০১৭৩৪৬৪৬৮০২</div>
    <div style="font-size:12px; text-decoration: none; text-align: center">ইমেইল করুনঃ programmer@mowca.gov.bd</div>
    
<?php include_once('layouts/footer.php'); ?>
  <table style="border: 1px solid white; margin: 10px">
    <tr>
    <td><a href="dashboard/index.php" >মহিলা বিষয়ক অধিদপ্তরের উপপরিচালকগণের তথ্য দেখুন</a></td>
    <td><a href="dashboard/index.php" >মহিলা বিষয়ক অধিদপ্তরের উপজেলা কর্মকর্তা'র তথ্য দেখুন</a></td>
    </tr>
    <tr>
    <td><a href="dashboard/index.php" >জাতীয় মহিলা সংস্থা'র জেলা কর্মকর্তা'র তথ্য দেখুন</a></td>
    <td><a href="dashboard/index.php" >জাতীয় মহিলা সংস্থা'র উপজেলা কর্মকর্তা'র তথ্য দেখুন</a></td>
    </tr>
  </table>
</div>
</div>
