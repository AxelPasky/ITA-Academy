<?php
declare(strict_types=1);

include "./Classes/animals.php";
include "./Classes/cat.php";
include "./Classes/dog.php";


$dog= new Dog("Balto");
$cat= new Cat("Micio");

echo " My dog ". $dog->getName() . " says: ";
$dog->makeSound() . PHP_EOL;

echo " My cat ". $cat->getName() . " says: ";
 $cat->makeSound() . PHP_EOL;

