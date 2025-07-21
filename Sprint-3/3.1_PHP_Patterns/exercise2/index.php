<?php
declare(strict_types=1);

require_once 'classes/person.php';
require_once 'classes/smartphone.php';
require_once 'classes/wallet.php';
require_once 'classes/key.php';
require_once 'classes/cardTransport.php';


$smartphone = new Smartphone();
$keys = new Key();
$wallet = new Wallet();
$card = new CardTransport();


$jon = new Person([$smartphone, $keys, $wallet, $card]);


echo $jon->toGoingOut();
echo $jon->iHave();
