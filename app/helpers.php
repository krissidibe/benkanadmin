<?php

use App\Models\CoorCercle;
use App\Models\CoorCom;

if (!function_exists("countInCercle")) {
    function countInCercle($cercle){
        
  $cercleCount =   CoorCercle::where('cercle',"=", $cercle->non)->count();
    return $cercleCount;
    }
   
}
if (!function_exists("countInCommune")) {
    function countInCommune($commune){
        
  $cercleCount =   CoorCom::where('commune',"=", $commune->non)->count();
    return $cercleCount;
    }
   
}
if (!function_exists("calculePourcentage")) {
    function calculePourcentage($m1, $m2,$m3,$m4,$m5,$electeurs){
         
 $result  = (($m1+ $m2+$m3+$m4+$m5)/$electeurs) * 100;
    return substr($result,0,6);
    }
   
}

?>