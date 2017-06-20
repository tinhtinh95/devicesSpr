package controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.CatDAO;
import entities.Cat;

@Controller
@RequestMapping(value="/cat")
public class CatController {
	
	@Autowired
	private CatDAO mainDAO;

	@RequestMapping(value="",method=RequestMethod.GET)
	public String home(ModelMap modelMap){
		modelMap.addAttribute("listItems", mainDAO.getItems());
		return "cat.index";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(){
		return "cat.add";
	}
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(@Valid @ModelAttribute("objItem") Cat objItem,BindingResult bindingResult ){
		if(bindingResult.hasErrors()){
			return "cat.add";
		}
//		if(mainDAO.checkCat(objItem.getName())!=null){
//			return "redirect:/admin/cat/add?check=err";
//			
//		}
		if(mainDAO.addItem(objItem)>0){
			return "redirect:/cat?msg=add";
		}else{
			return "redirect:/cat?msg=err";
		}
	}
}
