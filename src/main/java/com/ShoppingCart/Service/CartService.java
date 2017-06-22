package com.ShoppingCart.Service;

import com.ShoppingCart.model.Cart;

public interface CartService {

	Cart getCartById(int cartId);

	void update(Cart cart);
}
