<?php
declare(strict_types=1);

require_once 'classes/rectangle.php';
require_once 'classes/triangle.php';


$triangle = new Triangle (10,8);
$rectangle = new Rectangle (10,5);

echo "Triangle area is: " . $triangle->area() . PHP_EOL;
echo "Rectangle area is: " . $rectangle->area() . PHP_EOL;
?>