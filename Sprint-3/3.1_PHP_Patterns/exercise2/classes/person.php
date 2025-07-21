<?php
declare(strict_types=1);

require_once 'smartphone.php';
require_once 'wallet.php';
require_once 'key.php';
require_once 'cardTransport.php';

class Person {
    private array $items;

    public function __construct(array $items) {
        $this->items = $items;
    }

    public function toGoingOut(): string {
        return "I'm going out..." . PHP_EOL;
    }

    public function iHave(): string {
        $output = "I have:\n";
        foreach ($this->items as $item) {
            $output .= $item->getDescription() . "\n";
        }
        return $output;
    }
}
