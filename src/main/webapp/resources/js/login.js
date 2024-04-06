document.writeln("<script type='text/javascript' src='"+getContextPath()+"/resources/js/rsa/rsa.js'></script>");
document.writeln("<script type='text/javascript' src='"+getContextPath()+"/resources/js/rsa/jsbn.js'></script>");
document.writeln("<script type='text/javascript' src='"+getContextPath()+"/resources/js/rsa/prng4.js'></script>");
document.writeln("<script type='text/javascript' src='"+getContextPath()+"/resources/js/rsa/rng.js'></script>");

function getContextPath() { 
	
	var isUseable = false;
	var path = "";
	if(isUseable) {
		var hostIndex = location.href.indexOf( location.host ) + location.host.length;
		path = location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	}
	return path;
};

function rememberCheck(obj){
	if(obj.checked){
		alert("자동 로그인을 설정하였습니다. \n공용PC 사용시 개인정보가 유출될 수 있습니다.");
	}
}

function loginChk(){
	
	var curTime = new Date().getTime();
	var nowTime = new Date().getTime();
	var diff = (nowTime - curTime)/1000;
	
	if(diff>1800){//tomcat 기본 세션타임보다 클 경우 세션 만료, 만료이후 다시 키를 받기 위해 새로고침한다.
		alert('페이지가 만료되었습니다. \n 다시 시도해주세요');
		location.href = "<%=request.getContextPath()%>/login/loginForm.do";
				return;
	}
	
	if ($('#userId').val() == "" || $('#userId').val() == null) { //입력하지 않은 경우
		alert('사용자 아이디를 입력하세요.'); //알림창
		$('#userId').focus(); //입력 란 포커싱
		return;
	}

	if ($('#userPw').val() == "" || $('#userPw').val() == null) {
		alert("비밀번호를 입력하세요.");
		$('#userPw').focus(); 
		return;
	}
	
	if(!validateEncryptedForm()) return;
}

function validateEncryptedForm() {
	var userName = document.getElementById("userId").value.trim();//사용자 입력 아이디 

	var userPw = document.getElementById("userPw").value.trim();//사용자 입력  비번

	try {
		var rsaPublicKeyModules = $("#rsaPublicKeyModules").val();

		var rsaPublicKeyExponent = $("#rsaPublicKeyExponent").val();

		submitEncrytedForm(userName, userPw, rsaPublicKeyModules,
				rsaPublicKeyExponent);

	} catch (err) {
		alert(err);
		return false;
	}
	return true;

}

function setCookieb(name, value, expiredays) {
	var todayDate = new Date();
	todayDate.setTime(todayDate.getTime() + expiredays); 
	document.cookie = name + "=" + escape(value) + "; path=/; expires="+ todayDate.toGMTString() + ";"
}
function getCookie(name){ 
	var nameOfCookie = name + "=";
	var x = 0; 
	
	while ( x <= document.cookie.length ) { 
		var y = (x+nameOfCookie.length);
		if ( document.cookie.substring( x, y ) == nameOfCookie ) {
			if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) endOfCookie = document.cookie.length; 
		
			return unescape( document.cookie.substring( y, endOfCookie ) );
		} 
		x = document.cookie.indexOf( " ", x ) + 1;
		if ( x == 0 ) break; 
	} 
	return "";
}

