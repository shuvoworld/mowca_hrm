<?php
$page_title = 'কর্মচারী তথ্য যোগ করুন';

require_once 'includes/load.php';
// Checkin What level user has permission to view this page
page_require_level(2);

$agencies = find_all('agencies');
$sex = find_all('sex');
$religions = find_all('religions');
$quotas = find_all('quotas');
$marital_statuses = find_all('marital_statuses');
$bloodgroup = find_all('bloodgroups');
$educational_qualifications = find_all('educational_qualifications');
$permanent_divisions = find_all('divisions');
$permanent_districts = find_all('districts');
$permanent_upazilas = find_all('upazilas');
$posted_divisions = find_all('divisions');
$posted_districts = find_all('districts');
$posted_upazilas = find_all('upazilas');
$organizations = find_all('organizations');
$designations = find_all('designations');
$additional_divisions = find_all('divisions');
$additional_districts = find_all('districts');
$additional_upazilas = find_all('upazilas');
$additional_organizations = find_all('organizations');
$additional_designations = find_all('designations');
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
            <span>মাঠ পর্যায়ের কর্মচারী'র তথ্য</span>
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
               <label for="bloodgroup_id"> রক্তের গ্রুপ </label>
                  <select class="form-control datepicker" name="bloodgroup_id" id="bloodgroup_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($bloodgroups as $bloodgroup): ?>
                      <option value="<?php echo $bloodgroup['id']; ?>"><?php echo $bloodgroup['name']; ?></option>
                  <?php endforeach;?>
                  </select>
            </div>
            <div class="col-md-4">
            <label for="dob">জন্ম তারিখ*</label>
            <input class="form-control" id="dob" name="dob" placeholder="YYYY/MM/DD" type="text"/>
            </div>

            <div class="col-md-4">
                  <label for="additional_division_id">বৈবাহিক অবস্থা</label>
                  <select class="form-control" name="marital_status_id" id="marital_status_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($marital_statuses as $marital_status): ?>
                      <option value="<?php echo $marital_status['id']; ?>"><?php echo $marital_status['name']; ?></option>
                  <?php endforeach;?>
                  </select>
              </div>
          </div>
          </div>
          <fieldset class="scheduler-border">
            <legend class="scheduler-border">স্থায়ী ঠিকানা</legend>
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
               <div class="col-md-12">
                <label for="permanent_address">ঠিকানা</label>
                <textarea name="permanent_address" class="form-control"></textarea>
            </div>
          </div>
          </div>
          </fieldset>


          <fieldset class="scheduler-border">
            <legend class="scheduler-border">বর্তমান নিয়মিত পদায়নের তথ্য</legend>
               <div class="form-group">
               <div class="row">
               <div class="col-md-4">
                  <label for="posted_division_id">পদায়নকৃত বিভাগ</label>
                  <select class="form-control" name="posted_division_id" id="posted_division_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($permanent_divisions as $permanent_division): ?>
                      <option value="<?php echo $permanent_division['id']; ?>"><?php echo $permanent_division['name_BN']; ?></option>
                  <?php endforeach;?>
                  </select>
              </div>

              <div class="col-md-4">
                  <label for="posted_district_id">পদায়নকৃত জেলা</label>
                  <select class="form-control" name="posted_district_id" id="posted_district_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($permanent_districts as $permanent_district): ?>
                      <option value="<?php echo $permanent_district['id']; ?>"><?php echo $permanent_district['name_BN']; ?></option>
                  <?php endforeach;?>
                  </select>
              </div>

              <div class="col-md-4">
                  <label for="posted_upazila_id">পদায়নকৃত উপজেলা</label>
                  <select class="form-control" name="posted_upazila_id" id="posted_upazila_id">
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
               <label for="organization_id"> পদায়নকৃত কার্যালয় </label>
                  <select class="form-control" name="organization_id" id="organization_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($organizations as $organization): ?>
                      <option value="<?php echo $organization['id']; ?>"><?php echo $organization['name']; ?></option>
                  <?php endforeach;?>
                  </select>
            </div>

            <div class="col-md-4">
               <label for="designation_id"> পদবী </label>
                  <select class="form-control" name="designation_id" id="designation_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($designations as $designation): ?>
                      <option value="<?php echo $designation['id']; ?>"><?php echo $designation['name']; ?></option>
                  <?php endforeach;?>
                  </select>
            </div>
            </div>
            </div>
              
          </fieldset>

          <fieldset class="scheduler-border">
            <legend class="scheduler-border">অতিরিক্ত দায়িত্ব/সংযুক্ত পদায়নের তথ্য (যদি থেকে থাকে)</legend>
               <div class="form-group">
               <div class="row">
               <div class="col-md-4">
                  <label for="additional_division_id">বিভাগ</label>
                  <select class="form-control" name="additional_division_id" id="additional_division_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($additional_divisions as $additional_division): ?>
                      <option value="<?php echo $additional_division['id']; ?>"><?php echo $additional_division['name_BN']; ?></option>
                  <?php endforeach;?>
                  </select>
              </div>

              <div class="col-md-4">
                  <label for="additional_district_id">জেলা</label>
                  <select class="form-control" name="additional_district_id" id="additional_district_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($additional_districts as $additional_district): ?>
                      <option value="<?php echo $additional_district['id']; ?>"><?php echo $additional_district['name_BN']; ?></option>
                  <?php endforeach;?>
                  </select>
              </div>

              <div class="col-md-4">
                  <label for="posted_upazila_id">উপজেলা</label>
                  <select class="form-control" name="additional_upazila_id" id="additional_upazila_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($additional_upazilas as $additional_upazila): ?>
                      <option value="<?php echo $additional_upazila['id']; ?>"><?php echo $additional_upazila['name_BN']; ?></option>
                  <?php endforeach;?>
                  </select>
              </div>
              </div>
              </div>
             
              <div class="form-group">
               <div class="row">
               <div class="col-md-4">
               <label for="organization_id"> সংযুক্ত কার্যালয় </label>
                  <select class="form-control" name="additional_organization_id" id="additional_organization_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($additional_organizations as $additional_organization): ?>
                      <option value="<?php echo $additional_organization['id']; ?>"><?php echo $additional_organization['name']; ?></option>
                  <?php endforeach;?>
                  </select>
            </div>

            <div class="col-md-4">
               <label for="designation_id">পদবী</label>
                  <select class="form-control" name="additional_designation_id" id="additional_designation_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($additional_designations as $additional_designation): ?>
                      <option value="<?php echo $additional_designation['id']; ?>"><?php echo $additional_designation['name']; ?></option>
                  <?php endforeach;?>
                  </select>
            </div>
            </div>
            </div>
              
          </fieldset>


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
          $('#agency_id,#marital_status_id,#organization_id,#designation_id,#additional_division_id,#additional_district_id,#additional_upazila_id,#additional_organization_id,#additional_designation_id, #sex_id,#quota_id,#religion_id,#permanent_division_id,#permanent_district_id,#permanent_upazila_id,#bloodgroup_id,#posted_division_id,#posted_district_id,#posted_upazila_id').select2();
});
  </script>         


<script>
    $(document).ready(function(){
      var date_input=$('input[name="dob"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'yyyy/mm/dd',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script>
