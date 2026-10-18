#!/bin/bash
# Generates all static pages for Ochuna Suite (with PWA support)
# Company profile: corrected per factual documentation of each product.

mkdir -p assets assets/icons

gen_head() {
  local title="$1"
  cat << EOF
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
<meta name="theme-color" content="#64ffda">
<meta name="description" content="Ochuna Software Suite — practical software for Kenyan businesses, farmers, groups and communities.">
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
    <h3>💰 Fintech — Harambee Cash App</h3>
    <p>A 30-second round game. KES 10 entry, random winner takes 90% of the pool. New users start with a KES 200 welcome loan, repaid from winnings at KES 10 per win. Only winnings are withdrawable; minimum withdrawal is KES 100.</p>
  </div>
  <div class="card">
    <h3>🤝 Marketplace — Mashamba na Nyumba</h3>
    <p>A proximity-based marketplace connecting clients with nearby verified service providers. Contact views and listings cost one token unit (KES 2).</p>
  </div>
  <div class="card">
    <h3>🏬 Wholesale — Wholesale Finder</h3>
    <p>A B2B marketplace connecting wholesale buyers with nearby suppliers. Customers order through the platform, pay via M-Pesa on delivery, and receive a receipt.</p>
  </div>
  <div class="card">
    <h3>🛍️ E-commerce — Cashier Finder</h3>
    <p>An order platform connecting customers with local cashiers. Customers order from a shared catalogue, pay the cashier directly via M-Pesa on delivery, and receive a PDF receipt with QR verification.</p>
  </div>
  <div class="card">
    <h3>🛵 SACCO — Bodaboda Badge System</h3>
    <p>Badge management for Busia County Bodaboda SACCO. Member registration, consent, and badge issuance.</p>
  </div>
</div>

<h2 style="margin-bottom:20px;">About the suite</h2>
<p style="color:#c4cbe0; margin-bottom:30px;">
  Five applications, all live, all hosted on Render with legal documentation, contact details, and data-handling policies published on each app. Built and maintained in Nairobi, Kenya.
</p>

<h2 style="margin-bottom:20px;">Latest Updates</h2>
<div class="news-item">
  <div class="date">Now Live</div>
  <h3>Five applications in production</h3>
  <p>Harambee Cash, Mashamba na Nyumba, Wholesale Finder, Cashier Finder, and the Bodaboda Badge System are live and accessible from the <a href="apps.html" style="color:#64ffda;">Apps</a> page.</p>
</div>
EOF
  gen_footer
} > index.html

# ---------- apps.html ----------
{
  gen_head "Apps"
  cat << 'EOF'
<h1 style="margin-bottom:10px;">Our Applications</h1>
<p style="color:#a8b2d1; margin-bottom:30px;">Five live applications. Click any app to launch it in a new tab.</p>

<div class="grid">
  <a href="https://harambee-wasl.onrender.com" target="_blank" class="card" style="text-decoration:none; color:inherit;">
    <h3>💰 Harambee Cash App</h3>
    <p>A 30-second round game. KES 10 entry, random winner takes 90% of the pool. KES 200 welcome loan repaid from winnings at KES 10 per win. Only winnings are withdrawable; minimum withdrawal KES 100.</p>
    <p style="color:#64ffda; margin-top:10px; font-size:0.85rem;">Open Harambee Cash →</p>
  </a>
  <a href="https://mashamba-wzka.onrender.com" target="_blank" class="card" style="text-decoration:none; color:inherit;">
    <h3>🤝 Mashamba na Nyumba</h3>
    <p>A proximity-based marketplace connecting clients with nearby verified service providers. Each contact view or listing costs one token unit (KES 2).</p>
    <p style="color:#64ffda; margin-top:10px; font-size:0.85rem;">Open Mashamba na Nyumba →</p>
  </a>
  <a href="https://wholesaler-nk72.onrender.com" target="_blank" class="card" style="text-decoration:none; color:inherit;">
    <h3>🏬 Wholesale Finder</h3>
    <p>A B2B wholesale marketplace. Buyers order from nearby wholesalers, pay via M-Pesa on delivery, and receive an OTP-verified receipt.</p>
    <p style="color:#64ffda; margin-top:10px; font-size:0.85rem;">Open Wholesale Finder →</p>
  </a>
  <a href="https://cashier-finder.onrender.com" target="_blank" class="card" style="text-decoration:none; color:inherit;">
    <h3>🛍️ Cashier Finder</h3>
    <p>An order platform connecting customers with local cashiers. Customers order from a shared catalogue, pay the cashier directly via M-Pesa on delivery, and receive a PDF receipt with QR verification.</p>
    <p style="color:#64ffda; margin-top:10px; font-size:0.85rem;">Open Cashier Finder →</p>
  </a>
  <a href="https://bodabodaregister.onrender.com" target="_blank" class="card" style="text-decoration:none; color:inherit;">
    <h3>🛵 Bodaboda Badge System</h3>
    <p>Badge management for Busia County Bodaboda SACCO. Member registration, consent, and badge issuance.</p>
    <p style="color:#64ffda; margin-top:10px; font-size:0.85rem;">Open Bodaboda Badge System →</p>
  </a>
</div>

<h2 style="margin-top:40px; margin-bottom:20px;">Company facts</h2>
<div class="card">
  <p><strong>Developer:</strong> James Boyid Ochuna — Founder &amp; Lead Developer</p>
  <p><strong>Phone / WhatsApp:</strong> <a href="tel:+254701207062" style="color:#64ffda;">+254 701 207 062</a></p>
  <p><strong>Email:</strong> <a href="mailto:jamesochuna37@gmail.com" style="color:#64ffda;">jamesochuna37@gmail.com</a></p>
  <p><strong>Location:</strong> Nairobi, Kenya</p>
  <p><strong>Hosting:</strong> Render (per each app's <code>render.yaml</code>)</p>
  <p><strong>Data storage:</strong> PostgreSQL for structured data; AWS S3 for uploaded images (Cashier Finder)</p>
  <p><strong>Documents:</strong> Each app publishes its own terms, privacy policy, and user manual</p>
</div>
EOF
  gen_footer
} > apps.html

# ---------- news.html ----------
{
  gen_head "News"
  cat << 'EOF'
<h1 style="margin-bottom:20px;">📰 News &amp; Announcements</h1>

<div class="news-item">
  <div class="date">Live</div>
  <h3>All five applications are live</h3>
  <p>Harambee Cash, Mashamba na Nyumba, Wholesale Finder, Cashier Finder, and the Bodaboda Badge System are each deployed and reachable from the <a href="apps.html" style="color:#64ffda;">Apps</a> page.</p>
</div>

<div class="news-item">
  <div class="date">Live</div>
  <h3>Legal documents published on every app</h3>
  <p>Each application publishes its own terms, privacy policy, and user manual. On the Bodaboda Badge System the legal set also includes an End User License Agreement, an Admin Guide, an Acceptable Use Policy, and a Consent Form.</p>
</div>

<div class="news-item">
  <div class="date">In progress</div>
  <h3>Bodaboda Badge System documentation expansion</h3>
  <p>The Bodaboda Badge System legal page notes that further documentation will be added in future versions. No launch date is set.</p>
</div>

<p style="color:#a8b2d1; margin-top:30px;">
  For press enquiries: <a href="mailto:jamesochuna37@gmail.com" style="color:#64ffda;">jamesochuna37@gmail.com</a>
</p>
EOF
  gen_footer
} > news.html

# ---------- docs.html ----------
{
  gen_head "Docs"
  cat << 'EOF'
<h1 style="margin-bottom:10px;">📚 Documentation</h1>
<p style="color:#a8b2d1; margin-bottom:30px;">Each application publishes its own terms, privacy policy, and user manual. This page indexes what each app documents publicly.</p>

<div class="grid">
  <div class="card">
    <h3>💰 Harambee Cash App</h3>
    <p><strong>Documents:</strong> Terms and Conditions · Privacy Policy · Documentation</p>
    <p><strong>In the app's docs:</strong> registration, the KES 200 welcome loan, KES 10 game entry, random winner selection, 10% platform fee, KES 10 per-win loan repayment, minimum KES 100 withdrawal of winnings only.</p>
  </div>
  <div class="card">
    <h3>🤝 Mashamba na Nyumba</h3>
    <p><strong>Documents:</strong> Terms and Conditions · Privacy Policy · Documentation</p>
    <p><strong>In the app's docs:</strong> user roles (Service Provider / Client / Admin), token system (KES 2 per contact view or listing), distance/category search, admin panel, security features.</p>
  </div>
  <div class="card">
    <h3>🏬 Wholesale Finder</h3>
    <p><strong>Documents:</strong> Terms &amp; Conditions · Privacy Policy · User Manual · Payment Policy · Disclaimer</p>
    <p><strong>In the app's docs:</strong> registration as Customer or Wholesaler, location-based wholesaler search, order placement, M-Pesa Cash on Delivery, OTP-verified receipts, dispute process.</p>
  </div>
  <div class="card">
    <h3>🛍️ Cashier Finder</h3>
    <p><strong>Documents:</strong> Terms · Privacy Policy (the app is currently completing its legal documentation set)</p>
    <p><strong>In the app's docs:</strong> customer and cashier accounts, shared product catalogue, cart and checkout, M-Pesa confirmation text recorded (not processed), PDF receipt with QR verification.</p>
  </div>
  <div class="card">
    <h3>🛵 Bodaboda Badge System</h3>
    <p><strong>Documents:</strong> Terms of Service · Privacy Policy · EULA · User Manual · Admin Guide · Acceptable Use Policy · Consent Form</p>
    <p><strong>In the app's docs:</strong> member registration, consent, badge issuance, administration for Busia County Bodaboda SACCO.</p>
  </div>
</div>

<h2 style="margin-top:40px; margin-bottom:20px;">Company facts</h2>
<div class="card">
  <p><strong>Company:</strong> Ochuna Software Suite</p>
  <p><strong>Developer:</strong> James Boyid Ochuna — Founder &amp; Lead Developer</p>
  <p><strong>Based in:</strong> Nairobi, Kenya</p>
  <p><strong>Products:</strong> five — Harambee Cash, Mashamba na Nyumba, Wholesale Finder, Cashier Finder, Bodaboda Badge System</p>
  <p><strong>Hosting:</strong> Render, one service per app (<code>*.onrender.com</code>)</p>
  <p><strong>Storage:</strong> PostgreSQL for structured data (per each app's <code>render.yaml</code>); AWS S3 for uploaded images (Cashier Finder)</p>
  <p><strong>Stack:</strong> Python / Flask applications</p>
  <p><strong>Languages:</strong> English and Swahili product names, English documentation</p>
  <p><strong>Contact:</strong> <a href="mailto:jamesochuna37@gmail.com" style="color:#64ffda;">jamesochuna37@gmail.com</a> · <a href="tel:+254701207062" style="color:#64ffda;">+254 701 207 062</a></p>
</div>
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
  <p>Founder &amp; Lead Developer</p>
  <p style="margin-top:10px;">
    📧 <a href="mailto:jamesochuna37@gmail.com" style="color:#64ffda;">jamesochuna37@gmail.com</a><br>
    📞 <a href="tel:+254701207062" style="color:#64ffda;">+254 701 207 062</a>
  </p>
</div>

<h2 style="margin:30px 0 16px;">What we make</h2>
<ul style="color:#c4cbe0; line-height:2;">
  <li><strong>Harambee Cash App</strong> — a 30-second round game with a KES 10 entry and KES 200 welcome loan.</li>
  <li><strong>Mashamba na Nyumba</strong> — a proximity-based marketplace for services with KES 2 token units.</li>
  <li><strong>Wholesale Finder</strong> — a B2B marketplace connecting buyers with nearby wholesalers.</li>
  <li><strong>Cashier Finder</strong> — an order platform connecting customers with local cashiers.</li>
  <li><strong>Bodaboda Badge System</strong> — badge management for Busia County Bodaboda SACCO.</li>
</ul>

<h2 style="margin:30px 0 16px;">How we operate</h2>
<ul style="color:#c4cbe0; line-height:2;">
  <li>We build in Kenya, for Kenya.</li>
  <li>We use open web technologies — Python and Flask, PostgreSQL for structured data, and AWS S3 for uploaded images where a product needs image storage.</li>
  <li>Every product publishes its own legal documents and contact details in the app itself.</li>
  <li>We do not run advertising on the products, we do not sell user data, and we do not share personal information with third parties except for the service providers a product actually uses (for example, AWS S3 for file storage).</li>
</ul>

<h2 style="margin:30px 0 16px;">Current stage</h2>
<p style="color:#c4cbe0;">
  All five applications are live and reachable from the Apps page. Each has its own terms, privacy policy, and user documentation published within the app.
</p>

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

<div style="text-align:center; color:#a8b2d1; margin-bottom:20px; font-size:0.9rem;">
  The form below opens your email app. If it does not open, please write to <a href="mailto:jamesochuna37@gmail.com" style="color:#64ffda;">jamesochuna37@gmail.com</a> directly.
</div>

<form action="mailto:jamesochuna37@gmail.com" method="post" enctype="text/plain">
  <input type="text" name="name" placeholder="Your Name" required>
  <input type="email" name="email" placeholder="Your Email" required>
  <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
  <button type="submit" class="btn">Send Message</button>
</form>

<div style="text-align:center; margin-top:30px; color:#a8b2d1;">
  Or reach us directly:<br><br>
  📧 <a href="mailto:jamesochuna37@gmail.com" style="color:#64ffda;">jamesochuna37@gmail.com</a><br>
  📞 <a href="tel:+254701207062" style="color:#64ffda;">+254 701 207 062</a><br><br>
  Ochuna Software Suite · Nairobi, Kenya
</div>
EOF
  gen_footer
} > contact.html

echo "✅ Generated: index.html, apps.html, news.html, docs.html, about.html, contact.html"
