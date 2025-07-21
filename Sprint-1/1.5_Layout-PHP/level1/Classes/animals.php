<?php
declare(strict_types=1);

abstract class Animal{

    protected string $name;

    function __construct(string $name){
      $this->name=$name;
    }
   
  abstract public function makeSound();

}