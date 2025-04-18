package com.mbc.nol.product;

public class CartDTO {
	int ordernum;
	int productnum;
	String id;
	int price;
	String productimg;
	String productname;
	public CartDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getOrdernum() {
		return ordernum;
	}
	public void setOrdernum(int ordernum) {
		this.ordernum = ordernum;
	}
	public int getProductnum() {
		return productnum;
	}
	public void setProductnum(int productnum) {
		this.productnum = productnum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getProductimg() {
		return productimg;
	}
	public void setProductimg(String productimg) {
		this.productimg = productimg;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}	
	
}
