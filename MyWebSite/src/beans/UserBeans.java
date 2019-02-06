package beans;

public class UserBeans {
	private String name;
	private String address;
	private String loginId;
	private String password;
	private int id;

	// コンストラクタ
	public UserBeans() {
		this.name = "";
		this.address = "";
		this.loginId = "";
		this.password = "";
	}

	public UserBeans(int id2, String loginId2, String name2, String address2, String password2, String createDate) {
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public UserBeans(String loginIdData, String nameData) {
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	/**
	 * ユーザー情報更新時の必要情報をまとめてセットするための処理
	 *
	 * @param name
	 * @param loginId
	 * @param address
	 */
	public void setUpdateUserBeansInfo(String name, String loginId, String address, int id) {
		this.name = name;
		this.loginId = loginId;
		this.address = address;
		this.id = id;
	}

}


