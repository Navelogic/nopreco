package model;

public class Pessoa {
  private int id;
  private String nomePessoa;
  private String emailPessoa;
  private String senhaPessoa;
  private String enderecoPessoa;
  private String cpf;
  private String telefonePessoa;

  public int getId() {
    return id;
  };
  public void setId(int id) {
    this.id = id;
  };
  public String getNomePessoa() {
    return nomePessoa;
  }
  public void setNomePessoa(String nomePessoa){
    this.nomePessoa = nomePessoa;
  }
  public String getEmailPessoa() {
    return emailPessoa;
  }
  public void setEmailPessoa(String emailPessoa){
    this.emailPessoa = emailPessoa;
  }
  public String getsenhaPessoa(){
    return senhaPessoa;
  }
  public void setsenhaPessoa(String senhaPessoa){
    this.senhaPessoa = senhaPessoa;
  }
  public String getEnderecoPessoa(){
    return enderecoPessoa;
  }
  public void setEnderecoPessoa(String enderecoPessoa){
    this.enderecoPessoa = enderecoPessoa;
  }
  public String getCpf(){
    return cpf;
  }
  public void setCpf(String cpf){
    this.cpf = cpf;
  }
  public String getTelefonePessoa(){
    return telefonePessoa;
  }
  public void setTelefonePessoa(String telefonePessoa){
    this.telefonePessoa = telefonePessoa;
  }
}