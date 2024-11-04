package com.sdp.JFSDS25_.SmartCity;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProjectController {
	
	 @GetMapping("/")
	    public String home(@RequestParam(value = "username", required = false) String username, Model model) {
		 if (username != null) {
			    System.out.println("Username received: " + username);
			    model.addAttribute("username", username);
			}

	        return "home";
	    }
	
	@GetMapping("/register")
	public String register()
	{
		return "register";

	}
	
	@GetMapping("/about")
	public String about() {
		
		return "about";
	}
	
	@GetMapping("/contact")
	public String contact() {
		
		return "contact";
	}
	
	//tourist
	 @GetMapping("/tindex")
	    public String tindex() {
	        return "tindex";
	    }
	 @GetMapping("/tlogin")
		public String tlogin()
		{
			return "tlogin";
		}

	    @GetMapping("/tviewInfo")
	    public String tviewInfo(Model model) {
	        return "tviewInfo"; 
	    }

	    @GetMapping("/tlogout")
	    public String tlogout() {
	        return "tlogout"; 
	    }
	    
	    //student
	    @GetMapping("/sindex")
	    public String sindex() {
	        return "sindex";
	    }
	    @GetMapping("/slogin")
		public String slogin()
		{
			return "slogin";
		}

	    @GetMapping("/sviewInfo")
	    public String sviewInfo(Model model) {
	        return "sviewInfo"; 
	    }

	    @GetMapping("/slogout")
	    public String slogout() {
	        return "slogout"; 
	    }
	    
	    //business
	    @GetMapping("/bindex")
	    public String bindex() {
	        return "bindex";
	    }
	    @GetMapping("/blogin")
		public String blogin()
		{
			return "blogin";
		}

	    @GetMapping("/bviewInfo")
	    public String bviewInfo(Model model) {
	        return "bviewInfo"; 
	    }

	    @GetMapping("/blogout")
	    public String blogout() {
	        return "blogout"; 
	    }
	    
	    //jobseeker
	    @GetMapping("/jsindex")
	    public String jsindex() {
	        return "jsindex";
	    }
	    @GetMapping("/jslogin")
		public String jslogin()
		{
			return "jslogin";
		}

	    @GetMapping("/jsviewInfo")
	    public String jsviewInfo(Model model) {
	        return "jsviewInfo"; 
	    }

	    @GetMapping("/jslogout")
	    public String jslogout() {
	        return "jslogout"; 
	    }
	    
	    //admin
	    
	    @GetMapping("/admin")
	    public String adminDashboard(Model model) {
	        // Add any necessary attributes to the model
	        return "admin"; // JSP path for the admin dashboard
	    }

	    // Method to manage users
	    @GetMapping("/users")
	    public String manageUsers(Model model) {
	        // Logic to retrieve user data and add to model
	        return "users"; // JSP path for managing users
	    }

	    // Method to manage city info
	    @GetMapping("/city-info")
	    public String manageCityInfo(Model model) {
	        // Logic to retrieve city information and add to model
	        return "city-info"; // JSP path for managing city info
	    }

	    // Method to view issues
	    @GetMapping("/issues")
	    public String viewIssues(Model model) {
	        // Logic to retrieve reported issues and add to model
	        return "issues"; // JSP path for viewing issues
	    }

	    // Method to view analytics
	    @GetMapping("/analytics")
	    public String viewAnalytics(Model model) {
	        // Logic to gather analytics data and add to model
	        return "analytics"; // JSP path for analytics dashboard
	    }

	    // Method to display the add place form
	    @GetMapping("/add-place")
	    public String addPlaceForm(Model model) {
	        // Prepare any required data for adding a place
	        return "add-place"; // JSP path for adding a place
	    }

	    // Method to view all places
	    @GetMapping("/view-places")
	    public String viewPlaces(Model model) {
	        // Logic to retrieve places data and add to model
	        return "view-places"; // JSP path for viewing places
	    }
	    @GetMapping("/adlogin")
	    public String adlogin() {
	        // Logic for logging out (e.g., clearing session)
	        return "adlogin";
	    }

	    // Method for logout
	    @GetMapping("/adlogout")
	    public String adlogout() {
	        // Logic for logging out (e.g., clearing session)
	        return "redirect:/"; // Redirect to home after logout
	    }
}
