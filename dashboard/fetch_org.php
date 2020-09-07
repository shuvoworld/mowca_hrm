<?php

$connect = new PDO("mysql:host=localhost;dbname=mowca_hrm;charset=utf8", "root", "");

$column = array(
    'name_BN', 
    'organization_type_name', 
    'agency_name', 
    'division_name', 
    'district_name', 
    'upazila_name',
    'address'
);

$query = "
SELECT * FROM organizations
";

if((isset($_POST['filter_organization_type']) && $_POST['filter_organization_type'] != '') && (isset($_POST['filter_agencies']) && $_POST['filter_agencies'] != ''))
{
 $query .= '
 WHERE organization_type_id = "'.$_POST['filter_organization_type'].'" AND agency_id = "' .$_POST['filter_agencies']. '"';
}

if(isset($_POST['order']))
{
 $query .= ' ORDER BY '.$column[$_POST['order']['0']['column']].' '.$_POST['order']['0']['dir'].' ';
}
else
{
 $query .= ' ORDER BY id DESC ';
}

//echo $query; die();
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
    $sub_array[] = $row['name_BN'];
    $sub_array[] = $row['organization_type_name'];
    $sub_array[] = $row['agency_name'];
    $sub_array[] = $row['division_name'];
    $sub_array[] = $row['district_name'];
    $sub_array[] = $row['upazila_name'];
    $sub_array[] = $row['address'];
    $data[] = $sub_array;
    }

function count_all_data($connect)
{
 $query = "SELECT * FROM organizations";
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