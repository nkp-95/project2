package com.example.miniproject;

import java.util.regex.Pattern;
//import org.eclipse.tags.shaded.org.apache.xalan.xsltc.compiler.Pattern;

import org.springframework.stereotype.Service;

@Service
public class UserService {
	
	private final LoginDAO dao;
	
	public UserService(LoginDAO dao) {
		this.dao = dao;
	}
	
	//비밀번호 조건 숫자, 영어 대소문자, 특수문자 각 1개씩 포함 필수
	private static final String PassWord_Pattern = 
			"^(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[@#$%^&+=])(?=\\S+$).{7,12}$";
	
	private static final Pattern pattern = Pattern.compile(PassWord_Pattern);
	
	public static boolean matchPassword(String password) {
		return pattern.matcher(password).matches();
	}
	
	public void insertUser(Login login) throws IllegalAccessException {
		if(!matchPassword(login.getPassword())) {
			throw new IllegalAccessException("비밀번호는  7자리이상 12자리이하의 숫자, 대소문자, 특수문자가 포함되어야 합니다.");
		}
		dao.insert(login);
	}
	
	public Login authenticate(String id, String Password) {
		return dao.getLogin(id, Password);
	}
}
