package com.joybike.server.api.service;

import java.util.List;
import com.joybike.server.api.model.Vehicle;

public interface VehicleService {
	//批量插入
	void beachInsert(List<Vehicle> vehicles);
	//查所有
	List<Vehicle> getAll();
	//查一个
	Vehicle getOne(Long id);
	//修改
	void changeOne(Vehicle veh);
	//删除
	void delById(Long id);
	//添加
	void insert(Vehicle veh);
	//车辆启用状态查询
	List<Vehicle> getByStatus(Integer status);
	//车辆使用状态查询
	List<Vehicle> getByUS(Integer userStatus);
	//车辆导入
	void upLoad(String path) throws Exception;
	//分页查询
	List<Vehicle> getPage(Integer perPage,Integer pageSize);
	//数据总条数
	Integer getCount();
}
