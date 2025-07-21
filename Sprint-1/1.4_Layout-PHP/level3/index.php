<?php
declare(strict_types=1);

require_once 'classes/cinema.php';
require_once 'classes/movie.php';
require_once 'classes/manageCinema.php';


$movieList = [
    new Movie("Once upon a time in America", 160, "Sergio Leone"),
    new Movie("Inception", 120, "Christopher Nolan"),
    new Movie("Interstellar", 130, "Christopher Nolan"),
    new Movie("Transformers", 140, "Michael Bay"),
];


$cinemaList = [
    new Cinema("Ideal", "Turin", $movieList),
    new Cinema("The Space", "Turin", $movieList),
];



foreach ($cinemaList as $cinema) {
    ManageCinema::showCinemaData($cinema) . PHP_EOL;
}


ManageCinema::showMoviesByDirector($cinemaList,"Christopher Nolan"). PHP_EOL;



?>