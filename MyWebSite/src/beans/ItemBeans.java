package beans;

public class ItemBeans {
	private int id;
	private String name;
	private int price;
	private int totalprice;
	private int number;
	private int g;


	public ItemBeans(int itemId, String itemName, int itemPrice) {
		this.id = itemId;
		this.name = itemName;
		this.price = itemPrice;
	}
	public ItemBeans(int itemId, String itemName, int itemPrice,int totalprice,int number,int g) {
		this.id = itemId;
		this.name = itemName;
		this.price = itemPrice;
		this.totalprice= totalprice;
		this.number = number;
		this.g = g;

	}
	public ItemBeans() {

	}

	public int getId() {
		return id;
	}
	public void setId(int itemId) {
		this.id = itemId;
	}
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
	public int getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}

	public int getG() {
		return g;
	}
	public void setG(int g) {
		this.g = g;

	}




	}
