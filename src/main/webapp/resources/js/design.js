
/*새창팝업열기 */
//function openPopup(popName,popWidth,popHeight){	
//	var popUrl = frontPopupPath + popName + ".jsp";
//	var popOption = "left=10, top=10, width="+popWidth+",height="+popHeight+", resizable=0, scrollbars=yes";
//	window.open(popUrl, "_blank", popOption);

//}

function openPopup(popUrl, popName, popWidth, popHeight){
	//alert(popWidth);
	if(popName == null || popName == '' || popName == 'undefined'){
		popName = "_blank";
	}
	var popOption = "left=10, top=10, width="+popWidth+",height="+popHeight+", resizable=0, scrollbars=yes";
	window.open(popUrl, popName, popOption);
}

//모바일인지 아닌지 체크
function check_device() {
	var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson');
	var device_name = '';
	for (var word in mobileKeyWords) {
		if (navigator.userAgent.match(mobileKeyWords[word]) != null) {
			device_name = mobileKeyWords[word];
			break;
		}
	}
	return device_name
}

/* swiper slide */
$(function() {
	let options = {};
	if ($('.mbanner-wrap .swiper-slide').length == 1){ 
		options = { //슬라이드1개일 때 옵션
			loop: false,
			autoplay: false,
			pagination: {
				el: '.swiper-pagination',
				type: 'fraction',
				renderFraction: function (currentClass, totalClass) {
					return '<span class="' + currentClass + '"></span>' +
					'<span class="' + totalClass + '"></span>';
				}
			},
		}
	} else {
		options = {  //슬라이드1개 이상 옵션
			loop: true,
			navigation: {
				nextEl: '.swiper-button-next.box02',
				prevEl: '.swiper-button-prev.box02',
			},
			pagination: {
				el: '.swiper-pagination',
				type: 'fraction',
				renderFraction: function (currentClass, totalClass) {
					return '<span class="' + currentClass + '"></span>' +
					'<span class="' + totalClass + '"></span>';
				}
			},
			autoplay: {
				delay: 5000,
				disableOnInteraction: false,
			},			
		}
	}
	var mySwiper = new Swiper('.mbanner-wrap', options);

	$(".btn-pause").click(function(){
	   mySwiper.autoplay.stop();
	   $(this).addClass('display-none');
	   $(".btn-play").removeClass('display-none');
	});

	$(".btn-play").click(function(){
	   $(this).addClass('display-none');
	   $(".btn-pause").removeClass('display-none');
	   mySwiper.autoplay.start();

	});


	var swiperClass = new Swiper('.swiperClass', {
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: '.swiper-button-next.CSBtns',
			prevEl: '.swiper-button-prev.CSBtns',
		},

	});


	var swiperFb = new Swiper('.swiperFb', {
		slidesPerView: 'auto',
		spaceBetween: 45,
		loop: false,
		navigation: {
			nextEl: '.swiper-button-next.fbBtns',
			prevEl: '.swiper-button-prev.fbBtns',
		},
		/*breakpoints: {
			809: {
				slidesPerView: 1,
				slidesPerGroup: 1,
				spaceBetween: 0,
			},
		},*/
		autoplay: {
			delay: 2000,
			disableOnInteraction: false,
		},

	});

});


/* 서브메뉴 및 배경 높이값 */
setInterval(function(){matchHeight()},500);
function matchHeight(){	
	var chkWidth = window.innerWidth;
	if (chkWidth > 785){
		var max_H =  $('.gnb-sm-list').outerHeight();
		var smHeight = $('.gnb-sm-list').outerHeight() + 40;
		
		$('.gnb-sm-list').css("height", max_H);
		if (smHeight < 150){
			$('.gnb-sm-bg').css("height","150");
		} else {
			$('.gnb-sm-bg').css("height",smHeight);
		}
	

	} else {
		$('.gnb-sm-list').css("height", "auto");

	}

	if (chkWidth < 600) {
		$('#courseInfo .contents-tab > ul li:first-child').removeClass('active');
	} else {
		$('#courseInfo .contents-tab > ul li:first-child').addClass('active');
	}	
	
}


$(document).ready(function(){
	/* GNB */
	$('.gnb-mm-list > li').mouseover(function(){
		$('.gnb-mm-list > li:not(:animated)').removeClass('on');
		$(this).addClass('on');
		$('.gnb-sm-list:not(:animated)').addClass('open');
		$('.gnb-sm-bg:not(:animated)').addClass('open');
		event.stopPropagation();
	});

	$('.gnb-sm-bg').mouseout(function(){
		$('.gnb-mm-list > li:not(:animated)').removeClass('on');
		$('.gnb-sm-list:not(:animated)').removeClass('open');
		$('.gnb-sm-bg:not(:animated)').removeClass('open');
		event.stopPropagation();
	});

	$('.top-menu-wrap').mouseover(function(){
		$('.gnb-mm-list > li:not(:animated)').removeClass('on');
		$('.gnb-sm-list:not(:animated)').removeClass('open');
		$('.gnb-sm-bg:not(:animated)').removeClass('open');
		event.stopPropagation();
	});

	$('.container').mouseover(function(){
		$('.gnb-mm-list > li:not(:animated)').removeClass('on');
		$('.gnb-sm-list:not(:animated)').removeClass('open');
		$('.gnb-sm-bg:not(:animated)').removeClass('open');
		event.stopPropagation();
	});

	/* 화면 축소시 gnb 작동*/
	$('.btn-menu').click(function(){
		$('nav.gnb').toggleClass('m-open');
	}); 

	/* 모바일 검색창 오픈 */
	$('.btn-hidden.btn-search').click(function(){
		$('.search-group').toggleClass('open');
	});


	/* 로그인창 클릭 및 입력시 활성화 */
	$('.input-box input').focus(function(){
		$('.box03 .login-before').addClass('active');
	});
	$('.input-box input').keyup(function(){
		$('.box03 .login-before').addClass('active');
	});

	$('.input-box input').blur(function(){
		$('.box03 .login-before').removeClass('active');
	});

	$('.box03 .login-before button').click(function(){
		$('.login-before').addClass('display-none');
		$('.box03 .login-before').removeClass('active');
		$('.login-after').removeClass('display-none');
	});
	/* 로그아웃 클릭시 변화 */
	$('.logOut').click(function(){
		$('.login-before').removeClass('display-none');
		$('.login-after').addClass('display-none');
	});

	/* top menu::드롭다운버튼 동작 */
	$('.btn-more-vertical').click(function() {
		$('.right-side').toggleClass('open');
		$('body').on('click',function(e) {
			if( !$('.btn-more-vertical').has(e.target).length ) {
				$('.right-side').removeClass('open');
			}
		});
	});

	$('.course h2').click(function() {
		$('.dropdown-box-wrap.depth-3').toggleClass('open');
		$('body').on('click',function(e) {
			if( !$('.course h2').has(e.target).length ) {
				$('.dropdown-box-wrap.depth-3').removeClass('open');
			}
		});
	});

	$('.depth-2-wrap').click(function() {
		$('.dropdown-box-wrap.depth-2').toggleClass('open');
		$('body').on('click',function(e) {
			if( !$('.depth-2-wrap').has(e.target).length ) {
				$('.dropdown-box-wrap.depth-2').removeClass('open');
			}
		});
	});
	
	$('.depth-1-wrap').click(function() {
		$('.dropdown-box-wrap.depth-1').toggleClass('open');
		$('body').on('click',function(e) {
			if( !$('.depth-1-wrap').has(e.target).length ) {
				$('.dropdown-box-wrap.depth-1').removeClass('open');
			}
		});
	});
	

	/* 공지사항 펼치기	*/
	$('.text-area').hide();
	$('.title.notice').click(function(){
		$(this).parent().next('dd').slideToggle(300);
		$('.title.notice').not(this).parent().next('dd').slideUp(300);
		return false;
	  });


	/* QnA 답변펼치기*/
	$('dl > dt > .answer-area').hide();
	$('dl > dt > .q-title').click(function(){
		$(this).parent().next('dd').slideToggle(300);
		$('dl > dt > .q-title').not(this).parent().next('dd').slideUp(300);

	});
	

	//이전 답변 더 보기 및 닫기 동작
	$('.more-answer > button').click(function(){
		if ($('.pre-box').hasClass('open')) {
			$('.pre-box').removeClass('open');
			$('.more-answer > button').html('이전 답변 더 보기'+'<i class="ft-chevron-down"></i>');
		} else {
			$('.pre-box').addClass('open');
			$('.more-answer > button').html('이전 답변 닫기'+'<i class="ft-chevron-up"></i>');
		}		
	  });


	/* LNB 오픈동작 */
	var lnb1 = $("ul.lnb-depth-1 > li");
	lnb1.click(function(){
		$(this).addClass("open");
		lnb1.not($(this)).removeClass("open");

	});

	var lnb2 = $("ol.lnb-depth-2 > li");
	lnb2.click(function(){
		$(this).removeClass("active").removeClass("open");
		$(this).addClass("active").addClass("open");
		lnb2.not($(this)).removeClass("active").removeClass("open");

	});

	var lnb3 = $("ol.lnb-depth-3 > li");
	lnb3.click(function(){
		$(this).addClass("active");
		lnb3.not($(this)).removeClass("active");

	});


	/* 목록형태 변화 */
	$('.btn-grid').click(function(){
		$('.list-grid').addClass('display-none');
		$('.list-list').removeClass('display-none');
		$('.btn-ft-list').removeClass('display-none');
		$('.btn-grid').addClass('display-none');
	});

	$('.btn-ft-list').click(function(){
		$('.list-grid').removeClass('display-none');
		$('.list-list').addClass('display-none');
		$('.btn-ft-list').addClass('display-none');
		$('.btn-grid').removeClass('display-none');
	});

	/* 팝업 비밀번호 찾기 탭 */
	$('.tab-box ul li').click(function(){
		$('.tab-box ul li').removeClass('selected');
		$('.tab-inner').removeClass('selected');
		$(this).addClass('selected');
		$("#"+$(this).data('id')).addClass('selected');

	});


	/* 인증번호 오지않을 시 문구 */
	$('.mail-help').click(function(){
		$('.mail-help-text').toggleClass('open');
	});


	/* 파일선택시 파일명 노출 */
	var fileTarget = $('#file-search'); 
	fileTarget.on('change', function(){ // 값이 변경되면 
	
		if(window.FileReader){ // modern browser 
			var filename = $(this)[0].files[0].name; 
		} else { // old IE 
			var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
		} 

		// 추출한 파일명 삽입 
		$(this).siblings('.upload-name').val(filename); 
	}); 

	/* 강의보기팝업 모바일 환경 설정*/
	$('#set-player .btn').click(function(){
		$('#set-player').removeClass('open');
	});
	$('.popup-btn.set-player').click(function(){
		$('#set-player').addClass('open');
	});


	/* 단체수강버튼 마우스오버시 툴팁노출 */
	$('.lecture-btn.disinfect .group').hover(function() {
	  $('.tooltip-layer').addClass('display-block');
	}, function(){
	  $('.tooltip-layer').removeClass('display-block');
	});

	
	/* 교육과정 > 소독업무 법정교육 탭박스 오픈동작*/
	$('.tab-dropdown').click(function(e){
		$('.sub-tab-top ul').toggleClass('open');
		$('body').on('click',function(e) {
			if( !$('.sub-tab-top').has(e.target).length ) {
				$('.sub-tab-top ul').removeClass('open');
			}
		});		
	});


});

/* 강의보기 팝업 */
setInterval(function(){listHeight()},500); 
function listHeight(){ 
	var playListH = $('.player-box').height();
	var listTitleH = $('.play-list-title').height();
	$('.play-list-box').css({
		'height':  playListH-listTitleH,
		'overflow-y': 'scroll'
		});
	
}


/* 모달팝업열기 */
var modalH = $(window).height();
function openModal(modalName){
	$('#'+modalName).addClass('display-block');
	$('#'+modalName).css('height',modalH);
	$('html').css({'overflow-y':'hidden', 'height':'100%'});

/* 모달 닫힘 */
function closeModal(){
	$('#'+modalName).removeClass('display-block');
	$('html').css({'overflow-y':'scroll'});
}

// DIM영역 클릭시 모달 닫힘
$('.modal').click(function(e){	//.modal 영역을 클릭했을때 작동되는 이벤트
	if($('.modal').hasClass('display-block')){		//.modal 영역이 display-block이라는 클래스를 갖고있을 때
		if(!$('.modal-box').has(e.target).length){		//.modal-box 제외한 영역을 클릭한다면 
			$('.modal').removeClass('display-block');		//.modal의 display-block클래스를 제거해라
			$('html').css({'overflow-y':'scroll'});
		}
	}
});

//ESC버튼 누를 경우 모달 닫힘
window.onkeyup = function(e) {
	var key = e.keyCode ? e.keyCode : e.which;
	if(key == 27) {
		closeModal();
	}
}
//하단 취소버튼 클릭시 
$('.btnModalClose').click(closeModal);

}

function dateReplace(str){
	var rtnArr = new Array();
	
	var tmpdate = str.split("~");
	var stdate = tmpdate[0].trim();
	var endate = tmpdate[1].trim();
	
	rtnArr.push(stdate);
	rtnArr.push(endate);
	
	return rtnArr;
}