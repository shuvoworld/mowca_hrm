<?php
include 'database_connection.php';
$columns = array(
// datatable column index  => database column name
    0 => 'district',
    0 => 'upazila',
    1 => 'employee',
    2 => 'mobile',
    3 => 'email'
);

$requestData = $_REQUEST;

$filter_district = $requestData['filter_district'];

$sql = "SELECT * FROM v_all_jms";

$query = mysqli_query($DBconnect, $sql);
$totalData = mysqli_num_rows($query);
$totalFiltered = $totalData;

$sql = "SELECT * FROM v_all_jms WHERE 1 ";

if ($filter_district != '') {
    $sql .= " AND (v_all_jms.district_id='" . $filter_district . "') ";
}
if (!empty($requestData['search']['value'])) {
    $sql .= ' AND (v_all_jms.mobile LIKE "%' . $requestData["search"]["value"] . '%" ';
    $sql .= 'OR v_all_jms.employee LIKE "%' . $requestData["search"]["value"] . '%" ';
    $sql .= 'OR v_all_jms.district LIKE "%' . $requestData["search"]["value"] . '%" ';
    $sql .= 'OR v_all_jms.upazila LIKE "%' . $requestData["search"]["value"] . '%" ';
    $sql .= 'OR v_all_jms.designation LIKE "%' . $requestData["search"]["value"] . '%" ';
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
    $sub_array[] = $row['district'];
    $sub_array[] = $row['upazila'];
    $sub_array[] = $row['employee'];
    $sub_array[] = $row['mobile'];
    $sub_array[] = $row['email'];
    $data[] = $sub_array;
}


$output = array(
    "draw" => intval($requestData["draw"]),
    "recordsTotal" => intval($totalData),
    "recordsFiltered" => intval($totalFiltered),
    "data" => $data,
);

echo json_encode($output);