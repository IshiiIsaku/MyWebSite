package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.UserBeans;
import dao.UserDao;


@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());

		// フォワード！！
		 		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Login.jsp");
		 		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);

		 // リクエストパラメータの文字コードを指定
        request.setCharacterEncoding("UTF-8");

     // リクエストパラメータの入力項目を取得
     		String loginId = request.getParameter("loginId");
     		String password = request.getParameter("password");

     	// リクエストパラメータの入力項目を引数に渡して、Daoのメソッドを実行
    		UserDao userDao = new UserDao();
    		UserBeans userInfo = userDao.findByLoginInfo(loginId,password);


    		/** テーブルに該当のデータが見つからなかった場合 **/
    		if (userInfo == null) {
    			// リクエストスコープにエラーメッセージをセット
    			request.setAttribute("errMsg", "ログインIDまたはパスワードが異なります");


     	// ログインjspにフォワード
     				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Login.jsp");
     				dispatcher.forward(request, response);
     				return;

    		}

		/** テーブルに該当のデータが見つかった場合 **/
		// セッションにユーザの情報をセット
		HttpSession session = request.getSession();
		session.setAttribute("userInfo", userInfo);

		// 商品のサーブレットにリダイレクト
		response.sendRedirect("Item");

	}

}
