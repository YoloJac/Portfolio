<%@page import="Teammember.MemberDTO"%>
<%@page import="Teammember.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   
    <style>
        * {
            margin: 0;
            padding: 0;
       
        }

		body{
            /* background-color: rgb(255, 252, 246);  */
		}

        h2 {
           text-align: center;
           margin: 0 auto;
           margin-top: 50px;
           margin-bottom: 50px;
           font-size: 20px;
           color: rgb(100, 75, 75);
        }

		.wrap{
			font-size: 14px;
            font-family: 'Poppins', sans-serif;
            text-decoration: none;
		}

        .textForm {
            text-align: center;
            margin: 0 auto;
            margin-bottom: 20px;
            margin-top: 30px;
            
            
        }


        .id {
            width: 200px;
            height: 25px;
            border-top-style: none;
            border-left-style: none;
            border-right-style: none;
            border-color: rgb(184, 184, 184);
            cursor: pointer;
            outline: none;
        }


        .idCheck {
            width: 100px;
            height: 29px;
            border-radius: 6px;
            border-color: white;
            color: rgb(210, 206, 206); 
            background-color: rgb(100, 75, 75);  
        }


        .idCheck:hover {
            color: rgb(0, 0, 0);
            cursor: pointer;
        }


        .pw {
            width: 305px;
            height: 25px;
            border-top-style: none;
            border-left-style: none;
            border-right-style: none;
            border-color: rgb(184, 184, 184);
            cursor: pointer;
            outline: none;
        }


        .pwCheck {
            width: 305px;
            height: 25px;
            border-top-style: none;
            border-left-style: none;
            border-right-style: none;
            border-color: rgb(184, 184, 184);
            cursor: pointer;
            outline: none;
        }


        .name {
            width: 305px;
            height: 25px;
            border-top-style: none;
            border-left-style: none;
            border-right-style: none;
            border-color: rgb(184, 184, 184);
            cursor: pointer;
            outline: none;
        }


        .email {
            width: 305px;
            height: 25px;
            border-top-style: none;
            border-left-style: none;
            border-right-style: none;
            border-color: rgb(184, 184, 184);
            cursor: pointer;
            outline: none;
        }


        .gender {
            background-color: rgb(100, 75, 75);
            cursor: pointer;  
        }


        .date {
           border-radius: 6px;
           border-color: rgb(184, 184, 184);
           cursor: pointer;
        }


        .phoneNumber {
            width: 200px;
            height: 25px;
            border-top-style: none;
            border-left-style: none;
            border-right-style: none;
            cursor: pointer;
            outline: none;
        }


        .phoneBtn {
            width: 100px;
            height: 29px;
            border-radius: 6px;
            border-color: white;
            color: rgb(210, 206, 206); 
            background-color: rgb(100, 75, 75);    
        }


        .phoneBtn:hover {
            color: rgb(0, 0, 0);
            cursor: pointer;
        }

        
        .phoneCheck {
            width: 305px;
            height: 25px;
            border-top-style: none;
            border-left-style: none;
            border-right-style: none;
            cursor: pointer;
            outline: none;
        }


        .submitBtn {
            width: 305px;
            height: 25px;
            border-radius: 6px;
            border-color: white;
            color: rgb(210, 206, 206); 
            background-color: rgb(100, 75, 75);  
        }


        .submitBtn:hover {
            color: rgb(0, 0, 0);
            cursor: pointer;
        }


        .resetBtn {
            width: 305px;
            height: 25px;
            border-radius: 6px;
            border-color: white;
            color: rgb(210, 206, 206); 
            background-color: rgb(100, 75, 75);   
        }


        .resetBtn:hover {
            color: rgb(0, 0, 0);
            cursor: pointer;
        }


        input, progress {
            accent-color: rgb(100, 75, 75);;
        }


    </style>
    
</head>
<body>

<jsp:include page="../main/header.jsp"></jsp:include>
<div class="wrap" id="wrap">
    <form action="SignupProcess.jsp" method="post" class="joinForm" id="joinForm" name="joinForm" onsubmit="return joinForm_check(this);">

        <h2>S i g n Up</h2>

        <!-- 아이디, 중복체크 -->
        <div class="textForm">
            <input name="id" type="text" class="id" id="id" placeholder="아이디">
            <input name="idCheck" type="button" class="idCheck" id="check_button" value="Check" onclick="CheckId()">
        </div>

        
        <!-- 비밀번호 -->
        <div class="textForm">
            <input name="pass" type="password" class="pw" id="pw" placeholder="비밀번호">
        </div>

        <!-- 비밀번호 재확인 -->
         <div class="textForm">
            <input name="loginPwConfirm" type="password" class="pwCheck" id="pwCheck" placeholder="비밀번호 재확인">
        </div>

        <!-- 이름 -->
        <div class="textForm">
            <input name="name" type="text" class="name" id="name" placeholder="이름">
        </div>

        <!-- 이메일 -->
         <div class="textForm">
             <input name="email" type="text" class="email" id="email" placeholder="이메일">
        </div>

        <!-- 성별 -->
        <div class="textForm">
            <label for="man">남</label>
            <input name="gender" type="radio" class="gender" id="man" value="man" checked> 

            <label for="woman">여</label>
            <input name="gender" type="radio" class="gender" id="woman" value="woman"> 
        </div>

        <!-- 생년월일 -->
        <div class="textForm">
            <label for="date">생년월일</label>
            <input name="birth" type="date" class="date" id="date" value="0000-00-00" min="1900-01-01" max="2023-01-01">
        </div>

        <!-- 전화번호 -->
        <div class="textForm">
            <input name="tel" type="text" class="phoneNumber" id="phoneNumber" placeholder="전화번호 입력">
            <input name="phoneBtn" type="button" class="phoneBtn" id="phoneBtn" value="Get" onclick="PhoneChk()">
            <input type="hidden" name="rndNum" id="rndNum">
        </div>

        <!-- 인증번호 -->
        <div class="textForm">
            <input name="phoneCheck" type="text" class="phoneCheck" id="phoneCheck" placeholder="인증번호 입력하세요">
        </div>
        
        <!-- 가입완료 -->
        <div class="textForm">
            <input name="submitBtn" type="submit" class="submitBtn" id="submitBtn"/>
        </div>

        <!-- 이전으로 -->
        <div class="textForm">
            <input name="resetBtn" type="button" class="resetBtn" id="resetBtn" value="Back" onclick="location.href='../login/LoginForm.jsp'"/>
        </div>
    </form>
</div>
<jsp:include page="../main/footer.jsp"></jsp:include>
    <script>

        // 유효성 검사 
        function joinForm_check(form) {

            let id = document.getElementById("id");
            let pw = document.getElementById("pw");
            let pwCheck = document.getElementById("pwCheck");
            let name = document.getElementById("name");
            let email = document.getElementById("email");
            let date = document.getElementById("date");
            let phoneNumber = document.getElementById("phoneNumber");
            let phoneCheck = document.getElementById("phoneCheck");

            if (id.value == "") {
                alert("아이디를 입력하세요.");
                id.focus();
                return false;
            };

            if (pw.value == "") {
                alert("비밀번호를 입력하세요.");
                pw.focus;
                return false;
            }

            let rpw= /^(?=.*[a-zA-Z])(?=.*[!@#$%^&*=-])(?=.*[0-9]).{8,25}$/;
            
            if (!rpw.test(pw.value)) {
                alert("비밀번호는 영문자 + 숫자 + 특수문자 조합으로 8~25 자리 사용해야 합니다.");
                pw.focus();
                return false;
            }

            if (pwCheck.value != pw.value) {
                alert("비밀번호가 일치하지 않습니다.");
                pwCheck.focus();
                return false;
            }

            if (name.value == "") {
                alert("이름을 입력하세요.");
                name.focus();
                return false;
            }

            if (email.value == "") {
                alert("이메일 주소를 입력하세요.");
                email.focus();
                return false;
            }

            if (date.value == "") {
                alert("생년월일을 선택하세요.");
                date.focus();
                return false;
            }

            if (phoneNumber.value == "") {
                alert("전화번호를 입력하세요.");
                phoneNumber.focus();
                return false;
            }

            let reg = /^[0-9]+/g;

            if (!reg.test(phoneNumber.value)) {
                alert("전화번호는 숫자만 입력할 수 있습니다.");
                phoneNumber.focus();
                return false;
            }

            if (phoneCheck.value == "") {
                alert("인증번호를 입력하세요.");
                phoneCheck.focus();
                return false;
            }
            form.submit();
        }
        
        function CheckId(){
        	let form = document.joinForm;
        	let id = form.id.value;
        	
        	if(id == ""){
        		alert("아이디를 입력하지 않았습니다")
        		return;
        	}
        	location.href="Idcheck.jsp?id=" + id;
        }
    	
        let randomNum;
        let form = document.joinForm;
        function PhoneChk(){
        	randomNum = Math.ceil((Math.random()*90000)+10000)
        	alert("인증번호 : " + randomNum);
        	form.rndNum.value = randomNum;
        }
    </script>
</body>
</html>
