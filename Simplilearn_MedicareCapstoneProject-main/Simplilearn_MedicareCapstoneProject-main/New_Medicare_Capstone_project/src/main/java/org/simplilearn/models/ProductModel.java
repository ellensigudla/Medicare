package org.simplilearn.models;

public class ProductModel {
	private String pname;
	private int price;
	private String imageUrl;

	public ProductModel() {
		// TODO Auto-generated constructor stub
	}

	public ProductModel(String pname, int price, String imageUrl) {
		super();
		this.pname = pname;
		this.price = price;
		this.imageUrl = imageUrl;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

}
