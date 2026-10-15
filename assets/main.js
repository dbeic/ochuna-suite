/* Ochuna Suite — shared frontend logic */

// Register service worker (offline support)
if ('serviceWorker' in navigator) {
  window.addEventListener('load', function () {
    navigator.serviceWorker.register('sw.js', { scope: './' })
      .then(function (reg) { console.log('✅ SW registered:', reg.scope); })
      .catch(function (err) { console.warn('⚠️ SW failed:', err); });
  });
}

// Highlight active nav link + fade-in + offline banner
document.addEventListener('DOMContentLoaded', function () {
  var path = location.pathname.split('/').pop() || 'index.html';
  document.querySelectorAll('nav a').forEach(function (a) {
    if (a.getAttribute('href') === path) a.classList.add('active');
  });

  var c = document.querySelector('.container');
  if (c) {
    c.style.opacity = '0';
    c.style.transform = 'translateY(20px)';
    setTimeout(function () {
      c.style.transition = 'all 0.6s ease';
      c.style.opacity = '1';
      c.style.transform = 'translateY(0)';
    }, 100);
  }
});

// Offline / online indicator
window.addEventListener('offline', function () {
  if (document.getElementById('offline-banner')) return;
  var b = document.createElement('div');
  b.id = 'offline-banner';
  b.textContent = '📴 Offline — cached pages still work';
  b.style.cssText = 'position:fixed;bottom:0;left:0;right:0;background:#ff6b6b;color:#fff;text-align:center;padding:8px;font-size:0.85rem;z-index:999;';
  document.body.appendChild(b);
});
window.addEventListener('online', function () {
  var b = document.getElementById('offline-banner');
  if (b) b.remove();
});
