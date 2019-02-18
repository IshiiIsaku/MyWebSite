package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.ItemBeans;
import dao.ItemDao1;


@WebServlet("/Cart")
public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public Cart() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//セッションの確認
        HttpSession session = request.getSession();

        if(session.getAttribute("userInfo") == null){

 		         response.sendRedirect("Item");

 		         return;
		 }
        HttpSession session1 = request.getSession();

			ArrayList<ItemBeans> cart = (ArrayList<ItemBeans>) session1.getAttribute("cart");
			//セッションにカートがない場合カートを作成
			if (cart == null) {
				cart = new ArrayList<ItemBeans>();
				session.setAttribute("cart", cart);
			}
			String cartActionMessage = "";
			//カートに商品が入っていないなら
			if(cart.size() == 0) {
				cartActionMessage = "カートに商品がありません";
			}
			request.setAttribute("cartActionMessage", cartActionMessage);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/cart.jsp");
		dispatcher.forward(request,response);


		}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession session = request.getSession();

			int id = Integer.parseInt(request.getParameter("ItemId"));
			ItemBeans item = ItemDao1.FindByItemId(id);
			request.setAttribute("item", item);

			int g1 = Integer.parseInt(request.getParameter("g"));
			int g=g1*100;
			request.setAttribute("g", g);

			int number = Integer.parseInt(request.getParameter("number"));
			request.setAttribute("number", number);

			int totalprice= item.getPrice()*g/100*number;
			request.setAttribute("totalprice",totalprice);

			item.setG(g);
			item.setNumber(number);
			item.setTotalprice(totalprice);

			ArrayList<ItemBeans> cart = (ArrayList<ItemBeans>) session.getAttribute("cart");


			if (cart == null) {
				cart = new ArrayList<ItemBeans>();
			}

			cart.add(item);

			session.setAttribute("cart", cart);


		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/cart.jsp");
		dispatcher.forward(request,response);


		}

 }
