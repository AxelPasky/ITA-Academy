<?php
declare(strict_types=1);

function wordIsEven (string $string):string {
        $countChar=strlen($string);

        if($countChar%2==0){
            return $string;
        } else {
            return "";
        }
}

$arrayOfString = ['dog','dice','house','even'];

$wordsEven = array_filter($arrayOfString,'wordIsEven');

print_r($wordsEven);