<?php
include('database_connection.php');
$district = '';
$query = "SELECT id, name_BN FROM districts";
$statement = $connect->prepare($query);
$statement->execute();
$result = $statement->fetchAll();
foreach ($result as $row) {
  $district .= '<option value="' . $row['id'] . '">' . $row['name_BN'] . '</option>';
}
?>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Dashboard | Contact Directory</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">


  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">

    <!-- Sidebar -->
    <div class="sidebar">


      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

          <li class="nav-item">
            <a href="dwa.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                মহিলা বিষয়ক অধিদপ্তর
              </p>
            </a>
          </li>
            <li class="nav-item">
            <a href="dwa.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                জাতীয় মহিলা সংস্থা
              </p>
            </a>
          </li>
            <li class="nav-item">
            <a href="dwa.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                বাংলাদেশ শিশু একাডেমি
              </p>
            </a>
          </li>
            <li class="nav-item">
            <a href="dwa.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                জয়িতা ফাউন্ডেশন
              </p>
            </a>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>মহিলা ও শিশু বিষয়ক মন্ত্রণালয়</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">DataTables</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">জেলা উপজেলা ভিত্তিক জনবলের তথ্য</h3>
            </div>
            <!-- /.card-header -->
              <!-- /.col -->
              <div class="card-body">
                <div class="form-group col-md-3">
                  <select name="filter_district" id="filter_district" class="form-control">
                    <option value="">Select District</option>
                    <?php echo $district; ?>
                  </select>
              </div>
              <table id="employee_data" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>দপ্তর/সংস্থা</th>
                    <th>জেলা</th>
                    <th>উপজেলা</th>
                    <th>অফিস</th>
                    <th>পদবী</th>
                    <th>কর্মকর্তা/কর্মচারী'র নাম</th>
                    <th>মোবাইল</th>
                  </tr>
                  </thead>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->

          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.0.2
    </div>
    <strong>Copyright &copy; 2020 <a href="http://adminlte.io">Ministry of Women and Children Affairs</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<!-- page script -->
<script>
    $(document).ready(function () {
        $('#employee_data').DataTable({
            'processing': true,
            'serverSide': true,
            "orderMulti": true,
            "order": [[1, "asc"], [2, "asc"]],
            'serverMethod': 'post',
            'ajax': {
                'url': 'poststatus.php',
                'data': function (data) {
                    var filter_district = $('#filter_district').val(); // Read values
                    data.filter_district = filter_district;            // Append to data
                }
            }
        });

        $('#filter_district').change(function () {
            $('#employee_data').DataTable().draw();
        });
        //$('#filter_district').select2();
    });

</script>
</body>
</html>
