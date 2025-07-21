<?php


$X=5;
$Y=10;
$N=1.76;
$M=3.14;

echo "X = $X " . PHP_EOL;
echo "Y = $Y " . PHP_EOL;
echo "The sum is " . ($X + $Y) . PHP_EOL;
echo "The subtraction is " . ($X - $Y) . " (X-Y) or " . ($Y - $X) . " (Y-X)" . PHP_EOL;
echo "The multiplication is " . ($X * $Y) . PHP_EOL;
echo "The module is " . ($X % $Y) . " (X%Y) or " . ($Y % $X) . " (Y%X)" . PHP_EOL;

echo "N = $N " . PHP_EOL;
echo "M = $M " . PHP_EOL;
echo "The sum is " . ($N + $M) . PHP_EOL;
echo "The subtraction is " . ($N - $M) . " (N-M) or " . ($M - $N) . " (M-N)" . PHP_EOL;
echo "The product is " . ($N * $M) . PHP_EOL;
echo "The module is " . fmod($N, $M) . " (N%M) or " . fmod($M, $N) . " (M%N)" . PHP_EOL;

function doubleNum($num) {
    $tot = $num*2;
    return $tot;
} 

echo  "Double Numbers: " . doubleNum($X) . " " . doubleNum($Y) . " " . doubleNum($N) . " " . doubleNum($M);
echo PHP_EOL;
echo "The sum of all variables is :" . $X+$Y+$N+$M . PHP_EOL; 
echo "The product of all variables is :" . $X*$Y*$N*$M . PHP_EOL;

function calculator(int $num1, int $num2, string $operator): mixed {

    if ($operator== "+"){
        $total= $num1 + $num2;
    }  elseif ($operator== "-") {
        $total= $num1 - $num2;
    } elseif ($operator== "*") {
        $total= $num1 * $num2;
    } elseif ($operator== "/") {
        if ($num2 == 0){
            $total = "Error. It's infinite.";
        } else {
        $total= $num1/$num2;
        }
    } else {
        $total= "This value is not correct. Use + , - , * , / .";
    }
    return $total;
}

echo calculator(55,4,"*");

?>


