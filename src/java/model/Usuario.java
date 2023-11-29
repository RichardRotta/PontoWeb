
package model;

/**
 *
 * @author Richard e Derick
 */
public class Usuario {
    // Atributos
    private String ra;
    private String senha;
    private String acessoAdm;
    private String acessoGerente;
            
    //Método Construtor
    public Usuario(){
        
    }
    
    //Métodos
    public String getRa() {
        return this.ra;
    }

    public String getSenha() {
        return this.senha;
    }

    public void setRa(String ra) {
        this.ra = ra;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getAcessoAdm() {
        return acessoAdm;
    }

    public void setAcessoAdm(String acessoAdm) {
        this.acessoAdm = acessoAdm;
    }

    public String getAcessoGerente() {
        return acessoGerente;
    }

    public void setAcessoGerente(String acessoGerente) {
        this.acessoGerente = acessoGerente;
    }
    
   
}
