<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=\, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gasoek+One&family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
    
<style>
#all {
    margin: auto;
    width : 1200px;
    height : 700px;
    font-family: 'Sunflower', sans-serif;
}
.wrapPC {
    width : 1200px;
    height : 700px;
    display: inline-block;
    display: flex;
    font-family: 'Sunflower', sans-serif;
}


#profileDiv {
    display: flex;
    border: 1px solid black;
    width: 600px;
    height: 900px;
}

#profileDiv img {
    height: 400px;
    width : 400px;

    
}
#profileDiv div {
    width : 400px;
    margin: auto;
}

#mPro {
    position : relative;
    left: 100px;
}

#yPro {
    position : absolute;
    left : 400px;
    top  : 300px;
}

#chatTable {
    width : 100%;
    height : 90px;
    border-right: 1px solid black;
    background-color: antiquewhite;
}

#chatDiv {
    width : 50%;
    overflow-y: scroll;
    max-height : 700px;
}

#profileText {
    margin-top: 10px;
}

#chatInputTable td{
    width : 50%;
}
/*---------------------------chatting--------------------------------*/
.groupIn {
  line-height: 28px;
  width: auto;
  
}

.groupOut {
    text-align: right;
    width: auto;
}

.input {
  height: 60px;
  line-height: 28px;
  margin : 20px;
  border: 2px solid transparent;
  border-radius: 8px;
  outline: none;
  background-color: rgb(248, 230, 248);
  color: #0d0c22;
  box-shadow: 0 0 5px rgb(233, 255, 231), 0 0 0 10px #f5f5f5eb;
  margin-left: 20px;
  width: 300px;
  padding: 0 1rem;
  font-family: 'IBM Plex Sans KR', sans-serif;
}

.output {
  height: 60px;
  line-height: 28px;
  padding: 0 1rem;
  margin : 20px;
  border: 2px solid transparent;
  border-radius: 8px;
  outline: none;
  background-color: rgb(255, 255, 255);
  color: #0d0c22;
  box-shadow: 0 0 5px rgb(233, 255, 231), 0 0 0 10px #f5f5f5eb;
  margin-right:20px;
  width: 300px;
  font-family: 'IBM Plex Sans KR', sans-serif;
}

#chatTable td{
    width :100%;
}

#chatInputTable {
    display: block;
    width : 1200px;
    height: 200px;
    display: fiex;
}

.grow-wrap {
  display: grid;
}
.grow-wrap::after {
  content: attr(data-replicated-value) " ";
  white-space: pre-wrap;
  visibility: hidden;
}
.grow-wrap > textarea {
  resize: none;
  overflow: hidden;
  width : 572px;
  height: 130px;
}
.grow-wrap > textarea,
.grow-wrap::after {
  border: 1px solid black;
  padding: 0.5rem;
  font: inherit;
  grid-area: 1 / 1 / 2 / 2;
}

label {
  display: block;
}

#submitButton {
 align-items: center;
 background-color: #ffd8d8;
 border: 1px solid rgba(0, 0, 0, 0.1);
 border-radius: .25rem;
 box-shadow: rgba(0, 0, 0, 0.02) 0 1px 3px 0;
 box-sizing: border-box;
 color: rgba(0, 0, 0, 0.85);
 cursor: pointer;
 display: inline-flex;
 font-size: 16px;
 font-weight: 600;
 justify-content: center;
 line-height: 1.25;
 min-height: 3rem;
 padding: calc(.875rem - 1px) calc(1.5rem - 1px);
 text-decoration: none;
 transition: all 250ms;
 user-select: none;
 -webkit-user-select: none;
 touch-action: manipulation;
 vertical-align: baseline;
 width: auto;
}

#submitButton:hover,
#submitButton:focus {
 border-color: rgba(0, 0, 0, 0.15);
 box-shadow: rgba(0, 0, 0, 0.1) 0 4px 12px;
 color: rgba(0, 0, 0, 0.65);
}

#submitButton:hover {
 transform: translateY(-1px);
}

#submitButton:active {
 background-color: #F0F0F1;
 border-color: rgba(0, 0, 0, 0.15);
 box-shadow: rgba(0, 0, 0, 0.06) 0 2px 4px;
 color: rgba(0, 0, 0, 0.65);
 transform: translateY(0);
}

/*--------------------------------------------프로필 이미지------------------------------------*/
.card {
  padding: 20px;
  width: 300px;
  min-height: 500px;
  border-radius: 20px;
  background: #e8e8e8;
  box-shadow: 5px 5px 6px #dadada,
             -5px -5px 6px #f6f6f6;
  transition: 0.4s;
  border: 2px solid gray;
}

.card-title {
  font-size: 18px;
  font-weight: 600;
  color: #2e54a7;
  margin: 15px 0 0 10px;
}

.card-image {
  min-height: 170px;
  background-color: #ffc2c2;
  border-radius: 15px;
  box-shadow: inset 8px 8px 10px #ffdfdf,
              inset -8px -8px 10px #fdf1f1;
  width: 400px;

}

.card-body {
  margin: 13px 0 0 10px;
  color: rgb(31, 31, 31);
  font-size: 15px;
}

.footer {
  float: right;
  margin: 28px 0 0 18px;
  font-size: 13px;
  color: #636363;
}

.by-name {
  font-weight: 700;
}

.footer a {
    text-decoration: none;
    color : red;
    font-weight: 900;
}

#like {
    display: block;
}
</style>
</head>
<body>
<div id="all">
    <div class="wrap">
        <div class="wrapPC">
        <div id="profileDiv">
            <div class="card">
                <div class="card-image">
                    <img src="https://thumb.mtstarnews.com/06/2023/03/2023033020282257826_1.jpg/dims/optimize">
                </div>
                <p class="card-title">임나나</p>
                <p class="card-body">
                  저는 현재 댄서로 활동하고 있습니다. <br>
                  좋아하는 사람과 함께 하면 운동과 모든 일을 하는 것을 다 좋아해요 ! 
                </p>
                <p  class="footer"><a href=>차단하기</a></p>
              </div>
             
        </div>

        <div id="chatDiv">
            <table id="chatTable">
                <tr>
                    <td>
                        ---------------------------------2023년 11월 27일----------------------------------
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupIn">
                            <input type="search" class="input"  placeholder="안녕하세요 ㅎㅎ">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupOut">
                            <input type="search" class="output" placeholder="!! 안녕하세요! ">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupIn">
                            <input type="search" class="input" placeholder="카페 좋아하시나 봐요 프로필 보니까 ㅋㅋㅋ">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupOut">
                            <input type="search" class="output" placeholder="아 ㅋㅋㅋ 맞아요 제가 빵을 좋아해서 빵순이라.. ">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupIn">
                            <input type="search" class="input" placeholder="어 혹시 그럼 다음에 종로에있는 소하염전 가실래요? 거기 빵 진짜 맛있는데 ㅋㅋㅋ ">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupOut">
                            <input type="search" class="output" placeholder="헐 저 거기 알아요 소금빵 맛집이잖아요 거기 카라멜 소금빵 진짜 맛있는데">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupIn">
                            <input type="search" class="input" placeholder="우와 아시는구나 ㅋㅋㅋㅋ 언제 갈까요!">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupOut">
                            <input type="search" class="output" placeholder="음,,, 저는 이번주 주말 ㅎㅎ? 출근 해야 돼서 ㅠㅠ ">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupIn">
                            <input type="search" class="input" placeholder="좋아요 그럼 일요일에 3시까지 종로3가역 4번 출구에서 봬요 ">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupOut">
                            <input type="search" class="output" placeholder="알겠습니당. ㅎㅎ 일요일에 봬요!">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupIn">
                            <input type="search" class="input" placeholder="네 출근 화팅!!">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupOut">
                            <input type="search" class="output" placeholder="아 더미데이터 귀찮아" >
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupIn">
                            <input type="search" class="input" placeholder="아 더미데이터 귀찮아">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupOut">
                            <input type="search" class="output" placeholder="아 더미데이터 귀찮아">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupIn">
                            <input type="search" class="input" placeholder="아 더미데이터 귀찮아">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupOut">
                            <input type="search" class="output" placeholder="아 더미데이터 귀찮아">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupIn">
                            <input type="search" class="input" placeholder="아 더미데이터 귀찮아">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="groupOut">
                            <input type="search" class="output" placeholder="아 더미데이터 귀찮아">
                        </div>
                    </td>
                </tr>
            </table>   
                         
    </div>
</div>
 
<div id="chatInputTable" >
  <form>
    <table>
        <tr style="height: 120px;">
            <td></td>
            <td style="border: 1px solid black;">
                <div class="grow-wrap">
                    <textarea name="text" id="text" onInput="this.parentNode.dataset.replicatedValue = this.value" placeholder="메시지를 입력하세요"></textarea>
                </div>
                <div align="right"><button type="submit" id="submitButton">전송하기</button></div>
            </td>
        </tr>
    </table>
  </form>
</div>
</div>
            
</body>
</html>