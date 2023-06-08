/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entities.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author MienTrungComputer
 */
public class TourDAO extends MyDAO {

    public List<Tour> loadAllTour() {
        List<Tour> list = new ArrayList<>();
        String xSql = "SELECT [Tour_ID], [StartDate], [EndDate], [Hotel_ID], t.[City_ID], [NumberPeople], [Content], [IMG], [TotalPrice], t.[isDelete], t.[Type_ID] \n"
                + "                FROM [dbo].[Tour] t join [dbo].[City] c  on c.[City_ID] = t.[City_ID] join [dbo].[TourType] a on a.[Type_ID] = t.[Type_ID] join [dbo].[Hotel] h on h.[ID] = t.[Hotel_ID]";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Tour(rs.getInt("Tour_ID"),
                        rs.getString("StartDate"),
                        rs.getString("EndDate"),
                        rs.getInt("Hotel_ID"),
                        rs.getInt("City_ID"),
                        rs.getInt("NumberPeople"),
                        rs.getString("Content"),
                        rs.getString("IMG"),
                        rs.getDouble("TotalPrice"),
                        rs.getBoolean("isDelete"),
                        rs.getInt("Type_ID")));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void deleteTour(String id) {
        String xSql = "DELETE FROM [dbo].[Tour]\n"
                + "      WHERE Tour_ID = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

//    public void insertTour(Tour tour) {
//        String xSql = "INSERT INTO [dbo].[Tour]\n"
//                + "           ([StartDate]\n"
//                + "           ,[EndDate]\n"
//                + "           ,[Hotel_ID]\n"
//                + "           ,[City_ID]\n"
//                + "           ,[NumberPeople])\n"
//                + "     VALUES\n"
//                + "           ( ?, ?, ? ,?, ?)";
//        try {
//            ps = con.prepareStatement(xSql);
//            ps.setString(1, tour.getStartDate());
//            ps.setString(2, tour.getEndDate());
//            ps.setInt(3, tour.getHotel_ID());
//            ps.setString(4, tour.getCity_ID());
//            ps.setString(5, tour.getNumberPeople());
//
//            ps.executeUpdate();
//        } catch (Exception e) {
//        }
//    }

    public void insertTour(Activiti activiti) {
        // String xSql =""
    }

    public void updateTour(Tour tour) {
        String xSql = "UPDATE [dbo].[Tour]\n"
                + "   SET [StartDate] = ?\n"
                + "      ,[EndDate] = ?\n"
                + "      ,[Hotel] = ?\n"
                + "      ,[City_ID] = ?\n"
                + "      ,[NumberPeople] = ?\n"
                + "      ,[Content] = ?\n"
                + "      ,[IMG] = ?\n"
                + "      ,[TotalPrice] = ?\n"
                + "      ,[isDelete] = ?\n"
                + "      ,[Type_ID] = ? \n "
                + " WHERE Tour_ID = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, tour.getStartDate());
            ps.setString(2, tour.getEndDate());
            ps.setInt(3, tour.getHotel_ID());
            ps.setInt(4, 1);
            ps.setInt(5, tour.getNumberPeople());
            ps.setString(6, tour.getContent());
            ps.setString(7, tour.getImg());
            ps.setDouble(8, tour.getTotalPrice());
            ps.setString(9, String.valueOf(tour.getIsDelete()));
            ps.setInt(10, 1);
            ps.setInt(11, tour.getTour_ID());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Tour getTourID(String id) {
        String xSql = "SELECT [Tour_ID]　\n"
                + "　     ,[StartDate]　\n"
                + "　     ,[EndDate]　\n"
                + "　     ,t.[Hotel_ID]　\n"
                + "　     ,t.[City_ID]　\n"
                + "　     ,[NumberPeople]　\n"
                + "　     ,[Content]　\n"
                + "　     ,[IMG]　\n"
                + "　     ,[TotalPrice]\n"
                + "      ,t.[isDelete]\n"
                + "      ,t.[Type_ID] FROM [dbo].[Tour] t join [dbo].[City] c  on c.[City_ID] = t.[City_ID] join [dbo].[TourType] a on a.[Type_ID] = t.[Type_ID] join [dbo].[Hotel] h on h.[ID] = t.[Hotel_ID] WHERE t.Tour_ID = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Tour(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDouble(9),
                        rs.getBoolean(10),
                        rs.getInt(11));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        TourDAO dao = new TourDAO();
//        Tour tour = new Tour(4, "2020-01-02", "2020-01-02", "Nghệ An", "1", 3, "Nghệ An", "Ảnh1", 500, false, "1");
//                dao.updateTour(tour);
        System.out.println(dao.getTourID("1"));

    }
}
//USE [YadodVivu]
//GO
//
//UPDATE [dbo].[Tour]
//   SET [StartDate] = '2020-01-02'
//      ,[EndDate] = '2020-01-02'
//      ,[Hotel] = 'Nghệ An'
//      ,[City_ID] = 1
//      ,[NumberPeople] = 3
//      ,[Content] = '123'
//      ,[IMG] = 'Ảnh1'
//      ,[TotalPrice] = 500
//      ,[isDelete] = '1'
//      ,[Type_ID] = 1
// WHERE Tour_ID = 4
//GO

