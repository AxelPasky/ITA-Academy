<?php
declare(strict_types = 1);
const callCost=10;
const addMinute=5;

 function totalImport(int $minute) : int {
    
    if ($minute<=3) {
       return callCost;
    } else {
       $minuteLeft= $minute-3;
       $totalCost=$minuteLeft*addMinute + callCost;
       return $totalCost;
    }
 }

 echo "Your call cost is: " . totalImport(30) . " cent."; 

?>