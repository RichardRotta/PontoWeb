
/**
 *
 * @author Derick
 */
package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class RegistroPontoDAO {

    private Connection connection;

    public RegistroPontoDAO() {
        // Configuração da conexão com o banco de dados (substitua as credenciais e a URL conforme necessário)
        String jdbcUrl = "jdbc:mysql://localhost:3306/seu_banco_de_dados";
        String user = "seu_usuario";
        String password = "sua_senha";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcUrl, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public void registrarPonto(String tipoRegistro, Date horaRegistro) {
        String sql = "INSERT INTO ponto (tipo_registro, hora_registro) VALUES (?, ?)";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, tipoRegistro);
            statement.setTimestamp(2, new java.sql.Timestamp(horaRegistro.getTime()));
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void fecharConexao() {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
