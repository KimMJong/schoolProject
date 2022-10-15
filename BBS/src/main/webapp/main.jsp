<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="이미지주소.ico" rel="shortcut icon" type="image/x-icon" />
  <title>HIP-UP</title>
  <link rel="stylesheet" href="css/main.css">
  <link rel="favicon" href="./favicon.ico" />
  <!-- 사용자들이 못보는 정보 -->
</head>

<body>
  <!-- 사용자들에게 보여지는 정보! -->
  <style type="text/css">
    /* 글자색 */

    /* 이거 css 에서 색깔 어케바꿈? */
  </style>
  </head>
  <header>
  	<%
		//세션관리
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>
    <!-- 로고이미지 -->
    <a href="main.jsp">
      <img src="assets/logo.PNG" />
      <!-- width="숫자" height="숫자"-->
    </a>
    <!-- 로그인버튼 -->
    <%
    	if(userID == null){
    %>
    		<div style='width:50px; margin: 10px; float: right;' id="login_btn_group">
    	      <a href="login.jsp"> <button id="login_btn">LOGIN</button></a>
    	    </div>
   	<%
    	}else{
   	%>
    		<div style='width:190px; margin-right: 10px; float: right;' id="login_btn_group">
    	      <a href="profile.jsp"><button id="login_btn">MY PAGE</button></a>
    	      <a href="logoutAction.jsp"><button id="login_btn">LOGOUT</button></a>
    	    </div>
    <% 
    	}
  	%>
    
  </header>
	<!--세션 관리-->
	 
  <!-- 카테고리 -->
  <nav>
    <ul>
      <li><a class="active" href="main.jsp">HOME</a></li>
      <li><a href="listener_bbs.jsp">LISTENER</a></li>
      <li><a href="singer_bbs.jsp">SINGER</a></li>
      <li><a href="composer_bbs.jsp">COMPOSER</a></li>
      <li><a href="engineer_bbs.jsp">ENGINEER</a></li>
      <li><a href="ppl_bbs.html">PROMOTION</a></li>
      <li><a href="index.html">MARKET</a></li>
    </ul>
  </nav>

  <!-- <nav>
      <ul>
        <li class="active"><a href="main.jsp">홈</a></li>
        <li><a href="listener_bbs.jsp">리스너</a></li>
        <li><a href="singer_bbs.jsp">가창자</a></li>
        <li><a href="composer_bbs.jsp">작곡가</a></li>
        <li><a href="engineer_bbs.jsp">엔지니어</a></li>
        <li><a href="ppl_bbs.jsp">홍보게시판</a></li>
        <li><a href="market_bbs.jsp">장터게시판</a></li>
      </ul>
    </nav> -->



  <!-- 메인로고이미지 -->
  <div style="text-align:center">
    <a class="link" href="main.jsp">
      <img src="./assets/mainlogo.PNG" /></a>
  </div>

  <!-- 검색버튼 -->
  <div id="search_con">
    <div style="text-align:center ; margin-top : 30px;  margin-bottom: 50px;">
      <section>
        <!-- <form action="https://search.naver.com/search.naver">
        <div class="search">
          <input type="text" name="query" value="" />
          <button type="submit">검색</button>
        </div>
      </form> -->
        <setction class="container">
          <form method="post" name="search" action="searchAction.jsp" id="search-form">
            <select id="selSearchOption">
              <option value="T">제목</option>
              <option value="W">작성자</option>
            </select>
            <input type="text" id="searchBar"
            	placeholder="찾고싶은 게시글 제목입력" name="searchText" maxlength="100">
            <button type="submit" id="searchBtn">검색</button>
          </form>
        </setction>
        </setction>
      </section>
    </div>
  </div>

  <!-- 메인이미지 -->
 
  <div class=list_con>
    <div class=ingi1>
      <div class="all_pop_wrap">
        <div class="all_pop_list">
          <div class="all_pop_list_head">
            <!-- <div class="ranking"></div>
            <div class="recommend"></div>
            <div class="title"></div>
            <div class="writer"></div>
            <div class="date"></div>
            <div class="comment"></div> -->
          </div>

          <div class="all_pop_list_body">
            <div class="pop_text">HIP-UP 실시간 인기글</div>
            <a href="https://naver.com">
              <div class="item">
                <div class="ranking">1</div>
                <!-- <div class="recommend">24</div> -->
                <img src="./assets/mainimg.jpg" class="sumimg" width="75" height="75">
                <div class="title_con">
                  <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                  <div class="date_writer_con">
                    <div class="date">2022-09-16</div>
                    <div class="writer">김새흔</div>
                  </div>
                </div>
                <div class="comment">[65]</div>
              </div>
            </a>

            <a href="https://naver.com">
              <div class="item">
                <div class="ranking">1</div>
                <!-- <div class="recommend">24</div> -->
                <img src="./assets/mainimg.jpg" class="sumimg" width="75" height="75">
                <div class="title_con">
                  <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                  <div class="date_writer_con">
                    <div class="date">2022-09-16</div>
                    <div class="writer">김새흔</div>
                  </div>
                </div>
                <div class="comment">[65]</div>
              </div>
            </a>

            <a href="https://naver.com">
              <div class="item">
                <div class="ranking">1</div>
                <!-- <div class="recommend">24</div> -->
                <img src="./assets/mainimg.jpg" class="sumimg" width="75" height="75">
                <div class="title_con">
                  <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                  <div class="date_writer_con">
                    <div class="date">2022-09-16</div>
                    <div class="writer">김새흔</div>
                  </div>
                </div>
                <div class="comment">[65]</div>
              </div>
            </a>

            <a href="https://naver.com">
              <div class="item">
                <div class="ranking">1</div>
                <!-- <div class="recommend">24</div> -->
                <img src="./assets/mainimg.jpg" class="sumimg" width="75" height="75">
                <div class="title_con">
                  <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                  <div class="date_writer_con">
                    <div class="date">2022-09-16</div>
                    <div class="writer">김새흔</div>
                  </div>
                </div>
                <div class="comment">[65]</div>
              </div>
            </a>

            <a href="https://naver.com">
              <div class="item">
                <div class="ranking">1</div>
                <!-- <div class="recommend">24</div> -->
                <img src="./assets/mainimg.jpg" class="sumimg" width="75" height="75">
                <div class="title_con">
                  <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                  <div class="date_writer_con">
                    <div class="date">2022-09-16</div>
                    <div class="writer">김새흔</div>
                  </div>
                </div>
                <div class="comment">[65]</div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="ingi2">

      <div class="all_pop_wrap">
        <div class="all_pop_list">
          <div class="all_pop_list_head">
            <!-- <div class="ranking"></div>
            <div class="title"></div>
            <div class="writer"></div>
            <div class="date"></div>
            <div class="view"></div>
            <div class="recommend"></div>
            <div class = "comment"></div>-->
          </div>
          <div class="all_pop_list_body">
            <div class="pop_text">홍보 게시판 실시간 인기글</div>
            <a href="https://naver.com">
              <div class="item">
                <div class="ranking">1</div>
                <!-- <div class="recommend">24</div> -->
                <img src="./assets/mainimg.jpg" class="sumimg" width="75" height="75">
                <div class="title_con">
                  <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                  <div class="date_writer_con">
                    <div class="date">2022-09-16</div>
                    <div class="writer">김새흔</div>
                  </div>
                </div>
                <div class="comment">[65]</div>
              </div>
            </a>
            <a href="https://naver.com">
              <div class="item">
                <div class="ranking">1</div>
                <!-- <div class="recommend">24</div> -->
                <img src="./assets/mainimg.jpg" class="sumimg" width="75" height="75">
                <div class="title_con">
                  <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                  <div class="date_writer_con">
                    <div class="date">2022-09-16</div>
                    <div class="writer">김새흔</div>
                  </div>
                </div>
                <div class="comment">[65]</div>
              </div>
            </a>
            <a href="https://naver.com">
              <div class="item">
                <div class="ranking">1</div>
                <!-- <div class="recommend">24</div> -->
                <img src="./assets/mainimg.jpg" class="sumimg" width="75" height="75">
                <div class="title_con">
                  <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                  <div class="date_writer_con">
                    <div class="date">2022-09-16</div>
                    <div class="writer">김새흔</div>
                  </div>
                </div>
                <div class="comment">[65]</div>
              </div>
            </a>
            <a href="https://naver.com">
              <div class="item">
                <div class="ranking">1</div>
                <!-- <div class="recommend">24</div> -->
                <img src="./assets/mainimg.jpg" class="sumimg" width="75" height="75">
                <div class="title_con">
                  <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                  <div class="date_writer_con">
                    <div class="date">2022-09-16</div>
                    <div class="writer">김새흔</div>
                  </div>
                </div>
                <div class="comment">[65]</div>
              </div>
            </a>
            <a href="https://naver.com">
              <div class="item">
                <div class="ranking">1</div>
                <!-- <div class="recommend">24</div> -->
                <img src="./assets/mainimg.jpg" class="sumimg" width="75" height="75">
                <div class="title_con">
                  <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                  <div class="date_writer_con">
                    <div class="date">2022-09-16</div>
                    <div class="writer">김새흔</div>
                  </div>
                </div>
                <div class="comment">[65]</div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>