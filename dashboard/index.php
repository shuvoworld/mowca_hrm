
<?php
$connect = new PDO("mysql:host=localhost;dbname=mowca_hrm;charset=utf8", "root", "");
$org = '';
$query = "SELECT * FROM organizations where organization_type_id = 5";

$statement = $connect->prepare($query);
$statement->execute();
$result = $statement->fetchAll();
foreach($result as $row)
{
 $org .= '<option value="'.$row['id'].'">'.$row['name_BN'].'</option>';
}

?>

<html>
 <head>
  <title>উপ পরিচালকগণের তথ্য</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>  
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
 </head>
 <body>
  <div class="container box">
   <h3 align="center">উপ পরিচালকগণের তথ্য</h3>
   <br />
   <div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4">
     <!-- <div class="form-group">
      <select name="filter_district" id="filter_gender" class="form-control" required>
       <option value="">Select Gender</option>
       <option value="Male">Male</option>
       <option value="Female">Female</option>
      </select>
     </div> -->
     <div class="form-group">
      <select name="filter_org" id="filter_org" class="form-control" required>
       <option value="">Select Organization</option>
       <?php echo $org; ?>
      </select>
     </div>
     <div class="form-group" align="center">
      <button type="button" name="filter" id="filter" class="btn btn-info">Filter</button>
     </div>
    </div>
    <div class="col-md-4"></div>
   </div>
   <div class="table-responsive">
    <table id="customer_data" class="table table-bordered table-striped">
     <thead>
      <tr>
       <th width="20%">দপ্তর/সংস্থা</th>
       <th width="10%">প্রতিষ্ঠান</th>
       <th width="25%">নাম</th>
       <th width="15%">মোবাইল</th>
       <th width="15%">ইমেইল</th>
       <th width="15%">পদবী</th>
      </tr>
     </thead>
    </table>
    <br />
    <br />
    <br />
   </div>
  </div>
 </body>
</html>

<script type="text/javascript" language="javascript" >
 $(document).ready(function(){
  
  fill_datatable();
  
  function fill_datatable(filter_org = '')
  {
   var dataTable = $('#customer_data').DataTable({
    "processing" : true,
    "serverSide" : true,
    "order" : [],
    "searching" : true,
    "ajax" : {
     url:"fetch.php",
     type:"POST",
     data:{
        filter_org:filter_org
     }
    }
   });
  }
  
  $('#filter').click(function(){
   var filter_org = $('#filter_org').val();
   if(filter_org != '')
   {
    $('#customer_data').DataTable().destroy();
    fill_datatable(filter_org);
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

