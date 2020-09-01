<?php
$page_title = 'কর্মচারী তথ্য যোগ করুন';

require_once 'includes/load.php';
// Checkin What level user has permission to view this page
page_require_level(2);

$agencies = find_all('agencies');
$sex = find_all('sex');
$religions = find_all('religions');
$quotas = find_all('quotas');
$bloodgroup = find_all('bloodgroups');
$educational_qualifications = find_all('educational_qualifications');
$permanent_divisions = find_all('divisions');
$permanent_districts = find_all('districts');
$permanent_upazilas = find_all('upazilas');
$present_divisions = find_all('divisions');
$present_districts = find_all('districts');
$present_upazilas = find_all('upazilas');
$organizations = find_all('organizations');
$designations = find_all('designations');
$error = false;
$errors = array();
$errmsg = '';
if (isset($_POST['add_employee'])) {
    // if (empty($_POST['project_id']) && empty($_POST['other_name'])) {
    //     $error = true;
    //     $errors['project_id'] = "প্রকল্প সিলেক্ট করুন";
    // }

    if ($error == false) {

        if (isset($_SESSION['user_id'])) {
            $user = find_by_id('users', $_SESSION['user_id']);
        }

        if (isset($user['agency_id'])) {
            $agency_id = $user['agency_id'];
        } else {
            $agency_id = (int) $db->escape($_POST['agency_id']);
        }

        $agency = find_by_id('agencies', $agency_id);
        $project_id = remove_junk($db->escape($_POST['project_id']));
        $project = find_by_id('projects', $project_id);
        $other_name = remove_junk($db->escape($_POST['other_name']));
        $beneficiaries = (int) $db->escape($_POST['beneficiaries']);
        $is_training = (int) $db->escape($_POST['is_training']);
        $implementing_body = remove_junk($db->escape($_POST['implementing_body']));
        $note = $db->escape($_POST['note']);

        $query = "INSERT INTO project_reports (";
        $query .= " agency_id,agency_name,month_id,month_name,year_id,year_name, project_id, project_name,other_name,is_training,implementing_body, beneficiaries, note, is_active, created_at";
        $query .= ") VALUES (";
        $query .= " '{$agency_id}', '{$agency['name_BN']}','{$month_id}','{$month['name_BN']}','{$year_id}', '{$year['name_BN']}','{$project_id}','{$project['name']}','{$other_name}', '{$is_training}','{$implementing_body}', '{$beneficiaries}', '{$note}', 1, now()";
        $query .= ")";
        if ($db->query($query)) {
            $session->msg('s', "তথ্য যোগ করা হয়েছে ");
            redirect('employees.php', false);
        } else {
            $session->msg('d', ' Sorry failed to added!');
            redirect('add_employee.php', false);
        }

    } else {
        foreach ($errors as $error) {
            $errmsg .= $error . '<br />';
        }
    }

}

?>
<?php include_once 'layouts/header.php';?>
<div class="row">
  <div class="col-md-12">
      <?php if ($errmsg != '') {?>
          <div class="alert alert-danger">
              <?php
echo $errmsg;
} else {
    echo display_msg($msg);
}

?>
          </div>

  </div>
</div>
  <div class="row">
  <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-heading">
          <strong>
            <span class="glyphicon glyphicon-th"></span>
            <span>প্রকল্প/কর্মসুচি/কার্যক্রম</span>
         </strong>
        </div>
        <div class="panel-body">
         <div class="col-md-12">
          <form method="POST" action="add_project_report.php" class="clearfix">
          <?php if ($user['agency_id'] == null) {?>
            <div class="form-group">
               <div class="row">
                <div class="col-md-4">
                <label for="agency_id">প্রতিবেদনাধিন সংস্থা</label>
                <select class="form-control" name="agency_id" id="agency_id">
                <option value="">নির্বাচন করুন</option>
                  <?php foreach ($agencies as $agency): ?>
                   <option value="<?php echo $agency['id']; ?>"><?php echo $agency['name_BN']; ?></option>
                <?php endforeach;?>
                </select>
                </div>
                </div>
                </div>
<?php }?>

            <div class="form-group">
               <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="text" class="form-control"  name="name_BN" placeholder="কর্মকর্তা/কর্মচারী'র নাম (বাংলায়)*">
               </div>
              </div>

              <div class="form-group">
               <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="text" class="form-control"  name="name_EN" placeholder="কর্মকর্তা/কর্মচারী'র নাম (ইংরেজি)*">
               </div>
              </div>

              <div class="form-group">
              <div class="row">
                  <div class="col-md-4">
                  <label for="national_id">জাতীয় পরিচয়পত্র নম্বর*</label>
                    <input type="text" class="form-control" name="national_id">
                  </div>

                  <div class="col-md-4">
                  <label for="partner_head_phone">পরিচিত নং (যদি থাকে)</label>
                    <input type="text" class="form-control" name="partner_head_phone">
                  </div>
                </div>                 
               </div>


               <div class="form-group">
              <div class="row">
                  <div class="col-md-4">
                  <label for="national_id">মোবাইল নম্বর*</label>
                    <input type="text" class="form-control" name="mobile_no">
                  </div>

                  <div class="col-md-4">
                  <label for="partner_head_phone">ইমেইল*</label>
                    <input type="text" class="form-control" name="email">
                  </div>
                </div>                 
               </div>




            <div class="form-group">
               <div class="row">
                  <div class="col-md-4">
                <label for="month_id">লিংগ *</label>
                <select class="form-control" name="sex_id" id="sex_id">
                <option value="">নির্বাচন করুন</option>
                  <?php foreach ($sex_d as $sex): ?>
                   <option value="<?php echo $sex_d['id']; ?>"><?php echo $sex_d['name']; ?></option>
                <?php endforeach;?>
                </select>
                </div>

                  <div class="col-md-4">
                    <label for="quota_id">কোটা (প্রযোজ্য ক্ষেত্রে)</label>
                    <select class="form-control" name="quota_id" id="quota_id">
                    <option value="">নির্বাচন করুন</option>
                      <?php foreach ($quotas as $quota): ?>
                        <option value="<?php echo $quota['id']; ?>"><?php echo $quota['name']; ?></option>
                      <?php endforeach;?>
                    </select>
                </div>

                <div class="col-md-4">
                    <label for="religion_id">ধর্ম</label>
                    <select class="form-control" name="religion_id" id="religion_id">
                    <option value="">নির্বাচন করুন</option>
                      <?php foreach ($religions as $religion): ?>
                        <option value="<?php echo $religion['id']; ?>"><?php echo $religion['name']; ?></option>
                      <?php endforeach;?>
                    </select>
                </div>
              </div>
              </div>
               <div class="form-group">
               <div class="row">
               <div class="col-md-4">
                  <label for="permanent_division_id">নিজ বিভাগ</label>
                  <select class="form-control" name="permanent_division_id" id="permanent_division_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($permanent_divisions as $permanent_division): ?>
                      <option value="<?php echo $permanent_division['id']; ?>"><?php echo $permanent_division['name_BN']; ?></option>
                  <?php endforeach;?>
                  </select>
              </div>

              <div class="col-md-4">
                  <label for="permanent_division_id">নিজ জেলা</label>
                  <select class="form-control" name="permanent_district_id" id="permanent_district_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($permanent_districts as $permanent_district): ?>
                      <option value="<?php echo $permanent_district['id']; ?>"><?php echo $permanent_district['name_BN']; ?></option>
                  <?php endforeach;?>
                  </select>
              </div>

              <div class="col-md-4">
                  <label for="permanent_upazila_id">নিজ উপজেলা</label>
                  <select class="form-control" name="permanent_upazila_id" id="permanent_upazila_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($permanent_upazilas as $permanent_upazila): ?>
                      <option value="<?php echo $permanent_upazila['id']; ?>"><?php echo $permanent_upazila['name_BN']; ?></option>
                  <?php endforeach;?>
                  </select>
              </div>
              </div>
              </div>

            <div class="form-group">
               <div class="row">
               <div class="col-md-4">
               <label for="bloodgroup_id"> রক্তের গ্রুপ </label>
                  <select class="form-control" name="bloodgroup_id" id="bloodgroup_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($bloodgroups as $bloodgroup): ?>
                      <option value="<?php echo $bloodgroup['id']; ?>"><?php echo $bloodgroup['name']; ?></option>
                  <?php endforeach;?>
                  </select>
            </div>
          </div>
          </div>


          <div class="form-group">
               <div class="row">
               <div class="col-md-12">
                <label for="details">মন্তব্য</label>
                <textarea name="details" class="form-control"></textarea>
            </div>
          </div>
          </div>

              <button type="submit" name="add_project_report" class="btn btn-success">সাবমিট করুন</button>
          </form>
         </div>
        </div>
      </div>
    </div>
  </div>

<?php include_once 'layouts/footer.php';?>
  <script type="text/javascript">
			CKEDITOR.replace( 'details');
      $(document).ready(function() {
          $('#agency_id,#sex_id,#quota_id,#religion_id,#permanent_division_id,#permanent_district_id,#permanent_upazila_id,#bloodgroup_id').select2();
});
  </script>
