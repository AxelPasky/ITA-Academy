<?php
declare(strict_types=1);

use PHPUnit\Framework\TestCase;

require_once __DIR__ . '/exercise5phpbasic.php';

class GradeCheckerTest extends TestCase
{
    public function testFirstDivision()
    {
        $this->assertSame("First Division.", checkGrade(60));
        $this->assertSame("First Division.", checkGrade(100));
    }

    public function testSecondDivision()
    {
        $this->assertSame("Second Division.", checkGrade(45));
        $this->assertSame("Second Division.", checkGrade(59));
    }

    public function testThirdDivision()
    {
        $this->assertSame("Third Division.", checkGrade(33));
        $this->assertSame("Third Division.", checkGrade(44));
    }

    public function testNotPassed()
    {
        $this->assertSame("Not Passed.", checkGrade(0));
        $this->assertSame("Not Passed.", checkGrade(32));
        $this->assertSame("Not Passed.", checkGrade(-1));
    }

        
    public function testInvalidStringInput(){
        $this->expectException(TypeError::class);
        checkGrade("abc");
    }
     public function testInvalidNullInput(){
        $this->expectException(TypeError::class);
        checkGrade(null);
     }
}
