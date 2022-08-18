package Teammember;

import javax.servlet.ServletContext;

import TeamDB.JDBConnect;

public class MemberDAO extends JDBConnect{
	
	public MemberDAO(ServletContext application) {
		super(application);
	}
	
	//중복 확인
	public boolean checkingId(String id) {
		boolean result = false;
		
		String query = "SELECT id FROM MEMBER WHERE id=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			if(rs.next()) {
				result = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}
	
	//회원 확인
	public MemberDTO getMemberDTO(String uid, String upass) {
		MemberDTO dto = new MemberDTO();
		
		String query = "SELECT * FROM MEMBER WHERE id=? AND pass=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, upass);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString("id")); 
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setGender(rs.getString("gender"));
				dto.setJoindate(rs.getString("joindate"));
				dto.setBirth(rs.getString("birth"));
				dto.setTel(rs.getString("tel"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return dto; 
	}
	
	//회원 등록
	public int addMemberDTO(MemberDTO dto) {
		int result = 0;
		
		String query = "INSERT INTO MEMBER(id, pass, name, email, gender, birth, tel) "
				+ " VALUES(?, ?, ?, ?, ?, ?, ?)";
		
		try {
			psmt = con.prepareStatement(query);
			
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getEmail());
			psmt.setString(5, dto.getGender());
			psmt.setString(6, dto.getBirth());
			psmt.setString(7, dto.getTel());
			
			result = psmt.executeUpdate();

		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
