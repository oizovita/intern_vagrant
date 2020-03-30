<?php
include 'Model.php';
include 'User.php';

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$model = new Model();

$user = new User($model->getConnect());

$data = [];
$data['data'] = [];

$count = $user->read()->num_rows;
$result = $user->read();

for ($i = 0; $i < $count = $user->read()->num_rows; $i++) {
    $row = mysqli_fetch_assoc($result);
    $users = [
        'id'       => $row['id'],
        "username" => $row['username'],
        "email"    => $row['email'],
        'role'     => $row['role'],
        'created'  => $row['created'],
        'updated'  => $row['updated']
    ];

    array_push($data['data'], $users);
}

http_response_code(200);

echo json_encode($data);