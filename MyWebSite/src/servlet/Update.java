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
import dao.UserDao1;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public Update() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


				//セッションの確認
		        HttpSession session = request.getSession();

		        if(session.getAttribute("userInfo") == null){

		 		         response.sendRedirect("Item");

		 		         return;
				}

			    // ユーザ情報更新のjspにフォワード
				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Update.jsp");
				dispatcher.forward(request, response);

			}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// リクエストパラメータの文字コードを指定
        request.setCharacterEncoding("UTF-8");

     // リクエストパラメータの入力項目を取得
     		String loginId = request.getParameter("loginId");
     		String password = request.getParameter("password");
     		String password1 = request.getParameter("password1");
     		String name =request.getParameter("name");
     		String address =request.getParameter("address");

     		/** 入力したパスワードが違う場合 **/
    		if (!(password.equals(password1))) {
    			// リクエストスコープにエラーメッセージをセット
    			request.setAttribute("errorMsg", "入力された内容は正しくありません");

    			 request.setAttribute("loginId",loginId);
      			 request.setAttribute("name",name);
      			 request.setAttribute("address",address);

 				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Update.jsp");
 				dispatcher.forward(request, response);
 				return;
    		}
    		/** 入力項目にパスワード以外の未記入のものがある場合 **/
      		 if(name == null || name.length() == 0||
      		    address == null || address.length() == 0){
      	         // リクエストスコープにエラーメッセージをセット
          			request.setAttribute("errorMsg", "入力された内容は正しくありません");

          			request.setAttribute("loginId", loginId);
         			request.setAttribute("userName", name);
         			request.setAttribute("address", address);


          			// ユーザ情報更新jspにフォワード
       				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Update.jsp");
       				dispatcher.forward(request, response);
       				return;

      	     }

     		UserDao1 userDao = new UserDao1();
     		userDao.koushin(loginId,name,address,password);

     		// セッションにユーザの情報をセット
    		HttpSession session = request.getSession();

    		UserBeans userBeans = new UserBeans(loginId,name,address);

    		session.setAttribute("userInfo",userBeans);


    		request.setAttribute("koushin", "更新しました。");

     		response.sendRedirect("Update");

	}

}
