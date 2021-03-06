<?php
include('database_connection.php');
$upazila = '';
$sql = "SELECT id, name_BN FROM upazilas";
$query = mysqli_query($DBconnect, $sql);
while (($data = mysqli_fetch_assoc($query))) {
    $upazila .= '<option value="' . $data['id'] . '">' . $data['name_BN'] . '</option>';
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
                        <h3 class="card-title">মহিলা বিষয়ক অধিদপ্তরের উপজেলা মহিলা বিষয়ক কর্মকর্তাগণের তথ্য</h3>
                    </div>
                    <!-- /.card-header -->
                    <!-- /.col -->

                    <div class="card-body">
                        <div class="form-group col-md-3">
                            <select name="filter_upazila" id="filter_upazila" class="form-control">
                                <option value="">উপজেলা নির্বাচন করুন</option>
                                <?php echo $upazila; ?>
                            </select>
                        </div>
                        <table id="uwao_data" class="table table-bordered table-hover">
                            <thead>
                            <tr>
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
        $('#uwao_data').DataTable({
            'processing': true,
            'serverSide': true,
            "orderMulti": true,
            "order": [[0, "asc"]],
            'serverMethod': 'post',
            'ajax': {
                'url': 'uwao_api.php',
                'data': function (data) {
                    var filter_upazila = $('#filter_upazila').val(); // Read values
                    data.filter_upazila = filter_upazila;            // Append to data
                }
            }
        });

        $('#filter_upazila').change(function () {
            $('#uwao_data').DataTable().draw();
        });
        //$('#filter_district').select2();
    });

</script>
</body>
</html>
