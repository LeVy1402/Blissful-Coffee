package mvc.repository.impl;


import mvc.model.Customer;
import mvc.repository.DBConnection;
import mvc.repository.ILoginRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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

}


