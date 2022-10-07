<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>

<head>

<title>회원정보조회</title>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<!-- CDN(Content Delivery Network) 호스트 사용 -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script type="text/javascript">
		
		//==> 추가된부분 : "수정" "확인"  Event 연결 및 처리
$(function() {
	//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
 	$("#sgr:contains('프로필')").on("click" , function() {
		//$(self.location).attr("href","/user/logout");
		self.location = "/myHome/getProfile?userId=${user.userId}"
	}); 
	$("#gg:contains('업데이트')").on("click" , function() {
		//$(self.location).attr("href","/user/logout");
		self.location = "/myHome/updateProfile?userId=${user.userId}"
	});
	$("#ff:contains('팔로우리스트')").on("click" , function() {
		//$(self.location).attr("href","/user/logout");
		self.location = "/myHome/getFollowList?userId=${user.userId}"
	}); 
	

 });
 $(function(){


     $(".pp").on("click" , function() {
   
           var userId = $(".pp").html();
           console.log(userId);
           alert("생성");
           // 이게안된다는거지?ㅇㅇㅇㅇ
           $(document).ready(function(){
        		$.ajax({
        			type: 'GET',   //get방식으로 명시
        			url : '/myHomeRest/json/addFollow/'+userId,  //이동할 jsp 파일 주소
        			dataType:'json',   //문자형식으로 받기
        			success: function(data){   //데이터 주고받기 성공했을 경우 실행할 결과
        	            //function(data)를 쓰게 되면 전달받은 데이터가 data안에 담아서 들어오게 된다. 
        				alert(data);   
        			},
        			error:function(){   //데이터 주고받기가 실패했을 경우 실행할 결과
        				alert('실패');
        			}
        		})
        	});
              
     });
 });			
		
		
		
		
		
	</script>
<style>
.calendar {
	margin: 0 auto;
	width: 1000px;
	display: flex;
	justify-content: center;
}
</style>

<style>
.image {
	margin: 0 auto;
	width: 400px;
	text-align: center;
}

.to {
	margin: 0;
	width: 350px;
	text-align: left;
}

.usertext {
	margin-right: 10px;
	padding: 10px;
	margin-left: -100px;
}

.calendertext {
	padding: 10px;
}
</style>



</head>

<body bgcolor="#ffffff" text="#000000">






	<div class="calendar">

		<div class="usertext">
			<table width="300px" border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 13px;" class="to">
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>

					<td width="104" class="ct_write">아이디</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="105" class="pp">${user.userId}</td>
								<td></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>

				<tr>
					<td width="104" class="ct_write">이름</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">${user.nickName}</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">주소</td>
					<td bgcolor="D6D6D6" width="1"></td>

				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">휴대전화번호</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">${user.phoneNo}</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>
				<tr>
					<td width="104" class="ct_write">이메일</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td class="ct_write01">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="26">${user.email}</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="1" colspan="3" bgcolor="D6D6D6"></td>
				</tr>

				<tr>
					<td width="104" class="ct_write">가입일자</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<td height="26">${club.clubTitle}</td>
					<td height="26">${user.nickName}</td>
					<td height="26">${user.phoneNo}</td>
					<td height="26">${club.clubDetail}</td>
					<td height="26">${club.clubArea}</td>
					<td height="26">${club.clubArea}</td> ${feedList} ${clubList}


				</tr>
				<tr>
					<td width="104" class="ct_write">자기소개</td>
					<td bgcolor="D6D6D6" width="1"></td>
					<li><a href="#" id="ss">팔로우</a></li>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 10px;">
				<tr>
					<td width="104" class="ct_write">자기소개</td>
					<td bgcolor="D6D6D6" width="1"></td>

					<td width="53%"></td>
					<td align="right">
						<table border="0" cellspacing="0" cellpadding="0">

							<li><a href="#" id="sgr">프로필</a></li>
							<li><a href="#" id="gg">업데이트</a></li>
							<li><a href="#" id="ff">팔로우리스트</a></li>

							<tr>

								<!--	jQuery Event 처리로 변경
					
						<a href="javascript:history.go(-1);">확인</a>
						
					-->
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div class="calendertext">
			<jsp:include page="/myHome/calendar.jsp" />
		</div>
		<div>
			<td width="104" class="ct_write">자기소개</td>
			<td bgcolor="D6D6D6" width="1"></td>

		</div>

		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-6 text-center"></div>
</body>

</html>