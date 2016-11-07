package com.joybike.server.api.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.joybike.server.api.dao.VehicleDao;
import com.joybike.server.api.model.Vehicle;
import com.joybike.server.api.service.VehicleService;
import com.joybike.server.api.util.ReadExcelUtil;

@Service("VehicleService")
public class VehicleServiceImpl implements VehicleService {
	
	@Resource
	private VehicleDao vehicleDao;
	
	@Override
	public List<Vehicle> getAll() {
		// TODO Auto-generated method stub
		return vehicleDao.selectAll();
	}

	@Override
	public Vehicle getOne(Long id) {
		// TODO Auto-generated method stub
		return vehicleDao.selectVehicle(id);
	}

	@Override
	public void changeOne(Vehicle veh) {
		// TODO Auto-generated method stub
		vehicleDao.updateVehicle(veh);
	}

	@Override
	public void delById(Long id) {
		// TODO Auto-generated method stub
		vehicleDao.delById(id);
	}

	@Override
	public void insert(Vehicle veh) {
		// TODO Auto-generated method stub
		vehicleDao.insertVehicle(veh);
	}

	@Override
	public List<Vehicle> getByStatus(Integer status) {
		return vehicleDao.selectByStatus(status);
	}

	@Override
	public List<Vehicle> getByUS(Integer userStatus) {
		// TODO Auto-generated method stub
		return vehicleDao.selectByUS(userStatus);
	}

	@Override
	public void beachInsert(List<Vehicle> vehicles) {
		// TODO Auto-generated method stub
		vehicleDao.beachInert(vehicles);
	}

	@Override
	public void upLoad(String path) throws Exception {
		// TODO Auto-generated method stub
		List<List<Vehicle>> result = ReadExcelUtil.readExcel(path);
		for (List<Vehicle> vehicles : result) {
			vehicleDao.beachInert(vehicles);
		}
	}

	@Override
	public List<Vehicle> getPage(Integer perPage, Integer pageSize) {
		// TODO Auto-generated method stub
		return vehicleDao.selectByPage(perPage, pageSize);
	}

	@Override
	public Integer getCount() {
		// TODO Auto-generated method stub
		return vehicleDao.getCount();
	}

}