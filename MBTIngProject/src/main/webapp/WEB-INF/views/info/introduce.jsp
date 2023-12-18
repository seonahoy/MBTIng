<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사소개</title>

<style>

	.introBanner {
        position: relative; 
        width: 100%;
        height: 150px;
        overflow: hidden; 
    }

    .introBanner h3 {
        position: absolute;
        font-size: 30px;
        font-weight: bold;
        top: 50%;
        left: 50%; 
        transform: translate(-50%, -50%); 
        color: white; 
        z-index: 1; 
    }

    .introBanner img {
        width: 100%;
        height: 100%; 
        object-fit: cover; 
    }

	.subTop {
		position: relative;
		width: 1280px;
		height: 290px;
		margin: 0 auto;
		z-index: -1;
		padding-top: 115px;
		display: flex;
	}
	
	.subTopImg img {
		width: 300px;
		margin-left: 70px;
	}

	.subpgNav {
		position: absolute;
		width: 100%;
		height: 60px;
		text-align: center;
		padding-top: 20px;
	}
	.subpgNav > ul {
		display: flex;
		justify-content: center;
		list-style-type: none;
	}
	.subpgNav > ul > li {
		font-size: 20px;
		color: #fff;
	}
	.subpgNav > ul > li > a {
		display: block;
		width: 260px;
		height: 60px;
		text-align: center;
		line-height: 60px;
		color: #7f7f7f;
		font-size: 18px;
		border-top: 1px solid #e5e5e5;
		border-bottom: 1px solid #e5e5e5;
		border-left: 1px solid #e5e5e5;
		background-color: #fff;
		text-decoration: none;
	}

	.subpgNav > ul > li > a:hover {
		font-size: 19px;
	}

	.subpgNav > ul > li:last-child > a {
		border-right: 1px solid #e5e5e5;
	}
	.subpgNav > ul > li > a.on {
		background-color: #fd8f9f;
		color: #fff;
		font-weight: 500;
		border: none;
	}
	.subimg_wrap {
		width: 100%;
		height: 388px;
		background-size: cover;
		margin-bottom: 20px;
	}

	.subTopBox {
		padding-top: 20px;
		padding-left: 300px;
	}
	.comtle {
		font-family: 'Chosunilbo_myungjo';
		font-weight: 500;
		font-size: 48px;
		color: #fd8f9f;
		letter-spacing: -1px;
		margin-bottom: 40px;
	}
	.comtxt {
		color: #000000;
		font-size: 25px;
		letter-spacing: -1px;
		line-height: 1.4;
	}
	.comtxt b {
		font-weight: bold;
	}
	.company_wrap {
		background-color: #f0fafc;
	}

	.intro_wrap {
		padding: 50px 0 65px;
	}
	.introlist {
		display: flex;
		flex-wrap: wrap;
		align-items: center;
		justify-content: space-around;
		margin: 0;
	}
	.introlist > li {
		display: table-cell;
		vertical-align: middle;
		position: relative;
		width: 628px;
		height: 180px;
		background-color: #fff;
		padding: 35px 40px;
		margin-bottom: 20px;
		border-radius: 10px;
		box-shadow: 2px 2px 4px 2px rgb(0 0 0 / 10%);
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
		-ms-border-radius: 10px;
		-o-border-radius: 10px;
	}

	.introlist > li.intro1::before {
		background: url("../img/icon/icon_intro1.png") no-repeat 0 0;
		background-size: contain;
	}
	.introlist > li.intro2::before {
		background: url("../img/icon/icon_intro2.png") no-repeat 0 0;
		background-size: contain;
	}
	.introlist > li.intro3::before {
		background: url("../img/icon/icon_intro3.png") no-repeat 0 0;
		background-size: contain;
	}
	.introlist > li.intro4::before {
		background: url("../img/icon/icon_intro4.png") no-repeat 0 0;
		background-size: contain;
	}
	.introlist > li.intro5::before {
		background: url("../img/icon/icon_intro5.png") no-repeat 0 0;
		background-size: contain;
	}
	.introlist > li.intro6::before {
		background: url("../img/icon/icon_intro6.png") no-repeat 0 0;
		background-size: contain;
	}
	.introlist > li.intro7::before {
		background: url("../img/icon/icon_intro7.png") no-repeat 0 0;
		background-size: contain;
	}
	.introlist > li.intro8::before {
		background: url("../img/icon/icon_intro8.png") no-repeat 0 0;
		background-size: contain;
	}
	.introlist > li.intro9::before {
		background: url("../img/icon/icon_intro9.png") no-repeat 0 0;
		background-size: contain;
	}
	.introlist > li.intro10::before {
		background: url("../img/icon/icon_intro10.png") no-repeat 0 0;
		background-size: contain;
	}

	.introlist > li > p {
		font-family: 'Noto Sans KR';
		font-size: 15px;
		color: #4a4a4a;
		line-height: 1.4;
		margin-bottom: 5px;
		margin-left: 140px;
		word-break: keep-all;
		letter-spacing: -1px;
	}
	.introlist > li > p.introtle {
		font-family: 'Noto Sans KR';
		font-size: 21px;
		color: #000000;
		line-height: 1.5;
		font-weight: bold;
		margin-left: 140px;
		margin-bottom: 15px;
		word-break: keep-all;
		letter-spacing: -1px;

	}
	p .jointestlink {
		color: #fc7c8c;
		font-weight: bold;
	}

	p .jointestlink::after {
		width: 8px;
		height: 12px;
		display: inline-block;
		margin-left: 5px;
		background: url("../img/icon/icon_right_arrow_pink.png") no-repeat 0 0;
		background-size: 100%;
		content: "";
	}
	.intro_subbox {
		display: flex;
		margin-left: 140px;
		margin-top: 10px;

	}
	.intro_subbox .subtle {
		width: 120px;
		font-size: 14px;
		font-weight: bold;
		margin-bottom: 10px;
	}
	.subtxt {
		font-size: 13px;
		font-weight: normal;
		margin-bottom: 6px;
	}

</style>

</head>
<body>

	<jsp:include page="../common/header.jsp" />


	<div class="subTop_wrap1">
		<div class="introBanner">
			<h3>회사소개</h3>
			<img src="./resources/images/NoticeBanner.jpg" alt="">
		</div>
		<div class="subpgNav">
			<ul>
				<li><a href="" class="on">직장인소개팅은?</a></li>
				<li><a href="" class="">인사말</a></li>
			</ul>
		</div>
	</div>

	<div class="subimg_wrap">
		

		<div class="subTop">
			<div class="subTopBox">
				<p class="comtle">직장인소개팅은?</p>
				<p class="comtxt">매니저가 만남장소에서 소개하여<br><b>신뢰할 수 있는 소개팅</b></p>
			</div>
			<div class="subTopImg">
				<img src="./resources/images/pg1_bg.png" alt="">
			</div>
		</div>
	</div>

	<div class="company_wrap">
		<div class="body_wrap intro_wrap">

			<ul class="introlist">
				<li class="intro1">
					<p class="introtle">설레이는 만남을 위한 선별된 회원가입(무료가입)</p>
					<p><a href="/page/jointest.php" class="jointestlink">가입 가능여부 테스트</a></p>
				</li>
				<li class="intro2">
					<p class="introtle">확실한 신원검증 ➡ 신뢰할 수 있는 만남</p>
					<p>본인인증,직업인증 (모든회원)<br>혼인관계인증 (40세 이상 or 돌싱)</p>
				</li> 
				<li class="intro3">
					<p class="introtle">안전한 서버 관리로 개인정보 보호</p>
					<p>다중 웹사이트 보안 시스템 적용</p>
				</li>
				<li class="intro4">
					<p class="introtle">무분별한 내 프로필 노출 방지</p>
					<p>가입 후에도 회원 프로필은 동의없이 이성에게 공개되지 않음<br>(회원이 신청시에만 선별적 공개)</p>
				</li>
				<li class="intro5">
					<p class="introtle">무료 회원가입<br>다회권 이용 또는 1회씩 결제</p>
					<p>무료 회원가입 후 합리적인 다회 매칭권 이용 또는 1회 비용 결제도 가능</p>
				</li>
				<li class="intro6">
					<p class="introtle">정해진 일정으로 매칭결과 확인</p>
					<p>신청 후 계속 기다리는 것이 아닌 정해진 일정으로 매칭결과 확인</p>
					<div class="intro_subbox">
						<p class="subtle pink">매칭결과 확인</p>
						<div>
							<p class="subtxt">- 만남일 기준 2일전까지(매니저소개)</p>   
							<p class="subtxt">- 신청 후 최대 4일 소요(개별만남)</p>  
						</div>
					</div>
				</li>
				<li class="intro7">
					<p class="introtle">전문 매니저에 의한 특화된 매칭시스템</p>
					<p>내가 설정한 옵션을 만족하고 나를 좋아하는 이성과의 만남 </p>
					<p><span class="pink">특허 출원번호, 10-2019-0114076</span></p>
				</li>
				<li class="intro8">
					<p class="introtle">단계별 피드백 제공으로 커플성사율 향상</p>
					<p>- 신청 후 매니저 피드백(수정/보완 필요시)</p>
					<p>- 매칭 후 상대취소 피드백(상대 등록시)</p>
					<p>- 만남 후 상대 피드백(상호 등록시)</p>
				</li>
				<li class="intro9">
					<p class="introtle">진중한 만남을 위한 회원관리 정책</p>
					<p>비매너에 대한 원스트라이크 아웃 시행</p>
				</li>
				<li class="intro10">
					<p class="introtle">믿고 이용하는 직장인 소개팅</p>
					<p>소개팅 만족도 87%</p>
				</li>
			</ul>
		</div>
	</div>

	<jsp:include page="../common/footer.jsp" />

</body>
</html>