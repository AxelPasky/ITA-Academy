<?php
declare(strict_types=1);


class Tigger {
    private static $instance = null;
    private static $count = 0;

    private function __construct(){
        
    }

    public static function getInstance():Tigger{
    
        if (self::$instance === null) {
            self::$instance = new Tigger();
        }
        return self::$instance;
    }

    private function __clone(){}


    public function roar():string {
        self::$count++;
        return "Grrr!" . PHP_EOL;
    }

    
    public function getCounter(): string {
        return "Tigger has roared " . self::$count . " time(s)." . PHP_EOL;        
    }

}
?>
