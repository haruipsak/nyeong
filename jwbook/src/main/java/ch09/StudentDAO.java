package ch09;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {
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
   
   public void insert(Student s) {
      open();
      String sql = "INSERT INTO student(usename, univ, birth, email) values (?,?,?,?)";
      
      try {
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, s.getUsername());
         pstmt.setString(2, s.getUniv());
         pstmt.setDate(3, s.getBirth());
         pstmt.setString(4, s.getEmail());
         
         pstmt.executeUpdate();
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
   }
   
   public List<Student> getAll() {
      open();
      List<Student> students = new ArrayList<>();
      
      try {
         //3. prepareStatement 생성
         pstmt = conn.prepareStatement("select * from student");
         //4. sql문 전송
         ResultSet rs = pstmt.executeQuery();
         //5. 결과값 처리
         while(rs.next()) {
            Student s = new Student();
            s.setId(rs.getInt("id"));
            s.setUsername(rs.getString("usename"));
            s.setUniv(rs.getString("univ"));
            s.setBirth(rs.getDate("birth"));
            s.setEmail(rs.getString("email"));
            
            students.add(s);
         }
         
         
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
      
      return students;
   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
}