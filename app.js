<?php
header('Content-Type: application/json');
require_once __DIR__.'/config/db.php';
require_once __DIR__.'/session.php';

$action = $_POST['action'] ?? $_GET['action'] ?? '';

if ($action==='approved-meets'){
  $rows = $pdo->query("SELECT b.id, b.topic, b.date, b.start_time, b.end_time, r.name AS room_name
                       FROM bookings b JOIN rooms r ON r.id=b.room_id
                       WHERE b.status='approved'
                       ORDER BY b.date DESC, b.start_time DESC")->fetchAll();
  echo json_encode(['ok'=>true,'rows'=>$rows]); exit;
}

if ($action==='my'){
  requireAuth(); $me = currentUser();
  $st = $pdo->prepare("SELECT er.id, b.topic, b.date, b.start_time, b.end_time, r.name AS room_name
                       FROM event_registrations er
                       JOIN bookings b ON b.id=er.booking_id
                       JOIN rooms r ON r.id=b.room_id
                       WHERE er.user_id=?
                       ORDER BY b.date DESC, b.start_time DESC");
  $st->execute([$me['id']]);
  echo json_encode(['ok'=>true,'rows'=>$st->fetchAll()]); exit;
}

if ($action==='register'){
  requireAuth(); $me = currentUser();
  $booking_id = (int)($_POST['booking_id'] ?? 0);
  $name = trim($_POST['name'] ?? $me['name']);
  $department = trim($_POST['department'] ?? $me['department']);
  if(!$booking_id || !$name){ echo json_encode(['ok'=>false,'message'=>'Missing fields']); exit; }
  $x = $pdo->prepare("SELECT id FROM bookings WHERE id=? AND status='approved'"); $x->execute([$booking_id]);
  if(!$x->fetch()){ echo json_encode(['ok'=>false,'message'=>'Event not available']); exit; }
  try {
    $ins = $pdo->prepare("INSERT INTO event_registrations (user_id,booking_id,name,department) VALUES (?,?,?,?)");
    $ins->execute([$me['id'],$booking_id,$name,$department]);
  } catch (Exception $e){
    echo json_encode(['ok'=>false,'message'=>'Already registered']); exit;
  }
  echo json_encode(['ok'=>true]); exit;
}

http_response_code(404); echo json_encode(['ok'=>false,'message'=>'Not found']);