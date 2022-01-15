// Author: Tyler Ziggas
// Date: March 2021
// This is a servlet that takes in the user inputs and checks whether the inputs are good 
// It also stores them in the JavaBean class to be used in the dynamic jsp page and routes you to said jsp file

package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import business.Order; // Importing the JavaBean class

public class BookOrderServlet extends HttpServlet {
        
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { // If post method is used
        String url = "/index.jsp"; // Current url
        String action = request.getParameter("action"); // See what the parameter action gives
        if (action == null) { // In the case of null
            action = "return"; 
        }
        if (action.equals("return")) { // If they wish to return after a book order
            url = "/index.jsp";    
        }
        else if (action.equals("add")) { // Book order is accepted           
            url = "/thankyou.jsp";  
            String name = request.getParameter("name"); // Get the parameters of the necessary fields 
            String email = request.getParameter("email");
            Order order = new Order(name, email);
            
            String infoMessage;
            if (name.isEmpty()|| email.isEmpty() ||
                    email.matches("^(.+)@(.+)$") == false) { // Make sure they are not whitespace and that the email is good to go
                infoMessage = "Please fill out the above text boxes.";
                url = "/index.jsp";
            } else { // If not, continue, store it, and go to the thank you page
               infoMessage = null;
               //UserDB.insert(user);
            }
            
            request.setAttribute("order", order); // Set information
            request.setAttribute("infoMessage", infoMessage); // Set message with whatever outcome came of the if statement
            
            String lordBook = request.getParameter("lordBook");
            String greatBook = request.getParameter("greatBook");
            String killBook = request.getParameter("killBook");
            String georgeBook = request.getParameter("georgeBook");
            
            String bookMessage;
            if (lordBook == null && greatBook == null && killBook == null && georgeBook == null) { // Check if any book was selected
                bookMessage = "Please order at least one book.";
                url = "/index.jsp";
            } else {
                bookMessage = null;
            }
            
            request.setAttribute("lordBook", lordBook);
            request.setAttribute("greatBook", greatBook);
            request.setAttribute("killBook", killBook);
            request.setAttribute("georgeBook", georgeBook);
            request.setAttribute("bookMessage", bookMessage); // Set message with whatever outcome came of the if statement
        }
        getServletContext().getRequestDispatcher(url).forward(request, response); // Takes user to wherever they go based on above knowledge
    }  
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { // If get method is used
        doPost(request, response);
    }    
}
