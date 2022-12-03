<?php
include '../SQL/conect.cfg';
session_start();

$nome = $_POST["nome"];
$email = $_POST["email"];
$cpf = $_POST["cpf"];
$senha = $_POST["senha"];
$senha = md5($senha);

$sql = "INSERT INTO users VALUES (null,'$nome','$email','$senha','$cpf','','')";

if(mysqli_query($con, $sql)){
  $msg = 'seu cadastro foi feito com sucesso!';
} else{
  $msg = 'seu cadastro não foi feito. Tente novamente';
}
mysqli_close($con);

echo "<script>alert ('" . $msg . "'); location.href='../index.php';</script>";
?>