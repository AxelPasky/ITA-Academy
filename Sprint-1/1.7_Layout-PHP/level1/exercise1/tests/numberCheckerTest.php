<?php
declare(strict_types=1);

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/../numberChecker.php';
class NumberCheckerTest extends TestCase
{       
    private NumberChecker $numberZero;
    private NumberChecker $numberOne;
    private NumberChecker $numberTwo;
    private NumberChecker $numberNegative;


    public function setUp(): void
    {
        $this->numberZero = new NumberChecker(0);
        
        $this->numberOne = new NumberChecker(1);
        
        $this->numberTwo = new NumberChecker(2);

        $this->numberNegative = new NumberChecker(-1);
        
    }
    public function testIsEven():void
    {
       $this->assertTrue($this->numberTwo->isEven());
       
       
    }

    public function testIsOdd():void
    {
        $this->assertFalse($this->numberOne->isEven());
       
    }

    public function testIsPositive():void
    {
        $this->assertTrue($this->numberOne->isPositive());
        $this->assertFalse($this->numberZero->isPositive());
       
    }

    public function testIsNegative():void
    {
        $this->assertFalse($this->numberNegative->isPositive());
       
    }

}