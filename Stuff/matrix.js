// Matrix Background Animation
const matrix = document.getElementById('matrix');
const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
const columns = Math.floor(window.innerWidth / 20);

for (let i = 0; i < columns; i++) {
  const column = document.createElement('div');
  column.className = 'matrix-column';
  column.textContent = chars[Math.floor(Math.random() * chars.length)];
  column.style.animationDelay = `${Math.random() * 5}s`;
  matrix.appendChild(column);
}