package com.joybike.server.api.controller;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
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
		Vehicle vehicle = vehicleService.getOne(id);
		return new ModelAndView("jsp/one", "vehicle", vehicle);
	}
	//添加
	@RequestMapping("insert")
	public String insert(Vehicle veh){
		veh.setCreateAt(UnixTimeUtils.now());
		vehicleService.insert(veh);
		return "redirect:/vehicle/pages";
	}
	//进入修改
	@RequestMapping("intoUpdate")
	public ModelAndView intoUpdate(Long id){
		Vehicle veh=vehicleService.getOne(id);
		return new ModelAndView("jsp/update", "vehicle", veh);
	}
	//修改
	@RequestMapping("update")
	public String update(Vehicle veh){
		veh.setUpdateAt(UnixTimeUtils.now());
		vehicleService.changeOne(veh);
		return "redirect:/vehicle/pages";
	}
	//显示车辆位置
	@RequestMapping("position")
	public ModelAndView position(Long id){
		Vehicle veh=vehicleService.getOne(id);
		return new ModelAndView("jsp/position", "vehicle", veh);
	}
	//显示所有车辆位置
	@RequestMapping("positions")
	public ModelAndView positions(Integer pageNow,Integer pageSize){
		List<Vehicle> list=null;
		if(pageNow==null){
			list=vehicleService.getAll();
		} else {
			list=vehicleService.getPage(pageNow, pageSize);
		}
		return new ModelAndView("jsp/positions", "vehicles", list);
	}
	//数据导入
	@RequestMapping("upLoad")
	public String upLoad(String path) throws Exception{
		path=path.replace('\\', '/');
		vehicleService.upLoad(path);
		return "redirect:/vehicle/pages";
	}
	//分页查询
	@RequestMapping("pages")
	public ModelAndView pages(Integer pageNow,Integer pageSize){
		pageNow = pageNow == null?1:pageNow;
		pageSize = pageSize == null?100:pageSize;
		List<Vehicle> vehicles = vehicleService.getPage(pageNow, pageSize);
		Integer count = vehicleService.getCount();
		Integer totalPage = count%pageSize==0?count/pageSize:count/pageSize+1;
		if(pageNow>totalPage||pageNow<1){
			return new ModelAndView("redirect:/vehicle/pages");
		}
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("jsp/pages");
		modelAndView.addObject("vehicles", vehicles);
		modelAndView.addObject("pageNow", pageNow);
		modelAndView.addObject("pageSize", pageSize);
		modelAndView.addObject("totalPage", totalPage);
		return modelAndView;
	}
}
