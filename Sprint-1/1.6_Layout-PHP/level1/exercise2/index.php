<?php
declare(strict_types=1);

include 'fantasy.php';
include 'reality.php';

use Fantasy\MagicWorld;
use Universe\Reality;

$fantasyWorld = new MagicWorld();
$fantasyWorld->Magic();  

$realityWorld = new Reality(); 
$realityWorld->Magic();
?>
