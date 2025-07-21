<?php
declare(strict_types=1);

include 'user.php';

$user = new User("Alex","Pasquero");

$user->age=30;

echo "My name is " . $user->getName() . PHP_EOL;
echo "My surname is " . $user->getSurname() . PHP_EOL;
echo "My age is " . $user->age . PHP_EOL;
echo "SlimShady";

?>
