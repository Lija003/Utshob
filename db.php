<?php
header('Content-Type: application/json');
require_once __DIR__.'/config/db.php';
require_once __DIR__.'/session.php';

$action = $_POST['action'] ?? $_GET['action'] ?? '';

if ($action==='register') {
  $name = trim($_POST['name'] ?? '');
  $roll = trim($_POST['roll'] ?? '');
  $email = strtolower(trim($_POST['email'] ?? ''));
  $role = $_POST['role'] ?? 'student';  // admin added manually
  $department = trim($_POST['department'] ?? '');
  $password = $_POST['password'] ?? '';

  if (!$name || !filter_var($email,FILTER_VALIDATE_EMAIL) || !$password) { echo json_encode(['ok'=>false,'message'=>'Invalid input']); exit; }
  if (!in_array($role,['student','professor'])) $role='student';

  $q = $pdo->prepare("SELECT id FROM users WHERE email=?");
  $q->execute([$email]); if ($q->fetch()){ echo json_encode(['ok'=>false,'message'=>'Email exists']); exit; }

  $hash = password_hash($password, PASSWORD_BCRYPT);
  $ins = $pdo->prepare("INSERT INTO users (name,roll,email,role,department,password_hash) VALUES (?,?,?,?,?,?)");
  $ins->execute([$name,$roll,$email,$role,$department,$hash]);
  $id = (int)$pdo->lastInsertId();
  $_SESSION['user'] = ['id'=>$id,'name'=>$name,'email'=>$email,'role'=>$role,'department'=>$department];
  echo json_encode(['ok'=>true,'user'=>$_SESSION['user']]); exit;
}

if ($action==='login') {
  $email = strtolower(trim($_POST['email'] ?? ''));
  $password = $_POST['password'] ?? '';
  $st = $pdo->prepare("SELECT * FROM users WHERE email=? LIMIT 1");
  $st->execute([$email]); $u = $st->fetch();
  if (!$u || !password_verify($password,$u['password_hash'])) { echo json_encode(['ok'=>false,'message'=>'Invalid credentials']); exit; }
  $_SESSION['user'] = ['id'=>$u['id'],'name'=>$u['name'],'email'=>$u['email'],'role'=>$u['role'],'department'=>$u['department']];
  echo json_encode(['ok'=>true,'user'=>$_SESSION['user']]); exit;
}

if ($action==='logout'){ $_SESSION=[]; session_destroy(); echo json_encode(['ok'=>true]); exit; }
if ($action==='me'){ echo json_encode(['ok'=>isLoggedIn(),'user'=>currentUser()]); exit; }

http_response_code(404); echo json_encode(['ok'=>false,'message'=>'Not found']);