package org.simplilearn.services;

import java.util.List;

import org.simplilearn.entities.Product;
import org.simplilearn.entities.User;
import org.simplilearn.models.ProductModel;

public interface ProductService {
	Product addProduct(ProductModel productModel,User user);
	List<Product> getProducts();
	void deleteProduct(int pid);
}