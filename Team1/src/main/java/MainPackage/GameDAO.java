package MainPackage;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import TeamDB.JDBConnect;

public class GameDAO extends JDBConnect{
	
	public GameDAO(ServletContext application) {
		super(application);
	}
	
	// 인기상품 슬라이드
	public GameDTO slideGame(int num) {
		GameDTO dto = new GameDTO();
		
		String query = "SELECT * FROM GAMEINFO WHERE gnum=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setInt(1, num);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setGnum(rs.getInt("gnum"));
				dto.setGname(rs.getString("gname"));
				dto.setType(rs.getString("type"));
				dto.setSal(rs.getInt("sal"));
				dto.setImg(rs.getString("img"));
				dto.setExplain(rs.getString("explain"));
				dto.setOpendate(rs.getDate("opendate"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	// 신규출시 슬라이드
	public List<GameDTO> newSlideGame() {
		List<GameDTO> bbs = new Vector<GameDTO>();
		
		String query = "SELECT * FROM GAMEINFO  WHERE opendate > TO_DATE('2021-12-31', 'YYYY-MM-DD') ORDER BY opendate DESC";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				GameDTO dto = new GameDTO();
				
				dto.setGnum(rs.getInt("gnum"));
				dto.setGname(rs.getString("gname"));
				dto.setType(rs.getString("type"));
				dto.setSal(rs.getInt("sal"));
				dto.setImg(rs.getString("img"));
				dto.setExplain(rs.getString("explain"));
				dto.setOpendate(rs.getDate("opendate"));
				
				bbs.add(dto);

			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return bbs;
	}
	
	// 신규할인 슬라이드
	public List<GameDTO> dcSlideGame() {
		List<GameDTO> bbs = new Vector<GameDTO>();
		
		String query = "SELECT * FROM GAMEINFO ORDER BY opendate ASC";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				GameDTO dto = new GameDTO();
				
				dto.setGnum(rs.getInt("gnum"));
				dto.setGname(rs.getString("gname"));
				dto.setType(rs.getString("type"));
				dto.setSal(rs.getInt("sal"));
				dto.setImg(rs.getString("img"));
				dto.setExplain(rs.getString("explain"));
				dto.setOpendate(rs.getDate("opendate"));
				
				bbs.add(dto);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return bbs;
	}
	
	//검색기능
	public List<GameDTO> gameSearch(Map<String, Object> map) {
		List<GameDTO> bbs = new Vector<GameDTO>();
		
		String query = "SELECT * FROM GAMEINFO ";
		
		if(map.get("searchWordToUpper") != null) {
			query += " WHERE gname LIKE '%" + map.get("searchWordToUpper") + "%'";
		}else if(map.get("searchWordToLower") != null) {
			query += " WHERE gname LIKE '%" + map.get("searchWordToLower") + "%'";
		}
		
		query += " ORDER BY gnum DESC";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				GameDTO dto = new GameDTO();
				
				dto.setGnum(rs.getInt("gnum"));
				dto.setGname(rs.getString("gname"));
				dto.setType(rs.getString("type"));
				dto.setSal(rs.getInt("sal"));
				dto.setImg(rs.getString("img"));
				dto.setExplain(rs.getString("explain"));
				dto.setOpendate(rs.getDate("opendate"));
				
				bbs.add(dto);

			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return bbs;
	}
}
