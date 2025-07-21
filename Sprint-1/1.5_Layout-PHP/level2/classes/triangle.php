<?php
declare(strict_types=1);

require_once 'shape.php';
require_once 'area.php';

class Triangle extends Shape implements Area {


    public function area():float{
        return ($this->width * $this->height) / 2;
    }
}

?>