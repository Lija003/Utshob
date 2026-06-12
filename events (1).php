
body{
    height: 100%;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    color: #e4e4e7;
 background: linear-gradient(135deg, rgba(84, 73, 27, 0.9) 0%, rgba(200, 194, 87, 0.75) 60%) ;
    
}

/* Floating top-right buttons */
.top-right-stack {
  position: fixed;
  top: 80px;            /* Push it below navbar height */
  right: 20px;
  z-index: 1055;        /* above navbar (which is ~1030 in Bootstrap) */
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.btn-float {
  background: rgba(255, 193, 7, 0.9); /* Bootstrap warning yellow w/ transparency */
  color: #000;
  font-weight: 600;
  border: none;
  border-radius: 30px;
  padding: 8px 14px;
  box-shadow: 0 4px 12px rgba(0,0,0,0.2);
  transition: all 0.2s ease-in-out;
}

.btn-float:hover {
  background: #ffc107;
  transform: translateY(-2px);
}

.navbar-premium {
      background: linear-gradient(135deg,rgba(225, 204, 113, 0.75) 60%, rgba(156, 145, 32, 0.9) 0% ) ;
      backdrop-filter: blur(10px);
      border-bottom: 1px solid rgba(255,255,255,0.15);
      box-shadow: 0 6px 20px rgba(0,0,0,.25);
    }
    .navbar-brand {
      font-weight: 700;
      letter-spacing: .5px;
      display: inline-flex; align-items: center; gap: .5rem;
    }
    
    .hero {
      position: relative; padding-top: 7.5rem; padding-bottom: 5rem;
    }
    .hero .hero-card {
      background: rgba(255,255,255,0.06); border:1px solid rgba(255,255,255,0.15); border-radius: 20px; box-shadow: 0 10px 30px rgba(0,0,0,.35);
    }
    .glow {
      position: absolute; inset: -60px -60px auto auto; width: 220px; height: 220px; filter: blur(45px); opacity:.55;
      background: radial-gradient(closest-side, rgba(139,92,246,.75), rgba(239,93,168,.5), transparent 70%);
      pointer-events:none;
    }
    section.section { padding: 5rem 0; position: relative; }
    section.section .section-title{ font-weight:700; letter-spacing:.2px; }
    .search-wrap { background: rgba(255,255,255,.06); border: 1px solid  rgba(255,255,255,0.15); border-radius: 14px; }
    .search-wrap .form-control, .search-wrap .form-select { background: transparent; color:  #212818; border:0; }
    .search-wrap .form-control::placeholder { color: #526a47; }
    .glow {
      position: absolute; inset: -60px -60px auto auto; width: 220px; height: 220px; filter: blur(45px); opacity:.55;
      background: radial-gradient(closest-side, rgba(139,92,246,.75), rgba(239,93,168,.5), transparent 70%);
      pointer-events:none;
    }
    .fab-group { position: fixed; right: 18px; bottom: 22px; z-index: 1050; display: flex; flex-direction: column; gap: .6rem; }
    .fab { width: 56px; height: 56px; border-radius: 999px; display:inline-flex; align-items:center; justify-content:center; box-shadow: 0 6px 20px rgba(0,0,0,.25); border:1px solid  rgba(255,255,255,0.15); background: linear-gradient(135deg, rgba(139,92,246,.25), rgba(6,182,212,.25)); }
    .fab:hover { filter: brightness(1.05); }
    .scroll-stack { position: fixed; left: 18px; bottom: 22px; z-index: 1050; display:flex; flex-direction:column; gap:.6rem; }
    .scroll-btn { width: 46px; height: 46px; border-radius: 999px; display:flex; align-items:center; justify-content:center; border:1px solid var(--glass-brd); background: rgba(255,255,255,.06); }
    

    footer { background: #9d8f279c; border-top: 1px solid rgba(9, 36, 14, 0.495); }
    .footer-link { color: #252629; text-decoration:none; }
    .footer-link:hover { color: #e6e8f2; }
    hr{
      border-top: 1px solid rgba(9, 36, 14, 0.495);
    }


    .room-grid { display:grid; grid-template-columns: repeat(3, minmax(0,1fr)); gap: .8rem; }
@media (max-width: 768px){ .room-grid { grid-template-columns: 1fr; } }


.room-card {
position:relative;
border:1px solid rgba(255,215,0,.4);
border-radius: 14px;
padding:1rem;
background: rgba(255,215,0,0.08);
backdrop-filter: blur(10px);
-webkit-backdrop-filter: blur(10px);
cursor:pointer;
transition: transform .2s ease, border-color .2s ease, background .2s ease;
}
.room-card:hover {
transform: translateY(-2px);
border-color: rgba(255,215,0,.7);
background: rgba(255,215,0,0.15);
}
.room-card .title { font-weight:600; color:#FFD700; }
.room-card .meta { color: #d4af37; font-size:.9rem; }
.room-card.selected {
border-color: #FFD700;
box-shadow: 0 0 15px rgba(255,215,0,.5);
background: rgba(255,215,0,0.22);
}
.room-card.occupied {
background: rgba(239,68,68,.25);
border-color: rgba(239,68,68,.7);
cursor:not-allowed;
}
.room-card.occupied::after {
content:"Occupied";
position:absolute; top:8px; right:10px;
background: rgba(239,68,68,.9);
color:#fff; padding:.1rem .45rem; border-radius: .35rem; font-size:.75rem;
}

.card-premium {
      background: rgba(255,255,255,.04); border:1px solid  rgba(99, 112, 22, 0.717); border-radius: 18px; transition: transform .25s ease, border-color .25s ease;
    }
    .text-gradient {
      background: linear-gradient(135deg, #f5b64c, #ffdca7 25%, #C9B766 75%, #80901a);
      -webkit-background-clip: text; background-clip: text; color: transparent;
    }
    .All{
      background: linear-gradient(135deg, #172211, #555b2a 25%,  rgba(105, 94, 30, 0.804) 75%, #042a05);
      -webkit-background-clip: text; background-clip: text; color: transparent;
    }


    :root { --gold:#FFD700; }
body { font-family: Poppins, system-ui, -apple-system, Segoe UI, Roboto, sans-serif; background:#0c0c0f; color:#eee; }
.section { padding:64px 0; }
.card-premium { background: rgba(255,255,255,.05); border:1px solid rgba(255,255,255,.12); border-radius:16px; backdrop-filter: blur(8px); }
.navbar-premium { backdrop-filter: blur(8px); background: rgba(10,10,14,.65); border-bottom:1px solid rgba(255,255,255,.08); }
.text-gradient { background: linear-gradient(90deg, #ffd36a, #ff9d45); -webkit-background-clip:text; background-clip:text; color:transparent; }
.search-wrap { background: rgba(255,255,255,.06); border:1px solid rgba(255,255,255,.15); border-radius:14px; }

/* Responsiveness */
.room-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:.8rem}
@media (max-width: 992px){ .room-grid{grid-template-columns:repeat(2,1fr);} }
@media (max-width: 576px){ .room-grid{grid-template-columns:1fr;} }

/* Golden glass room cards */
.room-card{position:relative;border:1px solid rgba(255,215,0,.4);border-radius:14px;padding:1rem;background:rgba(255,215,0,.08);backdrop-filter:blur(10px);cursor:pointer;transition:.2s;}
.room-card:hover{ transform: translateY(-2px); border-color: rgba(255,215,0,.8); background: rgba(255,215,0,.16); }
.room-card .title{ font-weight:600; color:var(--gold); }
.room-card .meta{ color:#d4af37; font-size:.9rem; }
.room-card.selected{ border-color: var(--gold); box-shadow: 0 0 18px rgba(255,215,0,.45); background: rgba(255,215,0,.22); }

/* Floating top-right buttons */
.top-right-stack { position: fixed; top: 16px; right: 16px; z-index: 1080; display:flex; gap:.5rem; flex-wrap:wrap; }
.btn-float { border-radius: 999px; padding: .5rem .9rem; backdrop-filter: blur(6px); border:1px solid rgba(255,255,255,.18); background: rgba(255,255,255,.08); color:#fff; }
.btn-float:hover{ background: rgba(255,255,255,.14); }
.btn-login-logged { background: rgba(20,140,60,.35); border-color: rgba(20,140,60,.65); }

/* Auth pages */
.auth-bg { min-height:100vh; background: radial-gradient(800px 600px at 10% -10%, rgba(139,92,246,.22), transparent), linear-gradient(180deg,#0b1020,#151b2f); }
