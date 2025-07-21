<?php
declare(strict_types = 1);


function isBitten() : string{
    $num=rand(0,1);
    if($num == 1) {
        return "TRUE";
    } else {
        return "FALSE";
    }
}



echo "Charlie's bitten me?" . isBitten();


?>