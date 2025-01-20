<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>지식의 숲 - 관리자</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/admin/admin-noticelist.css">
  <script defer src="${pageContext.request.contextPath}/asset/js/admin/admin-noticelist.js"></script>
</head>
<body>
  <div id="ADMIN-DIV-LAYOUTCONTAINER">
    <!-- 사이드 메뉴 -->
    <jsp:include page = "/html/admin/sidemenu.jsp" />
    <!-- 사이드 메뉴 끝 -->

    <!-- 상단 헤더 + 헤더 아래 컨텐츠 요소들 -->
    <div id="ADMIN-DIV-CONTENTWRAP">
      <!-- 상단 헤더 -->
	  <jsp:include page = "/html/admin/header.jsp" />
      <!-- 상단 헤더 끝 -->

      <!-- 메인 컨텐츠가 들어갈 컨테이너 -->
      <main class="admin-div-container">
        <div class="admin-div-contentcontainer adminMain-div-mainwrap">

          <!-- 현재 페이지 제목 -->
          <h1 class="admin-h1-maintitle">공지 관리</h1>

          <!-- 검색창 -->
          <form action="" method="">
            <div class="admin-div-wrapper">
              <input type="text" class="admin-input-search"
                placeholder="검색어를 입력해주세요." value=""/>
              <img src="${pageContext.request.contextPath}/asset/img/study/search-btn.png"
                alt="search" class="admin-img-search"/>
            </div>
          </form>

          <!-- 자유게시판 글 테이블 -->
          <div class="admin-div-listwrap">
            <!-- 테이블 컬럼명 -->
            <ul class="admin-ul-titlewrap">
              <li class="adminNotice-li-noticeid">글번호</li>
              <li class="adminNotice-li-noticetitle">제목</li>
              <li class="adminNotice-li-noticewriter">작성자</li>
              <li class="adminNotice-li-noticewritedate">작성일</li>
              <li class="adminNotice-li-noticebtncontainer"></li>
            </ul>

            <!-- 데이터 넣는 부분 -->
            <ul class="admin-ul-datawrap">
              <li class="adminNotice-li-noticeid lightdata">319</li>
              <li class="adminNotice-li-noticetitle">
                <a href="./admin-noticedetail.html">공지 2</a>
              </li>
              <li class="adminNotice-li-noticewriter lightdata">관리자</li>
              <li class="adminNotice-li-noticewritedate lightdata">1999.01.01</li>
              <li class="adminNotice-li-noticebtncontainer">
                <img src="${pageContext.request.contextPath}/asset/img/admin/menu-btn.png" class="adminNotice-img-menubtn" alt="메뉴 버튼">
                <div class="adminNotice-div-buttonswrap">
                  <a href="${pageContext.request.contextPath}/admin/admin-noticeupdate.ad" class="adminNotice-a-button">수정</a>
                  <a href="#" onclick="clickDeleteBtn(this)" class="adminNotice-a-button">삭제</a>
                </div>
              </li>
            </ul>

          </div>
          <!-- 자유게시판 글 테이블 끝 -->

          <!-- 작성 버튼 -->
          <div id="ADMIN-DIV-BTNWRAP">
            <button class="admin-btn-write" onclick="location.href='${pageContext.request.contextPath}/admin/admin-noticewrite.ad'">등록</button>
          </div>
          
          <!-- 페이지네이션 -->
          <div class="admin-div-paginationwrapper">
            <ul id="admin-UL-PAGINATION">
              <li class="admin-li-paginationlist pre">&lt;</li>
              <li class="admin-li-paginationlist currentpage">1</li>
              <li class="admin-li-paginationlist">2</li>
              <li class="admin-li-paginationlist">3</li>
              <li class="admin-li-paginationlist">4</li>
              <li class="admin-li-paginationlist">5</li>
              <li class="admin-li-paginationlist next">&#62;</li>
            </ul>
          </div>

        </div>
      </main>
      <!-- 메인 컨텐츠 끝 -->
      
    </div>
    <!-- 헤더 + 메인 컨텐츠 끝 -->

  </div>

</body>
</html>