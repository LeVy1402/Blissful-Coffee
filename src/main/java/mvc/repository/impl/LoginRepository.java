package mvc.repository.impl;


import mvc.model.Customer;
import mvc.repository.DBConnection;
import mvc.repository.ILoginRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

public class LoginRepository implements ILoginRepository {
    private static final String SELECT_LOGIN = "select * from `customer` where `email` = ? and `password` = ?";

    @Override
    public Customer checkLogin(String email, String password) {
        Connection connection = DBConnection.getConnection();
        ResultSet resultSet = null;
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(SELECT_LOGIN);
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, password);

                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    Customer customer = new Customer(resultSet.getString(2), resultSet.getString(5), resultSet.getString(8));
                    return customer;
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return null;
    }

    @Override
    public int ForgotPass(String txtEmail, String txtPass) {
        System.out.println(txtEmail + txtPass);
        int result = 0;
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().prepareStatement("UPDATE customer\n" +
                    "SET password = ?\n" +
                    "WHERE email = ?;");
            preparedStatement.setString(1,txtPass);
            preparedStatement.setString(2,txtEmail);
            result = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public ArrayList<Customer> all() {
        ArrayList<Customer> listCus = new ArrayList<>();
        try {
            Statement statement = DBConnection.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(
                    "SELECT * FROM customer;");
            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String fullname = resultSet.getString(2);
                Date dateOfBirth = resultSet.getDate(3);
                boolean gender = resultSet.getBoolean(4);
                String contact = resultSet.getString(6);
                String email = resultSet.getString(5);
                String password = resultSet.getString(7);
                String profileCustomer = resultSet.getString(8);
                String accountStatus = resultSet.getString(9);
                String address = resultSet.getString(10);
                Customer customer = new Customer(id,fullname,dateOfBirth,gender,contact,email,password,profileCustomer,accountStatus,address);
                listCus.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listCus;
    }

}


