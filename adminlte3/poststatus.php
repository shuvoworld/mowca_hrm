<?php
/*
You can follow this tutorial for datatable and php server side implementation: https://shanecunningham.me/blog/2018/03/20/datatables-with-pagination-using-ajax-php-mysql-calling-a-php-functions/
 */

include 'database_connection.php';
$columns = array(
// datatable column index  => database column name
    0 => 'agency',
    1 => 'district',
    2 => 'upazila',
    3 => 'organization',
    4 => 'designation',
    5 => 'employee',
    6 => 'mobile'
);

$filter_district = $_POST['filter_district'];
$query = '';

$output = array();
$query .= "SELECT * FROM v_poststatus WHERE 1 ";

//if (isset($_POST["search"]["value"])) {
//    $query .= ' AND (v_poststatus.mobile LIKE "%' . $_POST["search"]["value"] . '%" ';
//    $query .= 'OR v_poststatus.employee LIKE "%' . $_POST["search"]["value"] . '%" ';
//    $query .= 'OR v_poststatus.district_name LIKE "%' . $_POST["search"]["value"] . '%" ';
//    $query .= 'OR v_poststatus.upazila_name LIKE "%' . $_POST["search"]["value"] . '%" )';
//}

if ($filter_district != '') {
    $query .= " AND (v_poststatus.district_id='" . $filter_district . "') ";
}

$query .= ' ORDER BY ' . $columns[$_POST['order']['0']['column']] . ' ' . $_POST['order']['0']['dir'] . ' ';

if ($_POST["length"] != -1) {
    $query .= 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];
}

//echo $query;die();
$statement = $connect->prepare($query);
//print_r($statement->debugDumpParams());
$statement->execute();

$result = $statement->fetchAll();

$data = array();

$filtered_rows = $statement->rowCount();

foreach ($result as $row) {
    $sub_array = array();
    $sub_array[] = $row['agency'];
    $sub_array[] = $row['district'];
    $sub_array[] = $row['upazila'];
    $sub_array[] = $row['organization'];
    $sub_array[] = $row['designation'];
    $sub_array[] = $row['employee'];
    $sub_array[] = $row['mobile'];
    $data[] = $sub_array;
}

function get_total_all_records($connect)
{
    $statement = $connect->prepare('SELECT * FROM v_poststatus');
    $statement->execute();
    return $statement->rowCount();
}

$output = array(
    "draw" => intval($_POST["draw"]),
    "recordsTotal" => $filtered_rows,
    "recordsFiltered" => get_total_all_records($connect),
    "data" => $data,
);

echo json_encode($output);
