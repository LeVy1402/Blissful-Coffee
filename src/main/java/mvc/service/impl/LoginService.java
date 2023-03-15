package mvc.service.impl;

import mvc.model.Customer;
import mvc.repository.ILoginRepository;
import mvc.repository.impl.LoginRepository;
import mvc.service.ILoginService;

import java.util.ArrayList;

public class LoginService implements ILoginService {
    private ILoginRepository iLoginRepository = new LoginRepository();


    @Override
    public Customer checkLogin(String email, String pass) {
        return iLoginRepository.checkLogin(email,pass);
    }

    @Override
    public Customer getCustomerByLogin(String email, String pass) {
        return iLoginRepository.getCustomerByLogin(email,pass);
    }

    @Override
    public int ForgotPass(String txtEmail, String txtPass) {
        return 0;
    }

    @Override
    public ArrayList<Customer> all() {
        return iLoginRepository.all();
    }
}
