package mvc.repository;

import mvc.model.Customer;

import java.util.List;

public interface IAccountRepository {
    List<Customer> selectAllCustomer();

    void updateCustomer(Customer customerUpdate);

    Customer selectByIdCustomer(int customerId);
}
