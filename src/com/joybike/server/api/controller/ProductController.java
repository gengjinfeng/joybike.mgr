package com.joybike.server.api.controller;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.joybike.server.api.model.Product;
import com.joybike.server.api.service.ProductService;
import com.joybike.server.api.util.UnixTimeUtils;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Resource
	private ProductService productService;
	
	//添加
	@RequestMapping("insert")
	public String insert(Product product){
		product.setCreateAt(UnixTimeUtils.now());
		product.setUpdateAt(UnixTimeUtils.now());
		productService.insertProduct(product);
		return "redirect:/product/getAll";
	}
	//查询
	@RequestMapping("getOne")
	public ModelAndView getOne(Long id){
		Product product=productService.getById(id);
		return new ModelAndView("jsp/product", "product", product);
	}
	//查所有
	@RequestMapping("getAll")
	public ModelAndView getAll(){
		List<Product> products=productService.getAll();
		return new ModelAndView("jsp/products","products",products);
	}
	//进入修改
	@RequestMapping("intoUpdate")
	public ModelAndView intoUpdate(Long id){
		Product product=productService.getById(id);
		return new ModelAndView("jsp/updateProduct", "product", product);
	}
	//修改
	@RequestMapping("update")
	public String update(Product product){
		product.setUpdateAt(UnixTimeUtils.now());
		productService.changeProduct(product);
		return "redirect:/product/getAll";
	}
}
