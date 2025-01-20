<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>지식의 숲</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/board/boardlistdetail.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/main/header.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/main/footer.css">
  <script defer src="${pageContext.request.contextPath}/asset/js/board/boardlistdetail.js"></script>
</head>

<body>
   <!-- 상단 메뉴바 -->
   <nav class="main-nav-menuwrap">
    <img
      src="./../../asset/img/main/logo.png"
      class="main-img-logo"
      onclick="location.href='./main_login.html'"
    />

    <ul class="main-nav-ul">
      <li><a href="./../notice/noticelist.html">공지</a></li>
      <li><a href="./../board/boardlist.html">자유게시판</a></li>
      <li><a href="./../study/studylist.html">스터디 모집</a></li>
      <li><a href="./../myPage/mypageAccountEdit.html">마이페이지</a></li>
      <li><a href="">로그아웃</a></li>
    </ul>
  </nav>
  <div class="boardlistdetail-div-title">
    <h2>자유게시판</h2>
  </div>
  <!-- 수정 / 삭제 버튼 -->
  <div class="boardlistdetail-detail-div-btnwrapper">
    <span onclick="updateStudy()" class="boardlistdetail-span-editbtn">수정</span>
    <span class="boardlistdetail-span-divider">|</span>
    <span onclick="deleteStudy()" class="boardlistdetail-span-deletebtn">삭제</span>
  </div>
    
    <!-- 본문내용 닉네임 작성일 내용 -->
    <main>
      <div class="boardlistdetail-div-header">
        <div class="boardlistdetail-div-nickname">
          <div class="title-rightline"><div>닉네임</div></div>
          <div class="boardlist-div-contents">닉네임1</div>
        </div>
        <div class="boardlistdetail-div-date">
          <div class="title-rightline"><div>등록일</div></div>
          <div  class="boardlist-div-contents">2025.01.01</div>
        </div>
        <div class="boardlistdetail-div-main">
          <div class="title-rightline"><div>본문</div></div>
          <div  class="boardlist-div-contents">내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용=vhjl;lkbjvhjlk;kknbvjlk;kknbjlk;kjkblsdkfjba,jf.wfvas.dfnasdnfvahsdjfglweiuqgrwelifjblj,fnbasd,mncfvasdfkjgqlweruljb
            <img src="./../../asset/img/main/logo.png" alt="임시">
          </div>
        </div>
      </div>
      <!-- 댓글 입력 창 -->
      <div class="boardlistdetail-div-commentinputwrapper">
        <div class="boardlistdetail-div-userNickname">
          <span>닉네임</span>
        </div>
        <div class="boardlistdetail-div-commentwrapper">
          <form action="">
            <textarea name="studyContents" id="BOARDLISTDETAIL-TEXTAREA-COMMENT" placeholder="댓글을 남겨 보세요"
              data-counter="WRITE-COMMENT-COUNTER" oninput="updateCharacterCount(this, 200)"></textarea>
          </form>
        </div>

        <div class="boardlistdetail-div-counterwrapper">
          <span class="boardlistdetail-span-counter" id="WRITE-COMMENT-COUNTER">0/200</span>
        </div>
      </div>
      <!-- 등록버튼 -->
      <div class="boardlistdetail-div-commentwrap">
        <button class="boardlistdetail-btn-commentsubmit" type="submit" form="BOARDLISTDETAIL-TEXTAREA-COMMENT"
          onclick="writeComment()">
          등록
        </button>
      </div>
      <!-- 댓글내용 -->
      <!-- <div class="boardlistdetail-div-commenttitle">
      <span>댓글</span>
    </div>
    <div class="boardlistdetail-div-checkcomment">
      <div class="boardlistdtail-div-commentlayer">
        <span>닉네임</span>
        <span>2025.01.01</span>
      </div>
      <div class="boardlistdetail-div-commentcontents">
        <span>댓글내용</span>
      </div>
      <div class="boardlistdetail-div-editdelete">
        <button>수정|삭제</button>
      </div>
    </div> -->
      <div class="boardlistdetail-div-commentlistwrapper">
        <div class="boardlistdetail-div-commentlistheader">
          <span class="boardlistdetail-span-comment">댓글</span>
          <span class="boardlistdetail-span-commentcounter">총 2개</span>
        </div>
        <div class="boardlistdetail-div-commentlist">
          <div class="boardlistdetail-div-commentlayer">
            <span class="boardlistdetail-span-commentnickname">닉네임</span>
            <span class="boardlistdetail-span-commentdate">2025.01.03</span>
          </div>
          <div class="boardlistdetail-div-commentlayer">
            <span class="boardlistdetail-span-commentcontents">
              프로그래머스라는 홈페이지에서 코테도 할 수 있고, 여러 강의도 들을
              수 있어요.
            </span>
          </div>
        </div>
        <div class="boardlistdetail-div-commentlist">
          <div class="boardlistdetail-div-commentlayer">
            <span class="boardlistdetail-span-commentnickname">닉네임</span>
            <span class="boardlistdetail-span-commentdate">2025.01.03</span>
          </div>
          <div class="boardlistdetail-div-commentlayer">
            <span class="boardlistdetail-span-commentcontents">
              프로그래머스라는 홈페이지에서 코테도 할 수 있고, 여러 강의도 들을
              수 있어요. 프로그래머스라는 홈페이지에서 코테도 할 수 있고, 여러
              강의도 들을 수 있어요. 프로그래머스라는 홈페이지에서 코테도 할 수
              있고, 여러 강의도 들을 수 있어요. 프로그래머스라는 홈페이지에서
              코테도 할 수 있고, 여러 강의도 들을 수 있어요.
            </span>
            <div class="boardlistdetail-detail-div-btnwrapper">
              <span class="boardlistdetail-span-commenteditbtn" onclick="updateComment()">수정</span>
              <span class="boardlistdetail-span-divider">|</span>
              <span class="boardlistdetail-span-commentdeletebtn" onclick="deleteComment()">삭제</span>
            </div>
          </div>
        </div>
        <!-- 페이지네이션 -->
        <div class="boardlistdetail-div-paginationwrapper">
          <ul id="BOARDLISTDETAIL-UL-PAGINATION">
            <li class="boardlistdetail-li-paginationlist pre">&lt;</li>
            <li class="boardlistdetail-li-paginationlist currentpage">1</li>
            <li class="boardlistdetail-li-paginationlist">2</li>
            <li class="boardlistdetail-li-paginationlist">3</li>
            <li class="boardlistdetail-li-paginationlist">4</li>
            <li class="boardlistdetail-li-paginationlist">5</li>
            <li class="boardlistdetail-li-paginationlist next">&#62;</li>
          </ul>
        </div>
        <!-- footer -->
        <footer class="main-footer-container">
          <div class="main-footer-content">
              <div class="main-footer-links">
                  <div class="main-footer-policies">
                      <a href="#" class="main-link-policy">개인정보처리방침</a>
                      <span class="main-span-divider">|</span>
                      <a href="#" class="main-link-terms">이용약관</a>
                  </div>
                  <p class="main-paragraph-contact">Contact: team.patchnote.official@gmail.com</p>
                  <p class="main-paragraph-copyright">Copyright Forest Info. All rights reserved</p>
              </div>
              <div class="main-footer-logo">
                  <img src="./../../asset/img/main/logo.png" alt="Forest of Knowledge Logo"
                      class="main-img-footerlogo">
              </div>
          </div>
      </footer>
    </main>
</body>

</html>