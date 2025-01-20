<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>지식의 숲</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/study/studylist-edit.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/main/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/main/footer.css">
  </head>
  
  <body>
    <nav class="main-nav-menuwrap">
      <img src="${pageContext.request.contextPath}/asset/img/main/logo.png" class="main-img-logo" />
      <ul class="main-nav-ul">
        <li><a href="./../notice/noticelist.html">공지</a></li>
        <li><a href="./../board/boardlist.html">자유게시판</a></li>
        <li><a href="./../study/studylist.html">스터디 모집</a></li>
        <li><a href="./../login/join.html">회원가입</a></li>
        <li><a href="./../login/login.html">로그인</a></li>
      </ul>
    </nav>
    <main>
      <!-- 페이지 타이틀 -->
      <h1 class="studylist-h1-title">STUDY 수정</h1>

      <!-- 전체 내용을 감싸는 래퍼-->
      <div class="studylist-div-contentsWrapper">
        <!-- 입력 폼을 감싸는 래퍼 -->
        <form id="STUDYLIST-FORM-WRITE">
          <!-- 한 행 -->
          <div class="studylist-div-wrapperlayer">
            <!-- label과 input을 묶은 div -->
            <div class="studylist-div-infowrapper">
              <div class="label">제목</div>
              <input
                type="text"
                class="studylist-input-groupinfo"
                name="groupName"
                placeholder="스터디 그룹명을 입력해주세요."
              />
            </div>
          </div>

          <div class="studylist-div-wrapperlayerDual">
            <div class="studylist-div-infowrapperDual">
              <div class="label">카테고리</div>
              <div class="studylist-div-categoryselectwrapper">
                <div class="studylist-div-categoryselector categoryselected">개발</div>
                <div class="studylist-div-categoryselector">보안</div>
              </div>
            </div>
            <div class="studylist-div-infowrapperDual">
              <div class="label">전화번호</div>
              <div class="studylist-div-phoneselectwrapper">
                <div class="studylist-div-shownumberselector phoneselected">
                  보이기
                </div>
                <div class="studylist-div-shownumberselector">숨기기</div>
              </div>
            </div>
          </div>
          <div class="studylist-div-wrapperlayerDual">
            <div class="studylist-div-infowrapperDual">
              <div class="label">정원 수</div>
              <input
                type="text"
                class="studylist-input-groupinfo"
                name="groupLimit"
                placeholder="정원 수를 입력해주세요."
              />
            </div>
            <div class="studylist-div-infowrapperDual">
              <div class="label">신청 마감일</div>
              <input
                class="studylist-input-groupinfo"
                placeholder="신청 마감일을 입력해주세요 ex) 20250110"
              />
            </div>
          </div>
          <div class="studylist-div-wrapperlayerDual">
            <div class="studylist-div-infowrapperDual">
              <div class="label">시작날짜</div>
              <input
                class="studylist-input-groupinfo"
                placeholder="시작날짜를 입력해주세요 ex) 20250110"
              />
            </div>
            <div class="studylist-div-infowrapperDual">
              <div class="label">종료날짜</div>
              <input
                class="studylist-input-groupinfo"
                placeholder="시작날짜를 입력해주세요 ex) 20250110"
              />
            </div>
          </div>

          <div class="studylist-div-wrapperlayerDual">
            <div class="studylist-div-infowrapperDual">
              <div class="label">시작시간</div>
              <input
                class="studylist-input-groupinfo"
                type="time"
                placeholder="시작시간을 입력해주세요 ex) 20250110"
              />
            </div>
            <div class="studylist-div-infowrapperDual">
              <div class="label">종료시간</div>
              <input
                class="studylist-input-groupinfo"
                type="time"
                placeholder="종료시간를 입력해주세요 ex) 20250110"
              />
            </div>
          </div>

          <div class="studylist-div-wrapperlayer">
            <div class="studylist-div-infowrapper">
              <div class="label">모임장소</div>
              <input
                type="text"
                class="studylist-input-groupinfo"
                name="groupLocation"
                placeholder="장소를 입력해주세요."
              />
            </div>
          </div>

          <div class="studylist-div-longwrapperlayer">
            <div class="studylist-div-textareawrapper">
              <div class="label">설명</div>
              <textarea class="studylist-div-studycontents">
                6개월 동안 JAVA 코딩테스트 문제 풀이하고 코드해석 해보는 스터디
                모임입니다. 화, 목 13시부터 16시까지 총 3시간동안 진행
                예정입니다 다른 분들과 코드 공유해보며 여러 풀이 방법도 경험하고
                또 색다른 코드들을 경험하며 배울 수 있습니다. 원하시는 분들은
                코디신청서 작성시 전화번호 또는 카톡 아이디 같이 작성해주세요.
              </textarea>
            </div>
            <div class="studylist-div-filewrap">
              <div class="label">첨부파일</div>
              <label id="STUDYLIST-INPUT-FILELABEL" for="STUDYLIST-INPUT-FILE">
                <input type="file" accept="image/*" id="STUDYLIST-INPUT-FILE" />
                <div class="studylist-div-filebtn">첨부</div>
              </label>
            </div>
          </div>
        </form>
      </div>
    </main>
    <footer class="main-footer-container">
      <div class="main-footer-content">
        <div class="main-footer-links">
          <div class="main-footer-policies">
            <a href="#" class="main-link-policy">개인정보처리방침</a>
            <span class="main-span-divider">|</span>
            <a href="#" class="main-link-terms">이용약관</a>
          </div>
          <p class="main-paragraph-contact">
            Contact: team.patchnote.official@gmail.com
          </p>
          <p class="main-paragraph-copyright">
            Copyright Forest Info. All rights reserved
          </p>
        </div>
        <div class="main-footer-logo">
          <img
            src="/webapp/asset/img/main/logo.png"
            alt="Forest of Knowledge Logo"
            class="main-img-footerlogo"
          />
        </div>
      </div>
    </footer>
  </body>
  <script defer src="../../asset/js/study/studylist-edit.js"></script>
</html>
