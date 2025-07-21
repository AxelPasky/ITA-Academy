<?php
declare(strict_types=1);

require_once 'itemInterface.php';

class Key implements ItemInterface {
    public function getDescription(): string {
        return "Key";
    }
}
