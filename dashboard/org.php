<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="mowca" content="mowca, hrm, directory, dwa, jms">
    <meta name="generator" content="Hugo 0.79.0">
    <title>Directory</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/dashboard/">


    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="dashboard.css" rel="stylesheet">
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
            <div class="position-sticky pt-3">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="org.php">
                            <span data-feather="home"></span>
                            প্রতিষ্ঠানের তথ্য
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.php">
                            <span data-feather="home"></span>
                            জনবলের তথ্য
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <h2>মহিলা ও শিশু বিষয়ক মন্ত্রণালয়-প্রতিষ্ঠান ডাইরেক্টরি</h2>
            <?php
                include '../libs/script/pdocrud.php';
                $pdocrud = new PDOCrud();

                $pdocrud->tableHeading("সার্বিক অবস্থা");

                $pdocrud->addFilter("agency_filter", "দপ্তর/সংস্থা", "agency", "dropdown");
                $pdocrud->setFilterSource("agency_filter", "agencies", "name_BN", "name_BN as agency", "db");

                $pdocrud->addFilter("status_filter", "পদের স্ট্যাটাস", "status", "radio");
                $pdocrud->setFilterSource("status_filter", array("Vacant" => "Vacant", "Filled" => "Filled"), "", "", "array");

                $pdocrud->addFilter("DistrictFilter", "জেলা", "district", "dropdown");
                $pdocrud->setFilterSource("DistrictFilter", "districts", "name_BN", "name_BN as district", "db");

                $pdocrud->setSettings("addbtn", false);
                $pdocrud->setSettings("editbtn", false);
                $pdocrud->setSettings("viewbtn", false);
                $pdocrud->setSettings("delbtn", false);
                $pdocrud->setSettings("actionbtn", false);
                echo $pdocrud->dbTable("v_poststatus")->render();
            ?>
        </main>
    </div>
</div>


<script src="dist/js/bootstrap.bundle.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
<script src="dashboard.js"></script>
</body>
</html>
