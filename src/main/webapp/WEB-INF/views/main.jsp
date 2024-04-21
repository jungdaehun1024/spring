<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" scope="application" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>momo</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/common.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/main.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/sub.css">
    <script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/gsap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/ScrollTrigger.min.js"></script>
</head>
<body>
<header class="header">
    <div class="header_inner">
        <div class="logo">
            <a href="/">logo</a>
            <input type="search" value="" placeholder="검색어를 입력해주세요">
        </div>
        <nav>
            <ul>
                <li><a href="javascript:void(0)">모임</a></li>
                <li><a href="javascript:void(0)">커뮤니티</a></li>
                <li><a href="javascript:void(0)">이용가이드</a></li>
                <li><a href="javascript:void(0)">공지사항</a></li>
                <li><a href="javascript:void(0)">이벤트</a></li>
            </ul>
            <ol>
                <li><a href="javascript:void(0)">로그인</a></li>
                <li><a href="javascript:void(0)">회원가입</a></li>
            </ol>
        </nav>
        <!-- <div class="toggleBox"></div> -->
    </div>
</header>

<div class="main">
    <div class="content">
        <section class="section01">
            <div class="main_visual"></div>
        </section>

        <section class="section02">
            <div class="sec02_title">
                <h2>모집중</h2>
            </div>
            <div class="sec02_cont">
                <div class="sec02_left_cont">
                    <div class="flex-wrap">
                        <div class="flex-item">
                            <a href="/">
                                <div class="imgBox">
                                    <figure><img src="" alt=""></figure>
                                </div>
                                <div class="contentBox">
                                    <h3 class="subject">제목이 들어가는 공간</h3>
                                    <p class="item_cont">내용이 들어가는 공간</p>
                                    <h6 class="tag">
                                        <span>#해시태그</span>
                                        <span>#해시태그</span>
                                        <span>#해시태그</span>
                                    </h6>
                                    <h5 class="dateText">2024.01.01 ~ 2024.12.31 </h5>
                                </div>
                            </a>
                        </div>
                        <div class="flex-item">
                            <a href="/">
                                <div class="imgBox">
                                    <figure><img src="" alt=""></figure>
                                </div>
                                <div class="contentBox">
                                    <h3 class="subject">제목이 들어가는 공간</h3>
                                    <p class="item_cont">내용이 들어가는 공간</p>
                                    <h6 class="tag">
                                        <span>#해시태그</span>
                                        <span>#해시태그</span>
                                        <span>#해시태그</span>
                                    </h6>
                                    <h5 class="dateText">2024.01.01 ~ 2024.12.31 </h5>
                                </div>
                            </a>
                        </div>
                        <div class="flex-item">
                            <a href="/">
                                <div class="imgBox">
                                    <figure><img src="" alt=""></figure>
                                </div>
                                <div class="contentBox">
                                    <h3 class="subject">제목이 들어가는 공간</h3>
                                    <p class="item_cont">내용이 들어가는 공간</p>
                                    <h6 class="tag">
                                        <span>#해시태그</span>
                                        <span>#해시태그</span>
                                        <span>#해시태그</span>
                                    </h6>
                                    <h5 class="dateText">2024.01.01 ~ 2024.12.31 </h5>
                                </div>
                            </a>
                        </div>
                        <div class="flex-item">
                            <a href="/">
                                <div class="imgBox">
                                    <figure><img src="" alt=""></figure>
                                </div>
                                <div class="contentBox">
                                    <h3 class="subject">제목이 들어가는 공간</h3>
                                    <p class="item_cont">내용이 들어가는 공간</p>
                                    <h6 class="tag">
                                        <span>#해시태그</span>
                                        <span>#해시태그</span>
                                        <span>#해시태그</span>
                                    </h6>
                                    <h5 class="dateText">2024.01.01 ~ 2024.12.31 </h5>
                                </div>
                            </a>
                        </div>
                        <div class="flex-item">
                            <a href="/">
                                <div class="imgBox">
                                    <figure><img src="" alt=""></figure>
                                </div>
                                <div class="contentBox">
                                    <h3 class="subject">제목이 들어가는 공간</h3>
                                    <p class="item_cont">내용이 들어가는 공간</p>
                                    <h6 class="tag">
                                        <span>#해시태그</span>
                                        <span>#해시태그</span>
                                        <span>#해시태그</span>
                                    </h6>
                                    <h5 class="dateText">2024.01.01 ~ 2024.12.31</h5>
                                </div>
                            </a>
                        </div>
                        <div class="flex-item">
                            <a href="/">
                                <div class="imgBox">
                                    <figure><img src="" alt=""></figure>
                                </div>
                                <div class="contentBox">
                                    <h3 class="subject">제목이 들어가는 공간</h3>
                                    <p class="item_cont">내용이 들어가는 공간</p>
                                    <h6 class="tag">
                                        <span>#해시태그</span>
                                        <span>#해시태그</span>
                                        <span>#해시태그</span>
                                    </h6>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="sec02_right_cont">
                    <div class="login_wrap">
                        <div class="login_top">
                            <h3>로그인</h3>
                            <div class="checkBox">
                                <input id="check_id" type="checkbox">
                                <label for="check_id">로그인 유지</label>
                            </div>
                        </div>

                        <div class="login_info_wrap">
                            <div class="login_info_inner">
                                <input class="id_input" type="text" value="" placeholder="아이디">
                                <input class="password_input" type="password" value="" placeholder="비밀번호">
                            </div>
                            <div class="submitBtn">
                                <button type="submit">로그인</button>
                            </div>
                        </div>

                        <div class="login_link">
                            <a href="/">아이디 / 비밀번호 찾기</a>
                            <a href="/">회원가입</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<div class="footer">
    <h6>Copyright Portfolio</h6>
    <h6>상업적인 용도로 사용되는 페이지가 아닌 포트폴리오용 페이지입니다.</h6>
</div>

<script src="${contextPath}/resources/js/main.js"></script>
</body>
</html>