/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import entities.Order;
import entities.Tour;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tungl
 */
public class OrderDAO extends MyDAO {

    public List<Order> getAllOrders() {
        List<Order> orders = new ArrayList<>();

        String sql = "SELECT [Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People] FROM [dbo].[Order]";

        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Order order = new Order();
                order.setOrderId(rs.getInt("Order_ID"));
                order.setUserId(rs.getInt("UserID"));
                order.setDate(rs.getString("Date"));
                order.setTotal(rs.getDouble("TotalPrice"));
                order.setStatus(rs.getString("Status"));
                order.setTourId(rs.getInt("TourID"));
                order.setPeople(rs.getInt("People"));
                orders.add(order);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return orders;
    }

    public boolean insertOrder(Order order) {
        String sql = "INSERT INTO [dbo].[Order] ([UserID], [Date], [TotalPrice], [Status], [TourID], [People]) VALUES (?, ?, ?, ?, ?,?)";

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, order.getUserId());
            ps.setString(2, getCurrentDate());
            ps.setDouble(3, order.getTotal());
            ps.setString(4, order.getStatus());
            ps.setInt(5, order.getTourId());
            ps.setInt(6, order.getPeople());

            int rowsAffected = ps.executeUpdate();
            ps.close();

            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean updateOrderStatus(int orderId, int status) {
        String sql = "UPDATE [dbo].[Order] SET [Status] = ? WHERE [Order_ID] = ?";

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, status);
            ps.setInt(2, orderId);

            int rowsAffected = ps.executeUpdate();
            ps.close();

            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public Order getOrderByID(int orderId) {
        Order order = null;
        String sql = "SELECT [Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People] FROM [dbo].[Order] WHERE [Order_ID] = ?";

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, orderId);
            rs = ps.executeQuery();

            if (rs.next()) {
                order = new Order();
                order.setOrderId(rs.getInt("Order_ID"));
                order.setUserId(rs.getInt("UserID"));
                order.setDate(rs.getString("Date"));
                order.setTotal(rs.getDouble("TotalPrice"));
                order.setStatus(rs.getString("Status"));
                order.setTourId(rs.getInt("TourID"));
                order.setPeople(rs.getInt("People"));
            }

            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return order;
    }

    public boolean deleteOrder(int orderId) {
        String sql = "DELETE FROM [dbo].[Order] WHERE [Order_ID] = ?";

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, orderId);

            int rowsAffected = ps.executeUpdate();
            ps.close();

            return rowsAffected > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public List<Order> getToursByUserID(int userId) {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT [Order_ID], [UserID], [Date], [TotalPrice], [Status], [TourID], [People] FROM [dbo].[Order] WHERE [UserID] = ?";

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, userId);
            rs = ps.executeQuery();

            while (rs.next()) {
                Order order = new Order();
                order.setOrderId(rs.getInt("Order_ID"));
                order.setUserId(rs.getInt("UserID"));
                order.setDate(rs.getString("Date"));
                order.setTotal(rs.getDouble("TotalPrice"));
                order.setStatus(rs.getString("Status"));
                order.setTourId(rs.getInt("TourID"));
                order.setPeople(rs.getInt("People"));
                orders.add(order);
            }

            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return orders;
    }

    public String getCurrentDate() {
        // Get the current date
        LocalDate currentDate = LocalDate.now();

        // Format the date as a string
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formattedDate = currentDate.format(formatter);

        return formattedDate;
    }

    public static void main(String[] args) {
        OrderDAO dao = new OrderDAO();
//        Order o = new Order();
//        o.setTourId(1);
//        o.setUserId(1);
//        System.out.println(dao.insertOrder(o));
//        System.out.println(dao.getAllOrders());
//        OrderDAO dao = new OrderDAO();
//        TourDAO tDao = new TourDAO();
//        CommonTourDAO cDao = new CommonTourDAO();
//        String c = cDao.CityName(tDao.getTourID("1").getCity_ID() + "").getCity_Name();
//        System.out.println(dao.getAllOrders().get(1).getTourId());
        dao.updateOrderStatus(1, 1);

        CommonTourDAO tDAO = new CommonTourDAO();
        ActivityTourDAO tDao = new ActivityTourDAO();
        Tour t = new Tour();
        t.setTour_ID(1);
        System.out.println(tDAO.CityName(t.getTour_ID()+"").getCity_Name());
    }
}
