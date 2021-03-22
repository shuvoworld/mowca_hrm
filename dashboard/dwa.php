<?php
include('database_connection.php');
$district = '';
$sql = "SELECT id, name_BN FROM districts";
$query = mysqli_query($DBconnect, $sql);
while (($data = mysqli_fetch_assoc($query))) {
    $district .= '<option value="' . $data['id'] . '">' . $data['name_BN'] . '</option>';
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
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">মহিলা বিষয়ক অধিদপ্তরের তথ্য</h3>
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
                        <table id="dd_data" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>জেলা</th>
                                <th>উপজেলা</th>
                                <th>কর্মকর্তা/কর্মচারী'র নাম</th>
                                <th>মোবাইল</th>
                                <th>ইমেইল</th>
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
        $('#dd_data').DataTable({
            'processing': true,
            'serverSide': true,
            "orderMulti": true,
            "order": [[0, "asc"]],
            'serverMethod': 'post',
            'ajax': {
                'url': 'dwa_api.php',
                'data': function (data) {
                    var filter_district = $('#filter_district').val(); // Read values
                    data.filter_district = filter_district;            // Append to data
                }
            }
        });

        $('#filter_district').change(function () {
            $('#dd_data').DataTable().draw();
        });
        //$('#filter_district').select2();
    });

</script>
</body>
</html>
