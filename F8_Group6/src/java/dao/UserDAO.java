/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;
import ultis.DBContext;

/**
 *
 * @author ADMIN
 */
public class UserDAO extends DBContext {

    public User getUser(String email, String password) {
        try {
            String sql = "SELECT * FROM f8db.user where Email = ? and Password = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getString(7), rs.getDate(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getInt(12), rs.getInt(13), rs.getString(14));
                return user;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public User getUserByEmail(String email) {
        try {
            String sql = "SELECT * FROM f8db.user where Email = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getString(7), rs.getDate(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getInt(12), rs.getInt(13), rs.getString(14));
                return u;
            }
        } catch (SQLException e) {

        }
        return null;
    }

    public int insertSocialUser(User u) {
        int kt = 0;
        try {
            String sql = "INSERT INTO f8db.user ( Email, Facebook, Password, Phone, FullName, Image, Dob, Address, \n"
                    + " GmailID, FacebookID, Status, UserRole_RoleID ) \n"
                    + "VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, \n"
                    + " 1, 2, ?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, u.getEmail());
            ps.setString(2, u.getFacebook());
            ps.setString(3, u.getPassword());
            ps.setString(4, u.getPhone());
            ps.setString(5, u.getFullName());
            ps.setString(6, u.getImage());
            ps.setString(7, u.getDob().toString());
            ps.setString(8, u.getAddress());
            ps.setString(9, u.getGmailID());
            ps.setString(10, u.getFacebookID());
            ps.setString(11, u.getCodeVerify());
            kt = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return kt;
    }

    public int UpdateUserAfterLoginGG(User u) {
        int k = 0;
        try {
            String sql = "update f8db.user set Image = ?, GmailID = ?, Status = ? where UserId = " + u.getUserID();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, u.getImage());
            ps.setString(2, u.getGmailID());
            ps.setInt(3, u.getStatus());
            k = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return k;
    }

    public void insertUser(String email, String password, String fullname) {
        try {
            String sql = "INSERT INTO f8db.user ( Email, Password, FullName, \n"
                    + " Status, UserRole_RoleID ) \n"
                    + "VALUES ( ?, ?, ?, \n"
                    + " 0, 2)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ps.setString(3, fullname);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public User checkUser(String email) {
        try {
            String sql = "SELECT * FROM f8db.user where Email= ? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6),
                        rs.getString(7), rs.getDate(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getInt(12), rs.getInt(13), rs.getString(14));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void UpdateUserStatus(int userid, String status) {
        String sql = "update f8db.user set Status = ? where UserID =?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(2, userid);
            ps.setString(1, status);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateCode(int userid, String code) {
        String sql = "update f8db.user set CodeVerify = ? where UserID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(2, userid);
            ps.setString(1, code);
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String getCode(int userid) {
        String sql = "Select CodeVerify from f8db.user where UserID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, userid);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString(1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
