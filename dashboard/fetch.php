<?php

$connect = new PDO("mysql:host=localhost;dbname=mowca_hrm;charset=utf8", "root", "");

$column = array(
    'organizations.district_name', 
    'employees.organization_name', 
    'employees.name_BN', 
    'employees.mobile', 
    'employees.email', 
    'employees.designation_name'
);

$query = "
SELECT 
organizations.district_name as district_name,
employees.organization_name as organization_name,
employees.name_BN as employee_name,
employees.mobile_no as mobile_no,
employees.email as employee_email,
employees.designation_name as designation
FROM employees LEFT JOIN organizations ON employees.organization_id = organizations.id
";

if(isset($_POST['filter_district']) && $_POST['filter_district'] != '')
{
 $query .= '
 WHERE organizations.district_id = "'.$_POST['filter_district'].'"';
}

if(isset($_POST['order']))
{
 $query .= 'ORDER BY '.$column[$_POST['order']['0']['column']].' '.$_POST['order']['0']['dir'].' ';
}
else
{
 $query .= 'ORDER BY employees.id DESC ';
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
    $sub_array[] = $row['district_name'];
    $sub_array[] = $row['organization_name'];
    $sub_array[] = $row['employee_name'];
    $sub_array[] = $row['mobile_no'];
    $sub_array[] = $row['employee_email'];
    $sub_array[] = $row['designation'];
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