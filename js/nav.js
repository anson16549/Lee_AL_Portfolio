const hamburger = document.getElementById('hamburger');
const navUl = document.getElementById('nav_UL');
hamburger.addEventListener('click', () => {
    navUl.classList.toggle('show');
});