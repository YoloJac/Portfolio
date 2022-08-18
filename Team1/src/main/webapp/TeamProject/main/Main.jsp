<%@page import="java.util.List"%>
<%@page import="MainPackage.GameDTO"%>
<%@page import="MainPackage.GameDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DARIMI</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../resource/css/style.css">
</head>
<body>
<%
	int[] numArr = new int[18];
	int[] rndNum = new int[3];
	for(int i=0; i<numArr.length; i++){
		numArr[i] = (i+1);
	}
	
	for(int i=0; i<numArr.length; i++){
		int j = (int)(Math.random()*numArr.length);
		
		int tmp=0;
		tmp = numArr[i];
		numArr[i] = numArr[j];
		numArr[j] = tmp;
	}
	
	for(int i=0; i<3; i++){
		rndNum[i] = numArr[i];
	}
	
	GameDAO dao = new GameDAO(application);
	GameDTO[] dto = new GameDTO[rndNum.length];
	for(int i=0; i<rndNum.length; i++){
		dto[i] = dao.slideGame(rndNum[i]);
	}
	
	List<GameDTO> gameLists = dao.newSlideGame();
	List<GameDTO> dcgameLists = dao.dcSlideGame();	
	
	dao.close();
	
%>
    <div id="pdj_wrap" class="pdj_wrap">
        
        <jsp:include page="../main/header.jsp"></jsp:include>

        <div id="pdj_container" class="pdj_container">
            <div id="carouselExampleIndicators" class="carousel slide pdj_product_size" data-bs-ride="carousel">
                <h2>게임 추천</h2>
                <div class="carousel-inner pdj_product">
					<div class="carousel-item active">
					    <div class="img_size">
					        <img src="<%= dto[0].getImg() %>" class="d-block w-100" alt="...">
					    </div>
					    <div id="pdj_product_info" class="pdj_product_info">
					        <p><%= dto[0].getExplain() %></p>
					        <div id="pdj_down" class="pdj_down">
					            <p>출시일 : <%= dto[0].getOpendate() %></p>
					            <p>가격 : <%= dto[0].getSal() %> \</p>
					            <button type="submit">장바구니</button>
					            <button>구입하기</button>
					        </div>
					    </div>
					</div>
					<div class="carousel-item">
					    <div class="img_size">
					        <img src="<%= dto[1].getImg() %>" class="d-block w-100" alt="...">
					    </div>
					    <div id="pdj_product_info" class="pdj_product_info">
					        <p><%= dto[1].getExplain() %></p>
					        <div id="pdj_down" class="pdj_down">
					            <p>출시일 : <%= dto[1].getOpendate() %></p>
					            <p>가격 : <%= dto[1].getSal() %> \</p>
					            <button type="submit">장바구니</button>
					            <button>구입하기</button>
					        </div>
					    </div>
					</div>
					<div class="carousel-item">
					    <div class="img_size">
					        <img src="<%= dto[2].getImg() %>" class="d-block w-100" alt="...">
					    </div>
					    <div id="pdj_product_info" class="pdj_product_info">
					        <p><%= dto[2].getExplain() %></p>
					        <div id="pdj_down" class="pdj_down">
					            <p>출시일 : <%= dto[2].getOpendate() %></p>
					            <p>가격 : <%= dto[2].getSal() %> \</p>
					            <button type="submit">장바구니</button>
					            <button>구입하기</button>
					        </div>
					    </div>
					</div>
				</div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon pdj_btn_color" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon pdj_btn_color" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

            <div id="carouselExampleIndicators2" class="carousel slide pdj_product_size" data-bs-ride="carousel">
                <h2>신규출시 상품</h2>
                <div class="carousel-inner pdj_product">
                    <div class="carousel-item active pdj_product">
                        <div class="img_size">
                           <img src="<%= gameLists.get(4).getImg() %>" class="d-block w-100" alt="...">                        </div>
                        <div id="pdj_product_info" class="pdj_product_info">
                            <p><%= gameLists.get(4).getExplain() %></p>
                            <div id="pdj_down" class="pdj_down">
                                <p>출시일 : <%= gameLists.get(4).getOpendate() %></p>
                                <p>가격 : <%= gameLists.get(4).getSal() %> \</p>
                                <button type="submit">장바구니</button>
                                <button>구입하기</button>
                            </div>
                        </div>
                    </div>
					<div class="carousel-item">
                        <div class="img_size">
                            <img src="<%= gameLists.get(3).getImg() %>" class="d-block w-100" alt="...">
                        </div>
                        <div id="pdj_product_info" class="pdj_product_info">
                            <p><%= gameLists.get(3).getExplain() %></p>
                            <div id="pdj_down" class="pdj_down">
                                <p>출시일 : <%= gameLists.get(3).getOpendate() %></p>
                                <p>가격 : <%= gameLists.get(3).getSal() %> \</p>
                                <button type="submit">장바구니</button>
                                <button>구입하기</button>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="img_size">
                            <img src="<%= gameLists.get(5).getImg() %>" class="d-block w-100" alt="...">
                        </div>
                        <div id="pdj_product_info" class="pdj_product_info">
                            <p><%= gameLists.get(5).getExplain() %></p>
                            <div id="pdj_down" class="pdj_down">
                                <p>출시일 : <%= gameLists.get(5).getOpendate() %></p>
                                <p>가격 : <%= gameLists.get(5).getSal() %> \</p>
                                <button type="submit">장바구니</button>
                                <button>구입하기</button>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon pdj_btn_color" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>																														
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators2" data-bs-slide="next">
                    <span class="carousel-control-next-icon pdj_btn_color" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
            <div id="carouselExampleIndicators3" class="carousel slide pdj_product_size" data-bs-ride="carousel">
                <h2>신규할인 상품</h2>
                <div class="carousel-inner pdj_product">
                    <div class="carousel-item active pdj_product">
                        <div class="img_size">
                            <img src="<%= dcgameLists.get(0).getImg() %>" class="d-block w-100" alt="...">
                        </div>
                        <div id="pdj_product_info" class="pdj_product_info">
                            <p><%= dcgameLists.get(0).getExplain() %></p>
                            <div id="pdj_down" class="pdj_down">
                                <p>출시일 : <%= dcgameLists.get(0).getOpendate() %></p>
                                <p>가격 : <span class="pdj_centerLine"><%= dcgameLists.get(0).getSal() %></span> -> <%= (int)(dcgameLists.get(0).getSal()*0.65) %> \</p>
                                <button type="submit">장바구니</button>
                                <button>구입하기</button>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="img_size">
                            <img src="<%= dcgameLists.get(1).getImg() %>" class="d-block w-100" alt="...">
                        </div>
                        <div id="pdj_product_info" class="pdj_product_info">
                            <p><%= dcgameLists.get(1).getExplain() %></p>
                            <div id="pdj_down" class="pdj_down">
                                <p>출시일 : <%= dcgameLists.get(1).getOpendate() %></p>
                                <p>가격 : <span class="pdj_centerLine"><%= dcgameLists.get(1).getSal() %></span> -> <%= (int)(dcgameLists.get(1).getSal()*0.55) %> \</p>
                                <button type="submit">장바구니</button>
                                <button>구입하기</button>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="img_size">
                            <img src="<%= dcgameLists.get(2).getImg() %>" class="d-block w-100" alt="...">
                        </div>
                        <div id="pdj_product_info" class="pdj_product_info">
                            <p><%= dcgameLists.get(2).getExplain() %></p>
                            <div id="pdj_down" class="pdj_down">
                                <p>출시일 : <%= dcgameLists.get(2).getOpendate() %></p>
                                <p>가격 : <span class="pdj_centerLine"><%= dcgameLists.get(2).getSal() %></span> -> <%= (int)(dcgameLists.get(2).getSal()*0.45) %> \</p>
                                <button type="submit">장바구니</button>
                                <button>구입하기</button>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators3" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon pdj_btn_color" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators3" data-bs-slide="next">
                    <span class="carousel-control-next-icon pdj_btn_color" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

        <jsp:include page="../main/footer.jsp"></jsp:include>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>