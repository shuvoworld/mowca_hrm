<?php
include('header.php');

$organization_type = '';
$agency = '';
$query = "SELECT * FROM organization_types";

$statement = $connect->prepare($query);
$statement->execute();
$result = $statement->fetchAll();
foreach($result as $row)
{
 $organization_type .= '<option value="'.$row['id'].'">'.$row['name_BN'].'</option>';
}

$query = "SELECT * FROM agencies";

$statement = $connect->prepare($query);
$statement->execute();
$result = $statement->fetchAll();
foreach($result as $row)
{
 $agency .= '<option value="'.$row['id'].'">'.$row['name_BN'].'</option>';
}

?>

<body class="fix-header fix-sidebar">
    <!-- Preloader - style you can find in spinners.css -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
			<circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- Main wrapper  -->
    <div id="main-wrapper">
        <div class="header">
        </div>
        <!-- End header header -->
        <!-- Left Sidebar  -->
        <?php include ('left.php'); ?>
        <!-- End Left Sidebar  -->
        <!-- Page wrapper  -->
        <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Dashboard - Ministry of Women and Children Affairs</h3> </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-md-3">
                        <div class="card bg-primary p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-bag f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">৬৪</h2>
                                    <p class="m-b-0 "><a href="dwa_dd.php" class="color-white">উপপরিচালক</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-pink p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-comment f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">৪৯২</h2>
                                    <p class="m-b-0">উপজেলা কর্মকর্তা</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-success p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="fa fa-user f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">৬৪</h2>
                                    <p class="m-b-0">জেলা অফিসার</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-danger p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-location-pin f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">৬৪</h2>
                                    <p class="m-b-0">জেলা শিশু কর্মকর্তা</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">প্রতিষ্ঠানের তথ্য</h4>
                                <div class="row">
                                <div class="col-md-4">
                                <div class="form-group"><select name="filter_organization_type" id="filter_organization_type" class="form-control" required>
                                <option value="">প্রতিষ্ঠানের ধরণ নির্বাচন করুন</option>
                                <?php echo $organization_type; ?>
                                </select>
                                </div>
                                </div>
                                <div class="col-md-4">
                                <div class="form-group"><select name="filter_agencies" id="filter_agencies" class="form-control" required>
                                <option value="">দপ্তর/সংস্থা নির্বাচন করুন</option>
                                <?php echo $agency; ?>
                                </select>
                                </div>
                                <div class="form-group" align="center">
                                <button type="button" name="filter" id="filter" class="btn btn-info">Filter</button>
                                </div>
                                </div>
                            </div>
                                <div class="table-responsive m-t-40">
                                    <table id="org_data" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                    <tr>
                                    <th>প্রতিষ্ঠানের নাম</th>
                                    <th>ধরণ</th>
                                    <th>দপ্তর/সংস্থা</th>
                                    <th>বিভাগ</th>
                                    <th>জেলা</th>
                                    <th>উপজেলা</th>
                                    <th>ঠিকানা</th>
                                    </tr>
                                    </thead>
                                    </table>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>
                </div>
                <!-- End PAge Content -->
            </div>
            <!-- End Container fluid  -->
            <!-- footer -->
            <footer class="footer"> © 2020 All rights reserved by MoWCA</footer>
            <!-- End footer -->
        </div>
        <!-- End Page wrapper  -->
    </div>
    <!-- End Wrapper -->
    <!-- All Jquery -->
    <script src="js/lib/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="js/lib/bootstrap/js/popper.min.js"></script>
    <script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="js/custom.min.js"></script>


    <script src="js/lib/datatables/datatables.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>


<script type="text/javascript" language="javascript" >
 $(document).ready(function(){
  
  fill_datatable();
  
  function fill_datatable(filter_organization_type = '', filter_agencies = '')
  {
   var dataTable = $('#org_data').DataTable({
    "processing" : true,
    "serverSide" : true,
    "order" : [],
    "searching" : false,
    "ajax" : {
     url:"fetch_org.php",
     type:"POST",
     data:{
        filter_organization_type:filter_organization_type,
        filter_agencies:filter_agencies
     }
    },
    dom: 'Bfrtip',
        buttons: [
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
            'pdfHtml5'
        ]
   });
  }
  
  $('#filter').click(function(){
   var filter_organization_type = $('#filter_organization_type').val();
   var filter_agencies = $('#filter_agencies').val();
   if(filter_organization_type != '' && filter_agencies != '')
   {
    $('#org_data').DataTable().destroy();
    fill_datatable(filter_organization_type, filter_agencies);
   }
   else
   {
    alert('Select filter option');
    $('#org_data').DataTable().destroy();
    fill_datatable();
   }
  });
  
  
 });
 
</script>


<script type="text/javascript">
$(document).ready(function() {
        $('[name="filter_organization_type"]').select2();
        $('[name="filter_agencies"]').select2();
});

</script>

</body>