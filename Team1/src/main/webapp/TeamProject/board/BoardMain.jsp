<%@page import="model3.MessageBoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="model3.MessageBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../resource/css/boardStyle.css">
  </head>
<body>
<jsp:include page="../main/header.jsp"></jsp:include>
	<div id="wrap">
    <!-- Main -->
		<div id="main">
        	<nav class="nvb">
	            <ul class="board">
	                <li><a href="#" class="box_wrap">공략 게시판</a></li>
	                <li><a href="#" class="box_wrap">스크린샷 게시판</a></li>
	                <li><a href="#" class="box_wrap">추천 추천!!</a></li>
	                <li><a href="#" class="box_wrap">자유게시판</a></li>
	                <li><a href="#" class="box_wrap">FAQ 게시판</a></li>
	            </ul>
        	</nav>
        <div class="sesstion">
        <h1 class="title">추천 게임</h1>
        <div class="message_box">
			<div class="box1 box_common btn1" >
            	<a href="#" class="box_wrap">
	            	<ul class="box_Info">
		                <li><h1>1.</h1></li>
		                <li>
	                    	<ul class="box1_Info">
		                        <li><p>Football Manager2022</p></li>
		                        <li>
		                        	<div class="star-ratings">
			                            <div class="star-ratings-fill space-x-2 text-lg rank1"
			                            :style="{ width: ratingToPercent + '%' }">
		                            		<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
		                            	</div>
		                            	<div class="star-ratings-base space-x-2 text-lg">
		                            		<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
		                            	</div>
		                        	</div>
	                       		</li>
	                    	</ul>
						</li>
	              	</ul>
            	</a>
            </div>
      
            <div class="box2 box_common btn1">
              	<a href="#" class="box_wrap">
              		<ul class="box_Info">
                    	<li><h1>2.</h1></li>
                    	<li>
                        	<ul class="box2_Info">
                            	<li><p>CIVILIZATION6</p></li>
                            	<li>
	                                <div class="star-ratings">
		                                <div class="star-ratings-fill space-x-2 text-lg rank2"
		                                    :style="{ width: ratingToPercent + '%' }">
		                                    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
		                                </div>
		                                <div class="star-ratings-base space-x-2 text-lg">
		                                    <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
		                                </div>
	                                </div>
                            	</li>
                        	</ul>
                    	</li>
              		</ul>
            	</a>
            </div>
      
            <div class="box3 box_common btn1">
              	<a href="#" class="box_wrap">
              		<ul class="box_Info">
		                <li><h1>3.</h1></li>
		                <li>
		                    <ul class="box3_Info">
		                        <li><p>DEAD BY DAYLIGHT</p></li>
		                        <li>
		                            <div class="star-ratings">
			                            <div class="star-ratings-fill space-x-2 text-lg rank3"
			                                :style="{ width: ratingToPercent + '%' }">
			                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			                            </div>
			                            <div class="star-ratings-base space-x-2 text-lg">
			                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			                            </div>
		                            </div>
		                        </li>
		                    </ul>
		                </li>
              		</ul>
            	</a>
            </div>

            <div class="box4 box_common btn1">
              	<a href="#" class="box_wrap">
              		<ul class="box_Info">
                		<li><h1>4.</h1></li>
                		<li>
                    		<ul class="box4_Info">
		                        <li><p>SEKIRO</p></li>
		                        <li>
		                            <div class="star-ratings">
			                            <div class="star-ratings-fill space-x-2 text-lg rank4"
			                                :style="{ width: ratingToPercent + '%' }">
			                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			                            </div>
			                            <div class="star-ratings-base space-x-2 text-lg">
			                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			                            </div>
		                            </div>
                        		</li>
                    		</ul>
                		</li>
              		</ul>
            	</a>
            </div>

            <div class="box5 box_common btn1">
              	<a href="#" class="box_wrap">
              		<ul class="box_Info">
		                <li><h1>5.</h1></li>
		                <li>
                    		<ul class="box5_Info">
		                        <li><p>ELDENRING</p></li>
		                        <li>
		                            <div class="star-ratings">
			                            <div class="star-ratings-fill space-x-2 text-lg rank5"
			                                :style="{ width: ratingToPercent + '%' }">
			                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			                            </div>
			                            <div class="star-ratings-base space-x-2 text-lg">
			                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			                            </div>
		                            </div>
		                        </li>
                    		</ul>
                		</li>
              		</ul>
            	</a>
            </div>

            <div class="box6 box_common btn1">
				<a href="#" class="box_wrap">
	              	<ul class="box_Info">
	                	<li><h1>6.</h1></li>
	                	<li>
		                    <ul class="box6_Info">
		                        <li><p>MONSTER HUNTER RISE</p></li>
		                        <li>
		                            <div class="star-ratings">
			                            <div class="star-ratings-fill space-x-2 text-lg rank6"
			                                :style="{ width: ratingToPercent + '%' }" >
			                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			                            </div>
			                            <div class="star-ratings-base space-x-2 text-lg">
			                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			                            </div>
		                            </div>
		                        </li>
		                    </ul>
	                	</li>
					</ul>
				</a>
            </div>

            <div class="box7 box_common btn1">
				<a href="#" class="box_wrap">
					<ul class="box_Info">
		                <li><h1>7.</h1></li>
		                <li>
		                    <ul class="box7_Info">
		                        <li><p>GTA5</p></li>
		                        <li>
		                            <div class="star-ratings">
			                            <div class="star-ratings-fill space-x-2 text-lg rank7"
			                                :style="{ width: ratingToPercent + '%' }">
			                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			                            </div>
			                            <div class="star-ratings-base space-x-2 text-lg">
			                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			                            </div>
		                            </div>
		                        </li>
		                    </ul>
		                </li>
					</ul>
            	</a>
            </div>

            <div class="box8 box_common btn1" >
				<a href="#" class="box_wrap">
					<ul class="box_Info">
		                <li><h1>8.</h1></li>
		                <li>
		                    <ul class="box8_Info">
		                        <li><p>TEAM FORTRESS2</p></li>
		                        <li>
		                            <div class="star-ratings">
			                            <div class="star-ratings-fill space-x-2 text-lg rank8"
			                                :style="{ width: ratingToPercent + '%' }">
			                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			                            </div>
			                            <div class="star-ratings-base space-x-2 text-lg">
			                                <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
			                            </div>
		                            </div>
		                        </li>
		                    </ul>
		                </li>
					</ul>
            	</a>
            </div>
          </div>
            <div class="modal">
           			<div class="modal-content1">
                        <span class="close">&times;</span>  
                        <div class="modal-title">
                            <h2>1. FootballManager 2022</h2>
                        </div>                       
                        <form action="WriteProcess.jsp?gname=FM" name="writeFrm" method="post" onsubmit="return validateForm(this)">
                        <%
	                    	MessageBoardDAO dao1 = new MessageBoardDAO(application);	
	
	                    	int totalCount1 = dao1.selectCount("FM");
                    	
                        	List<MessageBoardDTO> boardLists1 = dao1.selectList("FM");
                    		dao1.close(); 
                   		%>
						<table width="100%">
							<tr>
								<td width="80%">
									<textarea name="content" style="width:100%; height:50px;"></textarea>
								</td>
								<td align="center" width="20%">
									<button type="submit">작성 완료</button>
								</td>
							</tr>
						</table>
					</form>
						<table border="1" width="100%">
							<tr>
								<th width="10%">번호</th>
								<th width="15%">아이디</th>
								<th width="50%">내용</th>
								<th width="15%">작성일</th>
								<th width="10%"></th>
							</tr>
							<%
								if(boardLists1.isEmpty()){
							%>
							<tr>
								<td colspan="4" align="center">등록된 댓글이 없습니다.</td>
							</tr>
							<%
								}else{
									int virtualNum=0;
									
									for(MessageBoardDTO dto : boardLists1){
										virtualNum = totalCount1--;
							%>
							<tr>
								<form name="viewfrm" action="../board/DeleteProcess.jsp?num=<%= dto.getNum() %>" method="post" onsubmit="return deletePosts()">
								<td align="center"><%= virtualNum %></td>
								<td align="center"><%= dto.getId()%></td>
								<td align="center"><%= dto.getContent()%></td>
								<td align="center"><%= dto.getPostdate()%></td>
								<td align="center">
									<input type="hidden" name="num" value="<%= dto.getNum() %>">
									<button type="button">수정</button>
									<button type="submit">삭제</button>
								</td>
								</form>
							</tr>
							<%
									}
								}
							%>
						</table>

                  </div>
            </div>
        
            <div class="modal">
        
                <div class="modal-content1">
                    <span class="close">&times;</span>
                    <div class="modal-title">
                        <h2>2. CIVILIZATION6</h2>
                    </div> 
                    <form action="WriteProcess.jsp?gname=CIVILIZATION6" name="writeFrm" method="post" onsubmit="return validateForm(this)">
                    <%
	                    MessageBoardDAO dao2 = new MessageBoardDAO(application);	
	                	
	                	int totalCount2 = dao2.selectCount("CIVILIZATION6");
                       	List<MessageBoardDTO> boardLists2 = dao2.selectList("CIVILIZATION6");
                   		dao2.close(); 
               		%>
						<table  width="100%">
							<tr>
								<td width="80%">
									<textarea name="content" style="width:100%; height:50px;"></textarea>
								</td>
								<td align="center" width="20%">
									<button type="submit">작성 완료</button>
								</td>
							</tr>
						</table>
					</form>
						<table border="1" width="100%">
							<tr>
								<th width="10%">번호</th>
								<th width="15%">아이디</th>
								<th width="50%">내용</th>
								<th width="15%">작성일</th>
								<th width="10%"></th>
							</tr>
							<%
								if(boardLists2.isEmpty()){
							%>
							<tr>
								<td colspan="4" align="center">등록된 댓글이 없습니다.</td>
							</tr>
							<%
								}else{
									int virtualNum=0;
									
									for(MessageBoardDTO dto : boardLists2){
										virtualNum = totalCount2--;
							%>
							<tr>
								<form name="viewfrm" action="../board/DeleteProcess.jsp?num=<%= dto.getNum() %>" method="post" onsubmit="return deletePosts()">
								<td align="center"><%= virtualNum %></td>
								<td align="center"><%= dto.getId()%></td>
								<td align="center"><%= dto.getContent()%></td>
								<td align="center"><%= dto.getPostdate()%></td>
								<td align="center">
									<input type="hidden" name="num" value="<%= dto.getNum() %>">
									<button type="button">수정</button>
									<button type="submit">삭제</button>
								</td>
								</form>
							</tr>
							<%
									}
								}
							%>
						</table>
                </div>
            </div>

            <div class="modal">
        
                <div class="modal-content1">
                    <span class="close">&times;</span>
                    <div class="modal-title">
                        <h2>3. DEAD BY DAYLIGHT</h2>
                    </div> 
                    <form action="WriteProcess.jsp?gname=DEAD BY DAYLIGHT" name="writeFrm" method="post" onsubmit="return validateForm(this)">
                    <%
	                    MessageBoardDAO dao3 = new MessageBoardDAO(application);	
	                	
	                	int totalCount3 = dao3.selectCount("DEAD BY DAYLIGHT");
                       	List<MessageBoardDTO> boardLists3 = dao3.selectList("DEAD BY DAYLIGHT");
                   		dao3.close(); 
               		%>
						<table  width="100%">
							<tr>
								<td width="80%">
									<textarea name="content" style="width:100%; height:50px;"></textarea>
								</td>
								<td align="center" width="20%">
									<button type="submit">작성 완료</button>
								</td>
							</tr>
						</table>
					</form>
						<table border="1" width="100%">
							<tr>
								<th width="10%">번호</th>
								<th width="15%">아이디</th>
								<th width="50%">내용</th>
								<th width="15%">작성일</th>
								<th width="10%"></th>
							</tr>
							<%
								if(boardLists3.isEmpty()){
							%>
							<tr>
								<td colspan="4" align="center">등록된 댓글이 없습니다.</td>
							</tr>
							<%
								}else{
									int virtualNum=0;
									
									for(MessageBoardDTO dto : boardLists3){
										virtualNum = totalCount3--;
							%>
							<tr>
								<form name="viewfrm" action="../board/DeleteProcess.jsp?num=<%= dto.getNum() %>" method="post" onsubmit="return deletePosts()">
								<td align="center"><%= virtualNum %></td>
								<td align="center"><%= dto.getId()%></td>
								<td align="center"><%= dto.getContent()%></td>
								<td align="center"><%= dto.getPostdate()%></td>
								<td align="center">
									<input type="hidden" name="num" value="<%= dto.getNum() %>">
									<button type="button">수정</button>
									<button type="submit">삭제</button>
								</td>
								</form>
							</tr>
							<%
									}
								}
							%>
						</table>
                </div>
            </div>

            <div class="modal">
        
                <div class="modal-content1">
                    <span class="close">&times;</span>
                    <div class="modal-title">
                        <h2>4. SEKIRO</h2>
                    </div> 
                    <form action="WriteProcess.jsp?gname=SEKIRO" name="writeFrm" method="post" onsubmit="return validateForm(this)">
                    <%
	                    MessageBoardDAO dao4 = new MessageBoardDAO(application);	
	                	
	                	int totalCount4 = dao4.selectCount("SEKIRO");
                       	List<MessageBoardDTO> boardLists4 = dao4.selectList("SEKIRO");
                   		dao4.close(); 
               		%>
						<table  width="100%">
							<tr>
								<td width="80%">
									<textarea name="content" style="width:100%; height:50px;"></textarea>
								</td>
								<td align="center" width="20%">
									<button type="submit">작성 완료</button>
								</td>
							</tr>
						</table>
					</form>
						<table border="1" width="100%">
							<tr>
								<th width="10%">번호</th>
								<th width="15%">아이디</th>
								<th width="50%">내용</th>
								<th width="15%">작성일</th>
								<th width="10%"></th>
							</tr>
							<%
								if(boardLists4.isEmpty()){
							%>
							<tr>
								<td colspan="4" align="center">등록된 댓글이 없습니다.</td>
							</tr>
							<%
								}else{
									int virtualNum=0;
									
									for(MessageBoardDTO dto : boardLists4){
										virtualNum = totalCount4--;
							%>
							<tr>
								<form name="viewfrm" action="../board/DeleteProcess.jsp?num=<%= dto.getNum() %>" method="post" onsubmit="return deletePosts()">
								<td align="center"><%= virtualNum %></td>
								<td align="center"><%= dto.getId()%></td>
								<td align="center"><%= dto.getContent()%></td>
								<td align="center"><%= dto.getPostdate()%></td>
								<td align="center">
									<input type="hidden" name="num" value="<%= dto.getNum() %>">
									<button type="button">수정</button>
									<button type="submit">삭제</button>
								</td>
								</form>
							</tr>
							<%
									}
								}
							%>
						</table>
                </div>
            </div>

            <div class="modal">
        
                <div class="modal-content1">
                    <span class="close">&times;</span>
                    <div class="modal-title">
                        <h2>5. ELDENRING</h2>
                    </div> 
                    <form action="WriteProcess.jsp?gname=ELDENRING" name="writeFrm" method="post" onsubmit="return validateForm(this)">
                    <%
	                    MessageBoardDAO dao5 = new MessageBoardDAO(application);	
	                	
	                	int totalCount5 = dao5.selectCount("ELDENRING");
                       	List<MessageBoardDTO> boardLists5 = dao5.selectList("ELDENRING");
                   		dao5.close(); 
               		%>
						<table  width="100%">
							<tr>
								<td width="80%">
									<textarea name="content" style="width:100%; height:50px;"></textarea>
								</td>
								<td align="center" width="20%">
									<button type="submit">작성 완료</button>
								</td>
							</tr>
						</table>
					</form>
						<table border="1" width="100%">
							<tr>
								<th width="10%">번호</th>
								<th width="15%">아이디</th>
								<th width="50%">내용</th>
								<th width="15%">작성일</th>
								<th width="10%"></th>
							</tr>
							<%
								if(boardLists5.isEmpty()){
							%>
							<tr>
								<td colspan="4" align="center">등록된 댓글이 없습니다.</td>
							</tr>
							<%
								}else{
									int virtualNum=0;
									
									for(MessageBoardDTO dto : boardLists5){
										virtualNum = totalCount5--;
							%>
							<tr>
								<form name="viewfrm" action="../board/DeleteProcess.jsp?num=<%= dto.getNum() %>" method="post" onsubmit="return deletePosts()">
								<td align="center"><%= virtualNum %></td>
								<td align="center"><%= dto.getId()%></td>
								<td align="center"><%= dto.getContent()%></td>
								<td align="center"><%= dto.getPostdate()%></td>
								<td align="center">
									<input type="hidden" name="num" value="<%= dto.getNum() %>">
									<button type="button">수정</button>
									<button type="submit">삭제</button>
								</td>
								</form>
							</tr>
							<%
									}
								}
							%>
						</table>
                </div>
            </div>

            <div class="modal">

                <div class="modal-content1">
                    <span class="close">&times;</span>
                    <div class="modal-title">
                        <h2>6. MONSTERHUNTER RISE</h2>
                    </div> 
                    <form action="WriteProcess.jsp?gname=MONSTERHUNTER RISE" name="writeFrm" method="post" onsubmit="return validateForm(this)">
                    <%
	                    MessageBoardDAO dao6 = new MessageBoardDAO(application);	
	                	
	                	int totalCount6 = dao6.selectCount("MONSTERHUNTER RISE");
                       	List<MessageBoardDTO> boardLists6 = dao6.selectList("MONSTERHUNTER RISE");
                   		dao6.close(); 
               		%>
						<table  width="100%">
							<tr>
								<td width="80%">
									<textarea name="content" style="width:100%; height:50px;"></textarea>
								</td>
								<td align="center" width="20%">
									<button type="submit">작성 완료</button>
								</td>
							</tr>
						</table>
					</form>
						<table border="1" width="100%">
							<tr>
								<th width="10%">번호</th>
								<th width="15%">아이디</th>
								<th width="50%">내용</th>
								<th width="15%">작성일</th>
								<th width="10%"></th>
							</tr>
							<%
								if(boardLists6.isEmpty()){
							%>
							<tr>
								<td colspan="4" align="center">등록된 댓글이 없습니다.</td>
							</tr>
							<%
								}else{
									int virtualNum=0;
									
									for(MessageBoardDTO dto : boardLists6){
										virtualNum = totalCount6--;
							%>
							<tr>
								<form name="viewfrm" action="../board/DeleteProcess.jsp?num=<%= dto.getNum() %>" method="post" onsubmit="return deletePosts()">
								<td align="center"><%= virtualNum %></td>
								<td align="center"><%= dto.getId()%></td>
								<td align="center"><%= dto.getContent()%></td>
								<td align="center"><%= dto.getPostdate()%></td>
								<td align="center">
									<input type="hidden" name="num" value="<%= dto.getNum() %>">
									<button type="button">수정</button>
									<button type="submit">삭제</button>
								</td>
								</form>
							</tr>
							<%
									}
								}
							%>
						</table>
                </div>
            </div>

            <div class="modal">

                <div class="modal-content1">
                    <span class="close">&times;</span>
                    <div class="modal-title">
                        <h2>7. GTA5</h2>
                    </div> 
                    <form action="WriteProcess.jsp?gname=GTA5" name="writeFrm" method="post" onsubmit="return validateForm(this)">
                    <%
	                    MessageBoardDAO dao7 = new MessageBoardDAO(application);	
	                	
	                	int totalCount7 = dao7.selectCount("GTA5");
                       	List<MessageBoardDTO> boardLists7 = dao7.selectList("GTA5");
                   		dao7.close(); 
               		%>
						<table  width="100%">
							<tr>
								<td width="80%">
									<textarea name="content" style="width:100%; height:50px;"></textarea>
								</td>
								<td align="center" width="20%">
									<button type="submit">작성 완료</button>
								</td>
							</tr>
						</table>
					</form>
						<table border="1" width="100%">
							<tr>
								<th width="10%">번호</th>
								<th width="15%">아이디</th>
								<th width="50%">내용</th>
								<th width="15%">작성일</th>
								<th width="10%"></th>
							</tr>
							<%
								if(boardLists7.isEmpty()){
							%>
							<tr>
								<td colspan="4" align="center">등록된 댓글이 없습니다.</td>
							</tr>
							<%
								}else{
									int virtualNum=0;
									
									for(MessageBoardDTO dto : boardLists7){
										virtualNum = totalCount7--;
							%>
							<tr>
								<form name="viewfrm" action="../board/DeleteProcess.jsp?num=<%= dto.getNum() %>" method="post" onsubmit="return deletePosts()">
								<td align="center"><%= virtualNum %></td>
								<td align="center"><%= dto.getId()%></td>
								<td align="center"><%= dto.getContent()%></td>
								<td align="center"><%= dto.getPostdate()%></td>
								<td align="center">
									<input type="hidden" name="num" value="<%= dto.getNum() %>">
									<button type="button">수정</button>
									<button type="submit">삭제</button>
								</td>
								</form>
							</tr>
							<%
									}
								}
							%>
						</table>
                </div>
            </div>

            <div class="modal">

                <div class="modal-content1">
                    <span class="close">&times;</span>
                    <div class="modal-title">
                        <h2>8. TEAM FORTRESS2</h2>
                    </div> 
                    <form action="WriteProcess.jsp?gname=TEAM FORTRESS2" name="writeFrm" method="post" onsubmit="return validateForm(this)">
                    <%
	                    MessageBoardDAO dao8 = new MessageBoardDAO(application);	
	                	
	                	int totalCount8 = dao8.selectCount("TEAM FORTRESS2");
                       	List<MessageBoardDTO> boardLists8 = dao8.selectList("TEAM FORTRESS2");
                   		dao8.close(); 
               		%>
						<table  width="100%">
							<tr>
								<td width="80%">
									<textarea name="content" style="width:100%; height:50px;"></textarea>
								</td>
								<td align="center" width="20%">
									<button type="submit">작성 완료</button>
								</td>
							</tr>
						</table>
					</form>
						<table border="1" width="90%">
							<tr>
								<th width="10%">번호</th>
								<th width="15%">아이디</th>
								<th width="50%">내용</th>
								<th width="15%">작성일</th>
								<th width="10%"></th>
							</tr>
							<%
								if(boardLists8.isEmpty()){
							%>
							<tr>
								<td colspan="4" align="center">등록된 댓글이 없습니다.</td>
							</tr>
							<%
								}else{
									int virtualNum=0;
									
									for(MessageBoardDTO dto : boardLists8){
										virtualNum = totalCount8--;
							%>
							<tr>
								<form name="viewfrm" action="../board/DeleteProcess.jsp?num=<%= dto.getNum() %>" method="post" onsubmit="return deletePosts()">
								<td align="center"><%= virtualNum %></td>
								<td align="center"><%= dto.getId()%></td>
								<td align="center"><%= dto.getContent()%></td>
								<td align="center"><%= dto.getPostdate()%></td>
								<td align="center">
									<input type="hidden" name="num" value="<%= dto.getNum() %>">
									<button type="button">수정</button>
									<button type="submit">삭제</button>
								</td>
								</form>
							</tr>
							<%
									}
								}
							%>
						</table>
                </div>
            </div>
    </div>
  </div> 
</div> <!-- warp-->
  <script src="../resource/js/boardScript.js"></script>
</body>
</html>