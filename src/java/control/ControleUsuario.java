package control;
import model.Usuario;
import model.dao.UsuarioDao;

/**
 *
 * @author Richard e Derick
 */
public class ControleUsuario {
    // Atributos
    
    // Métodos
    public boolean logar(String ra, String senha) throws ClassNotFoundException{
        Usuario usuario = new Usuario();
        usuario.setRa(ra);
        usuario.setSenha(senha);
        
        UsuarioDao usuarioDAO = new UsuarioDao();
        if (usuarioDAO.validarLogin(usuario)==null){
            return false;
        }else{
            return true;
        }        
    }
    
    public boolean verificar(String acessoPadrao) throws ClassNotFoundException{
        Usuario usuario = new Usuario();
       
        UsuarioDao usuarioDAO = new UsuarioDao();
        if (usuarioDAO.verificarLogin(usuario)==null){
            return false;
        }else{
            return true;
        }        
    }
}
