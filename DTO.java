/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hospitalmangmentsystem;

import hospitalmangmentsystem.Database;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ABDUL MOIZ
 */
public class DTO implements DAO {

    @Override
    public void addDoctor(String name, String edu, String Disg, double salery) {

        try {
            Connection conect;
            conect = Database.conectDataBase();
            Statement smt = conect.createStatement();
            boolean check = smt.execute("use hms");
            CallableStatement set = conect.prepareCall("call addDoctor(?,?,?,?);");
            set.setString(1, name);
            set.setString(2, edu);
            set.setString(3, Disg);
            set.setDouble(4, salery);
            boolean rows = set.execute();
            if (rows && check) {
                System.out.print(rows);
            }

        } catch (SQLException | NullPointerException | ClassNotFoundException ex) {
            System.out.print(ex.getMessage());
        }
    }

    @Override
    public void deleteDoctor(String name) {
        try {
            Connection con=Database.conectDataBase();
          Statement smt=  con.createStatement();
            boolean check=smt.execute("use hms;");
          CallableStatement set=con.prepareCall("call deleteDoctor(?);");
             set.setString(1, name);
         boolean check2=set.execute();
            if(check&&check2){
                System.err.print("run succesfully");
            }
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(DTO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void updateDoctor(int id, String name, String edu, String Disg, double salery) {

        try {
            Connection conect;
            conect = Database.conectDataBase();
            Statement smt = conect.createStatement();
            boolean check = smt.execute("use hms;");
            CallableStatement set = conect.prepareCall("call updateDoctor(?,?,?,?,?);");
            set.setInt(1, id);
            set.setString(2, name);
            set.setString(3, edu);
            set.setString(4, Disg);
            set.setDouble(5, salery);
            
            boolean rows = set.execute();
            if (rows && check) {
                System.out.print(rows);
            }

        } catch (SQLException | NullPointerException | ClassNotFoundException ex) {
            System.out.print(ex.getMessage());
        }

    }

    @Override
    public void addpaitent(int did, String name, String issue, int age, String phno) {
 
        try {
            Connection conect;
            conect = Database.conectDataBase();
            Statement smt = conect.createStatement();
            boolean check = smt.execute("use hms");
            CallableStatement set = conect.prepareCall("call addpaitent(?,?,?,?,?);");
            set.setInt(1, did);
            set.setString(2, name);
            set.setString(3, issue);
            set.setInt(4, age);
            set.setString(5, phno);
            boolean rows = set.execute();
            if (rows && check) {
                System.out.print(rows);
            }

        } catch (SQLException | NullPointerException | ClassNotFoundException ex) {
            System.out.print(ex.getMessage());
        }
 
        
    }

    @Override
    public void updatepaitent(int id, int did, String name, String issue, int age, String phno) {
    
        
        try {
            Connection conect;
            conect = Database.conectDataBase();
            Statement smt = conect.createStatement();
            boolean check = smt.execute("use hms");
            CallableStatement set = conect.prepareCall("call updatepaitent(?,?,?,?,?,?);");
            set.setInt(1, id);
            set.setInt(2, did);
            set.setString(3, name);
            set.setString(4, issue);
            set.setInt(5, age);
            set.setString(6, phno);
            boolean rows = set.execute();
            if (rows && check) {
                System.out.print(rows);
            }

        } catch (SQLException | NullPointerException | ClassNotFoundException ex) {
            System.out.print(ex.getMessage());
        }
 
    }

    @Override
    public void addApoinment(int pid, int Did, String dateTime) {
 
        try {
            Connection conect;
            conect = Database.conectDataBase();
            Statement smt = conect.createStatement();
            boolean check = smt.execute("use hms");
            CallableStatement set = conect.prepareCall("call addapoinment(?,?,?);");
            set.setInt(1, pid);
            set.setInt(2,Did);
            set.setString(3, dateTime);
           
            boolean rows = set.execute();
            if (rows && check) {
                System.out.print(rows);
            }

        } catch (SQLException | NullPointerException | ClassNotFoundException ex) {
            System.out.print(ex.getMessage());
        }
 

    }

    @Override
    public void addBill(int pid, int did, double bill) {
   try {
            Connection conect;
            conect = Database.conectDataBase();
            Statement smt = conect.createStatement();
            boolean check = smt.execute("use hms");
            CallableStatement set = conect.prepareCall("call addbill(?,?,?);");
            set.setInt(1, pid);
            set.setInt(2, did);
            set.setDouble(3, bill);
            boolean rows = set.execute();
            if (rows && check) {
                System.out.print(rows);
            }

        } catch (SQLException | NullPointerException | ClassNotFoundException ex) {
            System.out.print(ex.getMessage());
        }

    }

}
