package com.joybike.server.api.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.joybike.server.api.model.Vehicle;
import com.joybike.server.api.service.VehicleService;
import com.joybike.server.api.util.ReadExcelUtil;

public class Second {

	@Test
	public void testInsert(){
		ApplicationContext context=new ClassPathXmlApplicationContext("spring-mybatis.xml");
		VehicleService ve=(VehicleService)context.getBean("VehicleService");
		List<Vehicle> veh=ve.getByStatus(1);
		for (Vehicle vehicle : veh) {
			System.out.println(vehicle);
		}
	}
	@Test
	public void testExcel() throws Exception{
		//ApplicationContext context=new ClassPathXmlApplicationContext("spring-mybatis.xml");
		//VehicleService ve=(VehicleService)context.getBean("VehicleService");
		String s="e:/Excel.xlsx";
		List<List<Vehicle>> result = ReadExcelUtil.readExcel(s);
		for (List<Vehicle> vehicles : result) {
			for (Vehicle vehicle : vehicles) {
				System.out.println(vehicle);
			}
		}
		System.out.println(result.size());
	}
}
