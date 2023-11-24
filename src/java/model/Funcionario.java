
package model;

/**
 *
 * @author Derick
 */
public class Funcionario {
    //Atrib
    public String id;
    public String nome;
    public String cargo;
    public String setor;
    public String nome_gestor;
    public String nome_equipe;
    public String carga_horaria;
    public String saldo_hrs_extras;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getSetor() {
        return setor;
    }

    public void setSetor(String setor) {
        this.setor = setor;
    }

    public String getNome_gestor() {
        return nome_gestor;
    }

    public void setNome_gestor(String nome_gestor) {
        this.nome_gestor = nome_gestor;
    }

    public String getNome_equipe() {
        return nome_equipe;
    }

    public void setNome_equipe(String nome_equipe) {
        this.nome_equipe = nome_equipe;
    }

    public String getCarga_horaria() {
        return carga_horaria;
    }

    public void setCarga_horaria(String carga_horaria) {
        this.carga_horaria = carga_horaria;
    }

    public String getSaldo_hrs_extras() {
        return saldo_hrs_extras;
    }

    public void setSaldo_hrs_extras(String saldo_hrs_extras) {
        this.saldo_hrs_extras = saldo_hrs_extras;
    }
    
    
    
    
}
