package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.DeviceDAO;

@Controller
@RequestMapping(value="/device")
public class DeviceController {
	
	@Autowired
	private DeviceDAO mainDAO;

	@RequestMapping(value="",method=RequestMethod.GET)
	public String home(ModelMap modelMap){
		modelMap.addAttribute("listItems", mainDAO.getItems());
		return "device.index";
	}
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(){
		return "device.add";
	}
	
	@RequestMapping(value="detail/{id}", method=RequestMethod.GET)
	public String edit(ModelMap modelMap,@PathVariable("id") String id){
		modelMap.addAttribute("listItemDetails", mainDAO.getItemDetail(id));
		return "device.detail";
	}
}
