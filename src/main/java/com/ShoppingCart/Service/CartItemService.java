package com.ShoppingCart.Service;

import com.ShoppingCart.model.Cart;
import com.ShoppingCart.model.CartItem;

public interface CartItemService {

	void addCartItem(CartItem cartItem);

	void removeCartItem(CartItem cartItem);

	void removeAllCartItems(Cart cart);

	CartItem getCartItemByProductId(int productId);
}
