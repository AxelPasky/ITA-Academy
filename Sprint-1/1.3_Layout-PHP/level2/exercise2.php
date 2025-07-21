<?php
declare(strict_types=1);

$studentsVotes = [
    "Chiara" => [6, 7, 5, 8, 8],
    "Jon"    => [5, 4, 4, 7, 8],
    "Axel"   => [6, 7, 7, 9, 4],
    "Freddy" => [8, 8, 5, 6, 10],
    "Agata"  => [7, 7, 8, 7, 10]
];


function studentAverage(array $array): array {
    $averages = []; 

    foreach ($array as $student => $votes) {
        $average = array_sum($votes) / count($votes);
        $averages[$student] = $average; 
        echo "$student has average : $average" . PHP_EOL;
    }

    return $averages; 
}


function classAverage(array $averages): float {
    return array_sum($averages) / count($averages);
}


$studentsAverages = studentAverage($studentsVotes);


$classAverage = classAverage($studentsAverages);

echo "The class average is: " . $classAverage . PHP_EOL;
?>