package org.simplilearn.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.simplilearn.entities.Product;
import org.simplilearn.entities.User;
import org.simplilearn.models.ProductModel;
import org.simplilearn.services.ProductService;
import org.simplilearn.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {
	private ProductService productService;
	private UserService userService;
	
	public ProductController(ProductService productService, UserService userService) {
		super();
		this.productService = productService;
		this.userService = userService;
	}
	
	@GetMapping("/showProduct")
	public String showProduct() {
		return "product";
	}
	@PostMapping("/addProduct")
	
	public String addProduct(@RequestParam("pname") String productName,
			@RequestParam("price") int price,
			@RequestParam("imageUrl") String imageUrl,HttpSession session) {
		ProductModel productModel=new ProductModel();
		productModel.setPname(productName);
		productModel.setPrice(price);
		productModel.setImageUrl(imageUrl);
		User user=(User) session.getAttribute("user");
		User user1=userService.getUser(user.getUsername());
		productService.addProduct(productModel, user1);
		return "redirect:/products";
	}
	@GetMapping("/products")
	
	public String showProducts(Model model) {
		List<Product> products=productService.getProducts();
		model.addAttribute("products", products);
		return "adminDashboard";
	}
	
	@GetMapping("/delete/{pid}")
	public String deleteProduct(@PathVariable("pid") int pid) {
		productService.deleteProduct(pid);
		return "redirect:/products";
	}
	
    @GetMapping("/submit")
	public String submit(Model model) {
		List<Product> products=productService.getProducts();
		model.addAttribute("products", products);
		return "customerDashboard";
		}
   
      @GetMapping("/pay")
    	  public String pay(HttpSession session) {
//    	  User user=(User) session.getAttribute("user");
//  		User user1=userService.getUser(user.getUsername());
    		  return "Pay";
    	  }
      
      

}