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
      <!-- ��� �κ� -->
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
                  <a href="profile.html">Ȩ</a>
                </button>
              </div>
              <div id="my_board_group">
                <button id="my_board">
                  <a href="profile_board.html">�Խñ�</a>
                </button>
              </div>
              <div id="my_comment_group">
                <button id="my_comment">
                  <a href="profile_co.html">���</a>
                </button>
              </div>
              <div id="my_po_group">
                <button id="my_po">
                  <a href="profile_po.html">��Ʈ������</a>
                </button>
              </div>
            </div> -->


          </div>
        </nav>
      </div>

      <!-- ���������� -->
      <main class="main">
        <!-- ���� ��� ���� -->
        <div class="main_top">
          <!-- ������ ���� -->
          <div class="profile">
            <img src="" alt="" class="profile_img" />
            <div class="status"></div>
          </div>
          <!-- �ڱ�Ұ� -->
          <div class="introduce">
            <!-- ���� -->
            <div class="infomation">
              <!-- �г��� -->
              <div class="nickname">�ֹ��� Į���� (��â��)</div>
              <!-- ���� �����̳� -->
              <div class="level_wrapper">
                <!-- ���� -->
                <div class="level">����: 1 (120)</div>
                <!-- ���� ������ -->
                <img src="" alt="" class="level_icon" />
              </div>
            </div>
            <!-- ���� -->
            <div class="description">���� Ŵ���� �������Դϴ�.</div>
          </div>
        </div>


        <!-- ���� �ߴ� ���� -->
        <div class="main_middle">
          <!-- ���� �ߴ� ���� ���� - ���̵�� -->
          <!-- <div class="left">
            <div id="profile_home_group">
              <button id="profile_home">
                <a href="profile.html">Ȩ</a>
              </button>
            </div>
            <div id="my_board_group">
              <button id="my_board">
                <a href="profile_board.html">�Խñ�</a>
              </button>
            </div>
            <div id="my_comment_group">
              <button id="my_comment">
                <a href="profile_co.html">���</a>
              </button>
            </div>
            <div id="my_po_group">
              <button id="my_po">
                <a href="profile_po.html">��Ʈ������</a>
              </button>
            </div>
          </div> -->
          <!-- ���� �ߴ� ������ ���� - �Խñ�, ��Ʈ������ ����Ʈ -->
          <div class="right">
            <div class=list_con>
              <div id="pf_board_wrap">
                <div>
                  <div id="left_wrap">
                    <!-- �Խñ�(����) -->
                    <div class="pf_board">
                      <div class="title_pf_board">�Խñ� (����)</div>
                      <a href="view.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">�� ���󿡼� �� ���� ���ϴ� ���</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">�����</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="view.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">�� ���󿡼� �� ���� ���ϴ� ���</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">�����</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="view.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">�� ���󿡼� �� ���� ���ϴ� ���</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">�����</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="view.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">�� ���󿡼� �� ���� ���ϴ� ���</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">�����</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="view.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">�� ���󿡼� �� ���� ���ϴ� ���</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">�����</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                  <div id="right_wrap">
                    <!-- ��Ʈ������(����) -->
                    <div class="pf_board">
                      <div class="title_pf_board">��Ʈ������ (����)</div>
                      <a href="portfolio.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">�Խñ� ����</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">�ۼ���</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="portfolio.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">�� ���󿡼� �� ���� ���ϴ� ���</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">�����</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="portfolio.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">�� ���󿡼� �� ���� ���ϴ� ���</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">�����</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="portfolio.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">�� ���󿡼� �� ���� ���ϴ� ���</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">�����</div>
                              <div class="comment">[65]</div>
                            </div>
                          </div>
                        </div>
                      </a>
                      <a href="portfolio.html">
                        <div class="item">
                          <img src="./images/thumbnail.jfif" class="sumimg" width="75" height="75">
                          <div class="title_con">
                            <div class="title">�� ���󿡼� �� ���� ���ϴ� ���</div>
                            <div class="date_writer_con">
                              <div class="date">2022-09-16</div>
                              <div class="writer">�����</div>
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
      <!-- Ǫ�� -->
      <footer></footer>
    </div>
  </div>
</body>
</html>