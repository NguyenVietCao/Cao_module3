package controller;

import model.Product;
import service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/ProductServlet")
public class ProductServlet extends HttpServlet {
    ProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "create":
                showFormCreate(request,response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            default:
                showList(request,response);
                break;
        }
    }

    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("/create.jsp").forward(request,response);

        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void showList(HttpServletRequest request, HttpServletResponse response) {
       List<Product>productList =  productService.displayListProduct();
       request.setAttribute("productList",productList);
        try {
            request.getRequestDispatcher("/hienThi.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "create":
                createProduct(request,response);
               break;
            case "edit":
                break;
            case "delete":
                 break;
            default:
                break;
        }
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("productName");
        double price = Double.parseDouble(request.getParameter("productPrice"));
        String description = request.getParameter("productDescription");
        String image = request.getParameter("productImage");
        Product product = new Product(name,price,description,image);
        productService.addNewProduct(product);
        try {
            response.sendRedirect("/ProductServlet");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}


