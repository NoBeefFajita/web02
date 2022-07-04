'use strict';

const userIcon = document.getElementById('iconBtn');
const layer = document.getElementById('layer');
const signIn = document.getElementById('signIn');
const signUp = document.getElementById('signUp');

layer.style.display = 'none';

userIcon.addEventListener('click', () => {
    if (layer.style.display == 'none') {
        layer.style.display = 'inline';
    } else {
        layer.style.display = 'none';
    }
});

signIn.addEventListener('click', () => {
    location.href = "../signIn/index.html";
});

signUp.addEventListener('click', () => {
    location.href = "../signUp/index.html";
});

userIcon.addEventListener('blur', () => {
    setTimeout(() => {
        layer.style.display = 'none';
    }, 100);
});
