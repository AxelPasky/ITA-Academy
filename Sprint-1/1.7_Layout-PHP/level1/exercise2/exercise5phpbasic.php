<?php
declare(strict_types = 1);

function checkGrade(int $grade) : string {
    $answer="";


    if($grade>=60){
        $answer="First Division.";
    } elseif($grade>=45){
        $answer="Second Division.";
    } elseif($grade>=33){
        $answer="Third Division.";
    } else {
        $answer="Not Passed.";
    }
    return "$answer";
}

echo checkGrade(0);
?>