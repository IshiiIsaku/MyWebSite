package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UserBeans;
import dao.UserDao;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public Delete() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String loginId = request.getParameter("id");

		// loginIdを引数にして、loginIdに紐づくユーザ情報を出力する
		UserDao userDao = new UserDao();
		UserBeans user = userDao.shousai(loginId);


		// リクエストスコープにユーザ一覧情報をセット
		request.setAttribute("user", user);

			// ユーザ削除確認のjspにフォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Delete.jsp");
		dispatcher.forward(request, response);


	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//doGet(request, response);
		request.setCharacterEncoding("UTF-8");

		String loginId = request.getParameter("loginId");

		UserDao userDao =new UserDao();
		userDao.sakujo(loginId);

		response.sendRedirect("Item");
	}

}
