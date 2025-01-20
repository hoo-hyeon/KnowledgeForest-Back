<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>지식의 숲 - 관리자</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/admin/admin-main.css">
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

          <!-- 유저 목록 테이블 -->
          <div class="adminMain-div-contentswrap">
            <!-- 관리할 테이블 이름 -->
            <div class="adminMain-div-contentheaderWrap">
              <div class="adminMain-div-contentstitle">유저 목록</div>
              <div class="adminMain-div-contentsall"><a href="${pageContext.request.contextPath}/admin/admin-userlist.ad">전체보기 &gt;</a></div>
            </div>
            <!-- 테이블 형식 시작 -->
            <div class="adminMain-div-tablewrap">
              <ul>
                <!-- 테이블 제목 -->
                <li>
                  <ul class="list-datatable adminMain-lists-titleswrap">
                    <li class="adminMain-li-userid">유저ID</li>
                    <li class="adminMain-li-usernickname">닉네임</li>
                    <li class="adminMain-li-userjoindate">가입일</li>
                  </ul>
                </li>
                <!-- 테이블 제목 끝 -->
                <!-- 임시 유저 데이터 (1) - 데이터가 들어가는 부분 -->
                <li>
                  <a href="./admin-userdetail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-userid">유저명1</li>
                      <li class="adminMain-li-usernickname">닉네임</li>
                      <li class="adminMain-li-userjoindate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>
                <!-- 데이터 끝 -->
                
                <!-- 임시 유저 데이터 (2) -->
                <li>
                  <a href="./admin-userdetail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-userid">유저명2</li>
                      <li class="adminMain-li-usernickname">닉네임</li>
                      <li class="adminMain-li-userjoindate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>
                
                <!-- 임시 유저 데이터 (3) -->
                <li>
                  <a href="./admin-userdetail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-userid">유저명3</li>
                      <li class="adminMain-li-usernickname">닉네임</li>
                      <li class="adminMain-li-userjoindate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>
                
                <!-- 임시 유저 데이터 (4) -->
                <li>
                  <a href="./admin-userdetail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-userid">유저명4</li>
                      <li class="adminMain-li-usernickname">닉네임</li>
                      <li class="adminMain-li-userjoindate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>
                
                <!-- 임시 유저 데이터 (5) -->
                <li>
                  <a href="./admin-userdetail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-userid">유저명5</li>
                      <li class="adminMain-li-usernickname">닉네임</li>
                      <li class="adminMain-li-userjoindate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>

              </ul>
            </div>
            <!-- 테이블 형식 끝 -->
          </div>
          <!-- 유저 목록 끝 -->

          <!-- 스터디 목록 테이블 -->
          <div class="adminMain-div-contentswrap">
            <!-- 관리할 테이블 이름 -->
            <div class="adminMain-div-contentheaderWrap">
              <div class="adminMain-div-contentstitle">스터디 목록</div>
              <div class="adminMain-div-contentsall"><a href="${pageContext.request.contextPath}/admin/admin-studylist.ad">전체보기 &gt;</a></div>
            </div>
            <!-- 테이블 형식 시작 -->
            <div class="adminMain-div-tablewrap">
              <ul>
                <!-- 테이블 th -->
                <li>
                  <ul class="list-datatable adminMain-lists-titleswrap">
                    <li class="adminMain-li-posttitle">스터디명</li>
                    <li class="adminMain-li-writer">작성자</li>
                    <li class="adminMain-li-writerdate">작성일</li>
                  </ul>
                </li>

                <!-- 데이터가 들어가는 부분 - 임시 스터디 데이터 (1) -->
                <li>
                  <!-- 상세 페이지 링크 넣어줘야함 -->
                  <a href="./../study/studylist-detail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-posttitle">
                        <div class="adminMain-div-title">퍼블리싱부터 사이드 프로젝트까지</div>
                        <div class="adminMain-div-commentcount lightdata">[7]</div>
                      </li>
                      <li class="adminMain-li-writer lightdata">가보잣3333333</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>
                <!-- 데이터 끝 -->
                
                <!-- 임시 스터디 데이터 (2) -->
                <li>
                  <a href="./../study/studylist-detail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-posttitle">
                        <div class="adminMain-div-title">백엔드개발자를 위한 프로젝트 같이 하실 분</div>
                        <div class="adminMain-div-commentcount lightdata">[7]</div>
                      </li>
                      <li class="adminMain-li-writer lightdata">가보잣3333333</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>
                
                <!-- 임시 스터디 데이터 (3) -->
                <li>
                  <a href="./../study/studylist-detail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-posttitle">
                        <div class="adminMain-div-title">보안관련 공부 스터디</div>
                        <div class="adminMain-div-commentcount lightdata">[7]</div>
                      </li>
                      <li class="adminMain-li-writer lightdata">가보잣3333333</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>
                
                <!-- 임시 스터디 데이터 (4) -->
                <li>
                  <a href="./../study/studylist-detail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-posttitle">
                        <div class="adminMain-div-title">정보 보안 공부 스터디</div>
                        <div class="adminMain-div-commentcount lightdata">[7]</div>
                      </li>
                      <li class="adminMain-li-writer lightdata">가보잣3333333</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>
                
                <!-- 임시 스터디 데이터 (5) -->
                <li>
                  <a href="./../study/studylist-detail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-posttitle">
                        <div class="adminMain-div-title">C언어 공부</div>
                        <div class="adminMain-div-commentcount lightdata">[7]</div>
                      </li>
                      <li class="adminMain-li-writer lightdata">가보잣3333333</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>

              </ul>
            </div>
            <!-- 테이블 형식 끝 -->
          </div>
          <!-- 스터디 목록 끝 -->

          <!-- 자유게시판 목록 테이블 -->
          <div class="adminMain-div-contentswrap">
            <!-- 관리할 테이블 이름 -->
            <div class="adminMain-div-contentheaderWrap">
              <div class="adminMain-div-contentstitle">자유게시판 목록</div>
              <div class="adminMain-div-contentsall"><a href="${pageContext.request.contextPath}/admin/admin-boardlist.ad">전체보기 &gt;</a></div>
            </div>
            <!-- 테이블 형식 시작 -->
            <div class="adminMain-div-tablewrap">
              <ul>
                <!-- 테이블 th -->
                <li>
                  <ul class="list-datatable adminMain-lists-titleswrap">
                    <li class="adminMain-li-posttitle">제목</li>
                    <li class="adminMain-li-writer">작성자</li>
                    <li class="adminMain-li-writerdate">작성일</li>
                  </ul>
                </li>
                <!-- 데이터가 들어가는 부분 - 임시 자유게시판 데이터 (1) -->
                <li>
                  <!-- 사용자 화면의 상세페이지 링크 넣어줘야함 -->
                  <a href="./../board/">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-posttitle">
                        <div class="adminMain-div-title">안녕하세요, 교재추천해주세요</div>
                        <div class="adminMain-div-commentcount lightdata">[7]</div>
                      </li>
                      <li class="adminMain-li-writer lightdata">가보잣3333333</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>
                <!-- 데이터 끝 -->
                
                <!-- 임시 자유게시판 데이터 (2) -->
                <li>
                  <a href="./../board/">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-posttitle">
                        <div class="adminMain-div-title">안녕하세여 백엔드개발자 하려면 어떻게해야되나요</div>
                        <div class="adminMain-div-commentcount lightdata">[7]</div>
                      </li>
                      <li class="adminMain-li-writer lightdata">가보잣3333333</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>
                <!-- 임시 자유게시판 데이터 (3) -->
                <li>
                  <a href="./../board/">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-posttitle">
                        <div class="adminMain-div-title">저메추 받음</div>
                        <div class="adminMain-div-commentcount lightdata">[7]</div>
                      </li>
                      <li class="adminMain-li-writer lightdata">가보잣3333333</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>
                <!-- 임시 자유게시판 데이터 (4) -->
                <li>
                  <a href="./../board/">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-posttitle">
                        <div class="adminMain-div-title">JSP 프로젝트</div>
                        <div class="adminMain-div-commentcount lightdata">[7]</div>
                      </li>
                      <li class="adminMain-li-writer lightdata">가보잣3333333</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>
                <!-- 임시 자유게시판 데이터 (5) -->
                <li>
                  <a href="./../board/">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-posttitle">
                        <div class="adminMain-div-title">애들아 나 있잖아...</div>
                        <div class="adminMain-div-commentcount lightdata">[7]</div>
                      </li>
                      <li class="adminMain-li-writer lightdata">가보잣3333333</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>

              </ul>
            </div>
            <!-- 테이블 형식 끝 -->
          </div>
          <!-- 자유게시판 목록 끝 -->


          <!-- 공지 목록 테이블 -->
          <div class="adminMain-div-contentswrap">
            <!-- 관리할 테이블 이름 -->
            <div class="adminMain-div-contentheaderWrap">
              <div class="adminMain-div-contentstitle">공지 목록</div>
              <div class="adminMain-div-contentsall"><a href="${pageContext.request.contextPath}/admin/admin-noticelist.ad">전체보기 &gt;</a></div>
            </div>
            <!-- 테이블 형식 시작 -->
            <div class="adminMain-div-tablewrap">
              <ul>
                <!-- 테이블 th -->
                <li>
                  <ul class="list-datatable adminMain-lists-titleswrap">
                    <li class="adminMain-li-noticetitle">제목</li>
                    <li class="adminMain-li-writerdate">작성일</li>
                  </ul>
                </li>
                <!-- 데이터가 들어가는 부분 - 임시 공지 데이터 (1) -->
                <li>
                  <a href="./admin-noticedetail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-noticetitle adminMain-notice-title">[공지사항] 안녕하세요 지식의 숲입니다.</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>
                <!-- 데이터 끝 -->

                <!-- 임시 공지 데이터 (2) -->
                <li>
                  <a href="./admin-noticedetail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-noticetitle adminMain-notice-title">[공지사항] 새해가 밝았습니다.</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>

                <!-- 임시 공지 데이터 (3) -->
                <li>
                  <a href="./admin-noticedetail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-noticetitle adminMain-notice-title">[양식] 스터디 등록 양식입니다.</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>

                <!-- 임시 공지 데이터 (4) -->
                <li>
                  <a href="./admin-noticedetail.html">
                    <ul class="list-datatable adminMain-lists-dataswrap">
                      <li class="adminMain-li-noticetitle adminMain-notice-title">[공지사항] 새해가 밝았습니다.</li>
                      <li class="adminMain-li-writerdate lightdata">2025.01.03</li>
                    </ul>
                  </a>
                </li>

              </ul>
            </div>
            <!-- 테이블 형식 끝 -->
          </div>
          <!-- 공지 목록 끝 -->

        </div>
      </main>
      <!-- 메인 컨텐츠 끝 -->
      
    </div>
    <!-- 헤더 + 메인 컨텐츠 끝 -->

  </div>

</body>
</html>