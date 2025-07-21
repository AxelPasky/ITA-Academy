<?php
declare(strict_types=1);

require_once 'cinema.php';

class ManageCinema  {
    
public static function  searchMovieDirector(array $cinemas, string $director): array {
    $films = [];

    foreach ($cinemas as $cinema) {
        foreach ($cinema->getMovies() as $movie) {
            if ($movie->getDirector() === $director && !in_array($movie, $films, true)) {
                $films[] = $movie;
            }
        }
    }

    return $films;
}

public static function  showCinemaData(Cinema $cinema): void {
    echo $cinema->getInfo() . PHP_EOL;
    echo "The longest movie is:" . PHP_EOL . $cinema->getLongestMovie() . PHP_EOL;
}

public static function  showMoviesByDirector(array $cinemas, string $director): void {
    echo "Movies directed by $director:" . PHP_EOL;
    $movies = self::searchMovieDirector($cinemas, $director);
    foreach ($movies as $movie) {
        echo $movie . PHP_EOL;
    }
}
}
?>