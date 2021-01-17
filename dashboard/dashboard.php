<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>পিডিএস ডাটাব্যাঙ্ক</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

</head>
<?php
    $page_title = 'ডাইরেক্টরি';
    require_once('../includes/load.php');
    require_once('../libs/script/pdocrud.php');
?>
<body>
<main class="container-fluid">
    <h1>মহিলা ও শিশু বিষয়ক মন্ত্রণালয়</h1>
    <div class="row">
        <div class="col-12">
    <?php
        $pdocrud = new PDOCrud(false, "pure", "pure");
        $pdocrud->tableHeading("প্রতিষ্ঠানের যোগাযোগের ডাইরেক্টরি");
        $pdocrud->setSkin("default");
        $pdocrud->addPlugin("select2");
        $pdocrud->colRename("organization", "প্রতিষ্ঠান");
        $pdocrud->colRename("designation", "পদবী");
        $pdocrud->colRename("division", "বিভাগ");
        $pdocrud->colRename("district", "জেলা");
        $pdocrud->colRename("upazila", "উপজেলা");
        $pdocrud->colRename("employee", "কর্মকর্তা");
        $pdocrud->colRename("employee_mobile", "মোবাইল");
        $pdocrud->colRename("email", "ইমেইল");
        $pdocrud->colRename("organization_contact", "প্রতিষ্ঠানের নম্বর");

        $pdocrud->addFilter("DistrictFilter", "জেলা", "district", "dropdown");
        $pdocrud->setFilterSource("DistrictFilter", "districts", "name_BN", "name_BN as district", "db");
        $pdocrud->addFilter("UpazilaFilter", "উপজেলা", "upazila", "dropdown");
        $pdocrud->setFilterSource("UpazilaFilter", "upazilas", "name_BN", "name_BN as upazila", "db");
        $pdocrud->setSettings("addbtn", false);
        $pdocrud->setSettings("editbtn", false);
        $pdocrud->setSettings("viewbtn", false);
        $pdocrud->setSettings("delbtn", false);
        $pdocrud->setSettings("actionbtn", false);
        echo $pdocrud->loadPluginJsCode("select2","select");
        echo $pdocrud->dbTable("v_contact")->render();
    ?>
        </div>
</div>
</main>
<footer style="float: right">
    copyright 2020-2021 Ministry of Women and Children Affairs
</footer>
</body>
</html>