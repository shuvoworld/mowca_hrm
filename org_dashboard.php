<?php
$page_title = 'প্রতিষ্ঠানের তথ্য - পদ';
require_once 'includes/load.php';
// Checkin What level user has permission to view this page
page_require_level(2);
$org_id = $_REQUEST['id'];
$sanctionedposts = find_posts_by_organization($org_id);
?>
<?php include_once 'layouts/header.php'; ?>


<div class="row">
  <div class="col-md-12">
    <div class="panel panel-default">
      <div class="panel-heading">
        <strong>
          <span class="glyphicon glyphicon-th"></span>
          <span>প্রতিষ্ঠানের পদের তথ্য</span>
        </strong>
      </div>
      <div class="panel-body">
        <div class="col-md-12">
          <div class="row">
            <div class="col-md-12">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th>Sanctioned Post</th>
                    <th>Employee</th>
                    <th>Status</th>
                  </tr>
                </thead>
                <tbody>
                  <?php if ($sanctionedposts) : ?>
                    <?php foreach ($sanctionedposts as $sanctionedpost) : ?>
                      <tr style="font-size:12px;">
                        <td class="text-center"><?php echo $sanctionedpost['designation_name']; ?></td>
                        <td class="text-center"><?php echo $sanctionedpost['employee_name']; ?></td>
                        <td class="text-left"><?php echo $sanctionedpost['mobile_no']; ?></td>
                      </tr>
                    <?php endforeach; ?>
                  <?php
                  else :
                  ?>
                    <tr style="font-size:14px;">
                      <td class="text-center" colspan=6><?php echo "তথ্য খুঁজে পাওয়া যাইনি" ?></td>
                    </tr>
                  <?php
                  endif;
                  ?>
                </tbody>
              </table>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>

    <?php include_once 'layouts/footer.php'; ?>

    <script type="text/javascript">

    </script>