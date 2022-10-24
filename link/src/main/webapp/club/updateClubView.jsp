<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">  
  
  <!-- addMeetingCss -->
  <link rel="stylesheet" href="/resources/css/addUser.css">
  
  	<!--  	jQuery UI toolTip 사용 JS -->
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <!-- <script src="https://code.jquery.com/ui/1.10.2/jquery-ui.js"></script> -->
		
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	  body {
            padding-top : 50px;
        }            
        
    </style>
    
<script type="text/javascript">


	function fncUpdateClub() {

		////////////////////////////////////////////////////
		//document.detailForm.action = '/addProduct.do';
		///////////////////////////////////////////////////

		// 		document.detailForm.action = '/product/addProduct';		
		// 		document.detailForm.submit(); 

		/* $("form").attr("method", "POST").attr("action", "/club/updateClub")
				.submit(); */
				
		$("form").submit();
	}


	$(function() {

		$("button.btn.btn-primary").on("click", function() {
			//alert($("td.ct_btn01:contains('등록')").html());
			fncUpdateClub();
		});
	});

	// 	 function resetData() {
	// 		document.detailForm.reset();
	// 	} 

	$(function() {

		$("a[href='#']").bind("click", function() {
			//window.close();
			history.go(-1);
		});
	});
	
	function setThumbnail(event) {
		var fileInput = document.getElementById("clubImage");
		var file = fileInput.files[0];
		var reader = new FileReader();

		reader.onload = function(event) {
			$("#imga").attr("src", event.target.result);
		};
		
		console.log(file);
		reader.readAsDataURL(file);
		
	} 

	$(function() {
		$(".image").on("click", function() {
			$("#clubImage").click();		
		})
	})
	

</script>
</head>

<body>
	
	<form class="form-horizontal" method="post" action="/club/updateClub" enctype="multipart/form-data">
		<div class="wrap wd668">
			<div class="container">
				<div class="form_txtInput">
					<h2 class="sub_tit_txt">모 임 수 정</h2>
					<p class="exTxt">모임을 수정해보세요...</p>
					<div class="join_form">
			
		
		
		
			<div class="form-group">
				<label for="clubTitle" class="col-sm-offset-1 col-sm-3 control-label">모 임 제 목</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="clubTitle" name="clubTitle" value="${club.clubTitle}" style="width:300px" autocomplete='off'>
				</div>					
			</div>
			
			
		
			<div class="form-group">
				<label for="clubDetail" class="col-sm-offset-1 col-sm-3 control-label">모 임 설 명</label>
				<div class="col-sm-4">
					<input type="text" height="150px" class="form-control" id="clubDetail" name="clubDetail" value="${club.clubDetail}" style="width:300px" autocomplete='off'>
				</div>		
			</div>
			
			<div class="form-group">
				<label for="clubCategory" class="col-sm-offset-1 col-sm-3 control-label">모임카테고리</label>
				<div class="col-sm-4">
					<select class="form-control" id="clubCategory" name="clubCategory" style="width:300px">
						<option value="운동">운동</option>
  						<option value="봉사활동">봉사활동</option>
  						<option value="음식">음식</option>
						<option value="여행">여행</option>
						<option value="반려동물">반려동물</option>
						<option value="게임">게임</option>
						<option value="음악/댄스">음악/댄스</option>
						<option value="독서">독서</option>
						<option value="기타">기타</option>
					</select>
				</div>			    
			</div>			
			
			<div class="form-group">
				<label for="clubArea" class="col-sm-offset-1 col-sm-3 control-label">활 동 영 역</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" id="clubArea" name="clubArea" value="${club.clubArea}" style="width:300px" autocomplete='off'>
				</div>		
			</div>			
			
			<div class="form-group">
				<label for="clubImage" class="col-sm-offset-1 col-sm-3 control-label">모임이미지</label>
				<div class="col-sm-4">
					<input type="file" class="file" id="clubImage" name="file" multiple="multiple" onchange="setThumbnail(event);" style="display: none;" class="form-file" />
					<button id="im" type="button" class="image" style="border-style: hidden;"><img id="imga" src="/resources/image/uploadFiles/${club.clubImage}" style="height: 300px; width: 300px;"></button>
				</div>		
			</div>
			
			
			
			<div class="form-group">
				<div class="col-sm-offset-4  col-sm-4 text-center">
		      		<button type="button" class="btn btn-primary"  >수 &nbsp;정</button>
					<a class="btn btn-primary btn" href="#" role="button">취&nbsp;소</a>
		    </div>
			</div>
			</div>
		</div>
		</div>
		</div>
	</form>	
		
</body>
</html>