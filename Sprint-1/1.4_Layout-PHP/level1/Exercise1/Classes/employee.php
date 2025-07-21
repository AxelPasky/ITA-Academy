<?php
declare(strict_types=1);

class Employee {
    private string $name;
    private int $salary;

    public function initialize (string $name, int $salary){
        $this->name=$name;
        $this->salary=$salary;
    }

    public function print():void {
       
        if($this->salary<=6000){
            echo "Name: " . $this->name . PHP_EOL . "Taxes: Doesn't have to pay taxes." . PHP_EOL ;
        }else {
            echo "Name: " . $this->name . PHP_EOL . "Taxes: Have to pay taxes." . PHP_EOL ;
        }
        
    }
}

?>