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

// 이미지 클릭 큰 이미지

$("#bigImg").hide();
$(function() {
    $("img").click(function(e) {
        $("#bigImg img").attr("src", e.target.src);
        $("#bigImg").show();
    });
});

$(function() {
	 //배너의 현재 좌표값 저장(top의 좌표)
	var currentPosition = parseInt($("#bigImg").css("top"));
	//스크롤 이벤트가 발생하면
	$(window).scroll(function() {
		//스크롤바의 좌표 저장
		var position = $(window).scrollTop();
		$("#bigImg").stop().animate({
			"top" : position + currentPosition + "px"
		}, 10);
	});
});