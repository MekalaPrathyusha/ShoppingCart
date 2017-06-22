package com.ShoppingCart.ServiceImpl;

import com.ShoppingCart.Dao.CustomerOrderDao;
import com.ShoppingCart.model.Cart;
import com.ShoppingCart.model.CartItem;
import com.ShoppingCart.model.CustomerOrder;
import com.ShoppingCart.Service.CartService;
import com.ShoppingCart.Service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

	@Autowired
	private CustomerOrderDao customerOrderDao;

	@Autowired
	private CartService cartService;

	public void addCustomerOrder(CustomerOrder customerOrder) {
		customerOrderDao.addCustomerOrder(customerOrder);
	}

	public double getCustomerOrderGrandTotal(int cartId) {
		double grandTotal = 0;
		Cart cart = cartService.getCartById(cartId);
		List<CartItem> cartItems = cart.getCartItems();

		for (CartItem item : cartItems) {
			grandTotal += item.getTotalPrice();
		}

		return grandTotal;
	}
}
