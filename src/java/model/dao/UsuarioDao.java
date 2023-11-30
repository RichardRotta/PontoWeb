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
    public Usuario obterUsuarioPorRa(Usuario usuario) throws ClassNotFoundException {
        Connection conexao = null;

        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            String sql = "SELECT nome from usuario WHERE ra = '" + usuario.getRa()+ "'";
            ResultSet rs = stmt.executeQuery(sql);

            int n_reg = 0;
            while (rs.next()){
                // "popular o obj funcionario"
                usuario.setNome(rs.getString("nome"));
                n_reg++;
            }
            conexao.close();

            if (n_reg == 0){
                return null;
            }else{
                return usuario;
            }
        } catch(ClassNotFoundException | SQLException ex){
            System.out.println(" Exception: " + ex.toString());
            return null;
        }
//        Connection conexao = null;
//        try {
//            conexao = ConectaDB.conectar();
//            String sql = "SELECT * FROM usuario WHERE ra = ?";
//
//            try (PreparedStatement stmt = conexao.prepareStatement(sql)) {
//                stmt.setString(1, ra);
//
//                try (ResultSet rs = stmt.executeQuery()) {
//                    if (rs.next()) {
//                        Usuario usuario = new Usuario();
//                        usuario.setRa(rs.getString("ra"));
//                        usuario.setNome(rs.getString("nome"));
//                        usuario.setAcesso(rs.getString("acesso"));
//                        // Adicione outros atributos conforme necessário
//
//                        return usuario;
//                    } else {
//                        
//                        return null;
//                    }
//                }
//            }
//        } catch (SQLException | ClassNotFoundException ex) {
//            System.out.println("Exception: " + ex.toString());
//            return null;
//        }
    }
    public void fecharConexao() {
    try {
        Connection conexao = ConectaDB.conectar();
        if (conexao != null && !conexao.isClosed()) {
            conexao.close();
        }
    } catch (SQLException | ClassNotFoundException ex) {
        System.out.println("Exception: " + ex.toString());
    }
}

}

 



