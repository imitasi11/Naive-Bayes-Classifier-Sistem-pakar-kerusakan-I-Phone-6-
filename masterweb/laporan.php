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
    <script>
    function printContent(el){
    var restorepage = document.body.innerHTML;
    var printcontent = document.getElementById(el).innerHTML;
    document.body.innerHTML = printcontent;
    window.print();
    document.body.innerHTML = restorepage;
}
</script>
<style type="text/css">
    @page { 
        size: a3 landscape;
    }
</style>
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
//-- query untuk mendapatkan semua data training di tabel datas dan data
$sql = 'SELECT * FROM data_test a JOIN datas_test b USING(id_datas) ORDER BY b.id_datas';
$result = $db->query($sql);
//-- menyiapkan variable penampung berupa array
$data=array();
$datas=array();
$id_datas=0;
//-- melakukan iterasi pengisian array untuk tiap record data yang didapat
foreach ($result as $row) {
    if($id_datas!=$row['id_datas']){
        $datas[$row['id_datas']]=$row['nama_data'];
        $data[$row['id_datas']]=array();
        $id_datas=$row['id_datas'];
    }
    $data[$row['id_datas']][$row['id_kriteria']]=$row['id_parameter'];
}

?>
</head>
<body>
     <header>
        <!--? Header Start -->
        <div class="header-area header-transparent">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <!-- Logo -->
                        <div class="col-xl-2 col-lg-2 col-md-1">
                            <div class="logo">
                                <h3 style="color: white;">Laporan Diagnosa</h3>
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
        <div class="footer-area footer-padding section-bg" data-background="assets/img/gallery/footer_bg.png" align="center" style="min-height: 700px; height:100vh;width: 100%; background-size:     cover;                      /* <------ */
    background-repeat:   no-repeat;">
            <div class="container" align="center" style="padding-left: 100px;">
                <!-- Footer bottom -->
                <div class="footer-bottom" align="center">
                    <div class="row" align="center">
                        <div align="right" style="margin-left: 74%;margin-bottom: 10px;">
                            <a class="btn"  onclick="printContent('div1')" href="#" align="right"> Print</a>
                        </div>
                                <div align="center" style="overflow-y: auto;overflow-x: auto;width: 1000px;height: 500px; background: white;">
                               <div id="div1">
                                <table class="table table-striped">
                 
                <thead>
                
                  <tr>
                    <th>No</th>
                    <th>Kasus</th>
                    <?php 
                        //-- menampilkan header table
                        for($i=2;$i<=$jml_kriteria;$i++){ 
                            $wew=$nokriteria[$i]-1;
                            echo "<th style='text-align:center'>G{$wew}</th>";
                        }
                        ?>
                        <th style="text-align:center"><?php echo $kriteria[$nokriteria[1]];?></th>
                        <th align="center" style="text-align:center">Aksi</th>
                  </tr>
                </thead>
                   <tbody>
                        <?php
                        
                        //-- menampilkan data secara literal
                        foreach($data as $id_datas=>$dt_kriteria){
                            echo "<tr><td>{$nomer}</td>";
                            $nomer=$nomer+1;
                            echo "<td>{$datas[$id_datas]}</td>";
                            for($i=2;$i<=$jml_kriteria;$i++){ 
                                if($parameter[$nokriteria[$i]][$dt_kriteria[$nokriteria[$i]]]=="ya"){
                                     echo "<td>ya</td>";
                                }else{
                                    echo "<td>-</td>";
                                }
                               
                            }
                            
                            echo "<td>{$parameter[1][$dt_kriteria[1]]}</td>";
                        ?>  
                            <td><a class="btn-danger" href="delete_test.php?id=<?php echo $id_datas; ?>">delete</a></td></tr> <?php

                            }

                        ?>
                  </tr>
                </tbody>
              </table>
          </div>
                           
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>

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