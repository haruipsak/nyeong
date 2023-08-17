<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Data Sorting Example</title>
</head>
<body>
    <h1>Data Sorting Example</h1>

    <%-- JSP 페이지에서 데이터베이스 연결 및 정렬 수행 --%>
    <%
        // JDBC 연결 정보
        String driver = "org.h2.Driver";
        String url = "jdbc:h2:~/pt";

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // JDBC 드라이버 로드
            Class.forName(driver);

            // 데이터베이스 연결
            conn = DriverManager.getConnection(url);
            stmt = conn.createStatement();

            // 클라이언트에서 전달한 열 이름을 파라미터로 받음
            String sortColumn = request.getParameter("sort");

            // 정렬 쿼리 실행 (동적으로 열 이름을 추가)
            String query = "SELECT * FROM nyeong ORDER BY " + sortColumn;
            rs = stmt.executeQuery(query);

        	
            // 결과 출력
            out.println("<table>");
            out.println("<tr><th>사료명</th><th>주성분</th><th>탄수화물</th><th>단백질</th><th>지방</th><th>조섬유</th><th>조회분</th><th>인</th><th>냥바냥 등급</th></tr>");
            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getString("catfoodname") + "</td>");
                out.println("<td>" + (rs.getString("grainfree").equals("1") ? "○" : "X") + "</td>");
                out.println("<td>" + rs.getString("first") + "</td>");
                out.println("<td>" + rs.getDouble("carbo") + "</td>");
                out.println("<td>" + rs.getDouble("protein") + "</td>");
                out.println("<td>" + rs.getDouble("fat") + "</td>");
                out.println("<td>" + rs.getDouble("ca") + "</td>");
                out.println("<td>" + rs.getDouble("p") + "</td>");
                out.println("<td>" + rs.getInt("grade") + "</td>");
                out.println("</tr>");
            }
            out.println("</table>");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 리소스 해제
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        }
    %>
</body>
</html>






