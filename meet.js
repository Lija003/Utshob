<?php
session_start();
function isLoggedIn(){ return isset($_SESSION['user']); }
function currentUser(){ return $_SESSION['user'] ?? null; }
function isAdmin(){ return isLoggedIn() && $_SESSION['user']['role']==='admin'; }
function requireAuth(){
  if (!isLoggedIn()) { http_response_code(401); echo json_encode(['ok'=>false,'message'=>'Unauthorized']); exit; }
}