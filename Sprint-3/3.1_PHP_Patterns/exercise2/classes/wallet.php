<?php
declare(strict_types=1);

require_once 'itemInterface.php';

class Wallet implements ItemInterface {
    public function getDescription(): string {
        return "Wallet";
    }
}
