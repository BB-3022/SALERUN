package com.model.cart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CartDAO {

	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private int cnt = 0;
	
	//데이터베이스 연결메소드
	public void getConnection() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
		
		String db_url = "jdbc:oracle:thin:@project-db-stu3.smhrd.com:1524:xe";
		String db_id = "Insa4_Spring_hacksim_2";
		String db_pw = "aishcool2";
		
		conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("ojdbc6.jar 또는 경로를 체크하세요!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("DB연결에 필요한 정보가 맞는지 체크하세요!");
		}
	}

	//데이터베이스 종료메소드
	public void close() {
		try {
			if(rs != null) {
				System.out.println(1);
				rs.close();
			}
			if(psmt != null) {
				System.out.println(2);
				psmt.close();
			}
			if(conn != null) {
				System.out.println(3);
				conn.close();
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}	
	
	// 판매처 상품 데이터 꺼내오기 메소드 
	public CartDTO dc_price(CartDTO dto) {
		
		CartDTO info = null;
		
		getConnection();
		
		
		try {
			String sql = "SELECT PRD_NUMBER , PRD_FOOD_SORTATION , PRD_SLR_SORTATION , PRD_NAME , PRD_IMG_LINK , PRD_PRICE , PRD_DC_PRICE , PRD_DC_RATE , PRD_LINK  FROM PRODUCT WHERE PRD_NUMBER=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getPrd_number());

			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String prd_number = rs.getString(1);
				String prd_food_sortation = rs.getString(2);
				String prd_slr_sortation = rs.getString(3);
				String prd_name = rs.getString(4);
				String prd_img_link = rs.getString(5);
				int prd_price = rs.getInt(6);				
				int prd_dc_price = rs.getInt(7);		
				String prd_dc_rate = rs.getString(8);
				String prd_link = rs.getString(9);
				
				info = new CartDTO(prd_number, prd_food_sortation, prd_slr_sortation , prd_name ,prd_img_link ,prd_price ,prd_dc_price ,prd_dc_rate ,prd_link);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		return info;
	}
	
	
	
	
	
	
	
	
	
	
}
