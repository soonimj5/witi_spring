package org.example.last.dto;

import java.util.Date;

public class UserDto {
	
	private int UserIndex;
	private String UserId;
	private String UserPassword;
	private String UserName;
	private Date InsDate;
	private Date UpdDate;
	
	
	public int getUserIndex() 
	{
		return UserIndex;
	}
	public void setUserIndex(int userIndex) 
	{
		UserIndex = userIndex;
	}
	
	
	public String getUserId() 
	{
		return UserId;
	}
	public void setUserId(String userId) 
	{
		UserId = userId;
	}
	
	
	public String getUserPassword() 
	{
		return UserPassword;
	}
	public void setUserPassword(String userPassword)
	{
		UserPassword = userPassword;
	}
	
	
	public String getUserName()
	{
		return UserName;
	}
	public void setUserName(String userName) 
	{
		UserName = userName;
	}
	
	
	public Date getInsDate() 
	{
		return InsDate;
	}
	public void setInsDate(Date insDate) 
	{
		InsDate = insDate;
	}
	
	
	public Date getUpdDate() 
	{
		return UpdDate;
	}
	public void setUpdDate(Date updDate) 
	{
		UpdDate = updDate;
	}
	
	
	
	

}
