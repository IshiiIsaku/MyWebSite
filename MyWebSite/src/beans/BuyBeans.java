package beans;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BuyBeans {
	private int id;
	private int userId;
	private int buyId;
	private int itemId;
	private int number;
	private int totalPrice;
	private Date buyDate;


	public BuyBeans(int i, int j, Date date, int k, int l, int m, String string) {

	}
	public BuyBeans() {

	}

	public BuyBeans(BuyBeans data) {

	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}

	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}


	public String getFormatDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分");
		return sdf.format(buyDate);
	}


	public void add() {


	}

	public int getBuyId() {
		return buyId;
	}
	public void setBuyId(int buyId) {
		this.buyId = buyId;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	private String name;
	private int price;


	public String getName() {
		return name;
	}
	public void setName(String itemName) {
		this.name = itemName;
	}


	public int getPrice() {
		return price;
	}
	public void setPrice(int itemPrice) {
		this.price = itemPrice;
	}


}






