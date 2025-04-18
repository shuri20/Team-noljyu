package com.mbc.nol.product;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class ProductController {
	@Autowired
	SqlSession sqlSession;
	String path="C:\\Noljyu\\Team-noljyu\\src\\main\\webapp\\image";
	
	@RequestMapping(value = "/productinput")
	public String product1()
	{
		return "productinput";
	}
	
	@RequestMapping(value = "/productsave")
	public String product2(MultipartHttpServletRequest mul) throws IllegalStateException, IOException
	{
			String id=mul.getParameter("id");
			String animal=mul.getParameter("animal");
			String productlist=mul.getParameter("productlist");				
			int price=Integer.parseInt(mul.getParameter("price"));
			MultipartFile mf=mul.getFile("productimg");
			String fname=mf.getOriginalFilename();
			UUID uu=UUID.randomUUID();
			fname=uu.toString()+"_"+fname;
			mf.transferTo(new File(path+"\\"+fname));			
			String productdate=mul.getParameter("productdate");	
			String productname=mul.getParameter("productname");
			String productlink=mul.getParameter("productlink");
			ProductService ps=sqlSession.getMapper(ProductService.class);
			ps.productinput(id,animal,productlist,price,fname,productdate,productname,productlink);			
			
			return "redirect:/main";
	}
	
	@RequestMapping(value = "/productout")
	public String product3(Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);
		ArrayList<ProductDTO>list=ps.productout();
		model.addAttribute("list",list);
		
		return "productout";
	}
	
	@RequestMapping(value = "/productdetail")
	public String product4(HttpServletRequest request,Model model) 
	{
		int num=Integer.parseInt(request.getParameter("num"));
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ps.productcnt(num);
		ProductDTO dto=ps.productdetail(num);
		model.addAttribute("dto",dto);
		
		return "productdetail";
	}
	
	@RequestMapping(value = "/pmodify1")
	public String product5(HttpServletRequest request, Model model) 
	{
		int unum=Integer.parseInt(request.getParameter("num"));
		String fname=request.getParameter("fname");
		ProductService ps=sqlSession.getMapper(ProductService.class);
		ProductDTO dto=ps.pmodify1(unum);
		model.addAttribute("dto",dto);
		
		return "pmodify1";
	}
	
	@RequestMapping(value = "/pmodifysave")
	public String product6(MultipartHttpServletRequest mul) throws IllegalStateException, IOException 
	{
		int productnum=Integer.parseInt(mul.getParameter("productnum"));
		String id=mul.getParameter("id");
		String animal=mul.getParameter("animal");
		String productlist=mul.getParameter("productlist");		
		int price=Integer.parseInt(mul.getParameter("price"));
		MultipartFile mf=mul.getFile("productimg");//이미지의 여러정보
		String dfname=mul.getParameter("himage");//기존이미지
		String fname=mf.getOriginalFilename();//파일명과 확장자
		UUID uu=UUID.randomUUID();
		fname=uu.toString()+"_"+fname;
		String productdate=mul.getParameter("productdate");
		String productname=mul.getParameter("productname");
		String productlink=mul.getParameter("productlink");
		ProductService ps=sqlSession.getMapper(ProductService.class);
		ps.pmodify2(productnum,id,animal,productlist,price,fname,productdate,productname,productlink);
		mf.transferTo(new File(path+"\\"+fname));//수정이미지 저장
		mf.transferTo(new File(path+"\\"+dfname));
		File ff=new File(path+"\\"+dfname);
		ff.delete();
				
		return "redirect:/productout";
	}
	
	@RequestMapping(value = "/pdelete1")
	public String product7(HttpServletRequest request, Model model) 
	{
		int dnum=Integer.parseInt(request.getParameter("num"));
		String fname=request.getParameter("fname");
		ProductService ps=sqlSession.getMapper(ProductService.class);
		ProductDTO dto=ps.pdelete1(dnum);
		model.addAttribute("dto",dto);
		
		return "pdelete1";
	}
	
	@RequestMapping(value = "/pdelete2")
	public String product8(HttpServletRequest request) 
	{
		int dnum=Integer.parseInt(request.getParameter("productnum"));
		String dfname=request.getParameter("himage");		
		ProductService ps=sqlSession.getMapper(ProductService.class);
		ps.pdelete2(dnum);		
		File ff=new File(path+"\\"+dfname);
		ff.delete();	
		
		return "redirect:/productout";
	}
	
	
	@RequestMapping(value = "/productsearch")
	public String product9() 
	{
		return "psearch1";
	}
	
	@RequestMapping(value = "/psearch2")
	public String product10(HttpServletRequest request, Model model) 
	{
		String name=request.getParameter("scname");
		String value=request.getParameter("scvalue");
		ProductService ps=sqlSession.getMapper(ProductService.class);
		ArrayList<ProductDTO>list=ps.psearch2(name,value);
		model.addAttribute("list", list);
				
		return "psearch2";
	}
	
	@RequestMapping(value = "/dogproductmain")
	public String product11(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.dogproductout();
		model.addAttribute("list",list);
		
		return "dogproductmain";
	}
	
	@RequestMapping(value = "dogfoodsnack")
	public String product12(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.dogfoodsnack();
		model.addAttribute("list",list);
		
		return "dogfoodsnack";
	}
	
	@RequestMapping(value = "dogtoyliving")
	public String product13(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.dogtoyliving();
		model.addAttribute("list",list);
		
		return "dogtoyliving";
	}
	
	@RequestMapping(value = "doghealthtoilet")
	public String product14(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.doghealthtoilet();
		model.addAttribute("list",list);
		
		return "doghealthtoilet";
	}
	
	@RequestMapping(value = "dogbeautyfashion")
	public String product15(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.dogbeautyfashion();
		model.addAttribute("list",list);
		
		return "dogbeautyfashion";
	}
	
	@RequestMapping(value = "/catproductmain")
	public String product16(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.catproductout();
		model.addAttribute("list",list);
		
		return "catproductmain";
	}
	
	@RequestMapping(value = "catfoodsnack")
	public String product17(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.catfoodsnack();
		model.addAttribute("list",list);
		
		return "catfoodsnack";
	}
	
	@RequestMapping(value = "cattoyliving")
	public String product18(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.cattoyliving();
		model.addAttribute("list",list);
		
		return "cattoyliving";
	}
	
	@RequestMapping(value = "cathealthtoilet")
	public String product19(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.cathealthtoilet();
		model.addAttribute("list",list);
		
		return "cathealthtoilet";
	}
	
	@RequestMapping(value = "catbeautyfashion")
	public String product20(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.catbeautyfashion();
		model.addAttribute("list",list);
		
		return "catbeautyfashion";
	}	
	
	@RequestMapping(value = "/birdproductmain")
	public String product21(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.birdproductout();
		model.addAttribute("list",list);
		
		return "birdproductmain";
	}	
	
	@RequestMapping(value = "birdfoodsnack")
	public String product22(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.birdfoodsnack();
		model.addAttribute("list",list);
		
		return "birdfoodsnack";
	}
	
	@RequestMapping(value = "birdtoyliving")
	public String product23(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.birdtoyliving();
		model.addAttribute("list",list);
		
		return "birdtoyliving";
	}
	
	@RequestMapping(value = "birdhealthtoilet")
	public String product24(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.birdhealthtoilet();
		model.addAttribute("list",list);
		
		return "birdhealthtoilet";
	}
	
	@RequestMapping(value = "birdbeautyfashion")
	public String product25(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.birdbeautyfashion();
		model.addAttribute("list",list);
		
		return "birdbeautyfashion";
	}	
	
	@RequestMapping(value = "/fishproductmain")
	public String product26(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.fishproductout();
		model.addAttribute("list",list);
		
		return "fishproductmain";
	}
	
	@RequestMapping(value = "fishfoodsnack")
	public String product27(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.fishfoodsnack();
		model.addAttribute("list",list);
		
		return "fishfoodsnack";
	}
	
	@RequestMapping(value = "fishtoyliving")
	public String product28(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.fishtoyliving();
		model.addAttribute("list",list);
		
		return "fishtoyliving";
	}
	
	@RequestMapping(value = "fishhealthtoilet")
	public String product29(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.fishhealthtoilet();
		model.addAttribute("list",list);
		
		return "fishhealthtoilet";
	}
	
	@RequestMapping(value = "fishbeautyfashion")
	public String product30(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.fishbeautyfashion();
		model.addAttribute("list",list);
		
		return "fishbeautyfashion";
	}	
	
	@RequestMapping(value = "/creepproductmain")
	public String product31(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.creepproductout();
		model.addAttribute("list",list);
		
		return "creepproductmain";
	}
	
	@RequestMapping(value = "creepfoodsnack")
	public String product32(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.creepfoodsnack();
		model.addAttribute("list",list);
		
		return "creepfoodsnack";
	}
	
	@RequestMapping(value = "creeptoyliving")
	public String product33(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.creeptoyliving();
		model.addAttribute("list",list);
		
		return "creeptoyliving";
	}
	
	@RequestMapping(value = "creephealthtoilet")
	public String product34(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.creephealthtoilet();
		model.addAttribute("list",list);
		
		return "creephealthtoilet";
	}
	
	@RequestMapping(value = "creepbeautyfashion")
	public String product35(HttpServletRequest request,Model model) 
	{
		ProductService ps=sqlSession.getMapper(ProductService.class);		
		ArrayList<ProductDTO>list=ps.creepbeautyfashion();
		model.addAttribute("list",list);
		
		return "creepbeautyfashion";
	}	
			
	@RequestMapping(value = "/productbuy")
	public String product36(Model model,HttpServletRequest request) 
	{
		int num=Integer.parseInt(request.getParameter("num"));
		ProductService ps=sqlSession.getMapper(ProductService.class);
		ArrayList<ProductDTO>list=ps.productbuy(num);
		model.addAttribute("list",list);
				
		return "productbuy";
	}	
		
	@RequestMapping(value = "/cart1")
	public String product37(HttpServletRequest request, Model model) 
	{
		int num=Integer.parseInt(request.getParameter("num"));
		String fname=request.getParameter("fname");
		ProductService ps=sqlSession.getMapper(ProductService.class);
		ProductDTO dto=ps.cart1(num);
		model.addAttribute("dto",dto);
		
		return "cart1";
	}
	
	@RequestMapping(value = "/cartsave")
	public String product38(MultipartHttpServletRequest mul)  
	{
		int productnum=Integer.parseInt(mul.getParameter("num"));
		String id=mul.getParameter("id");			
		int price=Integer.parseInt(mul.getParameter("price"));	
		String dfname=mul.getParameter("himage");//기존이미지	
		String productname=mul.getParameter("productname");
		ProductService ps=sqlSession.getMapper(ProductService.class);
		ps.cartsave(productnum,id,price,dfname,productname);		
				
		return "productcart";
	}	
	
	@RequestMapping(value = "/productcart")
	public String product39(HttpServletRequest request, Model model) {
	    int num = Integer.parseInt(request.getParameter("num"));

	    ProductService ps = sqlSession.getMapper(ProductService.class);
	    
	    // 1. 상품 상세 정보 가져오기
	    ProductDTO dto = ps.productdetail(num);
	    
	    // 2. 장바구니에 저장
	    ps.cartsave(dto.getProductnum(), dto.getId(), dto.getPrice(), dto.getProductimg(), dto.getProductname());
	    
	    // 3. 저장된 장바구니 목록 불러오기
	    ArrayList<CartDTO> list = ps.cartlist(dto.getId());
	    model.addAttribute("list", list);

	    return "productcart"; // 장바구니 페이지로 이동
	}
	
	@RequestMapping(value = "/cartdelete")
	public String product40(HttpServletRequest request) 
	{
	  	int dnum=Integer.parseInt(request.getParameter("ordernum"));
		String dfname=request.getParameter("himage");		
		ProductService ps=sqlSession.getMapper(ProductService.class);
		ps.cartdelete(dnum);		
		File ff=new File(path+"\\"+dfname);
		ff.delete();	
		
		return "redirect:/productout";	    
	}
	
	
	
}
