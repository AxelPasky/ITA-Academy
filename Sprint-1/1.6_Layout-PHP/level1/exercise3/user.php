<?php
declare(strict_types=1);

class User{
    private $name;
    private $surname;
    private $age;

    function __construct(string $name,string $surname){
        $this->name=$name;
        $this->surname=$surname;
    }

    public function __set(string $property, int $value){
        if ($property == 'age') {
            $this->age = $value;
        }
    }

    public function __get($age){
        if ($age == 'age') {
            return $this->age;
        }
    }

    public function getName():string{
        return $this->name;
    }

    public function getSurname():string{
        return $this->surname;
    }

    
}