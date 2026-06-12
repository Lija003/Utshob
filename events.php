<?php
header('Content-Type: application/json');
require_once __DIR__ . '/config/db.php';
require_once __DIR__ . '/session.php';

/* Resolve action without using ?? */
$action = '';
if (isset($_POST['action'])) {
    $action = $_POST['action'];
} elseif (isset($_GET['action'])) {
    $action = $_GET['action'];
}

/* -------- LIST (public) -------- */
if ($action === 'list') {
    $room_id = isset($_GET['room_id']) ? (int)$_GET['room_id'] : 0;
    $where = $room_id ? "WHERE b.room_id=?" : "";
    $sql = "SELECT b.*, r.name AS room_name, u.name AS user_name
            FROM bookings b
            JOIN rooms r ON r.id=b.room_id
            JOIN users u ON u.id=b.user_id
            $where
            ORDER BY b.date DESC, b.start_time DESC
            LIMIT 500";
    if ($room_id) {
        $st = $pdo->prepare($sql);
        $st->execute(array($room_id));
        $rows = $st->fetchAll();
    } else {
        $rows = $pdo->query($sql)->fetchAll();
    }
    echo json_encode(array('ok' => true, 'rows' => $rows));
    exit;
}

/* Everything below requires auth */
requireAuth();
$me = currentUser();

/* -------- CREATE (request a meet) -------- */
if ($action === 'create') {
    $room_id    = isset($_POST['room_id'])    ? (int)$_POST['room_id'] : 0;
    $topic      = isset($_POST['topic'])      ? trim($_POST['topic']) : '';
    // department: prefer provided, fall back to user's department, else empty
    $department = isset($_POST['department']) ? trim($_POST['department']) : (isset($me['department']) ? $me['department'] : '');
    $date       = isset($_POST['date'])       ? $_POST['date'] : '';
    $start      = isset($_POST['start_time']) ? $_POST['start_time'] : '';
    $end        = isset($_POST['end_time'])   ? $_POST['end_time'] : '';

    if (!$room_id || $topic === '' || $date === '' || $start === '' || $end === '') {
        echo json_encode(array('ok' => false, 'message' => 'Missing fields')); exit;
    }
    if (strtotime($date . ' ' . $start) >= strtotime($date . ' ' . $end)) {
        echo json_encode(array('ok' => false, 'message' => 'Invalid time range')); exit;
    }

    $status = ($me['role'] === 'admin') ? 'approved' : 'pending';

    $ins = $pdo->prepare("INSERT INTO bookings (user_id, room_id, topic, department, date, start_time, end_time, status)
                          VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    $ins->execute(array($me['id'], $room_id, $topic, $department, $date, $start, $end, $status));
    echo json_encode(array('ok' => true, 'status' => $status, 'id' => (int)$pdo->lastInsertId()));
    exit;
}

/* -------- UPDATE TIME -------- */
if ($action === 'update-time') {
    $id    = isset($_POST['id'])         ? (int)$_POST['id'] : 0;
    $date  = isset($_POST['date'])       ? $_POST['date'] : '';
    $start = isset($_POST['start_time']) ? $_POST['start_time'] : '';
    $end   = isset($_POST['end_time'])   ? $_POST['end_time'] : '';

    if (!$id || $date === '' || $start === '' || $end === '') {
        echo json_encode(array('ok' => false, 'message' => 'Missing fields')); exit;
    }

    $st = $pdo->prepare("SELECT * FROM bookings WHERE id=?");
    $st->execute(array($id));
    $b = $st->fetch();
    if (!$b) { echo json_encode(array('ok' => false, 'message' => 'Not found')); exit; }

    if ($me['role'] !== 'admin' && (int)$b['user_id'] !== (int)$me['id']) {
        echo json_encode(array('ok' => false, 'message' => 'Forbidden')); exit;
    }

    if (strtotime($date . ' ' . $start) >= strtotime($date . ' ' . $end)) {
        echo json_encode(array('ok' => false, 'message' => 'Invalid time range')); exit;
    }

    // conflict check vs. other approved bookings
    $oc = $pdo->prepare("SELECT COUNT(*) AS c
                         FROM bookings
                         WHERE room_id=? AND date=? AND id<>? AND status='approved'
                           AND NOT (end_time<=? OR start_time>=?)");
    $oc->execute(array($b['room_id'], $date, $id, $start, $end));
    $cnt = $oc->fetch();
    if ($cnt && (int)$cnt['c'] > 0) {
        echo json_encode(array('ok' => false, 'message' => 'Conflicts with another booking')); exit;
    }

    $pdo->prepare("UPDATE bookings SET date=?, start_time=?, end_time=? WHERE id=?")
        ->execute(array($date, $start, $end, $id));
    echo json_encode(array('ok' => true)); exit;
}

/* -------- CANCEL -------- */
if ($action === 'cancel') {
    $id = isset($_POST['id']) ? (int)$_POST['id'] : 0;

    $st = $pdo->prepare("SELECT user_id FROM bookings WHERE id=?");
    $st->execute(array($id));
    $b = $st->fetch();
    if (!$b) { echo json_encode(array('ok' => false, 'message' => 'Not found')); exit; }

    if ($me['role'] !== 'admin' && (int)$b['user_id'] !== (int)$me['id']) {
        echo json_encode(array('ok' => false, 'message' => 'Forbidden')); exit;
    }

    $pdo->prepare("UPDATE bookings SET status='canceled' WHERE id=?")->execute(array($id));
    echo json_encode(array('ok' => true)); exit;
}

/* -------- FALLBACK -------- */
http_response_code(404);
echo json_encode(array('ok' => false, 'message' => 'Not found'));