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
$tampung=array();
$count=1;
$id=$_POST['id'];
$tampung[1]=$_POST['kerusakan'];
for($i=2;$i<=$jml_kriteria;$i++){
    if(!empty($_POST[$nokriteria[$i]])){
        $tampung[$i]=1;
    }else{
        $tampung[$i]=0;
    }
}


   for($i=1;$i<=$jml_kriteria;$i++){
        $a=$nokriteria[$i];
        $b=$tampung[$i];
    $input_data = "UPDATE data SET id_parameter='$b' where id_kriteria='$a' and id_datas='$id'";
    $data_result = $db->query($input_data);
    }
    echo "<script>alert('berhasil');window.location='admin.php'</script>";
?>