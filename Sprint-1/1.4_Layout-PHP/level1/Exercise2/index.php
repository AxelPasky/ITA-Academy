<?php
declare(strict_types=1);

require 'Classes/Shape.php';
require 'Classes/Triangle.php';
require 'Classes/Rectangle.php';

 $triangle = new Triangle(10,5);
 $rectangle = new Rectangle(10,5);

echo "The triangle area is :" . $triangle->area() . PHP_EOL;
echo "The rectangle area is: " . $rectangle->area(). PHP_EOL;

?>