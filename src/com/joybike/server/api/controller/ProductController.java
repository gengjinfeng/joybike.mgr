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
		try {
			product.setCreateAt(UnixTimeUtils.now());
			product.setUpdateAt(UnixTimeUtils.now());
			productService.insertProduct(product);
			return "redirect:/product/getAll";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("产品添加失败！");
		}
	}
	//查询
	@RequestMapping("getOne")
	public ModelAndView getOne(Long id){
		try {
			Product product=productService.getById(id);
			return new ModelAndView("jsp/product", "product", product);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("获取产品信息失败！");
		}
	}
	//查所有
	@RequestMapping("getAll")
	public ModelAndView getAll(){
		try {
			List<Product> products=productService.getAll();
			return new ModelAndView("jsp/products","products",products);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("获取产品信息失败！");
		}
	}
	//进入修改
	@RequestMapping("intoUpdate")
	public ModelAndView intoUpdate(Long id){
		try {
			Product product=productService.getById(id);
			return new ModelAndView("jsp/updateProduct", "product", product);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("获取产品信息失败！");
		}
	}
	//修改
	@RequestMapping("update")
	public String update(Product product){
		try {
			product.setUpdateAt(UnixTimeUtils.now());
			productService.changeProduct(product);
			return "redirect:/product/getAll";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("产品修改失败！");
		}
	}
}
