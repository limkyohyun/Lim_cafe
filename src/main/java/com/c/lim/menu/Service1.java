package com.c.lim.menu;

import java.util.ArrayList;

public interface Service1 {


public void menuinsert(String menuname, String menuename, int caffeine, int calorie, int natrium, int sugars, int saturatedfat, int protein, String menuaccount, String poster, String category);


public ArrayList<MenuDTO> menu_detail(String menuname);
public ArrayList<MenuDTO> menu_new();

public ArrayList<MenuDTO> menu_coffee();

public ArrayList<MenuDTO> menu_drink();

public ArrayList<MenuDTO> menu_dessert();


public ArrayList<MenuDTO> menu_modify1();


public ArrayList<MenuDTO> menu_modify2(String menuname);


public void menu_modifysave(String menuname, String menuename, int caffeine, int calorie, int natrium, int sugars,
		int saturatedfat, int protein, String menuaccount, String poster, String category);


public void menu_delete(String menuname);


} 