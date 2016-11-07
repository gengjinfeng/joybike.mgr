package com.joybike.server.api.dao;

import java.util.List;
import com.joybike.server.api.model.Product;

public interface ProductDao {
	//添加
	void insert(Product product);
	//修改
	void update(Product product);
	//查询
	Product selectById(Long id);
	//查所有
	List<Product> selectAll();
	//删除
	void delectById(Long id);
}
