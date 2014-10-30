package bean;
public class Usuario {
    private int usuarioID;
    private String nome;
    private String senha;
    private String telefone;
    private String email;
    private int perfil;
    private int statusDoUsuario;
    private String observacao;
    private String rg;
    private String cpf;

     public int getUsuarioID() {
        return usuarioID;
    }

    public void setUsuarioID(int usuarioID) {
        this.usuarioID = usuarioID;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPerfil() {
        return perfil;
    }

    public void setPerfil(int perfil) {
        this.perfil = perfil;
    }

    public int getStatusDoUsuario() {
        return statusDoUsuario;
    }

    public void setStatusDoUsuario(int statusDoUsuario) {
        this.statusDoUsuario = statusDoUsuario;
    }   
    
        public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }
    
     public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }
     public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
}
