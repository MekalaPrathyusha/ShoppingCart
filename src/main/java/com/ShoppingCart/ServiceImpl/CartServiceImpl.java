package com.ShoppingCart.ServiceImpl;

import com.ShoppingCart.Dao.CartDao;
import com.ShoppingCart.model.Cart;
import com.ShoppingCart.Service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDao cartDao;

	public Cart getCartById(int cartId) {
		return cartDao.getCartById(cartId);
	}

	public void update(Cart cart) {
		cartDao.update(cart);
	}
}
