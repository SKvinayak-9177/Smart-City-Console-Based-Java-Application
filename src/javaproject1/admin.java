package javaproject1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class admin {
	public static String user_name,Password;
	public static  user loginuser(String username,String password) {
		String sql="SELECT * from users where username=? AND password=?";
		try (Connection conn=connection.getConnection();
				PreparedStatement stmt=conn.prepareStatement(sql)){
				stmt.setString(1, username);
				stmt.setString(2, password);
				ResultSet rs=stmt.executeQuery();
				if(rs.next()) {
					user user1=new user();
					user1.setUsername(rs.getString("username"));
					user1.setEmail(rs.getString("email"));
					user1.setmobileno(rs.getString("mobileno"));
					user_name=username;
					Password=password;
					return user1;
				}
			} 
			catch (SQLException e) {
			
				e.printStackTrace();
			}
		return null;
	}
    public static boolean registerUser(user user) {
        String sql = "INSERT INTO users (username, password, email, mobileno) VALUES (?, ?, ?, ?)";
        try (Connection conn = connection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword()); 
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getmobileno());
            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

   
}

