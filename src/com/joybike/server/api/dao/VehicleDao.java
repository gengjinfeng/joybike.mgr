package com.joybike.server.api.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.joybike.server.api.model.Vehicle;

public interface VehicleDao {
	//批量插入
	void batchInert(List<Vehicle> vehicles);
	//批量修改
	void batchUpdate(List<Vehicle> vehicles);
	//添加车辆
	void insertVehicle(Vehicle veh);
	//查询车辆
	Vehicle selectVehicle(Long id);
	//修改
	void updateVehicle(Vehicle veh);
	//查询所有车辆
	List<Vehicle> selectAll();
	//车辆启用状态查询
	List<Vehicle> selectByStatus(Integer status);
	//车辆使用状态查询
	List<Vehicle> selectByUS(Integer userStatus);
	//删除
	void delById(Long id);
	//查数据总条数
	Integer getCount();
	//分页查询
	List<Vehicle> selectByPage(@Param("startSize") Integer startSize,@Param("pageSize") Integer pageSize);
}