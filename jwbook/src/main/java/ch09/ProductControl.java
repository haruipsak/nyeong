package ch09;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

/**
 * Servlet implementation class ProductController
 */
@WebServlet(name = "ProductControl", urlPatterns = { "/ProductControl" })
public class ProductControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	ProductDAO dao;
   
    public ProductControl() {
        super();
 
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		dao = new ProductDAO();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	      String action = request.getParameter("action");
	      String view = "";
	      
	      if(action == null) {
	    	  getServletContext().getRequestDispatcher("/ProductControl?action=list")
	            .forward(request, response);
	      } else {
	         switch(action) {
	            case "list": view = list(request, response); break;
	            case "insert": view = insert(request, response); break;
	         }
	         getServletContext().getRequestDispatcher("/ch09/"+view)
	            .forward(request, response);
	      }
	   }

	private String insert(HttpServletRequest request, HttpServletResponse response) {
		Product p = new Product();
	      try {
	         BeanUtils.populate(p, request.getParameterMap());

	      } catch (Exception e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      dao.insert(p);
	      return list(request, response);
	}

	private String list(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("products", dao.getAll());
	      return "productInfo.jsp";
	}

	      
	      
	}
