package mvc.service.impl;

import mvc.model.Customer;
import mvc.repository.IAccountRepository;
import mvc.repository.impl.AccountRepository;
import mvc.service.IAccountService;

import java.util.List;

public class AccountService implements IAccountService {
    private IAccountRepository iAccountRepository = new AccountRepository();
    @Override
    public void updateCustomer(Customer customer) {
        iAccountRepository.updateCustomer(customer);
    }

    @Override
    public List<Customer> selectAllCustomer() {
        return iAccountRepository.selectAllCustomer();
    }

    @Override
    public Customer selectByIdCustomer(int customerId) {
        return iAccountRepository.selectByIdCustomer(customerId);
    }
}
