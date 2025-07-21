<?php
declare(strict_types=1);

session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (!empty($_POST['name']) && !empty($_POST['surname']) && !empty($_POST['age'])) {
        
        $name = htmlspecialchars($_POST['name']);
        $surname = htmlspecialchars($_POST['surname']);
        $age = htmlspecialchars($_POST['age']);
        
        $_SESSION['name'] = $name;
        $_SESSION['surname'] = $surname;
        $_SESSION['age'] = $age;

        echo "Name received: " . $name . "<br>";
        echo "Surname received: " . $surname . "<br>";
        echo "Age received: " . $age . "<br>";

        
    } else {
        echo "Error: All fields are required.";
    }
} else {
    echo "Invalid request method.";
}
