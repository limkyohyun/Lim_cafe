package com.c.lim.menu;

/*CREATE TABLE menu
( 
menuname     VARCHAR(30) not null,
menuename    VARCHAR(30) not null,
caffeine   number(10) not null,
calorie    number(10) not null,  
natrium    number(10) not null, 
sugars    number(10) not null,
saturatedfat    number(10) not null,
protein    number(10) not null,
menuaccount    VARCHAR(100) not null,
poster     VARCHAR(300) not null,
category     VARCHAR(300) not null
);*/
public class MenuDTO {
	String menuname,menuename;
	int caffeine, calorie, natrium, sugars, saturatedfat, protein;
	String menuaccount, poster, category;
	
	public MenuDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MenuDTO(String menuname, String menuename, int caffeine, int calorie, int natrium, int sugars,
			int saturatedfat, int protein, String menuaccount, String poster, String category) {
		super();
		this.menuname = menuname;
		this.menuename = menuename;
		this.caffeine = caffeine;
		this.calorie = calorie;
		this.natrium = natrium;
		this.sugars = sugars;
		this.saturatedfat = saturatedfat;
		this.protein = protein;
		this.menuaccount = menuaccount;
		this.poster = poster;
		this.category = category;
	}
	public String getMenuname() {
		return menuname;
	}
	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}
	public String getMenuename() {
		return menuename;
	}
	public void setMenuename(String menuename) {
		this.menuename = menuename;
	}
	public int getCaffeine() {
		return caffeine;
	}
	public void setCaffeine(int caffeine) {
		this.caffeine = caffeine;
	}
	public int getCalorie() {
		return calorie;
	}
	public void setCalorie(int calorie) {
		this.calorie = calorie;
	}
	public int getNatrium() {
		return natrium;
	}
	public void setNatrium(int natrium) {
		this.natrium = natrium;
	}
	public int getSugars() {
		return sugars;
	}
	public void setSugars(int sugars) {
		this.sugars = sugars;
	}
	public int getSaturatedfat() {
		return saturatedfat;
	}
	public void setSaturatedfat(int saturatedfat) {
		this.saturatedfat = saturatedfat;
	}
	public int getProtein() {
		return protein;
	}
	public void setProtein(int protein) {
		this.protein = protein;
	}
	public String getMenuaccount() {
		return menuaccount;
	}
	public void setMenuaccount(String menuaccount) {
		this.menuaccount = menuaccount;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	
}
