
package model;

/**
 *
 * @author Richard e Derick
 */
public class Usuario {
    // Atributos
    private String ra;
    private String senha;
    private String acessoPadrao;
    private String acessoGerente;
            
    //Método Construtor
    public Usuario(){
        this.acessoPadrao = "padrao";
        this.acessoPadrao = "gerente";
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

    public void setAcessoPadrao(String acessoPadrao) {
        this.acessoPadrao = acessoPadrao;
    }
    
    public String getAcessoPadrao()
    {
        return this.acessoPadrao;
    }

    public String getAcessoGerente() {
        return this.acessoGerente;
    }
    
}
