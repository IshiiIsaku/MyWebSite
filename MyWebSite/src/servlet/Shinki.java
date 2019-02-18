package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao1;



@WebServlet("/Shinki")
public class Shinki extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public Shinki() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Shinki.jsp");
		dispatcher.forward(request,response);
		return;

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
    			request.setAttribute("erMsg", "入力された内容は正しくありません");


    			// ユーザ新規登録jspにフォワード
 				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Shinki.jsp");
 				dispatcher.forward(request, response);
 				return;
    		}

    		/** 入力項目に1つでも未記入のものがある場合 **/
    		 if(loginId == null|| loginId.length() == 0||
    		    password == null || password.length() == 0||
    		    password1 == null || password1.length() == 0||
    		    name == null || name.length() == 0||
    		    address == null || address.length() == 0){


    			 //入力された内容をセット
    			 request.setAttribute("loginId", loginId);
    			 request.setAttribute("name", name);
    			 request.setAttribute("address", address);

    			 // リクエストスコープにエラーメッセージをセット

        			request.setAttribute("erMsg", "入力された内容は正しくありません");
        			// ユーザ新規登録jspにフォワード
     				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Shinki.jsp");
     				dispatcher.forward(request, response);
     				return;

    		 }
    		 /** 既に登録されているログインIDが入力された場合 **/


    		// リクエストパラメータの入力項目を引数に渡して、Daoのメソッドを実行
     		UserDao1 userDao = new UserDao1();
     		try {
     			userDao.shinki(loginId, password, name, address);
     		} catch(SQLException e) {

     			//入力された内容をセット
     		 request.setAttribute("loginId", loginId);
   			 request.setAttribute("name", name);
   			 request.setAttribute("address",address);


     			// リクエストスコープにエラーメッセージをセット
    			request.setAttribute("erMsg", "入力された内容は正しくありません");
    			// ユーザ新規登録jspにフォワード


 				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Shinki.jsp");
 				dispatcher.forward(request, response);
 				return;
     		}


    		// サーブレットにリダイレクト
    		response.sendRedirect("Item");

    		}


	}


