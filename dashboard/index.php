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

<?php include('header.php'); ?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">প্রতিষ্ঠান ডাইরেক্টরি</h1>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <section class="content">
        <div class="container-fluid">
            <!-- Small boxes (Stat box) -->
            <div class="row">
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-info">
                        <div class="inner">
                            <h3>৬৪</h3>

                            <p>উপপরিচালক</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="dd.php" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-success">
                        <div class="inner">
                            <h3>৪২৬</h3>

                            <p>উপজেলা মহিলা বিষয়ক কর্মকর্তা</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                        <div class="inner">
                            <h3>৬৪</h3>

                            <p>জাতীয় মহিলা সংস্থা'র জেলা কর্মকর্তা</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                        <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-danger">
                        <div class="inner">
                            <h3>৬৪</h3>

                            <p>জেলা শিশু কর্মকর্তা</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-pie-graph"></i>
                        </div>
                        <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
            </div>
        </div>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">মাঠ পর্যায়ের সকল কর্মকর্তা/কর্মচারী গণের সাথে যোগাযোগের তথ্য</h3>
                    </div>
                    <!-- /.card-header -->
                    <!-- /.col -->

                    <div class="card-body">
                        <div class="form-group col-md-3">
                            <select name="filter_district" id="filter_district" class="form-control">
                                <option value="">জেলা নির্বাচন করুন</option>
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
<?php include('footer.php'); ?>
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
