package com.c.lim.menu;



import java.security.Provider.Service;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;




@Controller


public class MenuController {
	@Autowired
	SqlSession sqlSession;
	

	
	@RequestMapping(value = "/menumaster")
	public String menumaster() {
		
		
		return "menu_master";
	}
	
	@RequestMapping(value = "/menu_input")
	public String menu_input() {
		
		
		return "menu_input";
	}
	
	@RequestMapping(value = "/menu_save",method =RequestMethod.POST)
	public String menusave(MultipartHttpServletRequest mul) {
		String menuname = mul.getParameter("menuname");
		String menuename = mul.getParameter("menuename");
		int caffeine = Integer.parseInt(mul.getParameter("caffeine"));
		int calorie = Integer.parseInt(mul.getParameter("calorie"));
		int natrium = Integer.parseInt(mul.getParameter("natrium"));
		int sugars = Integer.parseInt(mul.getParameter("sugars"));
		int saturatedfat = Integer.parseInt(mul.getParameter("saturatedfat"));
		int protein = Integer.parseInt(mul.getParameter("protein"));
		String menuaccount = mul.getParameter("menuaccount");
		
		MultipartFile mf = mul.getFile("poster");
		String poster = mf.getOriginalFilename();
		
		String category = mul.getParameter("category");
		Service1 ss=sqlSession.getMapper(Service1.class);
		ss.menuinsert(menuname,menuename,caffeine, calorie, natrium, sugars, saturatedfat, protein, menuaccount, poster, category);
		
		return "menu_input";
	}
	
	@RequestMapping(value = "/menu_new")
	public String menu_new(Model mo) {
		Service1 ss=sqlSession.getMapper(Service1.class); 
		ArrayList<MenuDTO> list = ss.menu_new();
		mo.addAttribute("list",list);
		
		ArrayList<MenuDTO> list2 = ss.menu_coffee();
		mo.addAttribute("list2",list2);
		
		ArrayList<MenuDTO> list3 = ss.menu_drink();
		mo.addAttribute("list3",list3);
		
		ArrayList<MenuDTO> list4 = ss.menu_dessert();
		mo.addAttribute("list4",list4);
		return "menu_new";
	}
	
	@RequestMapping(value = "/menu_coffee")
	public String menu_coffee(Model mo) {
		Service1 ss=sqlSession.getMapper(Service1.class); 
		ArrayList<MenuDTO> list = ss.menu_new();
		mo.addAttribute("list",list);
		
		ArrayList<MenuDTO> list2 = ss.menu_coffee();
		mo.addAttribute("list2",list2);
		
		ArrayList<MenuDTO> list3 = ss.menu_drink();
		mo.addAttribute("list3",list3);
		
		ArrayList<MenuDTO> list4 = ss.menu_dessert();
		mo.addAttribute("list4",list4);
		return "menu_coffee";
	}
	
	@RequestMapping(value = "/menu_drink")
	public String menu_drink(Model mo) {
		Service1 ss=sqlSession.getMapper(Service1.class); 
		ArrayList<MenuDTO> list = ss.menu_new();
		mo.addAttribute("list",list);
		
		ArrayList<MenuDTO> list2 = ss.menu_coffee();
		mo.addAttribute("list2",list2);
		
		ArrayList<MenuDTO> list3 = ss.menu_drink();
		mo.addAttribute("list3",list3);
		
		ArrayList<MenuDTO> list4 = ss.menu_dessert();
		mo.addAttribute("list4",list4);
		return "menu_drink";
	}
	
	@RequestMapping(value = "/menu_dessert")
	public String menu_dessert(Model mo) {
		Service1 ss=sqlSession.getMapper(Service1.class); 
		ArrayList<MenuDTO> list = ss.menu_new();
		mo.addAttribute("list",list);
		
		ArrayList<MenuDTO> list2 = ss.menu_coffee();
		mo.addAttribute("list2",list2);
		
		ArrayList<MenuDTO> list3 = ss.menu_drink();
		mo.addAttribute("list3",list3);
		
		ArrayList<MenuDTO> list4 = ss.menu_dessert();
		mo.addAttribute("list4",list4);
		return "menu_dessert";
	}
	
	@RequestMapping(value = "/menu_detail")
	public String menudetail(Model mo,HttpServletRequest request) {
		String menuname = request.getParameter("menuname");
		
		Service1 ss=sqlSession.getMapper(Service1.class);
		ArrayList<MenuDTO> list1 = ss.menu_detail(menuname);
		mo.addAttribute("list1",list1);
		return "menu_detail";
	}
	
	@RequestMapping(value = "/menu_detail2")
	public String menu_detail2(Model mo,HttpServletRequest request) {
		String menuname = request.getParameter("menuname");
		
		Service1 ss=sqlSession.getMapper(Service1.class);
		ArrayList<MenuDTO> list1 = ss.menu_detail(menuname);
		mo.addAttribute("list1",list1);
		return "menu_detail2";
	}
	
	
	@RequestMapping(value = "/menu_modify1")
	public String menu_modify1(Model mo) {
		Service1 ss = sqlSession.getMapper(Service1.class);
		ArrayList<MenuDTO> list = ss.menu_new();
		mo.addAttribute("list",list);
		
		ArrayList<MenuDTO> list2 = ss.menu_coffee();
		mo.addAttribute("list2",list2);
		
		ArrayList<MenuDTO> list3 = ss.menu_drink();
		mo.addAttribute("list3",list3);
		
		ArrayList<MenuDTO> list4 = ss.menu_dessert();
		mo.addAttribute("list4",list4);
		
		ArrayList<MenuDTO> list5 = ss.menu_modify1();
		mo.addAttribute("list5", list5);
		
		return "menu_modify1";
	}
	
	@RequestMapping(value = "/menu_modify2")
	public String menu_modify2(Model mo,HttpServletRequest request) {
		
		String menuname = request.getParameter("menuname");
		Service1 ss = sqlSession.getMapper(Service1.class);
		
		ArrayList<MenuDTO> list2 = ss.menu_modify2(menuname);
		mo.addAttribute("list2",list2);
		return "menu_modify2";
	}
	
	@RequestMapping(value = "/menu_modifysave",method =RequestMethod.POST)
	public String menu_modifysave(MultipartHttpServletRequest mul) {
		String menuname = mul.getParameter("menuname");
		String menuename = mul.getParameter("menuename");
		int caffeine = Integer.parseInt(mul.getParameter("caffeine"));
		int calorie = Integer.parseInt(mul.getParameter("calorie"));
		int natrium = Integer.parseInt(mul.getParameter("natrium"));
		int sugars = Integer.parseInt(mul.getParameter("sugars"));
		int saturatedfat = Integer.parseInt(mul.getParameter("saturatedfat"));
		int protein = Integer.parseInt(mul.getParameter("protein"));
		String menuaccount = mul.getParameter("menuaccount");
		
		MultipartFile mf = mul.getFile("poster");
		String poster = mf.getOriginalFilename();
		
		String category = mul.getParameter("category");
		Service1 ss=sqlSession.getMapper(Service1.class);
		ss.menu_modifysave(menuname,menuename,caffeine, calorie, natrium, sugars, saturatedfat, protein, menuaccount, poster, category);
		
		return "main";
	}
	
	@RequestMapping(value = "/menu_delete")
	public String menu_modify2(HttpServletRequest request) {
		String menuname = request.getParameter("menuname");
		Service1 ss = sqlSession.getMapper(Service1.class);
		ss.menu_delete(menuname);
		return "main";
	}
}
