<?php
declare(strict_types=1);

class PokerDice {

    private static array $faces = ['A', 'K', 'Q', 'J', '7', '8'];
    protected static int $throws = 0;
    private int $currentFace;

    
    public function throw(): void {
        self::$throws++;
        $this->currentFace = rand(0, 5);
    }
    
        

    static function getTotalThrows():string{
        return "Total dice throws : " . static::$throws;
       
    }
    

    public function shapeName():string{
        return self::$faces[$this->currentFace] . " ";
    }



}
?>