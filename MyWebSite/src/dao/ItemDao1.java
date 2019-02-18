package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import base.DBManager;
import beans.ItemBeans;

public class ItemDao1 {

	public static ItemBeans FindByItemId(int itemId){

		Connection conn = null;
		try {

        conn = DBManager.getConnection();

        String sql ="SELECT * FROM item WHERE id ='"+itemId+"'";

        PreparedStatement pStmt;

		pStmt = conn.prepareStatement(sql);
		ResultSet rs = pStmt.executeQuery();

		ItemBeans item = new ItemBeans();
		if (rs.next()) {
			item.setId(rs.getInt("id"));
			item.setName(rs.getString("name"));
			item.setPrice(rs.getInt("price"));
		}

		System.out.println("searching item by itemID has been completed");

		return item;
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
				}

         }

      }

	}

}




