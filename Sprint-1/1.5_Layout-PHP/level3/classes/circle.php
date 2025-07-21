<?php
declare(strict_types=1);

require_once 'area.php';

class Circle implements Area {
    protected float $radius;

    public function __construct( float $radius) {
        $this->radius = $radius;
    }

    public function area():float{
        return pi() * ($this->radius**2);
    }
}

?>