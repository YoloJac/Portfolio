<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
    * {
        margin: 0;
        padding: 0;
        text-decoration: none;
        font-family: 'Poppins', sans-serif;
    }

    h2 {
        color: rgb(100, 75, 75);
        padding-top: 60px;
        margin-bottom: 50px;
        font-weight: 600px;
    }
    
    .textForm {
        background-color: rgba(255, 250, 238, 0.55);
        text-align: center;
        margin: 150px auto;
        width: 400px;
        height: 450px;
        background-image: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/1462889/pat.svg');
        border-radius: 20px;
        box-shadow: 3px 3px 3px 3px rgb(100, 75, 75);
        background-position: bottom center;
        background-repeat: no-repeat;
        background-size: 300%;
    }


    .user_id input {
        width: 350px;
        height: 50px;
        margin-bottom: 10px;
        border-radius: 5px;
        border-color: rgb(100, 75, 75);
        outline: none;
        border: none;
        font-size: px;
        font-size: 14px;
        line-height: 22px;
        font-weight: 600;
        background-color: rgb(245, 234, 234);
        cursor: pointer;
    }


    .user_pw input {
        width: 350px;
        height: 50px;
        border-radius: 5px;
        border-color: rgb(100, 75, 75);
        outline: none;
        border: none;
        font-size: 14px;
        line-height: 22px;
        font-weight: 600;
        background-color: rgb(245, 234, 234);
        cursor: pointer;
    }


    .submit_login input {
        width: 350px;
        height: 50px;
        margin-top: 40px;
        margin-bottom: 20px;
        background-color: rgb(100, 75, 75);
        border-color: rgb(255, 248, 240);
        color: rgb(210, 206, 206); 
        border-radius: 5px;
        font-size: 14px;
        font-weight: 600;
        cursor: pointer;
        text-transform: uppercase;
        -webkit-transition : all 200ms linear;
        transition: all 200ms linear;
    }


    .submit_login input:hover {
        background-color: rgba(255, 255, 255, 0.404);
        box-shadow: 0 8px 24px 0 rgba(100,75,75,.2);
        color: black;
    }


    .submit_login a {
        color: rgb(100, 75, 75);
    }


    .submit_login a:hover {
        color: black;
    }

</style>
</head>
<body>

	<jsp:include page="../main/header.jsp"></jsp:include>
	<script>
			/* 2.폼에 아이디 또는 패스워드가 없으면 알림창 표시 */
		function validateForm(form){
			if(!form.user_id.value){
				alert("아이디를 입력하세요");
				return false;
			}
		}
		if(form.user_pw.value == ""){
			alert("비밀번호를 입력하세요");
			return false;
		}
	
	</script>
			
			<!-- 1.저장 버튼을 누르면 스크립트 함수 실생 -->
  	<form action="LoginProcess.jsp" method="post" name="LoginFrm" class="loginForm" onsubmit="return validateForm(this)">
        
        <div class="textForm">
            <h2>Log In</h2>

            <!-- 아이디 -->
            <div class="user_id">
                <input type="text" name="user_id" id="user_id" placeholder=" id">
                <i class="input-icon uil uil-user"></i>
            </div>

            <!-- 패스워드 -->
            <div class="user_pw">
                <input type="password" name="user_pw" id="user_pw" placeholder=" password">
            </div>

            <!-- 로그인 -->
            <div class="submit_login">
                <input type="submit" name="submit_btn" id="submit_btn">
                <p class="Sign"><a href="../signup/SignUp.jsp" class="link">Sign up window</a></p>
            </div>
        </div>
    </form>
	<jsp:include page="../main/footer.jsp"></jsp:include>	
	
</body>
</html>