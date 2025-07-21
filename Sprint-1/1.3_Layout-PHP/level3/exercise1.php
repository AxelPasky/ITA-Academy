<?php
declare(strict_types=1);

function numCube(int $num):int{
    return $num**3;
}

$intArray=[3,4,5,6,7,8];

$cubeArray=  array_map('numCube', $intArray);

print_r($cubeArray);


