
package model.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Funcionario;
import util.ConectaDB;
    // Data Access Object
public class TintaDAO {
    //Atrib.
    
//    //Métodos
//    public boolean cadastrar(Funcionario tinta) {
//        Connection conexao = null;
//        
//        try{
//            conexao = ConectaDB.conectar();
//            Statement stmt = conexao.createStatement();
//
//            String sql = "INSERT into tinta(nome, descricao, imagem, recomendacaoUso, coresSugeridas) " + 
//                    "values('" + tinta.getNome() + "','" + tinta.getDescricao()+ "','" + tinta.getImage()+
//                    "', '" + tinta.getRecomendacaoUso()+ "','" + tinta.getCoresSugeridas()+ "')";
//            
//            stmt.executeUpdate(sql); // Insert, Delete ou Update            
//            System.out.println(" Registro Inserido! ");            
//            conexao.close();
//            return true;
//                   
//        } catch(ClassNotFoundException | SQLException ex){
//            System.out.println(" Exception: " + ex.toString());
//            return false;
//        }
//    }
//
//    public Funcionario consultarId(Funcionario tinta) {
//        Connection conexao = null;
//        
//        try{
//            conexao = ConectaDB.conectar();
//            Statement stmt = conexao.createStatement();
//            String sql = "SELECT * from tinta WHERE id = '" + tinta.getId()+ "'";
//            ResultSet rs = stmt.executeQuery(sql);
//            
//            int n_reg = 0;
//            while (rs.next()){
//                // "popular o obj tinta"
//                tinta.setNome(rs.getString("nome"));
//                tinta.setDescricao(rs.getString("descricao"));
//                tinta.setImage(rs.getString("imagem"));
//                tinta.setRecomendacaoUso(rs.getString("recomendacaoUso"));
//                tinta.setCoresSugeridas(rs.getString("coresSugeridas"));
//                n_reg++;
//            }
//            conexao.close();
//                   
//            if (n_reg == 0){
//                return null;
//            }else{
//                return tinta;
//            }
//        } catch(ClassNotFoundException | SQLException ex){
//            System.out.println(" Exception: " + ex.toString());
//            return null;
//        }
//    }
//    
//    //Return Tipo método
//    public List buscarTodos() {
//        Connection conexao = null;
//        
//        List listaCor = new ArrayList();
//        
//        try{
//            conexao = ConectaDB.conectar();
//            Statement stmt = conexao.createStatement();
//            String sql = "SELECT * from tinta";
//            ResultSet rs = stmt.executeQuery(sql);
//            
//            int n_reg = 0;
//            while (rs.next()){  
//                Funcionario tinta = new Funcionario();
//                
//                tinta.setId(rs.getString("id"));
//                tinta.setNome(rs.getString("nome"));
//                tinta.setDescricao(rs.getString("descricao"));
//                tinta.setImage(rs.getString("imagem"));
//                tinta.setRecomendacaoUso(rs.getString("recomendacaoUso"));
//                tinta.setCoresSugeridas(rs.getString("coresSugeridas"));
//                
//                listaCor.add(tinta);
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
//    
//    public boolean deletar(Funcionario tinta) {
//        Connection conexao = null;
//        
//        try{
//            conexao = ConectaDB.conectar();
//            Statement stmt = conexao.createStatement();
//            
//            //DELETE FROM tinta WHERE matric = '333';;            
//            String sql = "DELETE FROM tinta WHERE id = '" + tinta.getId() + "'";
//            
//            stmt.executeUpdate(sql); // Insert, Delete ou Update            
//            System.out.println(" Registro Excluído! ");            
//            conexao.close();
//            return true;
//                   
//        } catch(ClassNotFoundException | SQLException ex){
//            System.out.println(" Erro: " + ex.toString());
//            return false;
//        }
//    }
//    
//    public boolean atualizar(Funcionario tinta) {
//        Connection conexao = null;
//        
//        try{
//            conexao = ConectaDB.conectar();
//            Statement stmt = conexao.createStatement();
//            
//            //UPDATE tinta SET nome='João', cargo='Estagiário',end_cep='08544-225',end_comp='Casa 132' WHERE 123            
//            String sql = "UPDATE tinta SET nome='" + tinta.getNome() + "', descricao='" + tinta.getDescricao()+
//                                "',imagem='" + tinta.getImage()+ "',recomendacaoUso='" + tinta.getRecomendacaoUso()+
//                                "',coresSugeridas='" + tinta.getCoresSugeridas()+ "' WHERE id = '" + tinta.getId() + "'";
//            
//            stmt.executeUpdate(sql); // Insert, Delete ou Update        
//            //System.out.println(" SQL: " + sql);
//            
//            System.out.println(" Registro Alterado com sucesso! ");            
//            conexao.close();
//            return true;
//                   
//        } catch(ClassNotFoundException | SQLException ex){
//            System.out.println(" Erro: " + ex.toString());
//            return false;
//        }
//    }

}
