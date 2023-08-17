package ch10;

import java.io.IOException;
import java.lang.reflect.Method;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

/**
 *  컨트롤로 기능:  사용자 요청을 받아 모델 과 연동하고 처리된 결과를
 *              뷰로 전달하는 역할을 수행하는 중요한 부분이다.
 */
@WebServlet("/news.nhn")
@MultipartConfig(maxFileSize=1024*1024*2, location="c:/Temp/img")
public class NewsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private NewsDAO dao;
	private ServletContext ctx;
	
	// 웹 리소스 기본 경로 지정
	private final String START_PAGE = "ch10/newsList.jsp";
	
	
	
    public NewsController() {
        super();
    }


	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		dao = new NewsDAO();
		ctx = getServletContext();
	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.setCharacterEncoding("utf-8");
		String action = request.getParameter("action");

		//dao = new NewsDAO();
		//자바 리플렉션을 사용해 if(switch) 없이 요청에 따라 구현 메서드가 실행되도록 구성
		//리플렉션 API : 자바 클래스 구조를 직접 제어가능한 라이브러리
		//          구체적인 클래스 타입을 모르더라도 [문자열] 이름으로 [클래스를 참조]하거나
		//          클래스의 메서드나 변수를 읽어와 [실행]하는 등의 작업이 가능하다.
		Method m;
		String view = null;
		
		// action 파라미터 없이 접근한 경우
		if(action == null) {
			action = "listNews";
		}
		
		// 현재 클래스에서 action 이름과 HttpServletRequest를 파라미터로 하는 메서드 찾음
		
		try {
			
			m = this.getClass().getMethod(action, HttpServletRequest.class);
		
			// 메서드 실행 후 리턴값을 받아옴
			view = (String)m.invoke(this, request);
			
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
			// 에러 로그를 남기고 view를 시작/로그인 화면으로 지정, redirection 사용도 가능
			ctx.log("###### 요청 action없음!! ######");
			request.setAttribute("error", "action 파라미터가 잘못되었습니다!!");
			view = START_PAGE;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// POST 요청 처리후에는 리디렉션 방법으로 이동하게  분기 처리
		if(view.startsWith("redirect:/")) {
			//redirect/  문자열 이후 경로만 가지고 옴
			String rView = view.substring("redirect:/".length());
			response.sendRedirect(rView);
		} else {
			// 지정된 뷰로 포워딩
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
		
	}

	public String addNews(HttpServletRequest request) {
		News n = new News();
		
		try {
			Part part = request.getPart("file");
			String fileName = getFilename(part);
			if(fileName != null && !fileName.isEmpty()) {
				part.write(fileName);
			}
			//입력값을 News 객체로 매핑
			BeanUtils.populate(n, request.getParameterMap());

			//이미지 파일 이름을 News 객체에 저장
			n.setImg("/img/"+ fileName);
			
			dao.addNews(n);
		} catch (Exception e) {
			e.printStackTrace();
			
			ctx.log("뉴스 추가 과정에서 문제 발생!!");
			request.setAttribute("error", "뉴스가 정상적으로 등록되지 않았습니다!!");
			return listNews(request);
		}
		
		return "redirect:/news.nhn?action=listNews";
	}
	
	public String deleteNews(HttpServletRequest request) {
		int aid = Integer.parseInt(request.getParameter("aid"));
		
		try {
			dao.delNews(aid);
		} catch (SQLException e) {
			e.printStackTrace();
			ctx.log("뉴스 삭제 과정에서 문제 발생!!");
			request.setAttribute("error", "뉴스가 정상적으로 삭제되지 않았습니다!!");
			return listNews(request);
		}
		
		return "redirect:/news.nhn?action=listNews";
	}


	public String listNews(HttpServletRequest request) {
		List<News> list;
		
		try {
			list = dao.getAll();
			request.setAttribute("newslist", list);
			
		} catch (Exception e) {
			e.printStackTrace();
			ctx.log("뉴스 목록 생성 과정에서 문제 발생!!");
			request.setAttribute("error", "뉴스가 정상적으로 처리되지 않았습니다");
		}
		
		return "ch10/newsList.jsp";
	}
	
	public String getNews(HttpServletRequest request) {
		int aid = Integer.parseInt(request.getParameter("aid"));
		
		News n;
		
		try {
			n = dao.getNews(aid);
			request.setAttribute("news", n);
		} catch (SQLException e) {
			e.printStackTrace();
			ctx.log("뉴스를 가져오는 과정에서 문제 발생!!");
			request.setAttribute("error", "뉴스를 정상적으로 가져오지 못했습니다!!");
		}	
		
		return "ch10/newsView.jsp";
	}
	
	//multipart  헤더에서 파일이름 추출
	private String getFilename(Part part) {
		String fileName = null;
		String header = part.getHeader("content-disposition");
		//part.getHeader-> form-data; name="img"; filename="뉴스사진1.jpg"
		System.out.println("Header => " + header);
		
		//파일 이름이 들어있는 속성부분의 시작위치를 가져와 큰따옴표 사이의 값부분만 가지고 옴
		int start = header.indexOf("filename=");
		fileName = header.substring(start+10, header.length()-1);
		ctx.log("파일명: " + fileName);
		return fileName;
	}	
	
}
