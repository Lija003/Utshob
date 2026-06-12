<?php /* public/events.php */ ?>
<!doctype html>
<html lang="en" data-bs-theme="dark">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Utshob — My Events</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <div class="top-right-stack">
        <button class="btn btn-float" id="btnCalendarTop"><i class="bi bi-building-gear me-1"></i>Room</button>
        <button class="btn btn-float" id="btnLoginTop"><i class="bi bi-person-circle me-1"></i>Login</button>
    </div>
    <div class="container py-4">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h3>My Registered Events</h3>
            <a class="btn btn-outline-light" href="index.php"><i class="bi bi-house"></i> Home</a>
        </div>
        <div class="card card-premium p-3">
            <div class="table-responsive">
                <table class="table table-dark table-hover align-middle">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Event</th>
                            <th>Room</th>
                            <th>Date</th>
                            <th>Start</th>
                            <th>End</th>
                        </tr>
                    </thead>
                    <tbody id="evBody"></tbody>
                </table>
            </div>
            <div id="evEmpty" class="text-secondary d-none">No registrations yet.</div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="assets/js/app.js"></script>
    <script>
    (async function() {
        const me = await fetch('../api/auth.php?action=me', {
            credentials: 'include'
        }).then(r => r.json());
        if (!me.ok) {
            await Swal.fire({
                icon: 'info',
                title: 'Please login'
            });
            location.href = 'login.php';
            return;
        }
        const j = await fetch('../api/events.php?action=my', {
            credentials: 'include'
        }).then(r => r.json());
        const body = document.getElementById('evBody');
        body.innerHTML = '';
        if (!j.ok || !j.rows.length) {
            document.getElementById('evEmpty').classList.remove('d-none');
            return;
        }
        j.rows.forEach((row, i) => {
            body.insertAdjacentHTML('beforeend', `<tr>
      <td>${i+1}</td><td>${row.topic}</td><td>${row.room_name}</td>
      <td>${row.date}</td><td>${row.start_time}</td><td>${row.end_time}</td></tr>`);
        });
    })();
    </script>
</body>

</html>