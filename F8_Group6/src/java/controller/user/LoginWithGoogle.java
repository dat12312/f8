/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import dao.UserDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import java.time.LocalDate;
import model.GooglePP;
import model.User;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;

/**
 *
 * @author ADMIN
 */
public class LoginWithGoogle extends HttpServlet {

    public static UserDAO uDAO = new UserDAO();

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
        String code = request.getParameter("code");
        if (code == null || code.isEmpty()) {
            RequestDispatcher dis = request.getRequestDispatcher("login");
            dis.forward(request, response);
        } else {
            String accessToken = getToken(code);
            GooglePP googlePP = getUserInfo(accessToken);
            request.setAttribute("id", googlePP.getId());
            request.setAttribute("name", googlePP.getName());
            request.setAttribute("email", googlePP.getEmail());
            request.setAttribute("picture", googlePP.getPicture());
            if (uDAO.getUserByEmail(googlePP.getEmail()) != null) {
                request.getSession().setAttribute("customer", uDAO.getUserByEmail(googlePP.getEmail()));
                User u = uDAO.getUserByEmail(googlePP.getEmail());
                if (u.getGmailID() == null) {
                    User user = new User(u.getUserID(), googlePP.getEmail(), "", "", "", googlePP.getName(), googlePP.getPicture(), Date.valueOf(LocalDate.now()), "", googlePP.getId(), "", 1, 2, "");
                    uDAO.UpdateUserAfterLoginGG(user);
                }
            } else {
                User user = new User(0, googlePP.getEmail(), "", "", "", googlePP.getName(), googlePP.getPicture(), Date.valueOf(LocalDate.now()), "", googlePP.getId(), "", 1, 2, "");
                uDAO.insertSocialUser(user);
                user = uDAO.getUserByEmail(googlePP.getEmail());
                request.getSession().setAttribute("customer", user);
            }
            RequestDispatcher dis = request.getRequestDispatcher("home");
            dis.forward(request, response);

        }
    }

    public static String getToken(String code) throws ClientProtocolException, IOException {
        // call api to get token
        String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
                .bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
                        .add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
                        .add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
                        .add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
                .execute().returnContent().asString();

        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }

    public static GooglePP getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
        String response = Request.Get(link).execute().returnContent().asString();

        GooglePP googlepp = new Gson().fromJson(response, GooglePP.class);

        return googlepp;
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
        processRequest(request, response);
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
        processRequest(request, response);
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
