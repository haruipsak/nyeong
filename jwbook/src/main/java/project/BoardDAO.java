package project;

import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO {
	private Connection conn;//데이터베이스에 접근하게 해주는 하나의 객체
	private ResultSet rs;
	
	public int getNum(int a) {
		return a;
	};
	
	public BoardDAO() {
			try {//예외처리
			String dbURL = "jdbc:h2:tcp://localhost/~/pt";
			Class.forName("org.h2.Driver");//드라이버를 찾는다.
			//드라이버 접속할 수 있도록 매개체 역할을 하는 하나의 라이브러리
			conn=DriverManager.getConnection(dbURL);
		   }catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 목록 전체를 가지고 오기위한  메서드
	public ArrayList<BoardDTO> getAll() {
		ArrayList<BoardDTO> board = new ArrayList<>();
		
		String sql = "select num, name, subject,content, TO_CHAR(date, 'yyyy-MM-dd hh:mm:ss') as cdate";
		sql += " from board";
		
		PreparedStatement pstmt;
		try {
		pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
		while(rs.next()) {
            BoardDTO b = new BoardDTO();
           b.setNum(rs.getInt(1));
           b.setName(rs.getString(2));
           b.setSubject(rs.getString(3));
           b.setContent(rs.getString(4));
           b.setDate(rs.getString(5));
           	
           board.add(b);//list에 해당 인스턴스를 담는다.
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}return board;
	
	} 

	//입력
	public ArrayList<BoardDTO> setAll(int num, String name, String subject, String content, String date) throws MalformedURLException {
		ArrayList<BoardDTO> board = new ArrayList<>();
		
		
		String sql = "insert into board values(num, name, subject, content ";
		sql += ", SYSTIMESTAMP";
		num += 1;
		
		PreparedStatement pstmt;
		try {
		pstmt = conn.prepareStatement(sql);
		while(rs.next()) {
            BoardDTO b = new BoardDTO();
            
           b.setNum(num);
           b.setName(name);
           b.setSubject(subject);
           b.setContent(content);
           b.setDate(date);

		} 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return board;
	
	} 
	
	
	
}
