<?php
declare(strict_types=1);
require_once 'Shape.php';

class Triangle extends Shape{

    public function area():float{
        

        return ($this->height*$this->width)/2;   
     }
}

?>