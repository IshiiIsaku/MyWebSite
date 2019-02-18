/**
 *
 */
/**
 * @author siste
 *
 */
package base;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBManager {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/my_web?useUnicode=true&characterEncoding=utf8", "root", "password");/* 各環境に合わせて変更してください*/
			System.out.println("DBConnected!!");
			return conn;
		} catch (ClassNotFoundException e) {
			throw new IllegalMonitorStateException();
		} catch (SQLException e) {
			throw new IllegalMonitorStateException();
		}
	}
}