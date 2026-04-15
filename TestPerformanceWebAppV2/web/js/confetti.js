/* 
 Created on : 14 Apr 2026, 10:46:32 PM
 Author     : S DYWILI 230654182
 */

// ============================================
// CONFETTI CELEBRATION EFFECT
// Triggers when student is successfully added
// ============================================

function launchConfetti() {
    // Main confetti burst
    confetti({
        particleCount: 200,
        spread: 100,
        origin: {y: 0.6},
        startVelocity: 25,
        colors: ['#06b6d4', '#8b5cf6', '#ec4899', '#10b981', '#f59e0b']
    });

    // Secondary burst after 0.2 seconds
    setTimeout(() => {
        confetti({
            particleCount: 100,
            spread: 70,
            origin: {y: 0.5, x: 0.3},
            startVelocity: 20,
            colors: ['#06b6d4', '#8b5cf6', '#f59e0b']
        });
    }, 200);

    // Third burst after 0.5 seconds
    setTimeout(() => {
        confetti({
            particleCount: 150,
            spread: 120,
            origin: {y: 0.4, x: 0.7},
            startVelocity: 30,
            colors: ['#ec4899', '#10b981', '#8b5cf6']
        });
    }, 500);

    // Side cannons (left)
    setTimeout(() => {
        confetti({
            particleCount: 50,
            angle: 60,
            spread: 55,
            origin: {x: 0, y: 0.7},
            startVelocity: 45,
            colors: ['#06b6d4', '#ec4899']
        });
    }, 800);

    // Side cannons (right)
    setTimeout(() => {
        confetti({
            particleCount: 50,
            angle: 120,
            spread: 55,
            origin: {x: 1, y: 0.7},
            startVelocity: 45,
            colors: ['#8b5cf6', '#f59e0b']
        });
    }, 800);

    // Long-lasting streamers
    setTimeout(() => {
        confetti({
            particleCount: 300,
            spread: 150,
            origin: {y: 0.5},
            startVelocity: 15,
            decay: 0.9,
            colors: ['#06b6d4', '#8b5cf6', '#ec4899', '#10b981', '#f59e0b']
        });
    }, 1200);
}

// Auto-launch when page loads (since this is the outcome page)
document.addEventListener('DOMContentLoaded', function () {
    launchConfetti();

    // Also add a fun message
    const successMessage = document.createElement('div');
    successMessage.innerHTML = '🎉 Student Added Successfully! 🎉';
    successMessage.style.cssText = `
        position: fixed;
        top: 20%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: linear-gradient(135deg, #06b6d4, #8b5cf6);
        color: white;
        padding: 1rem 2rem;
        border-radius: 50px;
        font-weight: bold;
        font-size: 1.5rem;
        z-index: 1000;
        animation: fadeOutUp 3s forwards;
        white-space: nowrap;
        box-shadow: 0 10px 30px rgba(0,0,0,0.3);
    `;

    // Add animation style if not exists
    if (!document.querySelector('#confetti-style')) {
        const style = document.createElement('style');
        style.id = 'confetti-style';
        style.textContent = `
            @keyframes fadeOutUp {
                0% {
                    opacity: 1;
                    transform: translate(-50%, -50%);
                }
                70% {
                    opacity: 1;
                    transform: translate(-50%, -70%);
                }
                100% {
                    opacity: 0;
                    transform: translate(-50%, -100%);
                    visibility: hidden;
                }
            }
        `;
        document.head.appendChild(style);
    }

    document.body.appendChild(successMessage);
    setTimeout(() => successMessage.remove(), 3000);
});

