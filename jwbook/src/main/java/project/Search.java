package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Search {
	private Connection conn;//데이터베이스에 접근하게 해주는 하나의 객체
	private ResultSet rs;
	
	public Search() {
			try {//예외처리
			String dbURL = "jdbc:h2:tcp://localhost/~/pt";
			Class.forName("org.h2.Driver");//드라이버를 찾는다.
			//드라이버 접속할 수 있도록 매개체 역할을 하는 하나의 라이브러리
			conn=DriverManager.getConnection(dbURL);
		   }catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Cat> getSearch(String searchText){//특정한 리스트를 받아서 반환
		System.out.println(searchText);
		
	      ArrayList<Cat> list = new ArrayList<Cat>();
	   
	      String SQL = "select * from nyeong WHERE catfoodname";

	          if (searchText != null && !searchText.equals("")) {
	              SQL += " LIKE '%" + searchText.trim() + "%'";
	              System.out.println(SQL);
	      } else {
	          // searchField가 null이면 WHERE 구문을 제거하고 전체 데이터 받아오기
	          SQL += "";
	      }
	      
	      try {  
	    	    PreparedStatement pstmt=conn.prepareStatement(SQL);
				rs=pstmt.executeQuery();//select
	         while(rs.next()) {
	            Cat cat = new Cat();
	            cat.setCatfoodname(rs.getString(1));
	            cat.setGrainfree(rs.getInt(2));
	            cat.setFirst(rs.getString(3));
	            cat.setCarbo(rs.getDouble(4));
	            cat.setProtein(rs.getDouble(5));
	            cat.setFat(rs.getDouble(6));
	            cat.setFiber(rs.getDouble(7));
	            cat.setCa(rs.getDouble(8));
	            cat.setP(rs.getDouble(9));
	            cat.setGrade(rs.getInt(10));
	            
	            list.add(cat);//list에 해당 인스턴스를 담는다.
	         }         
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return list;//게시글 리스트 반환
	   }
	
}