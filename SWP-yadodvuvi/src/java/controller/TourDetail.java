/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.TourDAO;
import entities.Tour;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author tungl
 */
@WebServlet(name = "TourDetail", urlPatterns = {"/Tour_Detail"})
public class TourDetail extends HttpServlet {

    /*
    Method:
    Description:
    input:
    output:
    */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_raw = request.getParameter("id");
//        response.getWriter().print(id_raw);
        TourDAO dao = new TourDAO();
        Tour t = dao.getTourByID(id_raw);
        request.setAttribute("tour", t);
        request.getRequestDispatcher("tourDetail.jsp").forward(request, response);

    }

  
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    

}
