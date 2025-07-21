<?php
declare(strict_types = 1);

function counter(int $num = 10, int $increase = 1): string {
    $countStart = 0;
    $result = "";  

    if ($num % $increase == 0) {
        for ($i = 0; $i < $num; $i += $increase) {
            $countStart += $increase;
            $result .= $countStart . PHP_EOL;
        }
    } else {
        return "Ops, the increase value should be an exact divisor to continue.";
    }

    return $result; 
}

echo counter(15, 3);
?>

