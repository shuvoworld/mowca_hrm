<?php

$connect = new PDO("mysql:host=localhost;dbname=mowca_hrm;charset=utf8", "root", "");

$column = array('agency_name', 'organization_name', 'name_BN', 'mobile', 'email', 'designation_name');

$query = "
SELECT * FROM employees 
";

if(isset($_POST['filter_org']) && $_POST['filter_org'] != '')
{
 $query .= '
 WHERE organization_id = "'.$_POST['filter_org'].'"';
}

if(isset($_POST['order']))
{
 $query .= 'ORDER BY '.$column[$_POST['order']['0']['column']].' '.$_POST['order']['0']['dir'].' ';
}
else
{
 $query .= 'ORDER BY id DESC ';
}

$query1 = '';

if($_POST["length"] != -1)
{
 $query1 = 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];
}

$statement = $connect->prepare($query);

$statement->execute();

$number_filter_row = $statement->rowCount();

$statement = $connect->prepare($query . $query1);

$statement->execute();

$result = $statement->fetchAll();



$data = array();

foreach($result as $row)
{
 $sub_array = array();
 $sub_array[] = $row['agency_name'];
 $sub_array[] = $row['organization_name'];
 $sub_array[] = $row['name_BN'];
 $sub_array[] = $row['mobile_no'];
 $sub_array[] = $row['email'];
 $sub_array[] = $row['designation_name'];
 $data[] = $sub_array;
}

function count_all_data($connect)
{
 $query = "SELECT * FROM employees";
 $statement = $connect->prepare($query);
 $statement->execute();
 return $statement->rowCount();
}

$output = array(
 "draw"       =>  intval($_POST["draw"]),
 "recordsTotal"   =>  count_all_data($connect),
 "recordsFiltered"  =>  $number_filter_row,
 "data"       =>  $data
);

echo json_encode($output);

?>