<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="project.QuestionDAO" %>
<%@ page import="project.QuestionDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
    <%@page import="java.text.SimpleDateFormat" %>
<%
  
	request.setCharacterEncoding("UTF-8");
	int num;

	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	Date date = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	String today = sf.format(date);

	// 1. 드라이버 로드
	Class.forName("org.h2.Driver");
	// 변수선언

	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "insert into question values(?, ?, ?, ?, ?)";
	
	try{
		String jdbcDriver = "jdbc:h2:tcp://localhost/~/pt";
	    conn = DriverManager.getConnection(jdbcDriver);

		QuestionDAO question = new QuestionDAO();
		  ArrayList<QuestionDTO> list = question.getAll();
		  int hmmm_num = 0;
		for (int i = 0; i < list.size(); i++) {
			hmmm_num = list.get(i).getNum();
		}
		hmmm_num += 1;

	    
	    
	    
		// 3. pstmt 생성
	  pstmt = conn.prepareStatement(sql);
	    pstmt.setInt(1, hmmm_num);
	    pstmt.setString(2, name);
	    pstmt.setString(3, subject);
	    pstmt.setString(4, content);
	    pstmt.setString(5, today);
	    
		// 4. sql문 실행
		int result = pstmt.executeUpdate();
		
		if(result == 1){ // 성공
			 out.println("<script>");
			 out.println("alert('등록되었습니다.');");
			 out.println("</script>");
			response.sendRedirect("question-list.jsp");
		} else{ // 실패
		    out.println("<script>");
		    out.println("alert('등록에 실패했습니다.');");
		    out.println("</script>");
			response.sendRedirect("question-list.jsp");
		}
		
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>