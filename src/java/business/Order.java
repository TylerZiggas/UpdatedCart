// Author: Tyler Ziggas
// Date: March 2021
// JavaBean class that stores the information

package business;

import java.io.Serializable;

public class Order implements Serializable {

    private String name; // Creating of the name variable
    private String email; // Creating of the email variable

    public Order() { // First initialization of the class order
        name = "";
        email = "";
    }
    
    public String getName() { // Getter for name
        return name;
    }

     public String getEmail() { // Getter for email
        return email;
    }

    public Order(String name, String email) { // Setter for the order class
        this.name = name;
        this.email = email;
    }

    public void setName(String name) { // Setter for name
        this.name = name;
    }
    
    public void setEmail(String email) { // Setter for email
        this.email = email;
    }
}
