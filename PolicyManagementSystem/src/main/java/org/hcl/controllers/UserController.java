package org.hcl.controllers;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hcl.entities.PolicyData;
import org.hcl.entities.UserData;
import org.hcl.services.PolicyService;
import org.hcl.services.UserService;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.cj.result.LocalDateValueFactory;

@Controller
public class UserController {

	@Resource
	UserService service;

	@Resource
	PolicyService policyservice;

	@GetMapping("/user")
	public String showadmin(Model model) {
		return "user";
	}

	@GetMapping("/userregisteration")
	public String showRegForm(Model model) {
		return "userregisteration";
	}

	@PostMapping("/userregister")
	public String registerUser(@RequestParam("firstName") String firstname, @RequestParam("lastName") String lastname,
			@RequestParam("age") int age, @RequestParam("gender") String gender,
			@RequestParam("contactNo") String contactno, @RequestParam("userId") String userid,
			@RequestParam("password") String password, Model model) {

		UserData user = new UserData();
		user.setFirstName(firstname);
		user.setLastName(lastname);
		user.setAge(age);
		user.setGender(gender);
		user.setContactNo(contactno);
		user.setUserId(userid);
		user.setPassword(password);
		service.insert(user);

		if (user.getFirstName().equals(null) || user.getLastName().equals(null) || user.getAge() == 0
				|| user.getGender().equals(null) || user.getContactNo().equals(null) || user.getUserId().equals(null)
				|| user.getPassword().equals(null)) {
			String message = "Please fill all the fields";
			model.addAttribute("error", message);
			return "userregisteration";
		}

		model.addAttribute("error", "Your Registeration has been completed successfully");
		return "user";
	}

	@PostMapping("/usersubmitForm")
	public String validate(@RequestParam("userId") String userId, @RequestParam("password") String password,
			Model model, HttpSession session, HttpServletRequest request) {

		boolean valid = service.validate(userId, password);
		if (valid) {
			model.addAttribute("success", userId);
			session.setAttribute("userId", userId);
			return "userhome";
		}
		String message = "invalid username or password";
		model.addAttribute("error", message);
		return "user";
	}

	@GetMapping("/enroll")
	public String getEnrolled(Model model) {
		List<PolicyData> policyList = null;
		policyList = policyservice.getAllList();
		model.addAttribute("policyList", policyList);
		return "userenroll";
	}

	@GetMapping("/enrolling/{id}")
	public String getEnrollment(HttpServletRequest request, @PathVariable("id") Integer id, Model model) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("userId");
		System.out.println(username);
		UserData currentUser = service.getUser(username);
		PolicyData currentPolicy = policyservice.get(id);
		LocalDate date = LocalDate.now();
		service.updateDate(id, date);
		model.addAttribute("enroll", "Enrolled Successfully");
		return "userenrollsuccess";

	}

	@GetMapping("/payment/{id}")
	public String getPayment(HttpServletRequest request, @PathVariable("id") Integer id, Model model) {
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("userId");
		System.out.println(username);
		UserData currentUser = service.getUser(username);
		PolicyData currentPolicy = policyservice.get(id);
		LocalDate date = LocalDate.now();
		Date duedate = currentPolicy.getPolicyDueDate();
		LocalDate DUEDATE = duedate.toLocalDate();
		int dif = DUEDATE.compareTo(date);
		int amount = (int) currentPolicy.getPolicyAmount();
		if (dif < 0) {
			amount += (int) (-dif * 0.03 * currentPolicy.getPolicyAmount());
			model.addAttribute("fine", " which includes additional fine because of delay in payment");
		}
		service.pay(id);
		model.addAttribute("amount", amount);
		model.addAttribute("enroll", "Enrolled Successfully");
		return "paymentgateway";

	}

	@RequestMapping("/userpaysuccess")
	public String redirectPage() {
		return "userpaysuccess";
	}

	@PostMapping("/getcriteria")
	public String getCriteria(Model model, @RequestParam("criteria") String criteria,
			@RequestParam("text") String response) {
		if (criteria.equals("policyAmount") || criteria.equals("policyDuration")) {
			int Criteria = Integer.parseInt(criteria);
			if (criteria.equals("policyAmount")) {
				List<PolicyData> data = policyservice.getdatabyAmount(Criteria);
				model.addAttribute("object", data);
				return "userhome";
			} else {
				List<PolicyData> data = policyservice.getdatabyDuration(Criteria);
				model.addAttribute("object", data);

				return "userhome";
			}
		} else {
			if (criteria.equals("policyName")) {
				List<PolicyData> data = policyservice.getdatabyName(criteria);
				model.addAttribute("object", data);
				for (PolicyData po : data) {
					System.out.println(po.getPolicyName());
				}
				return "userhome";
			} else if (criteria.equals("policyType")) {
				List<PolicyData> data = policyservice.getdatabyType(criteria);
				model.addAttribute("object", data);
				return "userhome";
			} else {
				List<PolicyData> data = policyservice.getdatabyProvider(criteria);
				model.addAttribute("object", data);
				return "userhome";
			}
		}

	}

	@GetMapping("/homereload")
	public String getUserHome() {
		return "userhome";
	}

	@RequestMapping(value = "/Logout")
	public String logout(HttpSession session, HttpServletRequest request, Model model) {
		HttpSession session2 = request.getSession(false);
		session2.removeAttribute("userId");
		if (session2 != null) {
			session2.invalidate();
		}
		return "admin";
	}

}
