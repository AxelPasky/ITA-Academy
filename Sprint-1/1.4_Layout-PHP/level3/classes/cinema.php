<?php
declare(strict_types=1);

require_once 'movie.php';

class Cinema {
    private string $name;
    private string $city;
    private array $movies;

    public function __construct(string $name, string $city, array $movies){
        $this->name = $name;
        $this->city = $city;
        $this->movies = $movies;
    }

    public function getMovies():array{
        return $this->movies;
    }

    public function getInfo():string {
        return "Name cinema: " .$this->name . PHP_EOL . 
               "City: " . $this->city . PHP_EOL . 
                $this->showMovies() . PHP_EOL;
    }

    public function showMovies(): string {
        $output = "";
        foreach ($this->movies as $movie) {
            $output .= $movie . PHP_EOL;
        }
        return $output;
    }

    public function getLongestMovie(): Movie {
        $longest = $this->movies[0];
    
        foreach ($this->movies as $movie) {
            if ($movie->getDuration() > $longest->getDuration()) {
                $longest = $movie;
            }
        }
    
        return $longest;
    }

      
        
        
        

   
}
?>