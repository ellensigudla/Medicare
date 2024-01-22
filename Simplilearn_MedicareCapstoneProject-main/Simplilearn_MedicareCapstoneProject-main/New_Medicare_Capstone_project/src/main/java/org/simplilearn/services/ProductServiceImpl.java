package org.simplilearn.services;

import java.util.List;

import org.simplilearn.entities.Product;
import org.simplilearn.entities.User;
import org.simplilearn.models.ProductModel;
import org.simplilearn.repositories.ProductRepository;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService{
	private ProductRepository productRepository;
	
	public ProductServiceImpl(ProductRepository productRepository) {
		super();
		this.productRepository = productRepository;
	}
	@Override
	public Product addProduct(ProductModel productModel, User user) {
		Product product=new Product();
		product.setProductName(productModel.getPname());
		product.setPrice(productModel.getPrice());
		product.setImageUrl(productModel.getImageUrl());
		user.addProduct(product);
		product.setUser(user);
		Product product2= productRepository.save(product);
		return product2;
	}

	@Override
	public List<Product> getProducts() {
		return productRepository.findAll();
	}
	@Override
	public void deleteProduct(int pid) {
		productRepository.deleteById(pid);
	}

}
