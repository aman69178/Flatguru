/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import java.util.*;
import java.text.*;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aman
 */
public class SearchServlet extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       String action = request.getParameter("action");
       if ("search".equals(action)) {
           RequestDispatcher rd=request.getRequestDispatcher("images.jsp");
rd.forward(request, response);

    
} else if ("mapsearch".equals(action)) {
    RequestDispatcher rd=request.getRequestDispatcher("maplocation.jsp");
    rd.forward(request, response);
}
    }

   
}
