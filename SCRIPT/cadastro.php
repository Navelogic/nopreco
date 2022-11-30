<?php
include '../SQL/conect.cfg';
session_start();

$nome = $_POST["nome"];
$email = $_POST["email"];
$cpf = $_POST["cpf"];
$senha = $_POST["senha"];
$senha = md5($senha);

$SQL = "INSERT INTO users VALUES (null,'$nome','$email','$senha','$cpf')";
echo $SQL;
exit;
if(mysqli_query($con, $SQL)){

  $msg = $nome . ', seu cadastro foi feito com sucesso!';
} else{
  $msg = $nome . ', seu cadastro não foi feito. Tente novamente';
}

mysqli_close($con);
echo "<sript>alert('". $msg ."'); location.href='../index.php'</sript>";
?>