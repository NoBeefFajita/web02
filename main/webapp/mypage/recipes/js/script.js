'use strict';

// 유저메뉴
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


// 댓글
const storage = localStorage;
const wc = document.getElementById('wirteComment');
const cu = document.getElementById('cu');
const ctb = document.getElementById('ctb');
const nc = document.getElementById('noComment');

document.addEventListener('DOMContentLoaded', ()=> {
    // storage.clear();
    if(storage.length == 0) {
        const td = document.createElement('td');
        td.colSpan = 2;
        td.textContent = "작성된 댓글이 없습니다.";
        nc.appendChild(td);
        addTr("\u00a0", "Espace");
    }
    for (let i = 0; i < storage.length; i++) {
        addComment(i);
    }
});

cu.addEventListener('click', () => {
    var time = new Date();
    var obj = {
        date: time.toLocaleString(),
        comment: wc.value
    };
    
    if(obj.comment == '') {
        alert("한 줄 평을 작성해 보세요!");
        wc.focus();
        return;
    }
    if(nc.hasChildNodes) nc.remove();

    storage.setItem(storage.length, JSON.stringify(obj));
    wc.value = "";
    addComment(storage.length - 1);
});

// wc.addEventListener('keyup',(event)=>{
//     if(event.code == "Enter") {
//         cu.click();
//     }
// });

function addTr(content, className) {
    const tr = document.createElement('tr');
    const td = document.createElement('td');

    tr.className = className;
    td.colSpan = 2;
    td.textContent = content;
    ctb.append(tr);
    tr.append(td);
}

function addComment(i) {
        const date = JSON.parse(storage.getItem(i)).date;
        const cmt = JSON.parse(storage.getItem(i)).comment;

        addTr(date, "date");
        addTr(cmt, "cmt");
        addTr("\u00a0", "Espace")
}

function enter() {
    if(window.event.keyCode == 13) {
        document.getElementById('cu').click();
    }
}