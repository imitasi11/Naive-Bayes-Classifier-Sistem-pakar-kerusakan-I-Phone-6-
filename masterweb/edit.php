<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Architects | Template </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

	<!-- CSS here -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/hamburgers.min.css">
    <link rel="stylesheet" href="assets/css/gijgo.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/animated-headline.css">
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="assets/css/themify-icons.css">
	<link rel="stylesheet" href="assets/css/slick.css">
	<link rel="stylesheet" href="assets/css/nice-select.css">
	<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<?php 
$nomer=1;
$jml_kriteria=0;
$isi=array();
include "koneksi.php";

$count=1;

$sql = 'SELECT * FROM kriteria ORDER BY id_kriteria' ;
$result = $db->query($sql);
//-- menyiapkan variable penampung berupa array
$kriteria=array();
$nokriteria=array();
//-- melakukan iterasi pengisian array untuk tiap record data yang didapat
foreach ($result as $row) {
    $kriteria[$row['id_kriteria']]=$row['kriteria'];
    $nokriteria[$count]=$row['id_kriteria'];
    $jml_kriteria=$jml_kriteria+1 ;
    $count=$count+1;
    }
//-- query untuk mendapatkan semua data kriteria di tabel kriteria
$sql = 'SELECT * FROM parameter ORDER BY id_kriteria,id_parameter';
$result = $db->query($sql);
//-- menyiapkan variable penampung berupa array
$parameter=array();
$id_kriteria=0;
//-- melakukan iterasi pengisian array untuk tiap record data yang didapat
foreach ($result as $row) {
    if($id_kriteria!=$row['id_kriteria']){
        $parameter[$row['id_kriteria']]=array();
        $id_kriteria=$row['id_kriteria'];
    }
    $parameter[$row['id_kriteria']][$row['nilai']]=$row['parameter'];
}


?>
     <header>
        <!--? Header Start -->
        <div class="header-area header-transparent">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <!-- Logo -->
                        <div class="col-xl-2 col-lg-2 col-md-1">
                            <div class="logo">
                                <h3 style="color: white;">Admin Page</h3>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-10" style="padding-right: 0px;">
                            <div class="main-menu black-menu menu-bg-white d-none d-lg-block" style="margin-right: -90px;">
                                <div class="hamburger hamburger--collapse">
                                    <div class="hamburger-box">
                                        <div class="hamburger-inner"></div>
                                    </div>
                                </div>
                                <nav class="hamburger-menu">
                                    <ul id="navigation">
                                        <li><a href="admin.php">CRUD</a></li>
                                        <li><a href="laporan.php">Laporan Diagnosa</a></li>
                                        <li><a href="login.php">Logout</a></li>                                       
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>
    <!-- header end -->
    <footer>
        <!-- Footer Start-->
        <div class="footer-area footer-padding section-bg" data-background="assets/img/gallery/footer_bg.png" align="center">
            <div class="container" align="center" style="padding-left: 100px;">
                <!-- Footer bottom -->
                <div class="footer-bottom" align="center">
                    <div class="row" align="center">
                <form action="edit-aksi.php" method="post" enctype="multipart/form-data">
                    <h1 style="color: white;margin-bottom: 13px;font-size: 90px;">KRITERIA GEJALA</h1>
                <div align="left" valign="top" style="color: white;">
                    <input type="hidden" name="id" value="<?php echo $_GET['id'] ?>">
                    <?php
                    $ids = $_GET['id'];
      $querydata_mysql = "SELECT * FROM data WHERE id_datas='$ids' order by id_kriteria";
      $rslt = $db->query($querydata_mysql);
      $nomordata=1;
      $key=0;
       foreach($rslt as $data){
        if($data['id_kriteria']==1){
            $key=$data['id_parameter'];
        }else{
        if($nomordata>=$jml_kriteria){}else{
        $nomordata=$nomordata+1;
            
        }
                        $numba=$nomordata-2;
                    if ($numba == 0) {
                    ?><div style="display: inline-block;width: 300px;height: 200px;margin-left: 50px;vertical-align: top;">
                    <?php }elseif ($numba % 5 == 0) {
                    ?></div><div style="display: inline-block;width: 300px;height: 200px;margin-left: 50px;margin-bottom: 150px;vertical-align: top;">
                    <?php } ?>

                                <div class="form-group" style="margin-right: 10px;">
                                <label>
                                    <input type="checkbox" name="<?php echo $data['id_kriteria']?>" id="optionsRadios1" value="y" <?php if($data['id_parameter']==1){echo "checked";}?>>
                                    <?php echo $kriteria[$data['id_kriteria']]?>
                                </label>
                                </div>
                    <?php 
                    
                    }}?>
                </div>
        </div>
        <h1 style="color: white;margin-bottom: 13px;font-size: 90px;">KERUSAKAN</h1>

        <div align="left" valign="top" style="color: white;">
                    <?php
                    for($i=1;$i<=count($parameter[1]);$i++){
                    if ($i == 1) {
                    ?><div style="display: inline-block;width: 300px;height: 20px;margin-left: 50px;vertical-align: top;">
                    <?php }else {
                    ?></div><div style="display: inline-block;width: 300px;height: 20px;margin-left: 50px;margin-bottom: 35px;vertical-align: top;">
                    <?php } ?>

                                <div class="form-group" style="margin-right: 10px;">
                                <label>
                                    <input type="radio" value="<?php echo $i;?>" id="optionsRadios1" name="kerusakan" <?php if($i==$key){echo 'checked';}?>>
                                    <?php echo $parameter[1][$i]?>
                                </label>
                                </div>
                    <?php }?>
                </div>
        </div>
            <div class="form-group">
                        <button type="submit" name="upload" value="Upload" class="button button-contactForm btn_1 boxed-btn">Update</button>
                     </div>
            </form>
        </section>
        <!-- Team End -->
        
    
    <!-- JS here -->

    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./assets/js/popper.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="./assets/js/owl.carousel.min.js"></script>
    <script src="./assets/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/animated.headline.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

    <!-- Date Picker -->
    <script src="./assets/js/gijgo.min.js"></script>
    <!-- Nice-select, sticky -->
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>
    
    <!-- counter , waypoint,Hover Direction -->
    <script src="./assets/js/jquery.counterup.min.js"></script>
    <script src="./assets/js/waypoints.min.js"></script>
    <script src="./assets/js/jquery.countdown.min.js"></script>
    <script src="./assets/js/hover-direction-snake.min.js"></script>

    <!-- contact js -->
    <script src="./assets/js/contact.js"></script>
    <script src="./assets/js/jquery.form.js"></script>
    <script src="./assets/js/jquery.validate.min.js"></script>
    <script src="./assets/js/mail-script.js"></script>
    <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>
    
    </body>
</html>