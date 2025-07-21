<?php
declare(strict_types=1);

class Dog extends Animal {
  

    function getName(): string {
        return $this->name;
    }

    function makeSound(): void {
        echo "Bau Bau!";
    }
}