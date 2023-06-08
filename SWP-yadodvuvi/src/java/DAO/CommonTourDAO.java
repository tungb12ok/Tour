/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entities.City;
import entities.Hotel;
import entities.Type;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author MienTrungComputer
 */
public class CommonTourDAO extends MyDAO{
    public List<Type> loadAllType() {
        List<Type> list = new ArrayList<>();
        String xSql = " SELECT [Type_ID]\n" +
    "      ,[Type_name]\n" +
    "      ,[Is_Delete]\n" +
    "  FROM [dbo].[TourType]";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Type(rs.getInt("Type_ID"),
                        rs.getString("Type_name"),
                        rs.getBoolean("Is_Delete")));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public List<City> loadAllCity() {
        List<City> list = new ArrayList<>();
        String xSql = "SELECT [City_ID]\n" +
"      ,[CityName]\n" +
"  FROM [dbo].[City]";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new City(rs.getInt("City_ID"),
                        rs.getString("CityName")));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public List<Hotel> loadAllHotel() {
        List<Hotel> list = new ArrayList<>();
        String xSql = "SELECT [ID]\n" +
"      ,[Name]\n" +
"      ,[Room]\n" +
"      ,[Active]\n" +
"      ,[isDelete]\n" +
"  FROM [dbo].[Hotel]";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Hotel(rs.getInt("ID"),
                        rs.getString("Name"),
                        rs.getString("Room"),
                        rs.getBoolean("Active"),
                        rs.getBoolean("isDelete")));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public Type getTypeName(int idTour) {
        Type name = new Type();
        String xSql = " SELECT ty.[Type_ID]\n" +
"              ,ty.[Type_name]\n" +
"             ,[Is_Delete]\n" +
"      FROM [dbo].[TourType] ty join [dbo].[Tour] t\n" +
"                on ty.Type_ID = t.Type_ID \n" +
"                Where t.Tour_ID = ?";
        try {
            ps = con.prepareStatement(xSql);
             ps.setInt(1, idTour);
            rs = ps.executeQuery();
            while (rs.next()) {
                name = new Type(rs.getInt("Type_ID"),
                        rs.getString("Type_name"),
                        rs.getBoolean("Is_Delete"));
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return name;
    }
//    public List<City> loadAllCity() {
//        List<City> list = new ArrayList<>();
//        String xSql = "SELECT [City_ID]\n" +
//"      ,[CityName]\n" +
//"  FROM [dbo].[City]";
//        try {
//            ps = con.prepareStatement(xSql);
//            rs = ps.executeQuery();
//
//            while (rs.next()) {
//                list.add(new City(rs.getInt("City_ID"),
//                        rs.getString("CityName")));
//            }
//            rs.close();
//            ps.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
//    public List<Hotel> loadAllHotel() {
//        List<Hotel> list = new ArrayList<>();
//        String xSql = "SELECT [ID]\n" +
//"      ,[Name]\n" +
//"      ,[Room]\n" +
//"      ,[Active]\n" +
//"      ,[isDelete]\n" +
//"  FROM [dbo].[Hotel]";
//        try {
//            ps = con.prepareStatement(xSql);
//            rs = ps.executeQuery();
//
//            while (rs.next()) {
//                list.add(new Hotel(rs.getInt("ID"),
//                        rs.getString("Name"),
//                        rs.getString("Room"),
//                        rs.getBoolean("Active"),
//                        rs.getBoolean("isDelete")));
//            }
//            rs.close();
//            ps.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return list;
//    }
    
    public static void main(String[] args) {
        CommonTourDAO dao = new CommonTourDAO();
        System.out.println(dao.loadAllType());
    }
}
