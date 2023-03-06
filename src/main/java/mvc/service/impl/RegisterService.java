package mvc.service.impl;

import mvc.repository.IRegisterRepository;
import mvc.repository.impl.RegisterRepository;
import mvc.service.IRegisterService;

public class RegisterService implements IRegisterService {
    private IRegisterRepository customerRepository = new RegisterRepository();

}
