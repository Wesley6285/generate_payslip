package mysql.data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/forgotpass")
public class forgotpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con = null;
	Statement ps;

	public void init(ServletConfig config) throws ServletException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resume", "***", "***");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;

		try {

			String email = request.getParameter("f1");
			String password = request.getParameter("f2");
			ps = con.createStatement();
			int check = ps.executeUpdate("update newuser set password='" + password + "' where email='" + email + "'");
			if (check > 0) {
				session.setAttribute("visited", true);
				request.setAttribute("status", "success");
				dispatcher = request.getRequestDispatcher("login.jsp");
			} 
			dispatcher.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

