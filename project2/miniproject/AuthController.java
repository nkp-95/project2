package com.example.miniproject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/miniproject")
public class AuthController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	private UserService userService;
	
	//회원가입
	@PostMapping("/signup")
	public String signup( @RequestParam("userName") String userName,
		      @RequestParam("userIdCard") String userIdCard,
		      @RequestParam("phone") String phone,
		      @RequestParam("email") String email,
		      @RequestParam("address") String address,
		      @RequestParam("id") String id,
		      @RequestParam("password") String password,
		      Model m) {

		try {
			 Login login = new Login();
		      login.setUserName(userName);
		      login.setUserIdCard(userIdCard);
		      login.setPhone(phone);
		      login.setEmail(email);
		      login.setAddress(address);
		      login.setId(id);
		      login.setPassword(password);
		      
		      userService.insertUser(login);
		} catch (Exception e) {
			e.printStackTrace();
			logger.info("회원가입 과정에서 문제 발생!!");
			m.addAttribute("error", "회원가입이 정상적으로 완료되지 않았습니다!!");
			return "miniproject/signup";
		}
		
		return "redirect:/miniproject/login";
	}
	
	//로그인
	@PostMapping("/login")
	public String login(@RequestParam("id") String id,
					    @RequestParam("password") String password,
					    Model m) {
		Login login = userService.authenticate(id, password);
		userService.authenticate("id", "password");
		if(login != null) {
			return "redirect:/miniproject/main";
		}else {
			logger.error("로그인 과정에서 문제 발생!!");
			m.addAttribute("error","존재하지 않는 아이디나 비밀번호입니다");
			return "miniproject/login";
		}
	}
	
//	@GetMapping("/login")
//    public String showLogin() {
//        return "miniproject/login";
//    }

//    @GetMapping("/signup")
//    public String showSignup() {
//        return "miniproject/signup.jsp";
//    }

    @GetMapping("/main")
    public String showMain() {
        return "miniproject/main";
    }

    @GetMapping("/bookingairline")
    public String showBookingAirline() {
        return "miniproject/bookingairline";
    }

    @GetMapping("/bookinghotal")
    public String showBookingHotal() {
        return "miniproject/bookinghotal";
    }

}
