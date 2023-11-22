package control;
import model.Usuario;
import model.dao.UsuarioDao;

/**
 *
 * @author alunos
 */
public class ControleUsuario {
    // Atributos
    
    // Métodos
    public boolean logar(String email, String senha) throws ClassNotFoundException{
        Usuario usuario = new Usuario();
        usuario.setEmail(email);
        usuario.setSenha(senha);
        
        UsuarioDao usuarioDAO = new UsuarioDao();
        if (usuarioDAO.validarLogin(usuario)==null){
            return false;
        }else{
            return true;
        }        
    }           
}
