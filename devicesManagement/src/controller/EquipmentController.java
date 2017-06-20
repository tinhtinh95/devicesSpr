package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/equipment")
public class EquipmentController {

	@RequestMapping(value="",method=RequestMethod.GET)
	public String home(){
		return "equipment.index";
	}
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(){
		return "equipment.add";
	}
}
