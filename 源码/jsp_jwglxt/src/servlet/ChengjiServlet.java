package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.InsertUpdateDelBean;

public class ChengjiServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ChengjiServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String mark = request.getParameter("mark");
		String id = request.getParameter("id");
		String xuesheng = request.getParameter("xuesheng");
		String kemu = request.getParameter("kemu");
		String shijian = request.getParameter("shijian");
		String fenshu = request.getParameter("fenshu");
		
		String str = "";
		String sql = "";
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		
		if(mark != null && mark.equals("add")){
			str = "/jiaoshi/chengji_list.jsp";
			sql = "insert into chengji(xuesheng,kemu,shijian,fenshu) values('"+xuesheng+"','"+kemu+"','"+shijian+"','"+fenshu+"')";
			ib.insertANDupdateANDdel(sql);
			request.setAttribute("message", "操作成功！");
		}
		if(mark != null && mark.equals("update")){
			str = "/jiaoshi/chengji_list.jsp";
			sql = "update chengji set xuesheng='"+xuesheng+"',kemu='"+kemu+"',shijian='"+shijian+"',fenshu='"+fenshu+"' where id="+id;
			ib.insertANDupdateANDdel(sql);
			request.setAttribute("message", "操作成功！");
		}
		
		RequestDispatcher rd=request.getRequestDispatcher(str);
        rd.forward(request,response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
