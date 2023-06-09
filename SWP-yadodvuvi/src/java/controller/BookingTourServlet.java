package controller;

import DAO.ActivityTourDAO;
import DAO.CommonTourDAO;
import DAO.OrderDAO;
import DAO.TourDAO;
import entities.Activiti;
import entities.Order;
import entities.Tour;
import entities.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

@WebServlet(name = "BookingTourServlet", urlPatterns = {"/BookingTour"})
public class BookingTourServlet extends HttpServlet {

    CommonTourDAO tDAO = new CommonTourDAO();
    ActivityTourDAO tDao = new ActivityTourDAO();
    TourDAO dao = new TourDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id_raw = request.getParameter("id");
        request.setAttribute("people", 1);
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("user");
        if (u == null) {
            request.setAttribute("showModalJS_login", true);
            request.getRequestDispatcher("checkOut.jsp").forward(request, response);

        } else {
            Tour t = dao.getTourID(id_raw);
            Double price = t.getTotalPrice();
            List<Activiti> lt = tDao.loadAllActivityTour(id_raw);
            List<Tour> list = dao.loadAllTour();

            request.setAttribute("city", tDAO.CityName(id_raw).getCity_Name());
            request.setAttribute("hotel", tDAO.getHotelById(t.getHotel_ID()).getHotel_Name());
            request.setAttribute("totalPrice", price);
            request.setAttribute("tour", list);
            request.setAttribute("id", id_raw);
            request.setAttribute("t", dao.getTourID(id_raw));
            request.getRequestDispatcher("checkOut.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("user");
        if (u == null) {
            response.sendRedirect("signup");
        }
        TourDAO dao = new TourDAO();

        String action = request.getParameter("action");
        int people = Integer.parseInt(request.getParameter("people"));
        String id = request.getParameter("id");
        Tour t = dao.getTourID(id);
        Double price = t.getTotalPrice();
        if (action != null && !action.isEmpty()) {
            if (action.equalsIgnoreCase("UP")) {
                people += 1;
            } else if (action.equalsIgnoreCase("DOWN")) {
                if (people > 1) {
                    people -= 1;
                }
            }
        }
        int discount = 0;
        if (people > 5) {
            discount = 10;
            request.setAttribute("discount", "10");
        }
        if (people > 2) {
            discount = 5;
            request.setAttribute("discount", "5");
        }
        if (people > 10) {
            discount = 15;
            request.setAttribute("discount", "15");
        }
        Double totalPrice = price * people;
        totalPrice = totalPrice - totalPrice * discount / 100;
        //                    response.getWriter().print(people+"dqwewqeewqeqwwqe");
        // Booking
        if (action.equalsIgnoreCase("Book")) {
            OrderDAO o = new OrderDAO();
            Order order = new Order();
            order.setUserId(u.getUserID());
            order.setPeople(people);
            order.setStatus("0");
            order.setTotal(totalPrice);
            order.setTourId(t.getTour_ID());
            o.insertOrder(order);
        }

        String id_raw = request.getParameter("id");
        ActivityTourDAO tDao = new ActivityTourDAO();
        List<Activiti> lt = tDao.loadAllActivityTour(id_raw);
        List<Tour> list = dao.loadAllTour();
        request.setAttribute("city", tDAO.CityName(id_raw).getCity_Name());
        request.setAttribute("hotel", tDAO.getHotelById(t.getHotel_ID()).getHotel_Name());
        request.setAttribute("totalPrice", totalPrice);
        request.setAttribute("tour", list);
        request.setAttribute("id", id_raw);
        request.setAttribute("t", dao.getTourID(id_raw));
        request.setAttribute("people", people); // Update the 'people' attribute with the updated value
        request.getRequestDispatcher("checkOut.jsp").forward(request, response);
    }

}
