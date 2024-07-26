package com.example.miniproject;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/miniproject")
public class LoginApiController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	final LoginDAO dao;
	
	@Autowired
	public LoginApiController(LoginDAO dao) {
		this.dao = dao;
	}
	
	//회원가입 API
	@PostMapping
	public String insert(@RequestBody Login login) {
		
		try {
		dao.insert(login);
		} catch (Exception e) {
			e.printStackTrace();
			return "sginup API: 회원 등록 실패!!";
		}
		return "sginup API: 회원 등록 성공!!";
	}
	
	//회원 목록 조회 API
	@GetMapping
	public List<Login> getLoginList(){
		List<Login> loginList = null;
		
		try {
			loginList = dao.getAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return loginList;	
	}
	
	//회원 상세정보 API
	@GetMapping("{serialNum}")
	public Login getLogin(@PathVariable("serialNum")int serialNum) {
		Login login = null;
		
		try {
			login = dao.getLoginCheck(serialNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return login;
	}
}
