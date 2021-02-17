<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- CoreUI CSS -->
  <link rel="stylesheet" href="https://unpkg.com/@coreui/coreui/dist/css/coreui.min.css" crossorigin="anonymous">
  <link href="src/scss/style.scss" rel="stylesheet">

  <title>CoreUI</title>
</head>
<body class="c-app">
<div class="c-sidebar c-sidebar-dark c-sidebar-fixed c-sidebar-lg-show" id="sidebar">
  <div class="c-sidebar-brand d-lg-down-none">
  </div>
  <ul class="c-sidebar-nav">
    <li class="c-sidebar-nav-item"><a class="c-sidebar-nav-link" href="index.php">
        Dashboard<span class="badge badge-info">NEW</span></a></li>
  </ul>
  <button class="c-sidebar-minimizer c-class-toggler" type="button" data-target="_parent" data-class="c-sidebar-minimized"></button>
</div>
<div class="c-wrapper c-fixed-components">
  <header class="c-header c-header-light c-header-fixed c-header-with-subheader">
    <button class="c-header-toggler c-class-toggler d-lg-none mfe-auto" type="button" data-target="#sidebar" data-class="c-sidebar-show">
      <svg class="c-icon c-icon-lg">
        <use xlink:href="node_modules/@coreui/icons/sprites/free.svg#cil-menu"></use>
      </svg>
    </button>
    <a class="c-header-brand d-lg-none" href="#">
      <svg width="118" height="46" alt="CoreUI Logo">
        <use xlink:href="assets/brand/coreui.svg#full"></use>
      </svg>
    </a>
  </header>

  <div class="c-body">
    <main class="c-main">
      <div class="container-fluid">
        <div class="fade-in">
          <div class="row">
            <div class="col-sm-6 col-lg-3">
              <div class="card text-white bg-primary">
                <div class="card-body card-body pb-0 d-flex justify-content-between align-items-start">
                  <div>
                    <div class="text-value-lg">9.823</div>
                    <div>বাংলাদেশ শিশু একাডেমি</div>
                    <div class="c-chart-wrapper mt-3 mx-3" style="height:70px;">

                </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="card text-white bg-info">
                <div class="card-body card-body pb-0 d-flex justify-content-between align-items-start">
                  <div>
                    <div class="text-value-lg">9.823</div>
                    <div>জাতীয় মহিলা সংস্থা</div>
                  </div>

                </div>
                <div class="c-chart-wrapper mt-3 mx-3" style="height:70px;">

                </div>
              </div>
            </div>
            <!-- /.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="card text-white bg-warning">
                <div class="card-body card-body pb-0 d-flex justify-content-between align-items-start">
                  <div>
                    <div class="text-value-lg">9.823</div>
                    <div>মহিলা বিষয়ক অধিদপ্তর</div>
                  </div>
                </div>
                <div class="c-chart-wrapper mt-3" style="height:70px;">

                </div>
              </div>
            </div>
            <!-- /.col-->
            <div class="col-sm-6 col-lg-3">
              <div class="card text-white bg-danger">
                <div class="card-body card-body pb-0 d-flex justify-content-between align-items-start">
                  <div>
                    <div class="text-value-lg">9.823</div>
                    <div>Members online</div>
                  </div>
                </div>
                <div class="c-chart-wrapper mt-3 mx-3" style="height:70px;">

                </div>
              </div>
            </div>
            <!-- /.col-->
          </div>
          <!-- /.row-->
          <div class="card">
            <div class="card-body">
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
            </div>
          </div>
        </div>
        <!-- /.card-->
        <div class="row">


        </div>
        <!-- /.row-->
      </div>
  </div>
  </main>
  <footer class="c-footer">
    <div><a href="https://coreui.io">CoreUI</a> &copy; 2020 creativeLabs.</div>
    <div class="ml-auto">Powered by&nbsp;<a href="https://coreui.io/">CoreUI</a></div>
  </footer>
</div>
</div>
<!-- CoreUI and necessary plugins-->
<script src="node_modules/@coreui/coreui/dist/js/coreui.bundle.min.js"></script>

<script src="node_modules/@coreui/utils/dist/coreui-utils.js"></script>
<script src="src/js/main.js"></script>
</body>
</html>
