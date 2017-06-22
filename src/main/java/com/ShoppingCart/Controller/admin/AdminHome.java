package com.ShoppingCart.Controller.admin;

import com.ShoppingCart.model.Customer;

import com.ShoppingCart.model.Product;
import com.ShoppingCart.Service.CustomerService;
import com.ShoppingCart.Service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")

public class AdminHome {

	@Autowired
	private ProductService productService;

	@Autowired
	private CustomerService customerService;

	@RequestMapping
	public String adminPage() {
		return "admin";
	}

	@RequestMapping("/productContalog")
	public String productContalog(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "productContalog";
	}

	@RequestMapping("/customer")
	public String customerInformation(Model model) {

		List<Customer> customerList = customerService.getAllCustomers();
		model.addAttribute("customerList", customerList);

		return "customerInformation";
	}
}
