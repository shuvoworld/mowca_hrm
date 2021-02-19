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

$requestData = $_REQUEST;

$filter_district = $requestData['filter_district'];

$sql = "SELECT * FROM v_poststatus";

$query = mysqli_query($DBconnect, $sql);
$totalData = mysqli_num_rows($query);
$totalFiltered = $totalData;

$sql = "SELECT * FROM v_poststatus WHERE 1 ";

if ($filter_district != '') {
    $sql .= " AND (v_poststatus.district_id='" . $filter_district . "') ";
}
if (!empty($requestData['search']['value'])) {
    $sql .= ' AND (v_poststatus.mobile LIKE "%' . $requestData["search"]["value"] . '%" ';
    $sql .= 'OR v_poststatus.employee LIKE "%' . $requestData["search"]["value"] . '%" ';
    $sql .= 'OR v_poststatus.district LIKE "%' . $requestData["search"]["value"] . '%" ';
    $sql .= 'OR v_poststatus.designation LIKE "%' . $requestData["search"]["value"] . '%" ';
    $sql .= 'OR v_poststatus.upazila LIKE "%' . $requestData["search"]["value"] . '%" )';
}


$query = mysqli_query($DBconnect, $sql);

$totalFiltered = mysqli_num_rows($query);

$sql .= ' ORDER BY ' . $columns[$requestData['order']['0']['column']] . ' ' . $requestData['order']['0']['dir'] . ' ';

if ($requestData["length"] != -1) {
    $sql .= 'LIMIT ' . $requestData['start'] . ', ' . $requestData['length'];
}

$query = mysqli_query($DBconnect, $sql);
$data = array();


while ($row = mysqli_fetch_array($query)) {
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


$output = array(
    "draw" => intval($requestData["draw"]),
    "recordsTotal" => intval($totalData),
    "recordsFiltered" => intval($totalFiltered),
    "data" => $data,
);

echo json_encode($output);
