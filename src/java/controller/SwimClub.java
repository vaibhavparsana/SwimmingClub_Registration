/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Swim;

/**
 *
 * @author Vaibhav
 */
public class SwimClub extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Collect Request
        String name = (String) request.getParameter("name");
        String age = (String) request.getParameter("age");
        String contact = (String) request.getParameter("contact");
        String address = (String) request.getParameter("address");
        String time = (String) request.getParameter("time");
        String pack = (String) request.getParameter("pack");

//      process input
        int age_s;
        int contact_s;

        age_s = Integer.parseInt(age);
        contact_s = Integer.parseInt(contact);

        Swim swimmer1 = new Swim(name, age_s, contact_s, address, time, pack);

//      create Response
        response.setContentType("text/html;charset=UTF-8");
        request.setAttribute("swimmer1", swimmer1);
        RequestDispatcher view = request.getRequestDispatcher("response.jsp");
        view.forward(request, response);

    }
}
