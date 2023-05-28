/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.emp.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author devzo
 */
public class DBConnection {
    
    
    public Connection getConnection(){
        Connection con = null;
        try {
             Class.forName("com.mysql.jdbc.Driver");
             con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/hnd2023db", "root", "123");
             System.out.println("db connected success");
        } catch (Exception e) {
            System.out.println("Error in DB connection");
            e.printStackTrace();
        }
        return con;
    }
    
}
