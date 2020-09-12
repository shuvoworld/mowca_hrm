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
$bloodgroups = find_all('bloodgroups');
$educational_qualifications = find_all('educational_qualifications');
$permanent_divisions = find_all('divisions');
$permanent_districts = find_all('districts');
$permanent_upazilas = find_all('upazilas');
$error = false;
$errors = array();
$errmsg = '';
if (isset($_POST['add_employee'])) {
  if (empty($_POST['name_BN'])) {
    $error = true;
    $errors['name_BN'] = "বাংলা নাম লিখুন";
}

if (empty($_POST['name_EN'])) {
    $error = true;
    $errors['name_EN'] = "ইংরেজি নাম লিখুন";
}

if (empty($_POST['dob'])) {
  $error = true;
  $errors['dob'] = "জন্ম তারিখ নাম লিখুন";
}

if (empty($_POST['mobile_no'])) {
  $error = true;
  $errors['mobile_no'] = "মোবাইল নং নাম লিখুন";
}

if (empty($_POST['email'])) {
  $error = true;
  $errors['email'] = "ইমেইল লিখুন";
}

if (empty($_POST['national_id'])) {
  $error = true;
  $errors['national_id'] = "জাতীয় পরিচয়পত্র নম্বর লিখুন";
}

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
        
        $name_BN = remove_junk($db->escape($_POST['name_BN']));
        $name_EN = remove_junk($db->escape($_POST['name_EN']));
        $father_name = remove_junk($db->escape($_POST['father_name']));
        $mother_name = remove_junk($db->escape($_POST['mother_name']));
        $national_id = remove_junk($db->escape($_POST['national_id']));
        $mobile_no = remove_junk($db->escape($_POST['mobile_no']));
        $email = remove_junk($db->escape($_POST['email']));
        $dob = remove_junk($db->escape($_POST['dob']));
        $prl_date = remove_junk($db->escape($_POST['prl_date']));
        
        $quota_id = remove_junk($db->escape($_POST['quota_id']));
        $quota = find_by_id('quotas', $quota_id);

        $sex_id = remove_junk($db->escape($_POST['sex_id']));
        $sex = find_by_id('sex', $sex_id);

        $religion_id = remove_junk($db->escape($_POST['religion_id']));
        $religion = find_by_id('religions', $religion_id);

        $bloodgroup_id = remove_junk($db->escape($_POST['bloodgroup_id']));
        $bloodgroup = find_by_id('bloodgroups', $bloodgroup_id);

        $permanent_division_id = remove_junk($db->escape($_POST['permanent_division_id']));
        $permanent_division = find_by_id('divisions', $permanent_division_id);
        $permanent_district_id = remove_junk($db->escape($_POST['permanent_district_id']));
        $permanent_district = find_by_id('districts', $permanent_district_id);
        $permanent_upazila_id = remove_junk($db->escape($_POST['permanent_upazila_id']));
        $permanent_upazila = find_by_id('upazilas', $permanent_upazila_id);
        
        $permanent_address = remove_junk($db->escape($_POST['permanent_address']));

        $educational_qualification_id = remove_junk($db->escape($_POST['educational_qualification_id']));
        $educational_qualification = find_by_id('educational_qualifications', $educational_qualification_id);

        $joining_govt_service_date = remove_junk($db->escape($_POST['joining_govt_service_date']));
        $present_place_joing_date = remove_junk($db->escape($_POST['present_place_joing_date']));
        $present_post_joining_date = remove_junk($db->escape($_POST['present_post_joining_date']));

        $last_promoted_post_id = remove_junk($db->escape($_POST['last_promoted_post_id']));
        $last_promoted_post = find_by_id('designations', $last_promoted_post_id);

        $last_promotion_date = remove_junk($db->escape($_POST['last_promotion_date']));


        $details = remove_junk($db->escape($_POST['details']));

        $bloodgroup_id = remove_junk($db->escape($_POST['bloodgroup_id']));
        $bloodgroup = find_by_id('bloodgroups', $bloodgroup_id);

        $created_at = date('Y-m-d H:i:s');
        $updated_at = date('Y-m-d H:i:s');
        $created_by = $user['id'];
        $updated_by = $user['id'];
        $is_active = 1;
        
        $marital_status_id = remove_junk($db->escape($_POST['marital_status_id']));
        $marital_status = find_by_id('marital_statuses', $marital_status_id);
        
        $query = "INSERT INTO employees (";
        $query .= " name_BN,
        name_EN,
        father_name,
        mother_name,
        national_id,
        mobile_no,
        email,
        quota_id,
        quota_name,
        sex_id,
        sex_name,
        religion_id,
        religion_name,
        bloodgroup_id,
        bloodgroup_name,
        dob,
        prl_date,
        permanent_division_id,
        permanent_division_name,
        permanent_district_id,
        permanent_district_name,
        permanent_upazila_id,
        permanent_upazila_name,
        permanent_address,
        educational_qualification_id,
        educational_qualification_name,
        joining_govt_service_date,
        present_place_joing_date,
        present_post_joining_date,
        last_promoted_post_id,
        last_promoted_post_name,
        last_promotion_date,
        details,
        created_at,
        created_by,
        updated_at,
        updated_by,
        is_active,
        marital_status_id,
        marital_status_name";
        
        $query .= ") VALUES (";
        $query .= " 
        '{$name_BN}', 
        '{$name_EN}', 
        '{$father_name}',
        '{$mother_name}',
        '{$national_id}', 
        '{$mobile_no}',
        '{$email}',
        '{$quota_id}',
        '{$quota['name']}', 
        '{$sex_id}',
        '{$sex['name']}',
        '{$religion_id}',
        '{$religion['name']}', 
        '{$bloodgroup_id}',
        '{$bloodgroup['name']}',
         '{$dob}',
         '{$prl_date}',
        '{$permanent_division_id}',
        '{$permanent_division['name_BN']}',
        '{$permanent_district_id}',
        '{$permanent_district['name_BN']}',
        '{$permanent_upazila_id}',
        '{$permanent_upazila['name_BN']}',
        '{$permanent_address}',
        '{$educational_qualification_id}',
        '{$educational_qualification['name']}',
         '{$joining_govt_service_date}',
         '{$present_place_joing_date}',
         '{$present_post_joining_date}',
        '{$last_promoted_post_id}',
        '{$last_promoted_post['name']}',
         '{$last_promotion_date}',
        '{$details}',
         '{$created_at}',
        '{$created_by}',
         '{$updated_at}',
        '{$updated_by}',
        '{$is_active}',
        '{$marital_status_id}',
        '{$marital_status['name']}'
        ";
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
            <span>কর্মচারী'র তথ্য</span>
         </strong>
        </div>
        <div class="panel-body">
         <div class="col-md-12">
          <form method="POST" action="add_employee.php" class="clearfix">
          <?php if ($user['agency_id'] == null) {?>
            <div class="form-group">
               <div class="row">
                <div class="col-md-4">
                <label for="agency_id">সংস্থা</label>
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
                  <label for="code">পরিচিত নং (যদি থাকে)</label>
                    <input type="text" class="form-control" name="code">
                  </div>
                </div>                 
               </div>

            <fieldset class="scheduler-border">
            <legend class="scheduler-border">যোগাযোগের তথ্য</legend>
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

            </fieldset>
           
           
            <fieldset class="scheduler-border">
            <legend class="scheduler-border">ব্যক্তিগত তথ্য</legend>

            <div class="form-group">

            <div class="row">
                  <div class="col-md-4">
                  <label for="father_name">পিতার নাম</label>
                    <input type="text" class="form-control" name="father_name">
                  </div>

                  <div class="col-md-4">
                  <label for="mother_name">মাতার নাম</label>
                    <input type="text" class="form-control" name="mother_name">
                  </div>
            </div>

               <div class="row">
                  <div class="col-md-4">
                <label for="month_id">লিংগ *</label>
                <select class="form-control" name="sex_id" id="sex_id">
                <option value="">নির্বাচন করুন</option>
                  <?php foreach ($sex as $sex_d): ?>
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
            <input class="form-control" id="dob" name="dob" placeholder="yyyy/mm/dd" type="date"/>
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

          <div class="form-group">
               <div class="row">
                  <div class="col-md-4">
                <label for="month_id">সর্বশেষ শিক্ষাগত যোগ্যতা</label>
                <select class="form-control" name="educational_qualification_id" id="educational_qualification_id">
                <option value="">নির্বাচন করুন</option>
                  <?php foreach ($educational_qualifications as $educational_qualification): ?>
                   <option value="<?php echo $educational_qualification['id']; ?>"><?php echo $educational_qualification['name']; ?></option>
                <?php endforeach;?>
                </select>
                </div>

            <div class="col-md-4">
            <label for="prl_date">পিআরএল এ গমনের তারিখ</label>
            <input class="form-control" id="prl_date" name="prl_date" placeholder="yyyy/mm/dd" type="date"/>
            </div>
          </div>
          </div>

          </fieldset>
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
            <legend class="scheduler-border">চাকুরী সংক্রান্ত তথ্য</legend>
            <div class="form-group">
            <div class="row">
            
                <div class="col-md-4">
                <label for="prl_date">সরকারি চাকুরীতে প্রথম যোগদানের তারিখ</label>
                <input class="form-control" id="joining_govt_service_date" name="joining_govt_service_date" placeholder="yyyy/mm/dd" type="date"/>
                </div>

                <div class="col-md-4">
                <label for="prl_date">বর্তমান কর্মস্থলে যোগদানের তারিখ</label>
                <input class="form-control" id="present_place_joing_date" name="present_place_joing_date" placeholder="yyyy/mm/dd" type="date"/>
                </div>

                <div class="col-md-4">
                <label for="prl_date">বর্তমান পদে যোগদানের তারিখ</label>
                <input class="form-control" id="present_post_joining_date" name="present_post_joining_date" placeholder="yyyy/mm/dd" type="date"/>
                </div>


                <div class="col-md-4">
                <label for="prl_date">সর্বশেষ পদোন্নতির তারিখ</label>
                <input class="form-control" id="last_promotion_date" name="last_promotion_date" placeholder="yyyy/mm/dd" type="date"/>
                </div>
            
            </div>
            </div>

            <div class="form-group">
            <div class="row">
            <div class="col-md-4">
            <label for="posted_division_id">সর্বশেষ পদোন্নতি প্রাপ্ত পদ</label>
                  <select class="form-control" name="last_promoted_post_id" id="last_promoted_post_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($designations as $designation): ?>
                      <option value="<?php echo $designation['id']; ?>"><?php echo $designation['name']; ?></option>
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

              <button type="submit" name="add_employee" class="btn btn-success">সাবমিট করুন</button>
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
          $('#last_promoted_post_id,#educational_qualification_id,#agency_id,#marital_status_id,#organization_id,#designation_id,#additional_division_id,#additional_district_id,#additional_upazila_id,#additional_organization_id,#additional_designation_id, #sex_id,#quota_id,#religion_id,#permanent_division_id,#permanent_district_id,#permanent_upazila_id,#bloodgroup_id,#posted_division_id,#posted_district_id,#posted_upazila_id').select2();
});
  </script>         


<!-- <script>
    $(document).ready(function(){
      var date_input=$('input[name="dob"],input[name="prl_date"],input[name="last_promotion_date"],input[name="present_post_joining_date"],input[name="present_place_joing_date"],input[name="joining_govt_service_date"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'yyyy-mm-dd',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script> -->
