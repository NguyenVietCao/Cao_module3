package controller;

import model.Product;
import service.IProductService;
import service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controller.ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    private IProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                request.getRequestDispatcher("view/product/create.jsp").forward(request,response);
                break;
            case "edit":
                break;
            default:
                showList(request,response);

        }


    }
    private void showList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // lay du lieu tu service len
        List<Product> productList = productService.getAllProducts();
        // dong goi du lieu vao request =
        request.setAttribute("listProduct", productList);
        // chuyen sang trng jsp va gui du lieu listProduct sang trang list.jsp
        request.getRequestDispatcher("view/product/list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
               save(request,response);
                break;
            case "edit":

                break;
            default:
        }
    }

    private void save(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // lay paam xuong : id, name, price, produce, des
        int id  = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String des = request.getParameter("des");
        String producer = request.getParameter("producer");
        // khoi taoj doi tuong product
        Product product = new Product(id,name,price,des,producer);
        // goi method save cua service
        productService.addProduct(product);
        // chuyen ve trang list
        response.sendRedirect("/product");

    }
}
