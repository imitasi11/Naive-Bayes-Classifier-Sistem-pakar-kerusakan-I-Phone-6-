  
<?php 

set_time_limit(0);
include "koneksi.php";
$jalan=0;
$number=0;
$satu=1;
$count=1;

$layak = 0;
$tidaklayak = 0;

$probtidaklayak= 0;
$problayak= 0;
$jml_kriteria= 0;
$sum = 0;
$tambah= 0;

$well="";
$isi=array();
$sql = 'SELECT * FROM kriteria order by id_kriteria';
$result = $db->query($sql);
$nokriteria=array();
$kriteria=array();
foreach ($result as $row) {
    $kriteria[$row['id_kriteria']]=$row['kriteria'];
    $nokriteria[$count]=$row['id_kriteria'];
    $jml_kriteria=$jml_kriteria+1 ;
    $count=$count+1;
    }
$sql = 'SELECT * FROM parameter ORDER BY id_kriteria,id_parameter';
$result = $db->query($sql);
$parameter=array();
$id_kriteria=0;
foreach ($result as $row) {
    if($id_kriteria!=$row['id_kriteria']){
        $parameter[$row['id_kriteria']]=array();
        $id_kriteria=$row['id_kriteria'];
    }
    $parameter[$row['id_kriteria']][$row['nilai']]=$row['parameter'];
}
$input=array();
$count=1;
for($i=2;$i<=$jml_kriteria;$i++){
    if(!empty($_POST[$nokriteria[$i]])){
        $input[$count]=$i;
        $count=$count+1;
    }
}


$sql = "SELECT * FROM data a JOIN datas b USING(id_datas) ORDER BY b.id_datas";
$result = $db->query($sql);
$data=array();
$datas=array();
$id_datas=0;
$count=1;
foreach ($result as $row) {
    if($id_datas!=$row['id_datas']){
        $datas[$row['id_datas']]=$row['nama_data'];
        $data[$row['id_datas']]=array();
        $id_datas=$row['id_datas'];
        $nodata[$count]=$row['id_datas'];
        $count=$count+1;
    }
    $data[$row['id_datas']][$row['id_kriteria']]=$row['id_parameter'];
}
//filter kerusakan
$catat=array();
$catatstart=1;
for($i=1;$i<=count($data);$i++){
    for($j=1;$j<=count($input);$j++){
    if($data[$nodata[$i]][$input[$j]]==1){
        $catat[$catatstart]=$data[$nodata[$i]][1];
        $catatstart=$catatstart+1;
    }
}
}
//kompres catatan kerusakan
print_r($catat);
//kompres catatan kerusakan
$j=1;
while($j<=count($catat)){
    $k=$j-1;
    $l=$j+1;
    if($j>1){
        if($catat[$j]==$catat[$k]){
            if($catat[$j]!=99){
            for($z=$j;$z<=count($catat);$z++){
                $x=$z+1;
                if($z!=count($catat)){
                $catat[$z]=$catat[$x];
                }else{
                    $catat[$z]=99;
                }
            }
             $j=1;
        }
       
        }
    }
    $j++;
}

//buat data sesuai kerusakan
$data1=array();
$catatstart=1;
for($i=1;$i<=count($data);$i++){
    for($j=1;$j<=count($catat);$j++){
        if($data[$nodata[$i]][1]==$catat[$j]){
            for($k=1;$k<=count($data[$nodata[$i]]);$k++){
            $data1[$catatstart][$k]=$data[$nodata[$i]][$k];
            }
            $catatstart=$catatstart+1;
        }
    }
}

//buat data sesuai kerusakan dan gejala
$data2=array();
for($i=1;$i<=count($data1);$i++){
    $data2[$i][1]=$data1[$i][1];
    for($j=1;$j<=count($input);$j++){
        $k=$j+1;
    $data2[$i][$k]=$data1[$i][$input[$j]];
    }
}

//perhitungan
$data3=array();
$jumlahkerusakan=array();
$hitung=0;
for($i=1;$i<=count($data2);$i++){
    $back=$i-1;
    for($j=2;$j<=count($data2[$i]);$j++){
        //jika data pada $data2 1 maka akan tersimpan(cari jumlah ya pada setiap kasus)
        if($data2[$i][$j]==1){
                if(!isset($data3[$data2[$i][1]][$j][1])){
                    $data3[$data2[$i][1]][$j][1]=1;
                }else{
                    $data3[$data2[$i][1]][$j][1]++;
                }
            }else{
                if(!isset($data3[$data2[$i][1]][$j][0])){
                    $data3[$data2[$i][1]][$j][0]=1;
                }else{
                    $data3[$data2[$i][1]][$j][0]++;
                }
            }
    }
    $hitung=$hitung+1;
    if($i>1){
        if($data2[$i][1]!=$data2[$back][1]){
            $hitung=1;
        }    
    }
    $jumlahkerusakan[$data2[$i][1]]=$hitung;
}  

$hasil=array();
$h=1;
for($i=1;$i<=count($data3);$i++){
    
    for($j=2;$j<=count($data3[$catat[$i]]);$j++){
        if(!isset($data3[$catat[$i]][$j][1])){
        $a=0;
        //bisa disisipkan disini
        }else{
        $a=$data3[$catat[$i]][$j][1]/($catat[$i]);   
        }
        $h=$h*$a;
        if($j==count($data3[$catat[$i]])){
            $hasil[$i]=$h;
        }
    }
    $h=1;
    
} 


$hasil=array();
$data4=array();
for($i=1;$i<=count($data3);$i++){
    for($k=1;$k<=count($data3[$catat[$i]]);$k++){
        $j=$k+1;
        if(!isset($data3[$catat[$i]][$j][1])){
        $data4[$catat[$i]][$j][1]=0;
        //bisa disisipkan disini
        }else{
        $data4[$catat[$i]][$j][1]=$data3[$catat[$i]][$j][1]/($catat[$i]);   
        }
       
    }
}

for($i=1;$i<=count($data4);$i++){
    for($k=1;$k<=count($data4[$catat[$i]]);$k++){
        $j=$k+1;
        if($data4[$catat[$i]][$j][1]==0){
            for($g=1;$g<=count($data4[$catat[$i]]);$g++){
                $h=$g+1;
                if($data4[$catat[$i]][$h][1]!=0){
                $data4[$catat[$i]][$h][1]=(($data4[$catat[$i]][$h][1]*($catat[$i]))+1)/($catat[$i]+count($data4[$catat[$i]]));
                }else{
                $data4[$catat[$i]][$h][1]=1/($catat[$i]+count($data4[$catat[$i]]));
                }
        }
        $data4[$catat[$i]][$j][1]=1/($catat[$i]+count($data4[$catat[$i]]));
    }
}
}

$h=1;
for($i=1;$i<=count($data4);$i++){
    
    for($k=1;$k<=count($data4[$catat[$i]]);$k++){
        $j=$k+1;
        $a=$data4[$catat[$i]][$j][1];   
        $h=$h*$a;
        if($k==count($data4[$catat[$i]])){
            $hasil[$i]=$h;
        }
    }
    $h=1;
    
} 


//perhitungan akhir
$jumlah=0;
for($i=1;$i<=count($jumlahkerusakan);$i++){
        $jumlah=$jumlah+$jumlahkerusakan[$catat[$i]];
    }
for($i=1;$i<=count($hasil);$i++){
$hasil[$i]=$hasil[$i]*($jumlahkerusakan[$catat[$i]]/$jumlah);
    }

$terbesar=0;
    $rex=0;
    $norex=0;
for($i=1;$i<=count($hasil);$i++){
    $plus=$i+1;

        if($i==1){
            $rex=$hasil[$i];
            $norex=$i;
        }
        if($plus>count($hasil)){

        }else{
            if($rex>=$hasil[$plus]){
            }else{
                $rex=$hasil[$plus];
                $norex=$plus;
            }

        }
    }
    $final=0;
    $final=$catat[$norex];


    $tampung=array();
$count=1;
$tampung[1]=$final;
for($i=2;$i<=$jml_kriteria;$i++){
    if(!empty($_POST[$nokriteria[$i]])){
        $tampung[$i]=1;
    }else{
        $tampung[$i]=0;
    }
}

$id_datas=rand(1,300);
$cek_id= "SELECT * FROM datas_test where id_datas ='$id_datas' ";
$cek_result = mysqli_query($connect,$cek_id);
$numrow = mysqli_num_rows($cek_result);


while($numrow > 0){
    $id_datas=0;
    $id_datas=rand(1,300);
    $cek_id= "SELECT * FROM datas_test where id_datas ='$id_datas' ";
    $cek_result = mysqli_query($connect,$cek_id);
    $numrow = mysqli_num_rows($cek_result);

}

    $nama='kasus'.$id_datas;
    $input_datas = "INSERT INTO datas_test VALUES('$id_datas','$nama') ";
    $datas_result = $db->query($input_datas);
    for($i=1;$i<=$jml_kriteria;$i++){
        $a=$nokriteria[$i];
        $b=$tampung[$i];
    $input_data = "INSERT INTO data_test (id_data,id_datas,id_kriteria,id_parameter) VALUES(NULL,'$id_datas','$a','$b') ";
    $data_result = $db->query($input_data);
    }
   




?>
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
<div class="slider-area">
            <div class="slider-full-active owl-carousel custom-dots">
                <div class="slide-full slider-height d-flex align-items-center" style="background-image: url(assets/img/hero/h1_hero.png);height: 700px;">
                    <div class="container">
                          <div class="slide-full-content" align="center">
                                    <span>Hasil Diagnosa Kerusakan</span>
                                     <h1><?php echo $parameter[1][$final];?></h1>
                                    <p>untuk detail kerusakan lebih lengkap, silahkan kunjungi service center kami</p>
                                    <a class="btn" href="index.php">kembali</a>
                                </div>
                            
                    </div>
                </div>
            </div>
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