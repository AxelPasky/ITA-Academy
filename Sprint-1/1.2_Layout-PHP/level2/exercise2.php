<?php
declare(strict_types = 1);
const costChocolate=1;
const costGum=0.5;
const costCandy= 1.5;

function totalCostChocolate(int $numChocolate):int{
    

    return $numChocolate*costChocolate;

}

function totalCostGum(int $numGum):float{
    

    return $numGum*costGum;
}

function totalCostCandy(int $numCandy):float{
    

    return $numCandy*costCandy;
}

echo "The total cost is : " . totalCostChocolate(2) + totalCostGum(1) + totalCostCandy(1);

?>