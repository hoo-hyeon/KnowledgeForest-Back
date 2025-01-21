document.addEventListener("DOMContentLoaded", function () {
  // 닉네임 유효성 검사
  const nicknameInput = document.getElementById("nickname");
  const nicknameError = document.getElementById("nickname-error");
  const nickdupChkButton = document.querySelector(".mypage-btn-nickname");
  const nicknameRegex = /^[a-zA-Z가-힣][a-zA-Z가-힣0-9]{0,14}$/;

  /* 루트 경로 담은 함수 */
  function getContextPath() {
    var hostIndex = location.href.indexOf(location.host) + location.host.length;
    var contextPath = location.href.substring(
      hostIndex,
      location.href.indexOf("/", hostIndex + 1)
    );

    return contextPath;
  }

  function validateNickname() {
    const nickname = nicknameInput.value;

    if (nicknameRegex.test(nickname)) {
      /*nicknameError.textContent = "변경 가능한 닉네임 입니다.";
				  nicknameError.style.color = "green";
				  nicknameInput.style.borderColor = "green";*/
      return true;
    } else {
      nicknameError.textContent =
        "닉네임은 첫 글자가 숫자가 될 수 없으며, 한글, 영어, 숫자만 사용할 수 있습니다. 최대 15자까지 입력 가능합니다.";
      nicknameError.style.color = "red";
      nicknameInput.style.borderColor = "red";
      return false;
    }
  }

  function checkNickname() {
    if (!validateNickname()) {
      return;
    }

    $.ajax({
      /* 유저 삭제 컨트롤러로 이동, 유저 넘버 쿼리스트링으로 전달 */
      url:
        getContextPath() +
        "/mypage/MypageCheckNicknameOk.my?userNick=" +
        encodeURIComponent(nicknameInput.value),
      type: "GET",
      /* 유저 탈퇴 성공 시 알람창 뜨면서 유저 목록 페이지로 이동 */
      success: () => {
        nicknameError.textContent = "사용 가능한 닉네임입니다.";
        nicknameError.style.color = "green";
        nicknameInput.style.borderColor = "green";
        location.href = getContextPath() + "/mypage/mypage=accountedit.my";
      },
      /* 탈퇴 불가시 알람창 */
      error: (xhr, status, error) => {
        nicknameError.textContent = "이미 사용 중인 닉네임입니다.";
        nicknameError.style.color = "red";
        nicknameInput.style.borderColor = "red";
      },
    });
  }

  nicknameInput.addEventListener("input", validateNickname);
  nickdupChkButton.addEventListener("click", checkNickname);
  nicknameInput.addEventListener("input", validateNickname);

  // 비밀번호 유효성 검사
  const passwordInput = document.getElementById("password");
  const passwordchkInput = document.getElementById("passwordchk");
  const passwordError = document.getElementById("password-error");
  const passwordchkError = document.getElementById("passwordchk-error");
  const passwordRegex =
    /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$/;

  function validatePassword() {
    const password = passwordInput.value;
    if (passwordRegex.test(password)) {
      passwordError.textContent = "사용 가능한 비밀번호입니다.";
      passwordError.style.color = "green";
      passwordInput.style.borderColor = "green";
      return true;
    } else {
      passwordError.textContent =
        "비밀번호는 8~20자, 대소문자, 숫자, 특수문자를 포함해야 합니다.";
      passwordError.style.color = "red";
      passwordInput.style.borderColor = "red";
      return false;
    }
  }

  function validatePasswordCheck() {
    if (passwordchkInput.value === passwordInput.value) {
      passwordchkError.textContent = "동일한 비밀번호 입니다.";
      passwordchkError.style.color = "green";
      return true;
    } else {
      passwordchkError.textContent = "비밀번호가 다릅니다.";
      passwordchkError.style.color = "red";
      return false;
    }
  }

  passwordInput.addEventListener("input", validatePassword);
  passwordchkInput.addEventListener("input", validatePasswordCheck);

  // 핸드폰 번호 유효성 검사
  const phoneNumInput = document.getElementById("phoneNum");
  const phoneNumchkInput = document.getElementById("phoneNumchk");
  const phoneNumchkError = document.getElementById("phoneNumchk-error");
  const sendButton = document.querySelector(".mypage-btn-phoneNum-send");
  const checkButton = document.querySelector(".mypage-btn-phoneNum-check");

  function formatPhoneNumber() {
    let phoneNum = phoneNumInput.value.replace(/[^\d]/g, "");
    if (phoneNum.length > 11) phoneNum = phoneNum.slice(0, 11);
    if (phoneNum.length > 7)
      phoneNum = phoneNum.replace(/(\d{3})(\d{4})(\d{4})/, "$1-$2-$3");
    else if (phoneNum.length > 3)
      phoneNum = phoneNum.replace(/(\d{3})(\d{4})?/, "$1-$2");
    phoneNumInput.value = phoneNum;
  }

  function validatePhoneNumber() {
    const phoneNum = phoneNumInput.value.replace(/[^\d]/g, "");
    if (phoneNum.length === 11) {
      alert("인증번호를 보냈습니다.");
      return true;
    } else {
      alert("전화번호 양식이 아닙니다. 11자리를 입력해주세요.");
      return false;
    }
  }

  function validatePhoneNumberCheck() {
    const phoneNumChk = phoneNumchkInput.value.replace(/[^\d]/g, "");
    if (phoneNumChk.length === 6) {
      phoneNumchkError.textContent = "";
      alert("확인되었습니다");
      return true;
    } else {
      phoneNumchkError.textContent = "6자리 숫자를 입력해주세요.";
      phoneNumchkError.style.color = "red";
      return false;
    }
  }

  phoneNumInput.addEventListener("input", formatPhoneNumber);
  sendButton.addEventListener("click", (event) => {
    event.preventDefault();
    validatePhoneNumber();
  });
  checkButton.addEventListener("click", (event) => {
    event.preventDefault();
    validatePhoneNumberCheck();
  });

  // 저장 버튼 클릭 이벤트
  const saveButton = document.querySelector(".mypage-btn-edit");

  saveButton.addEventListener("click", () => {
    const name = document.getElementById("name").value.trim();
    const birthdate = document.getElementById("birthdate").value.trim();
    const ID = document.getElementById("ID").value.trim();
    const nickname = nicknameInput.value.trim();
    const password = passwordInput.value.trim();
    const passwordchk = passwordchkInput.value.trim();
    const phoneNum = phoneNumInput.value.replace(/[^\d]/g, "");
    const phoneNumchk = phoneNumchkInput.value.trim();

    if (
      !name ||
      !birthdate ||
      !ID ||
      !nickname ||
      !password ||
      !passwordchk ||
      !phoneNum ||
      !phoneNumchk
    ) {
      console.log(
        name +
          birthdate +
          ID +
          nickname +
          password +
          passwordchk +
          phoneNum +
          phoneNumchk
      );
      alert("모든 정보를 입력하세요.");
      return;
    }

    if (
      validateNickname() &&
      validatePassword() &&
      validatePasswordCheck() &&
      validatePhoneNumberCheck()
    ) {
      alert("회원정보가 수정되었습니다.");
      document.getElementById("editForm").submit();
    } else {
      alert("모든 정보를 올바르게 입력하세요.");
    }
  });
});
