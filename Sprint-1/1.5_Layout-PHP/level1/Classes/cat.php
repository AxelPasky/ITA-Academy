<?php
declare(strict_types=1);

class Cat extends Animal {
   

    function getName(){
        return $this->name;
      }
    
    function makeSound(): void{
        echo "Miaooo" ;
    }
}