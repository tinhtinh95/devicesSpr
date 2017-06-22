package controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import dao.AccountDAO;
import dao.CatDAO;
import dao.DeviceDAO;
import entities.Devices;

@Controller
@RequestMapping(value="/device")
public class DeviceController {
	
	@Autowired
	private DeviceDAO mainDAO;
	
	@Autowired
	private CatDAO catDAO;
	
	@Autowired
	private AccountDAO accountDAO;

	@RequestMapping(value="",method=RequestMethod.GET)
	public String home(ModelMap modelMap){
		modelMap.addAttribute("listItems", mainDAO.getItems());
		return "device.index";
	}
	
	@RequestMapping(value="detail/{id}", method=RequestMethod.GET)
	public String edit(ModelMap modelMap,@PathVariable("id") String id){
		modelMap.addAttribute("listItemDetails", mainDAO.getItemDetail(id));
		return "device.detail";
	}
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(ModelMap modelMap){
		modelMap.addAttribute("listCats", catDAO.getItems());
		modelMap.addAttribute("listAccounts", accountDAO.getItems());
		return "device.add";
	}
	
	@RequestMapping(value="add", method=RequestMethod.POST)
	public String add(@ModelAttribute("objItem") Devices objItem,@RequestParam("filename") CommonsMultipartFile commonsMultipartFile,HttpServletRequest request){
		String filename=commonsMultipartFile.getOriginalFilename();
		if(!filename.isEmpty()){
		String filePath=request.getServletContext().getRealPath("files");
		File dir=new File(filePath);
		if(!dir.exists()){
			dir.mkdirs();
		}
		filePath=filePath+File.separator+filename;
		File file=new File(filePath);
		try {
			commonsMultipartFile.transferTo(file);
			System.out.println("upload success");
		} catch (IllegalStateException | IOException e) {
			System.out.println("error");
			e.printStackTrace();
		}
		}
		objItem.setPicture(filename);
		if(mainDAO.addItem(objItem)>0){
			return "redirect:/device?msg=add";
		}else{
			return "redirect:/device?msg=err";
		}
	}
	
}
