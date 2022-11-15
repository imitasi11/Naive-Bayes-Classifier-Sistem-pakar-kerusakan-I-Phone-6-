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
    <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    <header>
        <!--? Header Start -->
        <div class="header-area header-transparent">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <!-- Logo -->
                        <div class="col-xl-2 col-lg-2 col-md-1">
                            <div class="logo">
                                
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
										<li><a href="#home">Home</a></li>
										<li><a href="#hardware">Hardware</a></li>
										<li><a href="#diagnosa">Diagnosa</a></li>
                                        <li><a href="#metode">Metode</a></li>
										<li><a href="login.php">Login</a></li>
										
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
    <main>
        <!--? slider-area start -->
		<div class="slider-area" id="home">
			<div class="slider-full-active owl-carousel custom-dots">
				<div class=" d-flex align-items-center" style="background-image: url(gambar/a.png);min-height: 700px;width: 100%; background-size:     cover;                      /* <------ */
    background-repeat:   no-repeat;">
					<div class="container">
						<div class="row" >
							<div class="col-xl-6 col-lg-8 col-md-7 col-sm-8">
								<div class="slide-full-content">
                                    <span>Prediksi Kerusakan
                                        <br>Hardware
                                        <br>Iphone 6</span>

									<h1>Selamat<br> Datang</h1>
									<p>kami menyediakan layanan untuk melakukan cek atau diagnosa secara mandiri bagi masyarakat</p>
									<a class="btn" href="#diagnosa">Diagnosa</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- slider-area end -->

        <!--? About Start-->
        <section class="about-area section-padding2" id="hardware" style="margin-top: -100px;">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-10">
                        <div class="about-caption mb-50">
                            <!-- Section Tittle -->
                            <div class="section-tittle section-tittle2 mb-35">
                                <span>Hardware</span>
                                <h2>Hardware is a...</h2>
                            </div>
                            <p>hardware atau dalam bahasa indonesia-nya disebut juga dengan nama “perangkat keras” adalah salah satu komponen dari sebuah ponsel yang sifat alat nya bisa dilihat dan diraba secara langsung atau yang berbentuk nyata.</p>
                            <a href="#hardwares" class="btn">Hardware</a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <!-- about-img -->
                        <div class="about-img ">
                            <div class="about-font-img "style="padding-top: 43px;padding-left: 70px;">
                                <img src="gambar/sjsjs.png" style="width: 500px;" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- About  End-->
        
        <section class="service-area" style="height: 1530px;"  id="hardwares">
        <!-- Footer Start-->
        <div class="footer-area footer-padding section-bg" data-background="assets/img/gallery/footer_bg.png">
            <div class="container">
                <!-- Footer bottom -->
                <div class="footer-top">
                    <div class="row">
                        <div style="padding-left:  70px;">
                        <div class="section-tittle section-tittle3  text-center mb-90">
                            <span align="left">macam Hardware Iphone 6</span>
                        </div>
                    </div>
                <!-- Section caption -->
                <div class="row justify-content-center">
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-9" >
                        <div class="services-caption text-center mb-30" style="height: 600px;">
                            <div class="service-icon">
                                <img src="gambar/10.png" style="height:  150px;" alt="#">
                            </div> 
                            <div style="margin-top: 13px;" class="service-cap">
                                <h4><a href="#">Speaker</a></h4>
                                <p>Speaker adalah perangkat keras yang berfungsi untuk mengeluarkan suara. Suara yang dihasilkan berasal dari hasil pemrosesan dari sinyal elektrik ke frekuensi audio (suara).</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-9">
                        <div class="services-caption active text-center mb-30" style="height: 600px;">
                            <div class="service-icon">
                                <img src="gambar/20.png" style="height: 150px;" alt="#">
                            </div> 
                            <div style="margin-top: 13px;" class="service-cap">
                                <h4><a href="#">Baterai</a></h4>
                                <p>Baterai merupakan alat yang terdapat 2 sel elektrokimia yang bisa mengubah energi kimia menjadi energy listrik. Berfungsi untuk menyimpan energi listrik dalam bentuk energi kimia, yang akan digunakan untuk mensuplai (menyediakan) listik ke sistem starter.</p>
                            </div>
                        </div>
                    </div> 
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-9">
                        <div class="services-caption text-center mb-30" style="height: 600px;">
                            <div class="service-icon">
                                <img src="gambar/30.png" style="height: 150px;" alt="#">
                            </div> 
                            <div style="margin-top: 13px;" class="service-cap">
                                <h4><a href="#">Finger Print</a></h4>
                                <p>Finger print sensor atau sensor sidik jari. Fingerprint dapat digunakan sebagai sistem keamanan ponsel pintar ini. Sistem dapat menyesuaikan tombol pengamanan kunci sesuai dengan sidik jari penggunanya.</p>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="row justify-content-center">
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-9">
                        <div class="services-caption text-center mb-30"style="height: 600px;">
                            <div class="service-icon">
                                <img src="gambar/40.png" style="height: 150px;" alt="#">
                            </div> 
                            <div style="margin-top: 13px;" class="service-cap">
                                <h4><a href="#">Kamera</a></h4>
                                <p>Kamera adalah perangkat hardware diiPhone yang berfungsi untuk memotret foto atau merekam video.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-9">
                        <div class="services-caption active text-center mb-30" style="height: 600px;">
                            <div class="service-icon">
                                <img src="gambar/50.png" style="height: 150px;" alt="#">
                            </div> 
                            <div style="margin-top: 13px;" class="service-cap">
                                <h4><a href="#">LCD</a></h4>
                                <p>LCD (Liquid Crystal Display) dan Prinsip Kerjanya LCD adalah suatu jenis media display (tampilan) yang menggunakan kristal cair (liquid crystal) untuk menghasilkan gambar yang terlihat..</p>
                            </div>
                        </div>
                    </div> 
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-9">
                        <div class="services-caption text-center mb-30"style="height: 600px;">
                            <div class="service-icon">
                                <img src="gambar/60.png" style="height: 150px;" alt="#">
                            </div> 
                            <div style="margin-top: 13px;" class="service-cap">
                                <h4><a href="#">IC CHARGER</a></h4>
                                <p>IC Charger adalah sebuah komponen mikro yang ada pada mesin atau logic board iPhone, Fungsi IC Charger ini sebagai media untuk menghantarkan arus dari charger ke battery serta menginformasikan ke CPU bahwa ponsel sedang melakukan pengisian battery.</p>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </section>
        <!--? Services Area Start -->
        <section class="service-area pt-150 pb-150" id="metode"  >
            <div class="service-bg"></div>
            <div class="container">
                <!-- Section Tittle -->
                <div style="padding-left:  70px;">
                        <div class="section-tittle section-tittle3 mb-90">
                            <span align="left">metode</span>
                        </div>
                    </div>
                <!-- Section caption -->
                <div class="row justify-content-center">
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-9">
                        <div class="services-caption text-center mb-30" style="height: 600px;">
                            <div class="service-icon">
                                <i class="flaticon-null"></i>
                            </div> 
                            <div class="service-cap">
                                <h4><a href="#">PENGETAHUAN</a></h4>
                                <p>Langkah paling awal untuk membuat sistem pakar adalah dengan menggali informasi tentang suatu masalah yang akan dipecahkan dengan bantuan seorang pakar maupun sumber pengetahuan lainya seperti buku.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-9">
                        <div class="services-caption active text-center mb-30" style="height: 600px;">
                            <div class="service-icon">
                                <i class="flaticon-null-3"></i>
                            </div> 
                            <div class="service-cap">
                                <h4><a href="#">NAIVE-BAYES</a></h4>
                                <p>Data yang didapatkan dari pakar maupun buku berupa probabilitas tentang berapa data kerusakan iphone 6. Data ini kemudian digunakan untuk menentukan aturan sistem dalam menentukan keputusan.</p>
                            </div>
                        </div>
                    </div> 
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-9">
                        <div class="services-caption text-center mb-30" style="height: 600px;">
                            <div class="service-icon">
                                <i class="flaticon-null-2"></i>
                            </div> 
                            <div class="service-cap">
                                <h4><a href="#">KEAKURATAN</a></h4>
                                <p>Pada Sistem pakar ini , tingkat keakuratan masih belum maksimal karena data yang diperoleh masih sedikit sehingga masih belum dapat menggantikan pakar yang sesungguhnya.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Services Area End -->
        <!--? Team Start -->
        <section class="team-area section-padding30" id="diagnosa" style="margin-top: -250px;">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-6 col-lg-7 col-md-10 col-sm-10">
                        <!-- Section Tittle -->
                        <div class="section-tittle text-center mb-70">
                            <span>Diagnosa</span>
                            <h2>Pilih Gejala Kerusakan</h2>
                        </div> 
                    </div>
                </div>
                <form action="aksi.php" method="post" enctype="multipart/form-data">
                <div align="left" valign="top">
                    <?php
                    for($i=2;$i<=$jml_kriteria;$i++){
                        $numba=$i-2;
                    if ($numba == 0) {
                    ?><div style="display: inline-block;width: 300px;height: 200px;margin-left: 50px;vertical-align: top;">
                    <?php }elseif ($numba % 5 == 0) {
                    ?></div><div style="display: inline-block;width: 300px;height: 200px;margin-left: 50px;margin-bottom: 150px;vertical-align: top;">
                    <?php } ?>

                                <div class="form-group" style="margin-right: 10px;">
                                <label>
                                    <input type="checkbox" name="<?php echo $nokriteria[$i]?>" id="optionsRadios1" value="y">
                                    <?php echo $kriteria[$nokriteria[$i]]?>
                                </label>
                                </div>
                    <?php }?>
                </div>
        </div>
            <div class="form-group">
                        <button type="submit" name="upload" value="Upload" class="button button-contactForm btn_1 boxed-btn">Diagnosa</button>
                     </div>
            </form>
        </section>
        <!-- Team End -->
        
    <footer>
        <!-- Footer Start-->
        <div class="footer-area footer-padding section-bg" data-background="assets/img/gallery/footer_bg.png">
            <div class="container">
                <!-- Footer bottom -->
                <div class="footer-bottom">
                    <div class="row">
                        <div class="col-xl-7 col-lg-8 col-md-7">
                            <div class="footer-copy-right">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This website is made by Fazjar sekti aji supported with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>                   
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>




    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>

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