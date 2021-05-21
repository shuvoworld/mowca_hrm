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
$employeePostinginfo = employeePostingInfo($id);

$mpdf->SetHTMLHeader('
<div style="text-align: left">
   <img src="assets/logo.png" width="60">
</div>');
$mpdf->SetHTMLFooter('
<table width="100%">
    <tr>
        <td width="33%">Print Date and Time: {DATE j-m-Y}</td>
        <td width="33%" align="center">{PAGENO}/{nbpg}</td>
    </tr>
</table>');

$html='<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>
<h2 style="text-align: center">মহিলা ও শিশু বিষয়ক মন্ত্রণালয়ের কর্মকর্তা/কর্মচারীদের চাকুরী সংক্রান্ত তথ্য ফর্ম</h2>
<table border="1" width="100%" style="font-size: 16px; border-collapse: collapse;">
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
      $html = $html. convertEnglishDigitToBengali($employeeinfo[0]['national_id']);
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
      $html = $html. $employeeinfo[0]['father_name'];
        $html = $html. '</td>
    </tr>
    <tr>
      <td>
      মোবাইল নং (ব্যক্তিগত)
      </td>
      <td colspan="3">';
      $html = $html. convertEnglishDigitToBengali($employeeinfo[0]['mobile_no']);
        $html = $html. '</td>
    </tr>
    <tr>
      <td>
      বিকল্প মোবাইল নং
      </td>
      <td colspan="3">';
      $html = $html. convertEnglishDigitToBengali($employeeinfo[0]['alternate_mobile_no']);
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
      $html = $html. convertEnglishDigitToBengali(date("d-m-Y", strtotime($employeeinfo[0]['dob'])));
      $html = $html. '</td>
      <td>
      PRL এ গমনের তারিখঃ
      </td>
      <td>';
      $html = $html. convertEnglishDigitToBengali(date("d-m-Y", strtotime($employeeinfo[0]['prl_date'])));
      $html = $html. '</td>
    </tr>
    <tr>
      <td>
      স্থায়ী ঠিকানা
      </td>
      <td>';
      $html = $html. "বিভাগঃ ". name_from_id('divisions', 'name_BN',  $employeeinfo[0]['permanent_division_id']);
      $html = $html. '</td>
      <td>';
      $html = $html. "জেলাঃ ". name_from_id('districts',  'name_BN', $employeeinfo[0]['permanent_district_id']);
      $html = $html. '</td>
      <td>';
      $html = $html. "উপজেলাঃ ". name_from_id('upazilas', 'name_BN', $employeeinfo[0]['permanent_upazila_id']);
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
      $html = $html. name_from_id('quotas', 'name', $employeeinfo[0]['quota_id']);
      $html = $html. '</td>
      <td>
      লিঙ্গঃ
      </td>
      <td>';
      $html = $html. name_from_id('sex',  'name', $employeeinfo[0]['sex_id']);
      $html = $html. '</td>
    </tr>
    <tr>
      <td>
      বৈবাহিক অবস্থাঃ
      </td>
      <td>';
      $html = $html. name_from_id('marital_statuses',  'name', $employeeinfo[0]['marital_status_id']);
      $html = $html. '</td>
      <td>
      ধর্মঃ
      </td>
      <td>';
      $html = $html = $html. name_from_id('religions',  'name', $employeeinfo[0]['religion_id']);
      $html = $html. '</td>
    </tr>
    <tr>
    <td>
    রক্তের গ্রুপঃ
    </td>
    <td>';
    $html = $html. name_from_id('bloodgroups',  'name', $employeeinfo[0]['bloodgroup_id']);
    $html = $html. '</td>
    <td>
    সর্বশেষ শিক্ষাগত যোগ্যতা
    </td>
    <td>';
    $html = $html. name_from_id('educational_qualifications',  'name', $employeeinfo[0]['educational_qualification_id']);
    $html = $html. '</td>
  </tr>
  <tr>
    <td>
    সরকারী চাকুরীতে প্রথম যোগদানের তারিখঃ
    </td>
    <td>';
    $html = $html. convertEnglishDigitToBengali(date("d-m-Y", strtotime($employeeinfo[0]['joining_govt_service_date'])));
    $html = $html. '</td>
    <td>
    বর্তমান পদে যোগদানের তারিখঃ
    </td>
    <td>';
    $html = $html. convertEnglishDigitToBengali(date("d-m-Y", strtotime($employeeinfo[0]['present_post_joining_date'])));
    $html = $html. '</td>
  </tr>
  <tr>
    <td>
    সর্বশেষ পদোন্নতি প্রাপ্ত পদঃ
    </td>
    <td>';
    $html = $html. name_from_id('designations',  'name', $employeeinfo[0]['last_promoted_post_id']);
    $html = $html. '</td>
    <td>
    সর্বশেষ পদোন্নতি\'র তারিখঃ
    </td>
    <td>';
    $html = $html. convertEnglishDigitToBengali(date("d-m-Y", strtotime($employeeinfo[0]['last_promotion_date'])));
    $html = $html. '</td>
  </tr>
  <tr>
    <td>
    প্রতিষ্ঠান
    </td>
    <td>';
    $html = $html. name_from_id('organizations',  'name_BN', $employeeinfo[0]['posting_organization_id']);
    $html = $html. '</td>
    <td>
    পদবী
    </td>
    <td>';
    $html = $html. name_from_id('sanctionedposts',  'designation_name', $employeeinfo[0]['posting_sanctionedpost_id']);
    $html = $html. '</td>
    <tr>
      <td>
      বর্তমান পদায়ন
      </td>
      <td>';
      $html = $html. "বিভাগঃ ". name_from_id('divisions',  'name_BN', $employeeinfo[0]['posting_division_id']);
      $html = $html. '</td>
      <td>';
      $html = $html. "জেলা ". name_from_id('districts',  'name_BN', $employeeinfo[0]['posting_district_id']);
      $html = $html. '</td>
      <td>';
      $html = $html. "উপজেলাঃ ".name_from_id('upazilas',  'name_BN', $employeeinfo[0]['posting_upazila_id']);
      $html = $html. '</td>
    </tr>
  </tr>
    </table>';
$html = $html. '<b>পদায়নের তথ্য<b>';
      $html = $html.'<table border="1" width="100%" style="font-size: 16px; border-collapse: collapse;">';
      $html = $html. '<tr>
<td>ক্রম</td>
    <td>পদবী</td>
    <td>প্রতিষ্ঠান</td>
    <td>জেলা</td>
    <td>উপজেলা</td>
    <td>নিয়মিত/সংযুক্ত/অতিঃ দায়িত্ব </td>
    <td>শুরু</td>
    <td>শেষ</td>
    </tr>';

      $i = 1;
      foreach ($employeePostinginfo as $posting)
        {
        $html = $html.'<tr>';
        $html = $html.'<td>'.$i.'</td>';
        $html = $html. '<td>' . name_from_id('sanctionedposts', 'designation_name', $posting['sanctionedpost_id']) . '</td>';
        $html = $html. '<td>' . name_from_id('organizations', 'name_BN', $posting['organization_id']) . '</td>';
        $html = $html. '<td>' . name_from_id('districts',  'name_BN', $posting['district_id']) . '</td>';
        $html = $html. '<td>' . name_from_id('upazilas',  'name_BN', $posting['upazila_id']) . '</td>';
        $html = $html. '<td>' . name_from_id('type_of_posting',  'name_BN', $posting['type_of_posting']). '</td>';
        $html = $html. '<td>' . convertEnglishDigitToBengali(date("d-m-Y", strtotime($posting['start_date']))) . '</td>';
        $html = $html. '<td>' . convertEnglishDigitToBengali(date("d-m-Y", strtotime($posting['end_date']))). '</td>';
        $html = $html. '</tr>';
        $i++;
        }

$html = $html.'</table>';
$html = $html.'</body></html>';
$mpdf->WriteHTML($html);
$mpdf->Output($employeeinfo[0]['id'].'.pdf', 'I');
?>