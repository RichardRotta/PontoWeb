package model.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Funcionario;
import util.ConectaDB;

public class FuncionarioDAO {

    //Métodos
    public boolean cadastrarFuncionario(Funcionario funcionario) {
        Connection conexao = null;

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();

            String sql = "INSERT into funcionario(ra, senha, nome, cpf, rg, setor, numTelefone, dataNascimento, cargo, cargaHora, horaExtra, acesso) "
                    + "values('" + funcionario.getRa() + "','" + funcionario.getSenha() + "','" + funcionario.getNome() 
                    + "','" + funcionario.getCpf() + "', '" + funcionario.getRg() + "','" + funcionario.getSetor() 
                    + "','" + funcionario.getNumTelefone()+ "', '" + funcionario.getDataNascimento() 
                    + "','" + funcionario.getCargo() + "','" + funcionario.getCargaHora() + "', '" + funcionario.getHoraExtra() 
                    + "','" + funcionario.getAcesso() + "')";

            stmt.executeUpdate(sql); // Insert, Delete ou Update            
            conexao.close();
            return true;

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Exception: " + ex.toString());
            return false;
        }
    }

    public Funcionario consultarRa(Funcionario funcionario) {
        Connection conexao = null;

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            String sql = "SELECT nome, cpf, rg, setor, numTelefone, dataNascimento, cargo, cargaHora, horaExtra, acesso from funcionario WHERE ra = '" + funcionario.getRa() + "'";
            ResultSet rs = stmt.executeQuery(sql);

            int n_reg = 0;
            while (rs.next()) {
                // "popular o obj funcionario"
                funcionario.setNome(rs.getString("nome"));
                funcionario.setCpf(rs.getString("cpf"));
                funcionario.setRg(rs.getString("rg"));
                funcionario.setSetor(rs.getString("setor"));
                funcionario.setNumTelefone(rs.getString("numTelefone"));
                funcionario.setDataNascimento(rs.getString("dataNascimento"));
                funcionario.setCargo(rs.getString("cargo"));
                funcionario.setCargaHora(rs.getString("cargaHora"));
                funcionario.setHoraExtra(rs.getString("horaExtra"));
                funcionario.setAcesso(rs.getString("acesso"));
                n_reg++;
            }
            conexao.close();

            if (n_reg == 0) {
                return null;
            } else {
                return funcionario;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Exception: " + ex.toString());
            return null;
        }
    }

    public Funcionario consultarRaUsuario(Funcionario funcionario) {
        Connection conexao = null;

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            String sql = "SELECT ra, nome, acesso from funcionario WHERE ra = '" + funcionario.getRa() + "'";
            ResultSet rs = stmt.executeQuery(sql);

            int n_reg = 0;
            while (rs.next()) {
                // "popular o obj funcionario"
                funcionario.setRa(rs.getString("ra"));
                funcionario.setNome(rs.getString("nome"));
                funcionario.setAcesso(rs.getString("acesso"));
                n_reg++;
            }
            conexao.close();

            if (n_reg == 0) {
                return null;
            } else {
                return funcionario;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Exception: " + ex.toString());
            return null;
        }
    }

    //Return Tipo método
//    public List buscarTodos() {
//        Connection conexao = null;
//        
//        List listaCor = new ArrayList();
//        
//        try{
//            conexao = ConectaDB.conectar();
//            Statement stmt = conexao.createStatement();
//            String sql = "SELECT * from funcionario";
//            ResultSet rs = stmt.executeQuery(sql);
//            
//            int n_reg = 0;
//            while (rs.next()){  
//                Funcionario funcionario = new Funcionario();
//                
//                funcionario.setId(rs.getString("id"));
//                funcionario.setNome(rs.getString("nome"));
//                funcionario.setDescricao(rs.getString("descricao"));
//                funcionario.setImage(rs.getString("imagem"));
//                funcionario.setRecomendacaoUso(rs.getString("recomendacaoUso"));
//                funcionario.setCoresSugeridas(rs.getString("coresSugeridas"));
//                
//                listaCor.add(funcionario);
//                        
//                n_reg++;
//            }
//            conexao.close();
//                   
//            if (n_reg == 0){
//                return null;
//            }else{
//                return listaCor;
//            }
//            
//        } catch(ClassNotFoundException | SQLException ex){
//            System.out.println(" Exception: " + ex.toString());
//            return null;
//        }
//    }
    public boolean excluir(Funcionario funcionario) {
        Connection conexao = null;

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();

            //DELETE FROM funcionario WHERE matric = '333';;            
            String sql = "DELETE FROM funcionario WHERE ra = '" + funcionario.getRa() + "'";

            stmt.executeUpdate(sql); // Insert, Delete ou Update            
            System.out.println(" Registro Excluído! ");
            conexao.close();
            return true;

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Erro: " + ex.toString());
            return false;
        }
    }

    public boolean atualizarFuncionario(Funcionario funcionario) {
        Connection conexao = null;

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();

            //UPDATE funcionario SET nome='João', cargo='Estagiário',end_cep='08544-225',end_comp='Casa 132' WHERE 123            
            String sql = "UPDATE funcionario SET ra='" + funcionario.getRa() + "', nome='" + funcionario.getNome()
                    + "',cpf='" + funcionario.getCpf() + "',rg='" + funcionario.getRg() + "',setor='" + funcionario.getSetor()
                    + "',numTelefone='" + funcionario.getNumTelefone() + "',dataNascimento='" + funcionario.getDataNascimento()
                    + "',cargo='" + funcionario.getCargo() + "',cargaHora='" + funcionario.getCargaHora()
                    + "',horaExtra='" + funcionario.getHoraExtra() + "' WHERE ra = '" + funcionario.getRa() + "'";

            stmt.executeUpdate(sql); // Insert, Delete ou Update        
            //System.out.println(" SQL: " + sql);

            System.out.println(" Registro Alterado com sucesso! ");
            conexao.close();
            return true;

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Erro: " + ex.toString());
            return false;
        }
    }

    public boolean atualizarUsuario(Funcionario funcionario) {
        Connection conexao = null;

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();

            //UPDATE funcionario SET nome='João', cargo='Estagiário',end_cep='08544-225',end_comp='Casa 132' WHERE 123            
            String sql = "UPDATE funcionario SET ra='" + funcionario.getRa() + "', nome='" + funcionario.getNome()
                    + "',cpf='" + funcionario.getAcesso() + "' WHERE ra = '" + funcionario.getRa() + "'";

            stmt.executeUpdate(sql); // Insert, Delete ou Update        
            //System.out.println(" SQL: " + sql);

            System.out.println(" Registro Alterado com sucesso! ");
            conexao.close();
            return true;

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Erro: " + ex.toString());
            return false;
        }
    }

}
