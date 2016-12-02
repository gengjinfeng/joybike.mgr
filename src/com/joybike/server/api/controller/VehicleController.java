package com.joybike.server.api.controller;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.joybike.server.api.model.UpdateModel;
import com.joybike.server.api.model.Vehicle;
import com.joybike.server.api.service.VehicleService;
import com.joybike.server.api.util.UnixTimeUtils;

@Controller
@RequestMapping("/vehicle")
public class VehicleController {

	@Resource
	private VehicleService vehicleService;
	//获取车辆详细信息
	@RequestMapping("getOne")
	public ModelAndView getOne(Long id){
		try {
			Vehicle vehicle = vehicleService.getOne(id);
			return new ModelAndView("jsp/one", "vehicle", vehicle);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("获取车辆信息失败！");
		}
	}
	//添加
	@RequestMapping("insert")
	public String insert(Vehicle veh){
		try {
			veh.setCreateAt(UnixTimeUtils.now());
			vehicleService.insert(veh);
			return "redirect:/vehicle/pages";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("添加车辆失败！");
		}
	}
	//进入修改
	@RequestMapping("intoUpdate")
	public ModelAndView intoUpdate(Long id){
		try {
			Vehicle veh=vehicleService.getOne(id);
			return new ModelAndView("jsp/update", "vehicle", veh);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("获取车辆信息失败！");
		}
	}
	//修改
	@RequestMapping("update")
	public String update(Vehicle veh){
		try {
			veh.setUpdateAt(UnixTimeUtils.now());
			vehicleService.changeOne(veh);
			return "redirect:/vehicle/pages";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("修改车辆信息失败！");
		}
	}
	//进入批量修改
	@RequestMapping("intobUpdate")
	public ModelAndView intobUpdate(Integer pageNow,Integer pageSize){
		try {
			List<Vehicle> vehicles = vehicleService.getPage(pageNow, pageSize);
			return new ModelAndView("jsp/batchUpdate", "vehicles",vehicles);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("获取车辆信息失败！");
		}
	}
	//批量修改
	@RequestMapping("batchUpdate")
	public String batchUpdate(UpdateModel list){
		try {
			vehicleService.batchUpdate(list.getVehicles());
			return "redirect:/vehicle/pages";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("批量修改车辆信息失败！");
		}
	}
	//显示车辆位置
	@RequestMapping("position")
	public ModelAndView position(Long id){
		try {
			Vehicle veh=vehicleService.getOne(id);
			return new ModelAndView("jsp/position", "vehicle", veh);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("获取车辆位置信息失败！");
		}
	}
	//显示所有车辆位置
	@RequestMapping("positions")
	public ModelAndView positions(Integer pageNow,Integer pageSize){
		try {
			List<Vehicle> list=null;
			if(pageNow==null){
				list=vehicleService.getAll();
			} else {
				list=vehicleService.getPage(pageNow, pageSize);
			}
			return new ModelAndView("jsp/positions", "vehicles", list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("获取车辆位置信息失败！");
		}
	}
	//数据导入
	@RequestMapping("upLoad")
	public String upLoad(String path){
		try {
			path=path.replace('\\', '/');
			vehicleService.upLoad(path);
			return "redirect:/vehicle/pages";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("数据导入失败！");
		}
	}
	//分页查询
	@RequestMapping("pages")
	public ModelAndView pages(Integer pageNow,Integer pageSize){
		try {
			pageNow = pageNow == null?1:pageNow;
			pageSize = pageSize == null?25:pageSize;
			List<Vehicle> vehicles = vehicleService.getPage(pageNow, pageSize);
			Integer count = vehicleService.getCount();
			Integer totalPage = count%pageSize==0?count/pageSize:count/pageSize+1;
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("jsp/pages");
			modelAndView.addObject("vehicles", vehicles);
			modelAndView.addObject("pageNow", pageNow);
			modelAndView.addObject("count", count);
			modelAndView.addObject("pageSize", pageSize);
			modelAndView.addObject("totalPage", totalPage);
			return modelAndView;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException("分页查询失败！");
		}
	}
}