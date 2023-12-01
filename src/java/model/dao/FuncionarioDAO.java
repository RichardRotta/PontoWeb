package model.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Funcionario;
import model.Usuario;
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
            String sql = "SELECT ra, nome, cpf, rg, setor, numTelefone, dataNascimento, cargo, cargaHora, horaExtra, acesso from funcionario WHERE ra = '" + funcionario.getRa() + "'";
            ResultSet rs = stmt.executeQuery(sql);

            int n_reg = 0;
            while (rs.next()) {
                // "popular o obj funcionario"
                funcionario.setRa(rs.getString("ra"));
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
    
    public Funcionario consultarRaAtualizarFunc(Funcionario funcionario) {
        Connection conexao = null;

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            String sql = "SELECT ra, senha, nome, cpf, rg, setor, numTelefone, dataNascimento, cargo, cargaHora, horaExtra, acesso from funcionario WHERE ra = '" + funcionario.getRa() + "'";
            ResultSet rs = stmt.executeQuery(sql);

            int n_reg = 0;
            while (rs.next()) {
                // "popular o obj funcionario"
                funcionario.setRa(rs.getString("ra"));
                funcionario.setSenha(rs.getString("senha"));
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
    
    public Funcionario consultaPessoal(Funcionario funcionario) {
        Connection conexao = null;

        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            String sql = "SELECT nome, setor, cargo, cargaHora, horaExtra from funcionario WHERE ra = '" + funcionario.getRa() + "'";
            ResultSet rs = stmt.executeQuery(sql);

            int n_reg = 0;
            while (rs.next()) {
                // "popular o obj funcionario"
                funcionario.setNome(rs.getString("nome"));
                funcionario.setSetor(rs.getString("setor"));
                funcionario.setCargo(rs.getString("cargo"));
                funcionario.setCargaHora(rs.getString("cargaHora"));
                funcionario.setHoraExtra(rs.getString("horaExtra"));
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
    
    public List consultaSetor() {
        Connection conexao = null;

        Usuario usuario = new Usuario();
        Funcionario funcionario = new Funcionario();
        
        List listaPontoSetor = new ArrayList();
        
        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            String sql = "SELECT nome, setor, cargo, cargaHora, horaExtra from funcionario WHERE setor = '" + funcionario.getSetor() + "'";
            ResultSet rs = stmt.executeQuery(sql);

            int n_reg = 0;
            while (rs.next()) {
//                Funcionario funcionario = new Funcionario();
                funcionario.setNome(rs.getString("nome"));
                funcionario.setSetor(rs.getString("setor"));
                funcionario.setCargo(rs.getString("cargo"));
                funcionario.setCargaHora(rs.getString("cargaHora"));
                funcionario.setHoraExtra(rs.getString("horaExtra"));
                
                listaPontoSetor.add(funcionario);
                
                n_reg++;
            }
            conexao.close();

            if (n_reg == 0) {
                return null;
            } else {
                return listaPontoSetor;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Exception: " + ex.toString());
            return null;
        }
    }
    
    public List consultaRh() {
        Connection conexao = null;

        List listaPontoRh = new ArrayList();
        
        try {
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
            String sql = "SELECT nome, setor, cargo, cargaHora, horaExtra from funcionario WHERE acesso <> 'admin'";
            ResultSet rs = stmt.executeQuery(sql);

            int n_reg = 0;
            while (rs.next()) {
                // "popular o obj funcionario"
                Funcionario funcionario = new Funcionario();
                funcionario.setNome(rs.getString("nome"));
                funcionario.setSetor(rs.getString("setor"));
                funcionario.setCargo(rs.getString("cargo"));
                funcionario.setCargaHora(rs.getString("cargaHora"));
                funcionario.setHoraExtra(rs.getString("horaExtra"));
                
                listaPontoRh.add(funcionario);
                
                n_reg++;
            }
            conexao.close();

            if (n_reg == 0) {
                return null;
            } else {
                return listaPontoRh;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(" Exception: " + ex.toString());
            return null;
        }
    }

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

            String sql = "UPDATE funcionario SET ra='" + funcionario.getRa() + "', senha='" + funcionario.getSenha() 
                    + "', nome='" + funcionario.getNome() + "', cpf='" + funcionario.getCpf() + "', rg='" + funcionario.getRg() 
                    + "', setor='" + funcionario.getSetor()+ "', numTelefone='" + funcionario.getNumTelefone() 
                    + "', dataNascimento='" + funcionario.getDataNascimento() + "', cargo='" + funcionario.getCargo() 
                    + "', cargaHora='" + funcionario.getCargaHora()+ "', horaExtra='" + funcionario.getHoraExtra() 
                    + "', acesso='" + funcionario.getAcesso() + "' WHERE ra = '" + funcionario.getRa() + "'";

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
