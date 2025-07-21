<?php
declare(strict_types=1);

$X = array (10, 20, 30, 40, 50,60);

print_r($X) . PHP_EOL;

unset($X[1]);

$X= array_values($X);

print_r($X);

?>