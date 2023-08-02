package com.c.lim.coffee;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Handles requests for the application home page.
 */
@Controller
public class CoffeeController {
	
	@RequestMapping(value = "/coffee")
	public String Coffeestory() {

		
		return "coffeestory";
	}
	@RequestMapping(value = "/show")
	public String Show() {

		
		return "show";
	}
	
	@RequestMapping(value = "/ceo")
	public String Ceo() {

		
		return "ceo";
	}
	
}
