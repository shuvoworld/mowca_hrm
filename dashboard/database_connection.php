<?php
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'mowca_hrm');
$DBconnect = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
mysqli_set_charset($DBconnect,"utf8");
if (!$DBconnect) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
