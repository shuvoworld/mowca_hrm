<?php
  $page_title = 'তথ্য পরিবর্তন করুন';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(2);
?>
<?php
$employee = find_by_id('employees',(int)$_GET['id']);
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
$organizations = find_all('organizations');
$designations = find_all('designations');
$additional_organizations = find_all('organizations');
$additional_designations = find_all('designations');
?>
<?php
$error = false;
$errors  = array();
$errmsg  = '';

 if(isset($_POST['update_employee'])){

   if(empty($errors)){
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

  $marital_status_id = remove_junk($db->escape($_POST['marital_status_id']));
  $marital_status = find_by_id('marital_statuses', $marital_status_id);

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

  $additional_organization_id = remove_junk($db->escape($_POST['additional_organization_id']));
  $additional_organization = find_by_id('organizations', $additional_organization_id);

  $details = remove_junk($db->escape($_POST['details']));

  $updated_at = date('Y-m-d H:i:s');
  $updated_by = $user['id'];
    

       $query   = "UPDATE employees SET";
       $query  .=" name_BN ='{$name_BN}', 
                   name_EN ='{$name_EN}',
                   father_name ='{$father_name}', 
                   mother_name ='{$mother_name}', 
                   national_id ='{$national_id}', 
                   mobile_no ='{$mobile_no}',
                   email ='{$email}', 
                   mother_name ='{$mother_name}',
                   quota_id ='{$quota_id}',
                   quota_name ='{$quota['name']}', 
                   sex_id ='{$sex_id}',
                   sex_name ='{$sex['name']}', 
                   
                   sex_id ='{$sex_id}',
                   sex_name ='{$sex['name']}',

                   religion_id ='{$religion_id}',
                   religion_name ='{$religion['name']}',  


                   bloodgroup_id ='{$bloodgroup_id}',
                   bloodgroup_name ='{$bloodgroup['name']}',


                   dob ='{$dob}', 
                   prl_date ='{$prl_date}', 
                   mobile_no ='{$mobile_no}',

                   permanent_division_id ='{$permanent_division_id}',
                   permanent_division_name ='{$permanent_division['name_BN']}', 
                   permanent_district_id ='{$permanent_district_id}',
                   permanent_district_name ='{$permanent_district['name_BN']}',  
                   permanent_upazila_id ='{$permanent_upazila_id}',
                   permanent_upazila_name ='{$permanent_upazila['name_BN']}',    
                   
                   permanent_address ='{$permanent_address}',
                   educational_qualification_id ='{$educational_qualification_id}',
                   educational_qualification_name ='{$educational_qualification['name']}',  


                   joining_govt_service_date ='{$joining_govt_service_date}',
                   present_place_joing_date ='{$present_place_joing_date}',
                   present_post_joining_date ='{$present_post_joining_date}',

                   last_promoted_post_id ='{$last_promoted_post_id}',
                   last_promoted_post_name ='{$last_promoted_post['name']}',

                   last_promotion_date ='{$last_promotion_date}',
                   details ='{$details}',

                   marital_status_id ='{$marital_status_id}',
                   marital_status_name ='{$marital_status['name']}'
                   ";

       $query  .=" WHERE id = ". (int)$_GET['id'];
       $result = $db->query($query);
               if($result && $db->affected_rows() === 1){
                 $session->msg('s',"employee information updated ");
                 redirect('employees.php', false);
               } else {
                 $session->msg('d',$query);
                 redirect('edit_employee.php?id='.$employee['id'], false);
               }

   } else{
       foreach($errors as $error) {
            $errmsg .= $error . '<br />';
        }
   }

 }

?>
<?php include_once 'layouts/header.php';?>
<div class="row">
  <div class="col-md-12">
      <?php if ($errmsg != '') { ?>
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
         <form method="post" action="edit_employee.php?id=<?php echo (int)$employee['id'] ?>">
          <?php if ($user['agency_id'] == null) {?>
            <div class="form-group">
               <div class="row">
                <div class="col-md-4">
                <label for="agency_id">সংস্থা</label>
                    <select class="form-control" name="agency_id">
                    <option value="">Select</option>
                   <?php  foreach ($agencies as $agency): ?>
                     <option value="<?php echo (int)$agency['id']; ?>" <?php if($employee['agency_id'] === $agency['id']): echo "selected"; endif; ?> >
                       <?php echo remove_junk($agency['name_BN']); ?></option>
                   <?php endforeach; ?>
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
                  <input type="text" class="form-control" name="name_BN" value="<?php echo remove_junk($employee['name_BN']);?>">
                </div>
               </div>
               <div class="form-group">
               <div class="input-group">
                  <span class="input-group-addon">
                   <i class="glyphicon glyphicon-th-large"></i>
                  </span>
                  <input type="text" class="form-control"  name="name_EN" value="<?php echo remove_junk($employee['name_EN']);?>">
               </div>
              </div>

              <div class="form-group">
              <div class="row">
                  <div class="col-md-4">
                  <label for="national_id">জাতীয় পরিচয়পত্র নম্বর*</label>
                    <input type="text" class="form-control" name="national_id" value="<?php echo remove_junk($employee['national_id']);?>">
                  </div>

                  <div class="col-md-4">
                  <label for="partner_head_phone">পরিচিত নং (যদি থাকে)</label>
                    <input type="text" class="form-control" name="code" value="<?php echo remove_junk($employee['code']);?>">
                  </div>
                </div>                 
               </div>

            <fieldset class="scheduler-border">
            <legend class="scheduler-border">যোগাযোগের তথ্য</legend>
               <div class="form-group">
              <div class="row">
                  <div class="col-md-4">
                  <label for="national_id">মোবাইল নম্বর*</label>
                    <input type="text" class="form-control" name="mobile_no" value="<?php echo remove_junk($employee['mobile_no']);?>">
                  </div>

                  <div class="col-md-4">
                  <label for="partner_head_phone">ইমেইল*</label>
                    <input type="text" class="form-control" name="email" value="<?php echo remove_junk($employee['email']);?>">
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
                    <input type="text" class="form-control" name="father_name" value="<?php echo remove_junk($employee['father_name']);?>">
                  </div>

                  <div class="col-md-4">
                  <label for="mother_name">মাতার নাম</label>
                    <input type="text" class="form-control" name="mother_name" value="<?php echo remove_junk($employee['mother_name']);?>">
                  </div>
            </div>

               <div class="row">
                  <div class="col-md-4">
                <label for="month_id">লিংগ *</label>
                <select class="form-control" name="sex_id" id="sex_id">
                <option value="">নির্বাচন করুন</option>
                  <?php foreach ($sex as $sex_d): ?>
                    <option value="<?php echo $sex_d['id']; ?>" <?php if($employee['sex_id'] === $sex_d['id']): echo "selected"; endif; ?>> <?php echo remove_junk($sex_d['name']); ?></option>
                <?php endforeach;?>
                </select>
                </div>

                  <div class="col-md-4">
                    <label for="quota_id">কোটা (প্রযোজ্য ক্ষেত্রে)</label>
                    <select class="form-control" name="quota_id" id="quota_id">
                    <option value="">নির্বাচন করুন</option>
                      <?php foreach ($quotas as $quota): ?>
                        <option value="<?php echo $quota['id']; ?>" <?php if($employee['quota_id'] === $quota['id']): echo "selected"; endif; ?>> <?php echo remove_junk($quota['name']); ?></option>
                      <?php endforeach;?>
                    </select>
                </div>

                <div class="col-md-4">
                    <label for="religion_id">ধর্ম</label>
                    <select class="form-control" name="religion_id" id="religion_id">
                    <option value="">নির্বাচন করুন</option>
                      <?php foreach ($religions as $religion): ?>
                        <option value="<?php echo $religion['id']; ?>" <?php if($employee['religion_id'] === $religion['id']): echo "selected"; endif; ?>> <?php echo remove_junk($religion['name']); ?></option>
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
                      <option value="<?php echo $bloodgroup['id']; ?>" <?php if($employee['bloodgroup_id'] === $bloodgroup['id']): echo "selected"; endif; ?>> <?php echo remove_junk($bloodgroup['name']); ?></option>
                  <?php endforeach;?>
                  </select>
            </div>
            <div class="col-md-4">
            <label for="dob">জন্ম তারিখ*</label>
            <input class="form-control" id="dob" name="dob" placeholder="YYYY/MM/DD" type="date"  value="<?php echo remove_junk($employee['dob']);?>"/>
            </div>

            <div class="col-md-4">
                  <label for="marital_status_id">বৈবাহিক অবস্থা</label>
                  <select class="form-control" name="marital_status_id" id="marital_status_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($marital_statuses as $marital_status): ?>
                      <option value="<?php echo $marital_status['id']; ?>" <?php if($employee['marital_status_id'] === $marital_status['id']): echo "selected"; endif; ?>> <?php echo remove_junk($marital_status['name']); ?></option>
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
                    <option value="<?php echo $educational_qualification['id']; ?>" <?php if($employee['educational_qualification_id'] === $educational_qualification['id']): echo "selected"; endif; ?>> <?php echo remove_junk($educational_qualification['name']); ?></option>
                <?php endforeach;?>
                </select>
                </div>

            <div class="col-md-4">
            <label for="prl_date">পিআরএল এ গমনের তারিখ</label>
            <input class="form-control" id="prl_date" name="prl_date" placeholder="YYYY/MM/DD" type="date" value="<?php echo remove_junk($employee['prl_date']);?>" />
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
                      <option value="<?php echo $educational_qualification['id']; ?>" <?php if($employee['permanent_division_id'] === $permanent_division['id']): echo "selected"; endif; ?>> <?php echo remove_junk($permanent_division['name_BN']); ?></option>
                  <?php endforeach;?>
                  </select>
              </div>

              <div class="col-md-4">
                  <label for="permanent_division_id">নিজ জেলা</label>
                  <select class="form-control" name="permanent_district_id" id="permanent_district_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($permanent_districts as $permanent_district): ?>
                      <option value="<?php echo $permanent_district['id']; ?>" <?php if($employee['permanent_district_id'] === $permanent_district['id']): echo "selected"; endif; ?>> <?php echo remove_junk($permanent_district['name_BN']); ?></option>
                  <?php endforeach;?>
                  </select>
              </div>

              <div class="col-md-4">
                  <label for="permanent_upazila_id">নিজ উপজেলা</label>
                  <select class="form-control" name="permanent_upazila_id" id="permanent_upazila_id">
                  <option value="">নির্বাচন করুন</option>
                    <?php foreach ($permanent_upazilas as $permanent_upazila): ?>
                      <option value="<?php echo $permanent_upazila['id']; ?>" <?php if($employee['permanent_upazila_id'] === $permanent_upazila['id']): echo "selected"; endif; ?>> <?php echo remove_junk($permanent_upazila['name_BN']); ?></option>
                  <?php endforeach;?>
                  </select>
              </div>
              </div>
              </div>
             
              <div class="form-group">
               <div class="row">
               <div class="col-md-12">
                <label for="permanent_address">ঠিকানা</label>
                <textarea name="permanent_address" class="form-control"><?php echo remove_junk($employee['permanent_address']);?></textarea>
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
                <input class="form-control" id="joining_govt_service_date" name="joining_govt_service_date" placeholder="YYYY/MM/DD" type="date" value="<?php echo remove_junk($employee['joining_govt_service_date']);?>"/>
                </div>

                <div class="col-md-4">
                <label for="prl_date">বর্তমান কর্মস্থলে যোগদানের তারিখ</label>
                <input class="form-control" id="present_place_joing_date" name="present_place_joing_date" placeholder="YYYY/MM/DD" type="date" value="<?php echo remove_junk($employee['present_place_joing_date']);?>"/>
                </div>

                <div class="col-md-4">
                <label for="prl_date">বর্তমান পদে যোগদানের তারিখ</label>
                <input class="form-control" id="present_post_joining_date" name="present_post_joining_date" placeholder="YYYY/MM/DD" type="date" value="<?php echo remove_junk($employee['present_post_joining_date']);?>"/>
                </div>


                <div class="col-md-4">
                <label for="prl_date">সর্বশেষ পদোন্নতির তারিখ</label>
                <input class="form-control" id="last_promotion_date" name="last_promotion_date" placeholder="YYYY/MM/DD" type="date" value="<?php echo remove_junk($employee['last_promotion_date']);?>"/>
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
                      <option value="<?php echo $designation['id']; ?>" <?php if($employee['last_promoted_post_id'] === $designation['id']): echo "selected"; endif; ?>> <?php echo remove_junk($designation['name']); ?></option>
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
                <textarea name="details" class="form-control"><?php echo remove_junk($employee['details']);?></textarea>
            </div>
          </div>
          </div>

              <button type="submit" name="update_employee" class="btn btn-success">সাবমিট করুন</button>
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


<script>
    // $(document).ready(function(){
    //   var date_input=$('input[name="prl_date"],input[name="last_promotion_date"],input[name="present_post_joining_date"],input[name="present_place_joing_date"],input[name="joining_govt_service_date"]'); //our date input has the name "date"
    //   var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
    //   var options={
    //     format: 'yyyy-mm-dd',
    //     container: container,
    //     todayHighlight: true,
    //     autoclose: true,
    //   };
    //   date_input.datepicker(options);
    // })
</script>
