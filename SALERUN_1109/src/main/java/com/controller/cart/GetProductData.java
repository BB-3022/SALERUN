package com.controller.cart;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.cart.CartDAO;
import com.model.cart.CartDTO;



@WebServlet("/GetProductData")
public class GetProductData extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. 상품 갯수를 입력을 받아서 request 파라미터로 가져온다
		// 2. DAO에 선택상품 할인가격을 가져온다. -> DAO에서 가져오긴 함  
		// 3. 판매처a상품1의(갯수*할인가격) + .... 판매처a상품n의(갯수*할인가격) = 판매처a의 할인가격총합    -> (arraylist 써야할듯)
		// 4
		
		String prd_number = request.getParameter("prd_number");
		
		CartDTO dto = new CartDTO(prd_number);
		CartDAO dao = new CartDAO();
		
		CartDTO info = dao.dc_price(dto);
		
		
		
		
		
		if(info != null) {
			response.sendRedirect("Basket.jsp");
			System.out.println("데이터 가져오기 성공");
			System.out.println(info.getPrd_dc_price());
		}
		else {
			System.out.println("데이터 가져오기 실패");
		}
	}

	
	
}
