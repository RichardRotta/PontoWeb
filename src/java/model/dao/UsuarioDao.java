package model.dao;

import model.Usuario;
import java.sql.*;
import util.ConectaDB;

/**
 *
 * @author Richard e Derick
 */
public class UsuarioDao {
    // Atrib.
    
    // Métodos
    public String validarLogin(Usuario usuario) throws ClassNotFoundException {
    Connection conexao = null;
    try {
        conexao = ConectaDB.conectar();
        Statement stmt = conexao.createStatement();
        String sql = "SELECT acesso FROM usuario WHERE ra = '" + usuario.getRa() + "' and senha = '" + usuario.getSenha() + "'";
        ResultSet rs = stmt.executeQuery(sql);

        if (rs.next()) {
            String acesso = rs.getString("acesso");
            conexao.close();
            return acesso;
        } else {
            conexao.close();
            return null;
        }
    } catch (SQLException ex) {
        System.out.println(" Exception: " + ex.toString());
        return null;
    }
}

}
