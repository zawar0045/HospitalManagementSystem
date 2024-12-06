/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package hospitalmangmentsystem;

/**
 *
 * @author ABDUL MOIZ
 */
public interface DAO {
    void addDoctor(String name,String edu,String Disg,double salery);
    void addpaitent(int did,String name,String issue,int age,String phno);
     void updatepaitent(int id,int did,String name,String issue,int age,String phno);
    void deleteDoctor(String name);
    void updateDoctor(int id,String name,String edu,String Disg,double salery);
    void addApoinment(int pid,int Did,String dateTime);
    void addBill(int pid,int did,double bill);
   
}
