package mvc.service;

import mvc.model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface IAccountService {
    void updateCustomer(Customer customerUpdate);

    List<Customer> selectAllCustomer() throws SQLException;


    Customer selectByIdCustomer(int customerId);
}
