package ch09;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
	   Connection conn = null;
	   PreparedStatement pstmt;
	   
	   final String JDBC_DRIVER = "org.h2.Driver";
	 //final String JDBC_URL = "jdbc:h2:tcp://localhost/~/jwbook.db";
	   final String JDBC_URL = "jdbc:h2:tcp://localhost/~/jwbook.db";
	   
	   public void open() {
	      
	      try {
	         //1. JDBC드라이버 로드
	         Class.forName(JDBC_DRIVER);
	         //2. 데이터베이스 연결
	         conn = DriverManager.getConnection(JDBC_URL, "jwbook", "1234");
	      } catch (Exception e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }   
	   }
	   
	   public void close() {
	      try {
	         pstmt.close();
	         conn.close();
	      } catch (Exception e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      
	   }
	   
	   public void insert(Product p) {
		   open();
		   String sql= "INSERT INTO product(itemname, marker, price, regdate) values(?,?,?,?)";
		   
		   try {
			   pstmt = conn.prepareStatement(sql);
			   pstmt.setString(1, p.getItemname());
			   pstmt.setString(2, p.getMarker());
			   pstmt.setInt(3, p.getPrice());
			   pstmt.setDate(4, p.getRegdate());
			   
			   pstmt.executeUpdate();
		   } catch (Exception e) {
			   e.printStackTrace();
		      } finally {
		         close();
		      }
		   }
	   public List<Product> getAll(){
		   open();
		   List<Product> products = new ArrayList<>();
		   try {
		         //3. prepareStatement 생성
		         pstmt = conn.prepareStatement("select * from product");
		         //4. sql문 전송
		         ResultSet rs = pstmt.executeQuery();
		         //5. 결과값 처리
		   while(rs.next()) {
			   Product p = new Product();
			   p.setId(rs.getInt("id"));
			   p.setItemname(rs.getString("itemname"));
			   p.setMarker(rs.getString("marker"));
			   p.setPrice(rs.getInt("price"));
			   p.setRegdate(rs.getDate("regdate"));
			   
			   products.add(p);
		   }

		  
	   }catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         close();
	      }
		   return products;
	   }
	   
}

