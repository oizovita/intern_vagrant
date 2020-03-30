<?php

class Model
{
    private $con;

    public function __construct()
    {
        $this->con = mysqli_connect('localhost', 'root', 'toor', 'vagrant') or die("error");

        mysqli_set_charset($this->con, 'utf8');
    }

    public function __destruct()
    {
        mysqli_close($this->con);
    }

    public function getConnect(){
        return $this->con;
    }
}