<?php
declare(strict_types = 1);

function erastotene($num) {
    
    //DA RIFARE


    if ($num != 1) {
    for($i=2;$i<=$num;$i++){

        for($j=2;$j<=$num;$j++){

            if($i/$j==1 && $i%2==1){
                echo $i . "\n";
            }
        }
        
    }
   } else {
    return "1 is not value";
   }

}

echo erastotene(50);


?>