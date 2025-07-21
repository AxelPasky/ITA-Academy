<?php
declare(strict_types=1);

abstract class Shape {

    protected float $width;
    protected float $height;

    public function __construct(float $width, float $height){
        $this->width = $width;
        $this->height = $height;
    }

   
}

?>