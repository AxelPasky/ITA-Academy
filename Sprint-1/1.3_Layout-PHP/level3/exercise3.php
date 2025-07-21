<?php
declare(strict_types=1);

function isPrime(int $num): bool {
    if ($num < 2) {
        return false;
    }

    if ($num === 2) {
        return true;
    }

    if ($num % 2 === 0) {
        return false;
    }

    for ($i = 3; $i <= sqrt($num); $i += 2) {
        if ($num % $i === 0) {
            return false;
        }
    }

    return true;
}

$intArray = [2, 3, 4, 5, 6, 7, 8, 9, 11, 12];

$primeNumbersArray = array_filter($intArray, 'isPrime');

print_r($primeNumbersArray);
