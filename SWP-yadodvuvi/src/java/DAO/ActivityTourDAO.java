/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entities.Activiti;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author MienTrungComputer
 */
public class ActivityTourDAO extends MyDAO {

    public List<Activiti> loadAllActivityTour(String tourID) {
        List<Activiti> list = new ArrayList<>();
        String xSql = "SELECT [Tour_ID], c.[Activity_ID], c.[ActivityName], [landscape_Address], [time] \n" +
"              FROM [dbo].[TourActivity] t join [dbo].[Activity] c  on c.[Activity_ID] = t.[Activity_ID] \n" +
"			  Where [Tour_ID] = ?  ";
        try {
            ps = con.prepareStatement(xSql);
             ps.setString(1, tourID);
            rs = ps.executeQuery();

            while (rs.next()) {
                Activiti t = new Activiti();
                list.add(new Activiti(rs.getInt("Activity_ID"),
                        rs.getInt("Tour_ID"),
                        rs.getString("landscape_Address"),
                        rs.getString("ActivityName"),                      
                        rs.getString("time")));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public static void main(String[] args) {
       ActivityTourDAO dao = new ActivityTourDAO();
       List<Activiti> list = dao.loadAllActivityTour("4");
        System.out.println(list.toString());
    }
}
