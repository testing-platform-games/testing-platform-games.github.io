// Game configuration object - set before loading this script
const gameConfig = window.gameConfig || {
  title: 'Game',
  swfFile: '/cdn/game.swf'
};

// Initialize game
document.addEventListener('DOMContentLoaded', () => {
  const gameTitle = document.getElementById('gameTitle');
  const gameObject = document.getElementById('gameObject');
  const loading = document.getElementById('loading');
  const gameWrapper = document.getElementById('gameWrapper');
  const fullscreenBtn = document.getElementById('fullscreenBtn');

  // Set game title and SWF file
  gameTitle.textContent = gameConfig.title;
  gameObject.setAttribute('data', gameConfig.swfFile);
  gameObject.querySelector('param[name="movie"]').setAttribute('value', gameConfig.swfFile);

  // Hide loading indicator after game loads
  const hideLoading = () => {
    if (loading) {
      loading.style.display = 'none';
    }
  };

  // Fallback to hide loading after timeout
  setTimeout(hideLoading, 3000);

  // Listen for game load events
  gameObject.addEventListener('load', hideLoading);
  gameWrapper.addEventListener('load', hideLoading);

  // Fullscreen functionality
  fullscreenBtn.addEventListener('click', () => {
    const container = document.querySelector('.game-container');
    
    if (!document.fullscreenElement) {
      if (container.requestFullscreen) {
        container.requestFullscreen().catch(err => {
          console.warn('Fullscreen request failed:', err);
          alert('Fullscreen mode not available');
        });
      } else if (container.webkitRequestFullscreen) {
        // Safari
        container.webkitRequestFullscreen();
      } else if (container.mozRequestFullScreen) {
        // Firefox
        container.mozRequestFullScreen();
      } else if (container.msRequestFullscreen) {
        // IE/Edge
        container.msRequestFullscreen();
      }
    } else {
      if (document.exitFullscreen) {
        document.exitFullscreen();
      } else if (document.webkitExitFullscreen) {
        document.webkitExitFullscreen();
      } else if (document.mozCancelFullScreen) {
        document.mozCancelFullScreen();
      } else if (document.msExitFullscreen) {
        document.msExitFullscreen();
      }
    }
  });

  // Update fullscreen button text when fullscreen state changes
  document.addEventListener('fullscreenchange', () => {
    if (document.fullscreenElement) {
      fullscreenBtn.textContent = '⊡ Exit Fullscreen';
    } else {
      fullscreenBtn.textContent = '⛶ Fullscreen';
    }
  });

  // Handle keyboard shortcuts
  document.addEventListener('keydown', (e) => {
    // F key for fullscreen
    if (e.key === 'f' || e.key === 'F') {
      fullscreenBtn.click();
    }
    // Escape to go back (if not in fullscreen)
    if (e.key === 'Escape' && !document.fullscreenElement) {
      window.location.href = '/';
    }
  });

  // Log game errors for debugging
  gameObject.addEventListener('error', (err) => {
    console.error('Game error:', err);
  });

  // Improve touch/mobile experience
  document.addEventListener('touchmove', (e) => {
    // Allow scrolling only in header area
    const header = document.querySelector('.header');
    if (!header.contains(e.target)) {
      e.preventDefault();
    }
  }, { passive: false });
});
