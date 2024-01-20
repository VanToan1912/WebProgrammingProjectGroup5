package controller;

import bean.AdProduct;
import dao.AdProdDAO;
import service.AdProdService;
import service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdProdController", urlPatterns = "/ADProducts")
public class AdProdController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //b1: get data from dao
        AdProdDAO dao = new AdProdDAO();
        List<AdProduct> list = dao.getAllProduct();

        //b2: set data to jsp
        req.setAttribute("listP", list);
        req.getRequestDispatcher("./AdminSite/product/manage-product.jsp").forward(req, resp);
    }



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}