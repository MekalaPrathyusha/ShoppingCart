package com.ShoppingCart.Service;

import com.ShoppingCart.model.CustomerOrder;

public interface CustomerOrderService {

	void addCustomerOrder(CustomerOrder customerOrder);

	double getCustomerOrderGrandTotal(int cartId);
}
