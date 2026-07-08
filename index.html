let selectedRoomId = null;

// select room card
document.addEventListener('click', (e)=>{
  const card = e.target.closest('.room-card');
  if (!card) return;
  document.querySelectorAll('.room-card').forEach(c=>c.classList.remove('selected'));
  card.classList.add('selected');
  selectedRoomId = Number(card.dataset.roomId);
});

// helpers
function toast(msg){
  const el = document.getElementById('mainToast');
  document.getElementById('toastMsg').textContent = msg;
  new bootstrap.Toast(el).show();
}
async function postForm(url, data){
  const r = await fetch(url, { method:'POST', body:data, credentials:'include' });
  return r.json();
}

// create booking (request/admin direct)
document.getElementById('meetForm').addEventListener('submit', async (e)=>{
  e.preventDefault();
  const topic = document.getElementById('meetTopic').value.trim();
  const department = document.getElementById('meetDept').value.trim();
  const date = document.getElementById('meetDate').value;
  const start_time = document.getElementById('meetTimeStart').value;
  const end_time = document.getElementById('meetTimeEnd').value;

  if (!selectedRoomId) { alert('Please select a room.'); return; }

  const fd = new FormData();
  fd.append('action','create');
  fd.append('room_id', selectedRoomId);
  fd.append('topic', topic);
  fd.append('department', department);
  fd.append('date', date);
  fd.append('start_time', start_time);
  fd.append('end_time', end_time);

  const j = await postForm('../api/bookings.php', fd);
  if (j.ok) {
    toast(j.status==='approved' ? 'Booked!' : 'Request sent to admin!');
    bootstrap.Modal.getInstance(document.getElementById('meetModal')).hide();
    e.target.reset();
    selectedRoomId = null;
    document.querySelectorAll('.room-card').forEach(c=>c.classList.remove('selected'));
  } else {
    alert(j.message || 'Failed to submit');
  }
});

// Update Time (asks for booking id & new times)
document.getElementById('btnUpdateTime').addEventListener('click', async ()=>{
  const id = prompt('Enter your Booking ID to update:');
  if (!id) return;
  const date = prompt('Date (YYYY-MM-DD):');
  const start_time = prompt('Start time (HH:MM):');
  const end_time = prompt('End time (HH:MM):');
  if (!date || !start_time || !end_time) return;

  const fd = new FormData();
  fd.append('action','update-time');
  fd.append('id', id);
  fd.append('date', date);
  fd.append('start_time', start_time);
  fd.append('end_time', end_time);

  const j = await postForm('../api/bookings.php', fd);
  if (j.ok) { toast('Updated!'); }
  else alert(j.message || 'Update failed');
});

// Cancel Meeting (asks for booking id)
document.getElementById('btnCancelMeeting').addEventListener('click', async ()=>{
  const id = prompt('Enter your Booking ID to cancel:');
  if (!id) return;
  const fd = new FormData();
  fd.append('action','cancel'); fd.append('id', id);
  const j = await postForm('../api/bookings.php', fd);
  if (j.ok) { toast('Canceled'); }
  else alert(j.message || 'Cancel failed');
});
