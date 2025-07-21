<?php
declare(strict_types=1);

require_once 'classes/tigger.php';

$tigger1 = Tigger::getInstance();

$tigger2 = Tigger::getInstance();

var_dump($tigger1===$tigger2);

echo $tigger1->roar();
echo $tigger2->roar();
echo $tigger1->roar();
echo $tigger2->roar();

echo $tigger1->getCounter();

?>