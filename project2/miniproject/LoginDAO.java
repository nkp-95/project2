package com.example.miniproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class LoginDAO {
	Connection conn = null;
	PreparedStatement pstmt;
	
	final String JDBC_DRIVER = "org.h2.Driver";
	final String JDBC_URL = "jdbc:h2:tcp://localhost/~/jwbookdb";
	
	public void open() {
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		
		try {
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	//회원 가입
	public void insert(Login l) {
		open();
		String sql = "INSERT INTO login(username, userIdCard, phone, email, address, id, password) values(?, ?, ?, ?, ?, ?, ?)";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, l.getUserName());
			pstmt.setString(2, l.getUserIdCard());
			pstmt.setString(3, l.getPhone());
			pstmt.setString(4, l.getEmail());
			pstmt.setString(5, l.getAddress());
			pstmt.setString(6, l.getId());
			pstmt.setString(7, l.getPassword());
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	//전체회원 정보
	public List<Login> getAll(){
		open();
		List<Login> loginList = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement("select serialNum, userName, phone, id from login");
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				Login l = new Login();
				l.setSerialNum(rs.getInt("serialNum"));
				l.setUserName(rs.getString("userName"));
				l.setPhone(rs.getString("phone"));
				l.setId(rs.getString("id"));
				
				loginList.add(l);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return loginList;
	}
	//회원 상세 조회
	public Login getLoginCheck(int serialnum) {
		open();
		Login login = null;
		
		try {
			pstmt = conn.prepareStatement("select * from login where serialnum = ?");
			pstmt.setInt(1, serialnum);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				login = new Login();
				login.setSerialNum(rs.getInt("serialnum"));
				login.setUserName(rs.getString("userName"));
				login.setUserIdCard(rs.getString("userIdCard"));
				login.setPhone(rs.getString("phone"));
				login.setEmail(rs.getString("email"));
				login.setAddress(rs.getString("address"));
				login.setId(rs.getString("id"));
				login.setPassword(rs.getString("password"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return login;
	}
	
	//로그인 인증
	public Login getLogin(String id, String password) {
		open();
		Login login = null;
		
		try {
			pstmt = conn.prepareStatement("select id, password from login where id = ?");
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				login = new Login();
				login.setId(rs.getString("id"));
				login.setPassword(rs.getString("password"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return login;
	}
	
	
}
