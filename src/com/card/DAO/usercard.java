package com.card.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.card.DAO.DBConnect;
import com.card.model.cardinformation;

public class usercard {
	
	
	public boolean insertPatientRegRecord(cardinformation uobj) {
		boolean f = false;
		try {
			Connection con = DBConnect.getMySQLConnection();
			PreparedStatement pst = con
					.prepareStatement("insert into card.emp values(?,?,?,?,?,?,?)");

			pst.setInt(1, uobj.getId());
			pst.setString(2, uobj.getFname());
			pst.setString(3, uobj.getLname());
			pst.setString(4, uobj.getIdno());
			pst.setString(5, uobj.getGender());
			pst.setString(6, uobj.getEmail());
			pst.setString(7, uobj.getPsw());
			
			System.out.println(uobj.getIdno());
			System.out.println(uobj.getGender());
			
			int i1 = pst.executeUpdate();

			if (i1 > 0)
				f = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		;

		return f;
	}

}





