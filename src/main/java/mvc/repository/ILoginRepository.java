package mvc.repository;

import mvc.model.Customer;

public interface ILoginRepository {
    public Customer checkLogin(String email, String password) ;

    public Customer getCustomerByLogin(String email, String password);
    public int ForgotPass(String txtEmail, String txtPass);

}
