'use strict';


const id = document.getElementById('id');
const pw = document.getElementById('pw');
const pwc = document.getElementById('pwc');
const myname = document.getElementById('name');
const email = document.getElementById('email');
const tel = document.getElementById('tel');

const submit = document.getElementById('submit');

function isId(asValue) {
	var regExp = /^[a-z]+[a-z0-9]{5,19}$/g;
	return regExp.test(asValue);
}

function isPassword(asValue) {
	var regExp = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
	return regExp.test(asValue); // 형식에 맞는 경우 true 리턴
}

function isName(asValue) {
	var regExp = /^[a-zA-Zㄱ-힣][a-zA-Zㄱ-힣 ]*$/;
	return regExp.test(asValue);
}

function isEmail(asValue) {
	var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	return regExp.test(asValue);
}

function isPhoneNumber(asValue) {
	var regExp = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
	return regExp.test(asValue);
}


// 비밀번호 일치 확인
pwc.addEventListener('change',()=>{
    if(!(pwc.value == pw.value)) {
        pw.style.border = "2px solid #ff4444";
        pw.style.borderBottom = "#000 solid";
        pwc.style.border = "2px solid #ff4444";
        pwc.style.borderBottom = "#000 solid";
    } else {
        pw.style.border = "none";
        pw.style.borderBottom = "#000 solid";
        pwc.style.border = "none";
        pwc.style.borderBottom = "#000 solid";
    }
});
pw.addEventListener('change',()=>{
    if(!(pwc.value == pw.value) && !pwc.value == '') {
        pw.style.border = "2px solid #ff4444";
        pw.style.borderBottom = "#000 solid";
        pwc.style.border = "2px solid #ff4444";
        pwc.style.borderBottom = "#000 solid";
    } else {
        pw.style.border = "none";
        pw.style.borderBottom = "#000 solid";
        pwc.style.border = "none";
        pwc.style.borderBottom = "#000 solid";
    }
});


// 형식 확인
submit.addEventListener('click', ()=>{
    if(!isId(id.value)) {
        alert("아이디는 영문자로 시작하는 영문자 또는 숫자 6~20자");
        id.value="";
        id.focus();
        return;
    }
    if(!isPassword(pw.value)) {
        alert("비밀번호는 8 ~ 16자 영문, 숫자, 특수문자를 최소 한가지씩 조합");
        pw.value="";
        pw.focus();
        return;
    }
    if(!isName(myname.value)) {
        alert("형식에 맞지 않는 이름");
        myname.value="";
        myname.focus();
        return;
    }
    if(!isEmail(email.value)) {
        alert("형식에 맞지 않는 이메일");
        email.value="";
        email.focus();
        return;
    }
    if(!isPhoneNumber(tel.value)) {
        alert("형식에 맞지 않는 핸드폰 번호");
        tel.value="";
        tel.focus();
        return;
    }
});
