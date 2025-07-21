<?php
declare(strict_types=1);

$names=["aatrox","aurora","rnold"];
$letter="a";

function sameChar(array $array,string $char) : bool {
    foreach($array as $string){
       if(!str_contains($string,$char)){
        return false;
       } 
    }
    return true;
}

echo json_encode(sameChar($names,$letter));

?>