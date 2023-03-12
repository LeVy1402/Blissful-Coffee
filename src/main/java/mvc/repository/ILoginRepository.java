package mvc.repository;

import mvc.model.Customer;

import java.util.ArrayList;

public interface ILoginRepository {
    public Customer checkLogin(String email, String password) ;

    public int ForgotPass(String txtEmail, String txtPass);

    ArrayList<Customer> all();
}
