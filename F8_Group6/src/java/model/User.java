/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author ADMIN
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class User {

    int UserID;
    String Email;
    String Facebook;
    String Password;
    String Phone;
    String FullName;
    String Image;
    Date Dob;
    String Address;
    String GmailID;
    String FacebookID;
    int Status;
    int UserRole_RoleID;
    String CodeVerify;
}
