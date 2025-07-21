<?php
declare(strict_types=1);

require_once 'itemInterface.php';

class CardTransport implements ItemInterface {
    public function getDescription(): string {
        return "Card Transport";
    }
}
