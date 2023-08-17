package ch11;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ListenerTEst
 */
@WebServlet("/ListenerTEst")
public class ListenerTEst extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	ServletContext sc;
   
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		sc = getServletContext();
	}
	
	
    public ListenerTEst() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		sc.setAttribute("name", "유아로");
		HttpSession s = request.getSession();
		s.setAttribute("ssName", s.getId()+":세션 속성 저장");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
