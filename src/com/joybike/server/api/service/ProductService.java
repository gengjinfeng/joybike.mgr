package com.joybike.server.api.service;

import java.util.List;
import com.joybike.server.api.model.Product;

public interface ProductService {
	//添加
	void insertProduct(Product product);
	//查询
	Product getById(Long id);
	//查所有
	List<Product> getAll();
	//修改
	void changeProduct(Product product);
	//删除
	void delById(Long id);
}
