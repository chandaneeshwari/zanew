//LoginDao.java
package com.virtusa.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.virtusa.model.LoginBean;
import com.virtusa.connection.DBConnection;
public class LoginDao {
public String authenticateUser(LoginBean loginBean)
{
String userName = loginBean.getUserName();
String password = loginBean.getPassword();
Connection con = null;
Statement statement = null;
ResultSet resultSet = null;
String userNameDB = "";
String passwordDB = "";
String roleDB = "";
try
{
con = DBConnection.createConnection();
statement = con.createStatement();
resultSet = statement.executeQuery("select user_name,user_password,user_role from user");
while(resultSet.next())
{
userNameDB = resultSet.getString("user_name");
passwordDB = resultSet.getString("user_password");
roleDB = resultSet.getString("user_role");
if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Admin"))
return "Admin";
else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("Mentor"))
return "Mentor";
else if(userName.equals(userNameDB) && password.equals(passwordDB) && roleDB.equals("LP"))
return "LP";
}
}
catch(SQLException e)
{
e.printStackTrace();
}
return "Invalid user credentials";
}
}
