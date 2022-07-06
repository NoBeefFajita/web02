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
    location.href = "signIn/index.html";
});

signUp.addEventListener('click', () => {
    location.href = "signUp/index.html";
});

userIcon.addEventListener('blur', () => {
    setTimeout(() => {
        layer.style.display = 'none';
    }, 100);
});


// recipe 
const btnRecipe = document.getElementsByName('Rfood');
console.log(btnRecipe);
btnRecipe.forEach(element => {
    const food = element.value;
    element.addEventListener("click", () => {
        fetch("recipes/index.jsp",{
            method: "post",
            headers: { 'Content-Type' : 'application/x-www-form-urlencoded' },
            body: "food=" + food
        })
            .then(response => response.text())
            .then(data => {
                document.getElementById('title').innerHTML = "Recipe - " + food;
                docu
                document.querySelector("footer").remove();
                document.querySelector("script").src = "recipes/js/script.js";
                document.querySelector("main").outerHTML = data;
            })
            .catch(e => alert("다음에 다시 시도해주세요."));
    });
});