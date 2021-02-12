<?php
require_once 'vendor/autoload.php';

$defaultConfig = (new Mpdf\Config\ConfigVariables())->getDefaults();
$fontDirs = $defaultConfig['fontDir'];

$defaultFontConfig = (new Mpdf\Config\FontVariables())->getDefaults();
$fontData = $defaultFontConfig['fontdata'];

$mpdf = new \Mpdf\Mpdf([
    'fontdata' => $fontData + [
        'nikosh' => [
            'R' => 'Nikosh.ttf',
            'useOTL' => 0xFF
        ]
    ],
    'default_font' => 'nikosh'
]);



$page_title = 'Short PDS';
require_once 'includes/load.php';
$id =  $_GET['id'];
$employeeinfo = employeeSingleInfo($id);

$html='<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>

<table border="1" width="100%" style="overflow: hidden; font-size: 16px;">
    <tr width="100%">
      <td>
        নাম (বাংলায়)
      </td>
      <td colspan="3">';
      $html = $html. $employeeinfo[0]['name_BN'];
        $html = $html. '</td>
      </tr>
    <tr>
      <td>
        নাম (ইংরেজী)
      </td>
      <td colspan="3">';
      $html = $html. $employeeinfo[0]['name_EN'];
    $html = $html. '</td>
    </tr>
    <tr>
      <td>
      জাতীয় পরিচয়পত্র নং
      </td>
      <td colspan="3">';
      $html = $html. $employeeinfo[0]['national_id'];
        $html = $html. '</td>
    </tr>
    <tr>
    <td>
    মাতার নাম
    </td>
    <td colspan="3">';
      $html = $html. $employeeinfo[0]['mother_name'];
      $html = $html. '</td>
    </tr>
    <tr>
      <td>
      পিতার নাম
      </td>
      <td colspan="3">';
      $html = $html. $employeeinfo[0]['national_id'];
        $html = $html. '</td>
    </tr>
    <tr>
      <td>
      মোবাইল নং (ব্যক্তিগত)
      </td>
      <td colspan="3">';
      $html = $html. $employeeinfo[0]['mobile_no'];
        $html = $html. '</td>
    </tr>
    <tr>
      <td>
      বিকল্প মোবাইল নং
      </td>
      <td colspan="3">';
      $html = $html. $employeeinfo[0]['alternate_mobile_no'];
      $html = $html. '</td>
    </tr>
    <tr>
      <td>
      ইমেইল এড্রেস (ব্যক্তিগত)
      </td>
      <td colspan="3">';
      $html = $html. $employeeinfo[0]['email'];
      $html = $html. '</td>
    </tr>
    <tr>
      <td>
      জন্ম তারিখঃ
      </td>
      <td>';
      $html = $html. $employeeinfo[0]['dob'];
      $html = $html. '</td>
      <td>
      PRL এ গমনের তারিখঃ
      </td>
      <td>';
      $html = $html. $employeeinfo[0]['prl_date'];
      $html = $html. '</td>
    </tr>
    <tr>
      <td>
      স্থায়ী ঠিকানা
      </td>
      <td>';
      $html = $html. $employeeinfo[0]['permanent_division_id'];
      $html = $html. '</td>
      <td>';
      $html = $html. $employeeinfo[0]['permanent_district_id'];
      $html = $html. '</td>
      <td>';
      $html = $html. $employeeinfo[0]['permanent_upazila_id'];
      $html = $html. '</td>
    </tr>
    <tr>
      <td>
      মেইলিং ঠিকানা
      </td>
      <td colspan="3">';
      $html = $html. $employeeinfo[0]['permanent_address'];
      $html = $html. '</td>;
    </tr>
    <tr>
      <td>
      কোটাঃ
      </td>
      <td>';
      $html = $html. $employeeinfo[0]['dob'];
      $html = $html. '</td>
      <td>
      লিঙ্গঃ
      </td>
      <td>';
      $html = $html. $employeeinfo[0]['prl_date'];
      $html = $html. '</td>
    </tr>
    <tr>
      <td>
      বৈবাহিক অবস্থাঃ
      </td>
      <td>';
      $html = $html. $employeeinfo[0]['dob'];
      $html = $html. '</td>
      <td>
      ধর্মঃ
      </td>
      <td>';
      $html = $html. $employeeinfo[0]['prl_date'];
      $html = $html. '</td>
    </tr>
    <tr>
    <td>
    রক্তের গ্রুপঃ
    </td>
    <td>';
    $html = $html. $employeeinfo[0]['dob'];
    $html = $html. '</td>
    <td>
    সর্বশেষ শিক্ষাগত যোগ্যতা
    </td>
    <td>';
    $html = $html. $employeeinfo[0]['prl_date'];
    $html = $html. '</td>
  </tr>
  <tr>
    <td>
    সরকারী চাকুরীতে প্রথম যোগদানের তারিখঃ
    </td>
    <td>';
    $html = $html. $employeeinfo[0]['dob'];
    $html = $html. '</td>
    <td>
    বর্তমান পদে যোগদানের তারিখঃ
    </td>
    <td>';
    $html = $html. $employeeinfo[0]['prl_date'];
    $html = $html. '</td>
  </tr>
  <tr>
    <td>
    সর্বশেষ পদোন্নতি প্রাপ্ত পদঃ
    </td>
    <td>';
    $html = $html. $employeeinfo[0]['dob'];
    $html = $html. '</td>
    <td>
    সর্বশেষ পদোন্নতি\'র তারিখঃ
    </td>
    <td>';
    $html = $html. $employeeinfo[0]['prl_date'];
    $html = $html. '</td>
  </tr>
  <tr>
    <td>
    প্রতিষ্ঠান
    </td>
    <td>';
    $html = $html. $employeeinfo[0]['dob'];
    $html = $html. '</td>
    <td>
    পদবী
    </td>
    <td>';
    $html = $html. $employeeinfo[0]['prl_date'];
    $html = $html. '</td>
    <tr>
      <td>
      বর্তমান পদায়ন
      </td>
      <td>';
      $html = $html. $employeeinfo[0]['posting_division_id'];
      $html = $html. '</td>
      <td>';
      $html = $html. $employeeinfo[0]['posting_district_id'];
      $html = $html. '</td>
      <td>';
      $html = $html. $employeeinfo[0]['posting_upazila_id'];
      $html = $html. '</td>
    </tr>
  </tr>
    </table>
</body>
</html>';
$mpdf->WriteHTML($html);
$mpdf->Output();
?>