<?php
declare(strict_types=1);

require_once 'classes/PokerDice.php';



for ($i = 0; $i < 5; ++$i) {
    $dice = new PokerDice();
    $dice->throw();
    echo $dice->shapeName();
    $dices[] = $dice;
}

echo PHP_EOL . PokerDice:: getTotalThrows();

?>
