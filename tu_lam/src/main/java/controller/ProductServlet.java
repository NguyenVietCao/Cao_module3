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
        switch (action) {
            case "create":
                showFormCreate(request, response);
                break;
            case "edit":
                showEditForm(request,response);
                break;
            case "delete":
                int id = Integer.parseInt(request.getParameter("id"));
                removeProduct(request,response);
                break;
            default:
                showList(request, response);
                break;
        }
    }

    private void removeProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        productService.deleteProduct(id);
        try {
            response.sendRedirect("/ProductServlet");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.getProductById(id);
        request.setAttribute("product",product);

        try {
            request.getRequestDispatcher("/edit.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("/create.jsp").forward(request, response);

        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void showList(HttpServletRequest request, HttpServletResponse response) {
        List<Product> productList = productService.displayListProduct();
        request.setAttribute("productList", productList);
        try {
            request.getRequestDispatcher("/hienThi.jsp").forward(request, response);
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
        switch (action) {
            case "create":
                createProduct(request, response);
                break;
            case "edit":
                updateProduct(request,response);
                break;
            case "delete":
                break;
            default:
                break;
        }
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("productName");
        double price = Double.parseDouble(request.getParameter("productPrice"));
        String description = request.getParameter("productDescription");
        String image = request.getParameter("productImage");
        Product product = new Product(id,name,price,description,image);
        productService.editProduct(product);

        try {
            response.sendRedirect("ProductServlet");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("productName");
        double price = Double.parseDouble(request.getParameter("productPrice"));
        String description = request.getParameter("productDescription");
        String image = request.getParameter("productImage");
        Product product = new Product(name, price, description, image);
        productService.addNewProduct(product);
        try {
            response.sendRedirect("/ProductServlet");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}


