<?php
declare(strict_types=1);
require_once 'Shape.php';

class Rectangle extends Shape{

    public function area():float {
       

        return $this->height*$this->width;   
     }
}

?>