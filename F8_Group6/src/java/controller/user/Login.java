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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import model.SendEmail;
import model.User;

/**
 *
 * @author ADMIN
 */
public class Login extends HttpServlet {

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
            out.println("<title>Servlet UserLogin</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserLogin at " + request.getContextPath() + "</h1>");
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
            request.getSession().removeAttribute("admin");
            request.getSession().removeAttribute("customer");
            request.getSession().removeAttribute("sales");
            request.getSession().removeAttribute("expert");
            request.getSession().removeAttribute("marketing");
            request.getSession().removeAttribute("User");
            response.sendRedirect("home");
        } else {
            request.getRequestDispatcher("/view/user/login_register/login.jsp").forward(request, response);
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
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        if (email.equals("")) {
            request.setAttribute("msgEmail", "Yêu cầu nhập email");
        }
        if (password.equals("")) {
            request.setAttribute("msgPass", "Yêu cầu nhập mật khẩu");
        }
        if (password.equals("") || email.equals("")) {
            request.getRequestDispatcher("/view/user/login_register/login.jsp").forward(request, response);
        } else {
            UserDAO ud = new UserDAO();
            User user = ud.getUser(email, password);
            if (user != null) {
                if (user.getStatus() == 0) {
                    request.getSession().setAttribute("noncustomer", user);

                    //send email
                    SendEmail verify = new SendEmail();
                    String code = verify.getrdcode();
                    try {
                        verify.Sendmail(user.getEmail(), code);
                    } catch (MessagingException ex) {
                        Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    ud.updateCode(user.getUserID(), code);

                    response.getWriter().print("<script> alert(\"Tai khoan cua ban can xac nhan Email de dang nhap\"); window.location = \"customerverify\";</script>");

                } else {
                    switch (user.getUserRole_RoleID()) {
                        case 1:
                            request.getSession().setAttribute("admin", user);
                            break;
                        case 2:
                            request.getSession().setAttribute("customer", user);
                            break;
                        case 3:
                            request.getSession().setAttribute("sales", user);
                            break;
                        case 4:
                            request.getSession().setAttribute("expert", user);
                            break;
                        case 5:
                            request.getSession().setAttribute("marketing", user);
                            break;
                        default: {
                        }
                    }
                    response.sendRedirect("home");
                }

            } else {
                request.setAttribute("message", "Email hoặc mật khẩu không chính xác");
                request.getRequestDispatcher("/view/user/login_register/login.jsp").forward(request, response);
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
