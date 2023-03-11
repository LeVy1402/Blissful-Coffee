package mvc.service.impl;

import mvc.model.Customer;
import mvc.repository.IRegisterRepository;
import mvc.repository.impl.RegisterRepository;
import mvc.service.IRegisterService;

public class RegisterService implements IRegisterService {
    private IRegisterRepository iRegisterRepository = new RegisterRepository();

    @Override
    public void addCustomer(Customer customer) {
        iRegisterRepository.addCustomer(customer);
    }
}
