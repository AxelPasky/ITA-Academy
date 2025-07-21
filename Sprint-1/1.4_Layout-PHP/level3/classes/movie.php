<?php
declare(strict_types=1);

class Movie {
    private string $name;
    private int $duration;
    private string $director;

    public function __construct(string $name, int $duration, string $director){
        $this->name = $name;
        $this->duration = $duration;
        $this->director = $director;
    }

    public function getDirector():string{
        return $this->director;
    }

    public function getDuration():int{
        return $this->duration;
    }

    public function getName(): string {
        return $this->name;
    }

    public function __toString():string{
        return "Movie: " . $this->name . PHP_EOL . 
               "Duration: " . $this->duration . PHP_EOL . 
               "Director: " . $this->director . PHP_EOL ;
    }
}
?>