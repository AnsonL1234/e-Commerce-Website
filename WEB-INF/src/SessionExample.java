import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class SessionExample implements SessionAware{
	
	//Variable from the jsp page
	private String username;
	private Map<String, Object> session;

	public SessionExample() {
		// TODO Auto-generated constructor stub
	}
	
	public String storeUsername() {
		session.put("currentUser", username);
		return "success";
	}
	
	@Override
	public void setSession(Map map) {
		session = map;
	}

	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}




	

}
