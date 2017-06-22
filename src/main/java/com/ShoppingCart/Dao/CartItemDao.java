package com.ShoppingCart.Dao;

import com.ShoppingCart.model.Cart;
import com.ShoppingCart.model.CartItem;

public interface CartItemDao {

	void addCartItem(CartItem cartItem);

	void removeCartItem(CartItem cartItem);

	void removeAllCartItems(Cart cart);

	CartItem getCartItemByProductId(int productId);
}
