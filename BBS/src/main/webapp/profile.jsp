<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/profile.css" />
  <title>profile</title>
</head>
<body>
<div class="profile_junk">
    <div class=all_con>
      <!-- 헤더 부분 -->
      <div class="head1">
        <header class="header"><a class="navbar-brand" href="main.jsp">HIP-UP</a></header>
        <nav class="navbar-default">
          <div class="navbar-collapse" id="bs-example-navbar-collapse-1" aria-expanded="false">
            <ul>
              <li><a class="active" href="main.jsp">HOME</a></li>
              <li><a href="profile_board.jsp">POST</a></li>
              <li><a href="profile_co.jsp">COMMENT</a></li>
              <li><a href="profile_po.jsp">PORTFOLIO</a></li>
            </ul>
            <!-- <div class="left">
              <div id="profile_home_group">
                <button id="profile_home">
                  <a href="profile.html">홈</a>
                </button>
              </div>
              <div id="my_board_group">
                <button id="my_board">
                  <a href="profile_board.html">게시글</a>
                </button>
              </div>
              <div id="my_comment_group">
                <button id="my_comment">
                  <a href="profile_co.html">댓글</a>
                </button>
              </div>
              <div id="my_po_group">
                <button id="my_po">
                  <a href="profile_po.html">포트폴리오</a>
                </button>
              </div>
            </div> -->


          </div>
        </nav>
      </div>

      <!-- 메인컨텐츠 -->
      <main class="main">
        <!-- 메인 상단 영역 -->
        <div class="main_top">
          <!-- 프로필 영역 -->
          <div class="profile">
            <img src="" alt="" class="profile_img" />
            <div class="status"></div>
          </div>
          <!-- 자기소개 -->
          <div class="introduce">
            <!-- 정보 -->
            <div class="infomation">
              <!-- 닉네임 -->
              <div class="nickname">쌍문동 칼잡이 (가창자)</div>
              <!-- 레벨 컨테이너 -->
              <div class="level_wrapper">
                <!-- 레벨 -->
                <div class="level">레벨: 1 (120)</div>
                <!-- 레벨 아이콘 -->
                <img src="" alt="" class="level_icon" />
              </div>
            </div>
            <!-- 설명 -->
            <div class="description">래퍼 킴세의 프로필입니다.</div>
          </div>
        </div>


        <!-- 메인 중단 영역 -->
        <div class="main_middle">
          <!-- 메인 중단 왼쪽 영역 - 사이드바 -->
          <!-- <div class="left">
            <div id="profile_home_group">
              <button id="profile_home">
                <a href="profile.html">홈</a>
              </button>
            </div>
            <div id="my_board_group">
              <button id="my_board">
                <a href="profile_board.html">게시글</a>
              </button>
            </div>
            <div id="my_comment_group">
              <button id="my_comment">
                <a href="profile_co.html">댓글</a>
              </button>
            </div>
            <div id="my_po_group">
              <button id="my_po">
                <a href="profile_po.html">포트폴리오</a>
              </button>
            </div>
          </div> -->
          <!-- 메인 중단 오른쪽 영역 - 게시글, 포트폴리오 리스트 -->
          <div class="right">
            <div class=list_con>
              <div id="pf_board_wrap">
                <div>
                  <div id="left_wrap">
                    <!-- 게시글(갯수) -->
                    <div class="pf_board">
                      <div class="title_pf_board">게시글 (갯수)</div>
                      <a href="view.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">김새흔</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="view.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">김새흔</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="view.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">김새흔</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="view.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">김새흔</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="view.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">김새흔</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                  <div id="right_wrap">
                    <!-- 포트폴리오(갯수) -->
                    <div class="pf_board">
                      <div class="title_pf_board">포트폴리오 (갯수)</div>
                      <a href="portfolio.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">게시글 제목</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">작성자</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="portfolio.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">김새흔</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="portfolio.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">김새흔</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="portfolio.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">김새흔</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="portfolio.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">이 세상에서 랩 제일 잘하는 사람</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">김새흔</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </main>
      <!-- 푸터 -->
      <footer></footer>
    </div>
  </div>
</body>
</html>