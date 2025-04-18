package com.mbc.nol.product;

import java.util.ArrayList;

public interface ProductService {

	void productinput(String id, String animal, String productlist, int price, String fname, String productdate, String productname, String productlink);

	ArrayList<ProductDTO> productout();

	void productcnt(int num);

	ProductDTO productdetail(int num);

	ProductDTO pmodify1(int unum);

	void pmodify2(int productnum, String id, String animal, String productlist, int price, String fname, String productdate, String productname, String productlink);

	ProductDTO pdelete1(int dnum);

	void pdelete2(int dnum);

	ArrayList<ProductDTO> psearch2(String name, String value);

	ArrayList<ProductDTO> dogproductout();
	
	ArrayList<ProductDTO> dogfoodsnack();
	
	ArrayList<ProductDTO> dogtoyliving();
	
	ArrayList<ProductDTO> doghealthtoilet();

	ArrayList<ProductDTO> dogbeautyfashion();

	ArrayList<ProductDTO> catproductout();
	
	ArrayList<ProductDTO> catfoodsnack();

	ArrayList<ProductDTO> cattoyliving();

	ArrayList<ProductDTO> cathealthtoilet();

	ArrayList<ProductDTO> catbeautyfashion();

	ArrayList<ProductDTO> birdproductout();
	
	ArrayList<ProductDTO> birdfoodsnack();

	ArrayList<ProductDTO> birdtoyliving();

	ArrayList<ProductDTO> birdhealthtoilet();

	ArrayList<ProductDTO> birdbeautyfashion();

	ArrayList<ProductDTO> fishproductout();
	
	ArrayList<ProductDTO> fishfoodsnack();

	ArrayList<ProductDTO> fishtoyliving();

	ArrayList<ProductDTO> fishhealthtoilet();

	ArrayList<ProductDTO> fishbeautyfashion();

	ArrayList<ProductDTO> creepproductout();

	ArrayList<ProductDTO> creepfoodsnack();

	ArrayList<ProductDTO> creeptoyliving();

	ArrayList<ProductDTO> creephealthtoilet();

	ArrayList<ProductDTO> creepbeautyfashion();

	ArrayList<CartDTO> productcart(int productnum);

	ArrayList<ProductDTO> productbuy(int num);

	ProductDTO cart1(int num);

	void cartsave(int productnum, String id, int price, String dfname, String productname);

	ArrayList<CartDTO> cartlist(String id);

	void cartdelete(int dnum);

	









	

	

	

	

}
