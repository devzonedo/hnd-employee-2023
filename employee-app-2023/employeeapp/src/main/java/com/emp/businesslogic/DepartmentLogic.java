/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.emp.businesslogic;

import com.emp.entity.DepartmentBean;
import com.emp.util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author devzo
 */
public class DepartmentLogic {

    
    public boolean addDepartment(DepartmentBean deptBean) {
        Connection con = null;
        boolean flag = false;
        try {
            // get connection 
            con = new DBConnection().getConnection();
            // insert query
            String sql = "INSERT INTO tbl_department\n"
                    + "            (dept_code,\n"
                    + "             dept_name,\n"
                    + "             description,\n"
                    + "             num_of_members)\n"
                    + " VALUES (?,\n"
                    + "        ?,\n"
                    + "        ?,\n"
                    + "        ?)";
            
            
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, deptBean.getDept_code());
            ps.setString(2, deptBean.getDept_name());
            ps.setString(3, deptBean.getDescription());
            ps.setInt(4, deptBean.getNum_of_members());
            
            System.out.println("ps:"+ps);
            
            if (ps.executeUpdate() == 1) {
                System.out.println("insert success");
                flag = true;
            }
           

        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return flag;

    }
    
    
    
    public  List<DepartmentBean> getDepartmentList(){
        
        Connection con = null;
        
        List<DepartmentBean> deptList = new ArrayList<DepartmentBean>();
        
        try {
            con = new DBConnection().getConnection();
            String sql = "SELECT * FROM tbl_department";   
                        PreparedStatement ps = con.prepareStatement(sql);
                        
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                
                DepartmentBean b = new DepartmentBean();
                b.setDept_code(rs.getString("dept_code"));
                b.setDept_name(rs.getString("dept_name"));
                b.setDescription(rs.getString("description"));
                b.setNum_of_members(rs.getInt("num_of_members"));
                
                deptList.add(b);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    return deptList;
    }
    
    
    
    
    
    
    

}
