<?php
header('Content-Type: application/json');
require_once __DIR__.'/config/db.php';
require_once __DIR__.'/session.php';
if(!isAdmin()){ http_response_code(403); echo json_encode(['ok'=>false,'message'=>'Admin only']); exit; }

$action = $_POST['action'] ?? $_GET['action'] ?? '';

if ($action==='approve'){
  $id = (int)($_POST['id'] ?? 0);
  $st = $pdo->prepare("SELECT * FROM bookings WHERE id=?"); $st->execute([$id]); $b=$st->fetch();
  if(!$b){ echo json_encode(['ok'=>false,'message'=>'Not found']); exit; }
  $oc = $pdo->prepare("SELECT COUNT(*) c FROM bookings WHERE room_id=? AND date=? AND id<>? AND status='approved' AND NOT (end_time<=? OR start_time>=?)");
  $oc->execute([$b['room_id'],$b['date'],$id,$b['start_time'],$b['end_time']]);
  if($oc->fetch()['c']>0){ echo json_encode(['ok'=>false,'message'=>'Conflict with existing booking']); exit; }
  $pdo->prepare("UPDATE bookings SET status='approved' WHERE id=?")->execute([$id]);
  echo json_encode(['ok'=>true]); exit;
}

if ($action==='deny'){
  $id = (int)($_POST['id'] ?? 0);
  $pdo->prepare("UPDATE bookings SET status='denied' WHERE id=?")->execute([$id]);
  echo json_encode(['ok'=>true]); exit;
}

if ($action==='pending'){
  $rows = $pdo->query("SELECT b.*, r.name room_name, u.name user_name FROM bookings b 
                       JOIN rooms r ON r.id=b.room_id
                       JOIN users u ON u.id=b.user_id
                       WHERE b.status='pending'
                       ORDER BY b.date ASC, b.start_time ASC")->fetchAll();
  echo json_encode(['ok'=>true,'rows'=>$rows]); exit;
}

http_response_code(404); echo json_encode(['ok'=>false,'message'=>'Not found']);