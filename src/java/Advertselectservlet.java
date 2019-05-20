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
public class Advertselectservlet extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       String action = request.getParameter("select");
       if (action.equals("flat")) {
           RequestDispatcher rd=request.getRequestDispatcher("flatadvert.html");
rd.forward(request, response);

    
} else if (action.equals("furniture")) {
    RequestDispatcher rd=request.getRequestDispatcher("furnitureadvert.html");
    rd.forward(request, response);
}
       else if (action.equals("appliances")) {
    RequestDispatcher rd=request.getRequestDispatcher("applianceadvert.html");
    rd.forward(request, response);
}
    }

   
}
