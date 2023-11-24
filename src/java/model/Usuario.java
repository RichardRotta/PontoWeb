
package model;

/**
 *
 * @author Richard e Derick
 */
public class Usuario {
    // Atributos
    private String email;
    private String senha;    
            
    //Métodos
    public String getEmail() {
        return this.email;
    }

    public String getSenha() {
        return this.senha;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
}
