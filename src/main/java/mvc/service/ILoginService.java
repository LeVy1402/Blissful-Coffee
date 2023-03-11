package mvc.service;

import mvc.model.Customer;

public interface ILoginService {
    public Customer checkLogin(String email, String pass);

    public int ForgotPass(String txtEmail, String txtPass);
}
