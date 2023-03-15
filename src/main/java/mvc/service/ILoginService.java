package mvc.service;

import mvc.model.Customer;

import java.util.ArrayList;

public interface ILoginService {
    public Customer checkLogin(String email, String pass);
    public Customer getCustomerByLogin(String email, String pass);

    public int ForgotPass(String txtEmail, String txtPass);

    ArrayList<Customer> all();

}
