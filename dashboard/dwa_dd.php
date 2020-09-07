<?php
include('header.php');
$district = '';
$query = "SELECT * FROM districts";

$statement = $connect->prepare($query);
$statement->execute();
$result = $statement->fetchAll();
foreach($result as $row)
{
 $district .= '<option value="'.$row['id'].'">'.$row['name_BN'].'</option>';
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
                    <h3 class="text-primary">Dashboard</h3> </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">জেলা পর্যায়ে কর্মরত উপ পরিচালকগণের তথ্য</h4>
                                <div class="row">
                                <div class="col-md-4"></div>
                                <div class="col-md-4">
                                <div class="form-group">
                                <select name="filter_district" id="filter_district" class="form-control" required>
                                <option value="">নির্বাচন করুন</option>
                                <?php echo $district; ?>
                                </select>
                                </div>
                                <div class="form-group" align="center">
                                <button type="button" name="filter" id="filter" class="btn btn-info">Filter</button>
                                </div>
                                </div>
                            </div>
                                <div class="table-responsive m-t-40">
                                    <table id="customer_data" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead>
                                    <tr>
                                    <th width="20%">জেলা</th>
                                    <th width="10%">প্রতিষ্ঠান</th>
                                    <th width="25%">কর্মচারীর নাম</th>
                                    <th width="15%">মোবাইল</th>
                                    <th width="15%">ইমেইল</th>
                                    <th width="15%">পদবী</th>
                                    </tr>
                                    </thead>
                                    </table>
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
  
  function fill_datatable(filter_district = '')
  {
   var dataTable = $('#customer_data').DataTable({
    "processing" : true,
    "serverSide" : true,
    "order" : [],
    "searching" : false,
    "ajax" : {
     url:"fetch.php",
     type:"POST",
     data:{
      filter_district:filter_district
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
   var filter_district = $('#filter_district').val();
   if(filter_district != '')
   {
    $('#customer_data').DataTable().destroy();
    fill_datatable(filter_district);
   }
   else
   {
    alert('Select filter option');
    $('#customer_data').DataTable().destroy();
    fill_datatable();
   }
  });
  
  
 });
 
</script>


<script type="text/javascript">
$(document).ready(function() {
        $('[name="filter_district"]').select2();
});

</script>
</body>