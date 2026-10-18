#!/bin/bash
# Generates all static pages for Ochuna Suite (with PWA support)

mkdir -p assets assets/icons

# ---------- Shared Nav + Head ----------
gen_head() {
  local title="$1"
  cat << EOF
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
<meta name="theme-color" content="#64ffda">
<meta name="description" content="Ochuna Software Suite — practical software for Kenyan businesses, farmers and communities.">
<title>${title} — Ochuna Suite</title>
<link rel="stylesheet" href="assets/style.css">
<link rel="icon" type="image/png" href="favicon.ico">
<link rel="apple-touch-icon" href="assets/icons/apple-touch-icon.png">
<link rel="manifest" href="manifest.json">
</head>
<body>
<nav>
  <div class="brand">🚀 Ochuna Suite</div>
  <ul>
    <li><a href="index.html">Home</a></li>
    <li><a href="apps.html">Apps</a></li>
    <li><a href="news.html">News</a></li>
    <li><a href="docs.html">Docs</a></li>
    <li><a href="about.html">About</a></li>
    <li><a href="contact.html">Contact</a></li>
  </ul>
</nav>
<div class="container">
EOF
}

gen_footer() {
  cat << 'EOF'
</div>
<footer>
  <strong>Ochuna Software Suite</strong> — Nairobi, Kenya<br>
  Developer: James Boyid Ochuna &nbsp;|&nbsp;
  <a href="mailto:jamesochuna37@gmail.com">jamesochuna37@gmail.com</a> &nbsp;|&nbsp;
  <a href="tel:+254701207062">+254 701 207 062</a>
  <br><br>
  © 2025 Ochuna Suite. All rights reserved.
</footer>
<script src="assets/main.js"></script>
</body>
</html>
EOF
}

# ---------- index.html ----------
{
  gen_head "Home"
  cat << 'EOF'
<div class="hero">
  <h1>Enterprise Software for Kenya 🇰🇪</h1>
  <p>Building practical, locally-relevant digital tools for businesses, farmers, groups and communities across East Africa.</p>
  <a href="apps.html" class="btn">Explore Our Apps</a>
  <a href="contact.html" class="btn btn-outline" style="margin-left:10px;">Get in Touch</a>
</div>

<h2 style="margin-bottom:20px;">What We Build</h2>
<div class="grid">
  <div class="card">
    <h3>💰 Fintech</h3>
    <p>Harambee Cash App — a 30-second round game. KES 10 entry, random winner takes 90% of the pool. New users start with a KES 200 welcome loan, repaid from winnings at KES 10 per win.</p>
  </div>
  <div class="card">
    <h3>🌾 AgriTech</h3>
    <p>Mashamba App — farm management, records and productivity tracking.</p>
  </div>
  <div class="card">
    <h3>📦 Retail</h3>
    <p>Wholesaler App — inventory & supply chain for distributors.</p>
  </div>
  <div class="card">
    <h3>🏅 Community</h3>
    <p>Groups Badge App — member registration & badge management.</p>
  </div>
</div>

<h2 style="margin-bottom:20px;">Latest Updates</h2>
<div class="news-item">
  <div class="date">Coming Soon</div>
  <h3>Ochuna Suite Website Launch</h3>
  <p>We're rolling out a unified platform for all our software products.</p>
</div>
EOF
  gen_footer
} > index.html

# ---------- apps.html ----------
{
  gen_head "Apps"
  cat << 'EOF'
<h1 style="margin-bottom:10px;">Our Applications</h1>
<p style="color:#a8b2d1; margin-bottom:30px;">Click any app to launch it in a new tab.</p>

<div class="grid">
  <a href="https://harambee-wasl.onrender.com" target="_blank" class="card" style="text-decoration:none; color:inherit;">
    <h3>💰 Harambee Cash App</h3>
    <p>A 30-second round game. KES 10 entry, random winner, KES 200 starter loan.</p>
  </a>
  <a href="https://mashamba-wzka.onrender.com" target="_blank" class="card" style="text-decoration:none; color:inherit;">
    <h3>🌾 Mashamba App</h3>
    <p>Farm management & record keeping.</p>
  </a>
  <a href="https://wholesaler-nk72.onrender.com" target="_blank" class="card" style="text-decoration:none; color:inherit;">
    <h3>📦 Wholesaler App</h3>
    <p>Inventory & distribution tools.</p>
  </a>
  <a href="https://cashier-finder.onrender.com" target="_blank" class="card" style="text-decoration:none; color:inherit;">
    <h3>🔍 Cashier Finder</h3>
    <p>Locate nearby cashiers and services.</p>
  </a>
  <a href="https://bodabodaregister.onrender.com" target="_blank" class="card" style="text-decoration:none; color:inherit;">
    <h3>🏅 Groups Badge App</h3>
    <p>Member registration & badge management.</p>
  </a>
</div>
EOF
  gen_footer
} > apps.html

# ---------- news.html ----------
{
  gen_head "News"
  cat << 'EOF'
<h1 style="margin-bottom:20px;">📰 News & Announcements</h1>

<div class="news-item">
  <div class="date">Coming Soon</div>
  <h3>Welcome to the New Ochuna Suite Website</h3>
  <p>We've consolidated all our products into one clean, mobile-friendly hub.</p>
</div>

<div class="news-item">
  <div class="date">Coming Soon</div>
  <h3>Harambee Cash App</h3>
  <p>A 30-second round game with a KES 10 entry and random winner selection. New users get a KES 200 starter loan, repaid from winnings at KES 10 per win.</p>
</div>

<div class="news-item">
  <div class="date">Coming Soon</div>
  <h3>Mashamba App Update</h3>
  <p>New farm records module rolling out to all users.</p>
</div>

<p style="color:#a8b2d1; margin-top:30px;">
  📧 For press enquiries: <a href="mailto:jamesochuna37@gmail.com" style="color:#64ffda;">jamesochuna37@gmail.com</a>
</p>
EOF
  gen_footer
} > news.html

# ---------- docs.html ----------
{
  gen_head "Docs"
  cat << 'EOF'
<h1 style="margin-bottom:20px;">📚 Documentation</h1>
<p style="color:#a8b2d1; margin-bottom:30px;">User guides and reference material for all Ochuna Suite apps.</p>

<div class="grid">
  <div class="card">
    <h3>💰 Harambee Cash App</h3>
    <p>Registration, the KES 200 welcome loan, KES 10 game entry, and how winnings and withdrawals work.</p>
  </div>
  <div class="card">
    <h3>🌾 Mashamba App</h3>
    <p>Getting started with farm setup, crop records, and reporting.</p>
  </div>
  <div class="card">
    <h3>📦 Wholesaler App</h3>
    <p>Adding products, tracking stock, and generating invoices.</p>
  </div>
  <div class="card">
    <h3>🔍 Cashier Finder</h3>
    <p>Searching and registering cashier locations.</p>
  </div>
  <div class="card">
    <h3>🏅 Groups Badge App</h3>
    <p>Registering members and issuing badges.</p>
  </div>
</div>

<p style="color:#a8b2d1; margin-top:30px;">
  Need help? Email <a href="mailto:jamesochuna37@gmail.com" style="color:#64ffda;">jamesochuna37@gmail.com</a>
</p>
EOF
  gen_footer
} > docs.html

# ---------- about.html ----------
{
  gen_head "About"
  cat << 'EOF'
<h1 style="margin-bottom:20px;">About Ochuna Suite</h1>
<p style="color:#c4cbe0; margin-bottom:20px;">
  Ochuna Software Suite is an independent software initiative based in Kenya,
  focused on building practical digital tools for local businesses, farmers,
  community groups, and entrepreneurs across East Africa.
</p>

<div class="card" style="margin-bottom:24px;">
  <h3>👨‍💻 Developer</h3>
  <p><strong>James Boyid Ochuna</strong></p>
  <p>Founder & Lead Developer</p>
  <p style="margin-top:10px;">
    📧 <a href="mailto:jamesochuna37@gmail.com" style="color:#64ffda;">jamesochuna37@gmail.com</a><br>
    📞 <a href="tel:+254701207062" style="color:#64ffda;">+254 701 207 062</a>
  </p>
</div>

<h2 style="margin:30px 0 16px;">Our Mission</h2>
<p style="color:#c4cbe0;">
  To deliver affordable, reliable, and locally-relevant software that solves
  real problems for Kenyan businesses and communities.
</p>
EOF
  gen_footer
} > about.html

# ---------- contact.html ----------
{
  gen_head "Contact"
  cat << 'EOF'
<h1 style="text-align:center; margin-bottom:10px;">📬 Get in Touch</h1>
<p style="text-align:center; color:#a8b2d1; margin-bottom:30px;">
  We'd love to hear from you.
</p>

<form action="mailto:jamesochuna37@gmail.com" method="post" enctype="text/plain">
  <input type="text" name="name" placeholder="Your Name" required>
  <input type="email" name="email" placeholder="Your Email" required>
  <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
  <button type="submit" class="btn">Send Message</button>
</form>

<div style="text-align:center; margin-top:30px; color:#a8b2d1;">
  Or reach us directly:<br><br>
  📧 <a href="mailto:jamesochuna37@gmail.com" style="color:#64ffda;">jamesochuna37@gmail.com</a><br>
  📞 <a href="tel:+254701207062" style="color:#64ffda;">+254 701 207 062</a>
</div>
EOF
  gen_footer
} > contact.html

echo "✅ Generated: index.html, apps.html, news.html, docs.html, about.html, contact.html"
