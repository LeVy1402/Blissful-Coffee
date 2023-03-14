package mvc.repository.impl;

import mvc.model.Customer;
import mvc.repository.DBConnection;
import mvc.repository.IAccountRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AccountRepository implements IAccountRepository {
    private static final String SELECT_ALL_CUSTOMER = "SELECT `customer_id` ,`fullname`,`dob`,`gender`,`email`,`phone_number`,`profile_img`,`password`,`account_status`,`address` from `customer`";
    private static final String SELECT_CUSTOMER_BY_ID = "SELECT `customer_id` ,`fullname`,`dob`,`gender`,`email`,`phone_number`,`profile_img`,`password`,`account_status`,`address` from `customer` where `customer_id` = ?";
    private static final String UPDATE_CUSTOMER_SQL =  "UPDATE `customer` set `fullname` = ?, `dob`=?, `gender`=?, `email` =?,`phone_number` =?,`address` =?  where `customer_id` = ?;";

    @Override
    public List<Customer> selectAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    int customerId = resultSet.getInt("customer_id");
                    String fullName = resultSet.getString("fullname");
                    Date dateOfBirth = resultSet.getDate("dob");
                    boolean gender = resultSet.getBoolean("gender");
                    String contact = resultSet.getString("phone_number");
                    String email = resultSet.getString("email");
                    String password = resultSet.getString("password");
                    String profileCustomer = resultSet.getString("profile_img");
                    String accountStatus = resultSet.getString("account_status");
                    String address = resultSet.getString("address");
                    Customer customer = new Customer(customerId, fullName, dateOfBirth, gender ,contact, email, password, profileCustomer, accountStatus, address);
                    customerList.add(customer);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return customerList;
    }

    @Override
    public void updateCustomer(Customer customer) {
        int rowUpdate = 0;
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER_SQL);
                preparedStatement.setString(1, customer.getFullName());
                preparedStatement.setDate(2, (java.sql.Date) customer.getDateOfBirth());
                preparedStatement.setBoolean(3, customer.getGender());
                preparedStatement.setString(4, customer.getEmail());
                preparedStatement.setString(5, customer.getContact());
                preparedStatement.setString(6, customer.getAddress());
                preparedStatement.setInt(7, customer.getCustomerId());
                rowUpdate = preparedStatement.executeUpdate();
            } catch (SQLException ex) {
                throw new RuntimeException(ex);
            } finally {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
    }

    @Override
    public Customer selectByIdCustomer(int customerId) {
        Customer customer = null;
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID);
                preparedStatement.setInt(1,customerId);
                resultSet = preparedStatement.executeQuery();
                if (resultSet.next()) {
                    String fullName = resultSet.getString("fullname");
                    Date dateOfBirth = resultSet.getDate("dob");
                    boolean gender = resultSet.getBoolean("gender");
                    String contact = resultSet.getString("phone_number");
                    String email = resultSet.getString("email");
                    String password = resultSet.getString("password");
                    String profileCustomer = resultSet.getString("profile_img");
                    String accountStatus = resultSet.getString("account_status");
                    String address = resultSet.getString("address");
                    customer = new Customer(customerId, fullName, dateOfBirth, gender ,contact, email, password, profileCustomer, accountStatus, address);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } finally {
                try {
                    resultSet.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                DBConnection.close();
            }
        }
        return customer;
    }
}
