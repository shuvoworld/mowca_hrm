<?php
  $page_title = 'All Employees';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(2);
?>
<?php include_once('layouts/header.php'); ?>
  <div class="row">
     <div class="col-md-12">
       <?php echo display_msg($msg); ?>
     </div>
    <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-heading clearfix">
         <div class="pull-right">
           <a href="add_employee.php" class="btn btn-primary">তথ্য যোগ করুন</a>
         </div>
        </div>
        <div class="panel-body">
          <table class="table table-bordered" id="projectreport">
            <thead>
              <tr>
                <th class="text-center">#</th>
                <th class="text-center">মন্ত্রণালয়/দপ্তর/সংস্থা</th>
                <th class="text-center">নাম</th>
                <th class="text-center">পদবী</th>
                <th class="text-center">মোবাইল</th>
                <th class="text-center">ইমেইল</th>
                <th class="text-center">পদায়নকৃত কার্যালয়</th>
                <th class="text-center">জেলা</th>
                <th class="text-center">উপজেলা</th>
                <th class="text-center">পরিবর্তন</th>
              </tr>
            </thead>
          </tabel>
        </div>
      </div>
    </div>
  </div>
  <?php include_once('layouts/footer.php'); ?>
  <script type="text/javascript">
    $(document).ready(function() {
      $('#projectreport').dataTable({
        "bProcessing": true,
        "sAjaxSource": "ajax/employees.php",
        "deferRender": true,

    "columnDefs": [ 
        {
            "targets": 9,
            "render": function ( data, type, row, meta ) {
                return '<a href="edit_projectreport.php?id='+ row.id + '"><span class="glyphicon glyphicon-pencil"></span></a> | <a style="color:red" href="delete_projectreport.php?id='+ row.id + '"><span class="glyphicon glyphicon-remove"></span></a>';
            }
        },
        { targets: 1, searchable: true },
        { targets: '_all', searchable: false }
    ],
          "aoColumns": [
              { mData: 'id' } ,
              { mData: 'agency_name' } ,
              { mData: 'name' } ,
              { mData: 'designation_name' } ,
              { mData: 'mobile_no' } ,
              { mData: 'email' },
              { mData: 'organization_name' },
              { mData: 'district_name' },
              { mData: 'upazila_name' }
            ]
          });  
    });
  </script>
