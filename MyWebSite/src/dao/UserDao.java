package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import base.DBManager;
import beans.UserBeans;

public class UserDao {


	    /**
	     * ログインIDとパスワードに紐づくユーザ情報を返す
	     * @param loginId
	     * @param password
	     * @return
	     */
	    public UserBeans findByLoginInfo(String loginId, String password) {
	        Connection conn = null;
	        try {
	            // データベースへ接続
	            conn = DBManager.getConnection();

	            // SELECT文を準備
	            String sql = "SELECT * FROM user WHERE login_id = ? and password = ?";
	            //UserDetailServlet?id=${user.id}

	             // SELECTを実行し、結果表を取得
	            PreparedStatement pStmt = conn.prepareStatement(sql);
	            pStmt.setString(1, loginId);
	            pStmt.setString(2, password);

	            ResultSet rs = pStmt.executeQuery();

	             // 主キーに紐づくレコードは1件のみなので、rs.next()は1回だけ行う
	            if (!rs.next()) {
	                return null;
	            }

	            String loginIdData = rs.getString("login_id");
	            String nameData = rs.getString("name");
	            return new UserBeans(loginIdData, nameData);

	        } catch (SQLException e) {
	            e.printStackTrace();
	            return null;
	        } finally {
	            // データベース切断
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                    return null;
	                }
	            }
	        }
	    }


	    /**
	     * 全てのユーザ情報を取得する
	     * @return
	     */
	    public List<UserBeans> findAll() {
	        Connection conn = null;
	        List<UserBeans> userList = new ArrayList<UserBeans>();

	        try {
	            // データベースへ接続
	            conn = DBManager.getConnection();

	            // SELECT文を準備
	            // 管理者以外を取得するようSQLを変更する
	            String sql = "SELECT * FROM user1 WHERE id!=1";

	             // SELECTを実行し、結果表を取得
	            Statement stmt = conn.createStatement();
	            ResultSet rs = stmt.executeQuery(sql);

	            // 結果表に格納されたレコードの内容を
	            // Userインスタンスに設定し、ArrayListインスタンスに追加
	            while (rs.next()) {
	                int id = rs.getInt("id");
	                String loginId = rs.getString("login_id");
	                String name = rs.getString("name");
	                String address =  rs.getString("address");
	                String password = rs.getString("login_password");
	                String createDate = rs.getString("create_date");


	                UserBeans user = new UserBeans(id, loginId, name, address, password, createDate);

	                userList.add(user);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return null;
	        } finally {
	            // データベース切断
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                    return null;
	                }
	            }
	        }
	        return userList;
	    }



	    //ユーザ新規登録

	    public void shinki(String loginId, String password,String userName,String address) throws SQLException {
	        Connection conn = null;
	        try {
	            // データベースへ接続
	            conn = DBManager.getConnection();



	            // INSERT文を準備
		   			 String sql = "INSERT INTO user1(login_id,login_password,name,address,create_date) VALUES (?,?,?,?,now())";
	             // 実行し、結果表を取得
	            PreparedStatement pStmt = conn.prepareStatement(sql);
	            pStmt.setString(1, loginId);
	            pStmt.setString(2, password);
	            pStmt.setString(3, userName);
	            pStmt.setString(4, address);


	            pStmt.executeUpdate();


	        } catch (SQLException e) {
	            e.printStackTrace();
	            throw e;
	        } finally {
	            // データベース切断
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	        }

	    }

	    //ユーザ情報詳細

	   // ログインIDに紐づくユーザ情報を返す

	    public UserBeans shousai(String loginId) {
	        Connection conn = null;
	        try {
	            // データベースへ接続
	            conn = DBManager.getConnection();

	            // SELECT文を準備
	            String sql = "SELECT * FROM user1 WHERE login_id = ?";

	             // SELECTを実行し、結果表を取得
	            // 実行し、結果表を取得
	            PreparedStatement pStmt = conn.prepareStatement(sql);
	            pStmt.setString(1,loginId);

	            ResultSet rs = pStmt.executeQuery();

	             // 主キーに紐づくレコードは1件のみなので、rs.next()は1回だけ行う
	            if (!rs.next()) {
	                return null;
	            }
	            int id = rs.getInt("id");
	            String loginIdData = rs.getString("login_id");
	            String name = rs.getString("name");
	            String address = rs.getString("address");
	            String password = rs.getString("login_password");
	            String createDate = rs.getString("create_date");


	            return new UserBeans(id,loginIdData,name,address,password,createDate);

	        } catch (SQLException e) {
	            e.printStackTrace();
	            return null;
	        } finally {
	            // データベース切断
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                    return null;
	                }
	            }
	        }

	    }

	//ユーザ情報更新

	    public void koushin(String loginId, String password,String userName,String address)  {
	        Connection conn = null;
	        try {
	            // データベースへ接続
	            conn = DBManager.getConnection();

	            if(password.equals("")) {

	            	String sql = "UPDATE user1 SET name = ?,address = ?,update_date = now() WHERE login_id = ?";

	            	PreparedStatement pStmt = conn.prepareStatement(sql);
	                 pStmt.setString(3, loginId);
	                 pStmt.setString(1, userName);
	                 pStmt.setString(2, address);


	                pStmt.executeUpdate();
	            }

	           // UPDATE文を準備
	            else {
	           String sql = "UPDATE user1 SET login_password = ?,name = ?,address = ?,update_date = now() WHERE login_id = ?";


	             // 実行し、結果表を取得
	            PreparedStatement pStmt = conn.prepareStatement(sql);
	            pStmt.setString(4, loginId);
	            pStmt.setString(1, password);
	            pStmt.setString(2, userName);
	            pStmt.setString(3, address);


	           pStmt.executeUpdate();
	            }

	        }catch (SQLException e) {
	            e.printStackTrace();
	            return;
	        } finally {
	            // データベース切断
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                    return;
	                }
	            }
	        }

	    }

	//ユーザ情報削除

	    public void sakujo(String loginId){
	        Connection conn = null;
	        try {
	            // データベースへ接続
	            conn = DBManager.getConnection();

	            // UPDATE文を準備
	           String sql = "DELETE FROM user1 WHERE login_id = ?";


	             // 実行し、結果をSQLに
	            PreparedStatement pStmt = conn.prepareStatement(sql);
	            pStmt.setString(1, loginId);
	            pStmt.executeUpdate();


	        } catch (SQLException e) {
	            e.printStackTrace();
	            return;
	        } finally {
	            // データベース切断
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                    return;
	                }
	            }
	        }


	    }


	        }







