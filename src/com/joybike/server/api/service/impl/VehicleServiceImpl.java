package com.joybike.server.api.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.joybike.server.api.dao.VehicleDao;
import com.joybike.server.api.model.Vehicle;
import com.joybike.server.api.service.VehicleService;
import com.joybike.server.api.util.ReadExcelUtil;
import com.joybike.server.api.util.UnixTimeUtils;

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
	public void batchInsert(List<Vehicle> vehicles) {
		// TODO Auto-generated method stub
		vehicleDao.batchInert(vehicles);
	}

	@Override
	public void upLoad(String path) throws Exception {
		// TODO Auto-generated method stub
		List<List<Vehicle>> result = ReadExcelUtil.readExcel(path);
		for (List<Vehicle> vehicles : result) {
			vehicleDao.batchInert(vehicles);
		}
	}

	@Override
	public List<Vehicle> getPage(Integer perPage, Integer pageSize) {
		// TODO Auto-generated method stub
		Integer startSize=(perPage-1)*pageSize;
		return vehicleDao.selectByPage(startSize, pageSize);
	}

	@Override
	public Integer getCount() {
		// TODO Auto-generated method stub
		return vehicleDao.getCount();
	}

	@Override
	public void batchUpdate(List<Vehicle> vehicles) {
		// TODO Auto-generated method stub
		/*for (Vehicle vehicle : vehicles) {
			System.out.println(UnixTimeUtils.fromUnixTimestamp(vehicle.getUpdateAt()));
		}*/
		vehicleDao.batchUpdate(vehicles);
	}

}