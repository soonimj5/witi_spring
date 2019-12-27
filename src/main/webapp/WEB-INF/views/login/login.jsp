<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="html/text; charset=UTF-8">
<title>로그인화면</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

	/*  */
	$(document).ready(function(){
		
	});

	/* 게시판 - 목록 페이지 이동 */
	function goBoardList()
	{
		location.href="/board/boardList";
	}
	
	/* 로그인 - '로그인버튼'클릭시 */
	function goLogin()
	{
		var loginId = $("loginId").val();
		var loginPassword = $("loginPassword").val();
		var data = {"loginId":loginId, "loginPassword":loginPassword};
		$.ajax({
			type:"POST",
			url:"/login/dologin",
			data:data,
			success: function(obj){
				goLoginCallback(obj);
			},
			error:function(xhr, status, error) {}
		});
	}

	/* 로그인 - '로그인' (콜백함수) */
	function goLoginCallback(obj)
	{
		if(obj != null)
		{
			var result = obj.result;
			
			if(result == "SUCCESS")
			{
				alert("로그인을 성공했습니다.")
				goBoardList();
			}
			else
			{
				if(result == "ID")
				{
					alert("회원가입을 부탁드립니다.");
					return;
				}
				else if(result == "PW")
				{
					alert("비밀번호가 틀렸습니다.");
					return;
				}
			}
		}
	}
	
</script>
</head>
<body>
<h1>login.jsp</h1>

ID:<br>
<input type="text" id="loginId" name="loginId">
<br>
PW:<br>
<input type="text" id="loginPassword" name="loginPassword">
<br><br>

<input type="button" value="로그인" onclick="javascript:goLogin();"/>
<input type="button" value="회원가입" onclick=""/>
<input type="button" value="비밀번호 및 아이디 찾기" onclick=""/>
</body>
</html>