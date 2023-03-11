package mvc.repository.impl;

import mvc.model.Customer;
import mvc.repository.DBConnection;
import mvc.repository.IRegisterRepository;
import mvc.service.impl.RegisterService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterRepository implements IRegisterRepository {
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO coffee_blissful.customer (`fullname`,`dob`,`gender`,`email`,`phone_number`,`password`,`address`) VALUES" +
            "(?, ?, ?, ?, ?, ?, ?)";
    @Override
    public void addCustomer(Customer customer) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = null;
        if (connection != null) {
            try {
                preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL);
                preparedStatement.setString(1, customer.getFullName());
                preparedStatement.setDate(2, new java.sql.Date(customer.getDateOfBirth().getTime()));
                preparedStatement.setBoolean(3, customer.getGender());
                preparedStatement.setString(4, customer.getEmail());
                preparedStatement.setString(5, customer.getContact());
                preparedStatement.setString(6, customer.getPassword());
                preparedStatement.setString(7, customer.getAddress());
                System.out.println(preparedStatement);
                preparedStatement.executeUpdate();

            } catch (SQLException e) {
                throw new RuntimeException(e);
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


}
