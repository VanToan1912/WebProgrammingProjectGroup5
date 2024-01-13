package controller.java.client_controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * SERVLET implementation class LogoutServlet
 */
@WebServlet("/LogoutServlet")
public class LogoutController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        ServletContext servletContext = request.getServletContext();
        Cookie[] cookies = request.getCookies();
        Cookie JSESSIONID = null;
        Cookie userCookie = null;
        if (cookies != null) {
            for (Cookie c : cookies) {
                // find remaining cookies in browser
                if (c.getName().equals("JSESSIONID")) JSESSIONID = c;
                if (c.getName().equals("user")) userCookie = c;
            }
        }

        // Invalidate session if exists
        HttpSession session = request.getSession(false);

        // Log messages without using logger library
        System.out.println("  User = " + session.getAttribute("user") + "Loggin OUT");
        System.out.println("Invalidating session for User = " + session.getAttribute("user"));

        session.invalidate();

        // Remove Attribute from ServletContext
        servletContext.removeAttribute("User");

        // Deleting Cookies from browser by setting expiration time to zero
        assert JSESSIONID != null;
        JSESSIONID.setMaxAge(0);
        assert userCookie != null;
        userCookie.setMaxAge(0);

        System.out.println("deleting session cookie");
        System.out.println("deleting user cookie");

        response.addCookie(JSESSIONID);
        response.addCookie(userCookie);
        response.sendRedirect("login.html");
    }
}
