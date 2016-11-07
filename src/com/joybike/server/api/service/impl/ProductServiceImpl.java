package com.joybike.server.api.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.joybike.server.api.dao.ProductDao;
import com.joybike.server.api.model.Product;
import com.joybike.server.api.service.ProductService;

@Service("ProductService")
public class ProductServiceImpl implements ProductService {

	@Resource
	private ProductDao productDao;
	@Override
	public void insertProduct(Product product) {
		// TODO Auto-generated method stub
		productDao.insert(product);
	}

	@Override
	public Product getById(Long id) {
		// TODO Auto-generated method stub
		return productDao.selectById(id);
	}

	@Override
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		return productDao.selectAll();
	}

	@Override
	public void changeProduct(Product product) {
		// TODO Auto-generated method stub
		productDao.update(product);
	}

	@Override
	public void delById(Long id) {
		// TODO Auto-generated method stub
		productDao.delectById(id);
	}

}
