import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = "/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double operand = Double.parseDouble(request.getParameter("operand"));
        String operator = request.getParameter("operator");
        double secondOperand = Double.parseDouble(request.getParameter("secondOperand"));
        double result = 0;
        switch (operator) {
            case "+":
                result = operand + secondOperand;
                break;
            case "-":
                result = operand - secondOperand;
                break;
            case "*":
                result = operand * secondOperand;
                break;
            case "/":
                if (secondOperand == 0) {
                    try {
                        throw new Exception("Divide by zero error!");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                result = operand / secondOperand;
                break;
            default:
                try {
                    throw new Exception("Invalid operator!");
                } catch (Exception e) {
                    e.printStackTrace();
                }
        }
        request.setAttribute("operand",operand);
        request.setAttribute("secondOperand",secondOperand);
        request.setAttribute("operator",operator);
        request.setAttribute("result", result);
        request.getRequestDispatcher("hienThiCalculator.jsp").forward(request,response);
    }


}
