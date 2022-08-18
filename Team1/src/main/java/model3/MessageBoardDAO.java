package model3;

import java.util.List;
import java.util.Vector;

import javax.servlet.ServletContext;

import TeamDB.JDBConnect;

public class MessageBoardDAO extends JDBConnect{
	public MessageBoardDAO(ServletContext application) {
		super(application);
	}
	
	//댓글 개수 세기
	public int selectCount(String gname) {
		int totalCount = 0;
		
		String query = "SELECT COUNT(*) FROM BOARD WHERE gname=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, gname);
			rs= psmt.executeQuery();
			rs.next();
			totalCount = rs.getInt(1);
		}catch(Exception e) {
			System.out.println("댓글의 개수를 계산하는 중에 예외 발생");
			e.printStackTrace();
		}
		return totalCount;
	}

	//댓글 목록 반환
	public List<MessageBoardDTO> selectList(String gname){
		List<MessageBoardDTO> bbs = new Vector<MessageBoardDTO>();
		
		String query = "SELECT * FROM BOARD WHERE gname=? ORDER BY NUM DESC";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, gname);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				MessageBoardDTO dto = new MessageBoardDTO();
				
				dto.setNum(rs.getString("num"));
				dto.setGname(rs.getString("gname"));
				dto.setId(rs.getString("id"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setContent(rs.getString("content"));
				
				bbs.add(dto);
			}
		} catch(Exception e) {
			System.out.println("게시물 조회 중 예외 발생");
			e.printStackTrace();
		}
		return bbs;
		
	}
	
	//댓글 데이터를 받아 DB에 추가
	public int insertWrite(MessageBoardDTO dto) {
		int result = 0;
		
		try {
			String query = "INSERT INTO BOARD(NUM, GNAME, ID, CONTENT) VALUES(SEQ_BOARD_NUM.NEXTVAL, ?, ?, ?)";
			
			psmt = con.prepareStatement(query);
			
			psmt.setString(1, dto.getGname());
			psmt.setString(2, dto.getId());
			psmt.setString(3, dto.getContent());
			
			result = psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("댓글 입력 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
	//댓글 수정하기
	
	//댓글 삭제하기
	public int deletePost(MessageBoardDTO dto) {
		int result =0;
		
		try {
			String query = "DELETE FROM BOARD WHERE GNAME=? AND NUM=?";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getGname());
			psmt.setString(2, dto.getNum());
			
			result = psmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("댓글 삭제 중 예외 발생");
			e.printStackTrace();
		}
		
		return result;
	}
	
	//댓글 확인하기
	public MessageBoardDTO selectView(String num) {
		
		MessageBoardDTO dto = new MessageBoardDTO();
		
		String query = "SELECT * FROM BOARD WHERE NUM=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, num);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setNum(rs.getString("num"));
				dto.setId(rs.getString("id"));
				dto.setContent(rs.getString("content"));
				dto.setGname(rs.getString("gname"));
				dto.setPostdate(rs.getDate("postdate"));
			}
		}catch(Exception e) {
			System.out.println("댓글 선택 중 예외 발생");
			e.printStackTrace();
		}
		return dto;
	}

}
