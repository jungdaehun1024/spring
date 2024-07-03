<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 로컬환경에서 웹페이지 한글 깨짐현상 발생해서 추가 -->
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<c:set var="contextPath" scope="application" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>momo</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/common.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/sub.css">>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/gsap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/ScrollTrigger.min.js"></script>
</head>
<body>
<header class="header">
    <div class="header_inner">
        <div class="logo">
            <a href="/">logo</a>
        </div>
        <nav>
            <ul>

                <li><a href="/guide">이용가이드</a></li>
                <li><a href="/notice">공지사항</a></li>
                <li><a href="/event">이벤트</a></li>
            </ul>
            <ol>
                <li><a href="/login">로그인</a></li>
                <li><a href="/login/join">회원가입</a></li>
            </ol>
        </nav>
        <!-- <div class="toggleBox"></div> -->
    </div>
</header>

<div class="sub join">
    <section class="visual_section">
        <div class="sub_visual"></div>
    </section>

    <div class="sub_content join_info">
        <h2>회원가입</h2>
        <form action="">
            <div class="info_tableBox">
                <div class="inputFlex">
                    <label for="/">아이디</label>
                    <div class="inputBox idBox">
                        <input class="id_input" type="text">
                    </div>
                </div>
                <div class="inputFlex">
                    <label for="pw_input">비밀번호</label>
                    <div class="inputBox pwBox">
                        <input class="pw_input" type="password">
                    </div>
                </div>
                <div class="inputFlex">
                    <label for="/">이름</label>
                    <div class="inputBox nameBox">
                        <input class="name_input" type="text">
                    </div>
                </div>
                <div class="inputFlex">
                    <label for="/">닉네임</label>
                    <div class="inputBox nNameBox">
                        <input class="nName_input" type="text">
                    </div>
                </div>
                <div class="inputFlex">
                    <label for="/">이메일</label>
                    <div class="inputBox emailBox">
                        <input type="text">
                        <select>
                            <option value="">직접입력</option>
                            <option value="">naver.com</option>
                            <option value="">gmail.com</option>
                        </select>
                    </div>
                </div>
                <div class="inputFlex">
                    <label for="/">핸드폰번호</label>
                    <div class="inputBox phoneBox">
                        <select>
                            <option value=""></option>
                            <option value="">010</option>
                            <option value="">011</option>
                        </select>
                        <input type="text">
                        <input type="text">
                    </div>
                </div>
                <div class="inputFlex">
                    <label for="/">주소</label>
                    <div class="inputBox addressBox">
                        <input type="url">
                    </div>
                </div>
            </div>

            <div class="agreeBox">
                <textarea readyonly name="" id="">개인정보 수집사항</textarea>
                <div class="agreeCheck">
                    <input id="checkInput" type="checkbox">
                    <label for="checkInput">개인정보 수집에 동의합니다.</label>
                </div>
            </div>

            <div class="submitBox">
                <button type="submit" class="btn_cancel">취소</button>
                <button type="submit" class="btn_confirm" onClick="location.href='/myLogin/join_complete.html'">확인</button>
            </div>
        </form>
    </div>
</div>

<div class="footer">
    <h6>Copyright Portfolio</h6>
    <h6>상업적인 용도로 사용되는 페이지가 아닌 포트폴리오용 페이지입니다.</h6>
</div>
<script src="${contextPath}/resources/js/sub.js"></script>
<script src="${contextPath}/resources/js/common.js.js"></script>

</body>
</html>
