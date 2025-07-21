<?php
declare(strict_types=1);

require_once 'itemInterface.php';

class Smartphone implements ItemInterface {
    
    public function getDescription(): string {
        return "Smartphone";
    }
}
