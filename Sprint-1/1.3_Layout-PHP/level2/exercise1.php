<?php
declare(strict_types=1);

$array1=[2,3,4,5,6,7];
$array2=[1,2,3,6,7,8,9,10];

$arrayIntersected=array_intersect($array1,$array2);

print_r ($arrayIntersected);

$arrayMerged=array_merge($array1,$array2);

print_r ($arrayMerged);

?>