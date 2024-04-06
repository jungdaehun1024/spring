/*  LINK  */
function getContextPath() {
	var isUseable = false;
	var path = "";
	if(isUseable) {
		var hostIndex = location.href.indexOf( location.host ) + location.host.length;
		path = location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	}
	return path;
};

/* 메인 */
function goUrl_main()  { window.location.href = getContextPath()+"/mainForm.do";};

/* 탑 메뉴 */
function goUrl_tm_1_1() { window.location.href = getContextPath()+"/login/joinAgreeForm.do";}; //회원가입
function goUrl_tm_1_2() { window.location.href = getContextPath()+"/login/loginForm.do";}; //로그인
function goUrl_tm_1_3() { window.location.href = getContextPath()+"/mypage/mypageForm.do";}; //마이페이지 (개인정보수정)

/* 탑 메뉴::마이페이지 */
function goUrl_tm_1_3_1() { window.location.href = getContextPath()+"/mypage/mypageForm.do";}; //개인정보 수정
/*function goUrl_tm_1_3_2(type) {window.location.href = getContextPath()+"/mypage/noteBoxForm.do?noteType="+type;}; //쪽지함*/
function goUrl_tm_1_3_2() { window.location.href = getContextPath()+"/mypage/memoList.do";}; //수신 쪽지함
function goUrl_tm_1_3_3() { window.location.href = getContextPath()+"/mypage/memoSndList.do";}; //발신 쪽지함
function goUrl_tm_1_3_4() { window.location.href = getContextPath()+"/mypage/withdrawForm.do";}; //회원탈퇴

/* 서비스 소개 */
function goUrl_1_1() {  window.location.href = getContextPath()+ "/about.do";};

function goUrl_2_1() { window.location.href = getContextPath()+"/course/courseForm.do";};
function goUrl_2_1_1(seq) { window.location.href = getContextPath()+"/course/courseList.do?cateSeq="+seq;};
function goUrl_2_1_2() { window.location.href = getContextPath()+"/course/externalVideoList.do";};


function goUrl_3_1() { window.location.href = getContextPath()+"/myClass/myClassForm.do";};
function goUrl_3_1_1() { window.location.href = getContextPath()+"/myClass/learningCourseList.do";};
function goUrl_3_1_2() { window.location.href = getContextPath()+"/myClass/completeCourseList.do";};
function goUrl_3_1_3() { window.location.href = getContextPath()+"/myClass/certificateCourseList.do";};

/* 고객센터 */
function goUrl_4_1() { window.location.href = getContextPath()+"/customer/qnaForm.do";};
function goUrl_4_1_1() {window.location.href = getContextPath()+"/customer/qnaForm.do";};
function goUrl_4_1_2() {window.location.href = getContextPath()+"/customer/noticeList.do";};
function goUrl_4_1_3() {window.location.href = getContextPath()+"/customer/policyList.do";};

//로그아웃
function golog_out(){

	var csrfToken = document.querySelector('[name=csrfName]').value;
	
	document.write('<form action="'+getContextPath()+'/login/logout.do" id="smb_form" method="post"><input type="hidden" name="_csrf" value="'+csrfToken+'"/></form>');
	document.getElementById("smb_form").submit();
};