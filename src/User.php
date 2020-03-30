<?php


class User
{
    private $connect;

    private $table_name = 'users';
    protected $fillable = [
        'id',
        'username',
        'email',
        'role',
        'created',
        'updated'
    ];

    public function __construct($connect)
    {
        $this->connect = $connect;
    }

    function read(){
        $query = "SELECT " .  implode(', ', $this->fillable) . " FROM " . $this->table_name . ";";
        return mysqli_query($this->connect, $query);
    }
}