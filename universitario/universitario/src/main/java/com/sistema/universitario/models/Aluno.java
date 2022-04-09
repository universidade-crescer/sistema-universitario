package com.sistema.universitario.models;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name="\"Aluno\"", uniqueConstraints = {
        @UniqueConstraint(columnNames = "ID_ALUNO"),
        @UniqueConstraint(columnNames = "NOME"),
        @UniqueConstraint(columnNames = "CPF"),
        @UniqueConstraint(columnNames = "RUA"),
        @UniqueConstraint(columnNames = "NUM"),
        @UniqueConstraint(columnNames = "BAIRRO"),
        @UniqueConstraint(columnNames = "CIDADE"),
        @UniqueConstraint(columnNames = "CEP")
})

public class Aluno {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column (name = "ID_ALUNO", nullable = false)
    private Integer id;
    @ManyToOne
    @JoinColumn (name = "ID_USER", nullable = false)
    private User user;
    @Column (name = "NOME", nullable = false)
    private String nome;
    @Column (name = "CPF", nullable = false, unique = true)
    private String cpf;
    @Column (name = "RUA", nullable = false)
    private String rua;
    @Column (name = "NUM", nullable = false)
    private String num;
    @Column (name = "BAIRRO", nullable = false)
    private String bairro;
    @Column (name = "CIDADE", nullable = false)
    private String cidade;
    @Column (name = "CEP", nullable = false)
    private String cep;

    public Aluno(String nome, String cpf, String rua, String num, String bairro, String cidade, String cep) {
        super();
        this.nome = nome;
        this.cpf = cpf;
        this.rua = rua;
        this.num = num;
        this.bairro = bairro;
        this.cidade = cidade;
        this.cep = cep;
    }

    public Aluno(){
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getNome() {
        return nome;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Aluno)) return false;
        Aluno aluno = (Aluno) o;
        return getId().equals(aluno.getId());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId());
    }

}
