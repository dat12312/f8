/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author ADMIN
 */
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("admin") != null || request.getSession().getAttribute("customer") != null
                || request.getSession().getAttribute("sales") != null || request.getSession().getAttribute("expert") != null
                || request.getSession().getAttribute("marketing") != null) {

            response.sendRedirect("home");
        } else {
            request.getRequestDispatcher("/view/user/login_register/register.jsp").forward(request, response);
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        UserDAO ud = new UserDAO();

        if (email.equals("")) {
            request.setAttribute("msgEmail", "Yêu cầu nhập email");

        } else {
            if (ud.checkUser(email) != null) {
                request.setAttribute("msgEmail", "Email này đã được đăng ký");
                email = "";
            } else {
                String regexgm = "^[\\w.+\\-]+@gmail\\.com$";
                if (email.matches(regexgm) == false) {
                    request.setAttribute("msgEmail", "Vui lòng bao gồm '@' trong địa chỉ email ");
                    email = "";
                }
            }
        }

        if (password.equals("")) {
            request.setAttribute("msgPass", "Yêu cầu nhập mật khẩu");
        } else {
            if (password.contains(" ") || password.length() < 6) {
                request.setAttribute("msgPass", "Yêu cầu mật khẩu lớn hơn 6 và không chứa khoảng trắng");
                password = "";
            }
        }

        if (fullname.equals("")) {
            request.setAttribute("msgName", "Yêu cầu nhập họ và tên");
        }

        if (email.equals("") || password.equals("") || fullname.equals("")) {
            request.getRequestDispatcher("/view/user/login_register/register.jsp").forward(request, response);
        } else {
            if (ud.checkUser(email) != null) {
                request.setAttribute("msgHave", "Email này đã được đăng ký");
                request.getRequestDispatcher("/view/user/login_register/register.jsp").forward(request, response);
            } else {
                ud.insertUser(email, password, fullname);
                response.sendRedirect("login");
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
