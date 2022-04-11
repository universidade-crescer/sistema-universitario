package com.sistema.universitario.models;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "alunos")
public class Aluno {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn (name = "user_id")
    private User user;

    @Column (name = "nome")
    private String nome;

    @Column (name = "cpf", unique = true)
    private String cpf;

    @Column (name = "rua")
    private String rua;

    @Column (name = "num")
    private String num;

    @Column (name = "bairro")
    private String bairro;

    @Column (name = "cidade")
    private String cidade;

    @Column (name = "cep")
    private String cep;

    @JsonProperty("user_id")
    private void unpackNested(Long user_id) {
        this.user = new User();
        user.setId(user_id);
    }



}
