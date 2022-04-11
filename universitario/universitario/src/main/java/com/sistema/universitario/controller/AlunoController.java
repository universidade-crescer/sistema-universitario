package com.sistema.universitario.controller;

import com.sistema.universitario.models.Aluno;
import com.sistema.universitario.repositories.AlunoRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping ("/aluno")
public class AlunoController {

    private final AlunoRepository alunoRepository;
    public AlunoController(AlunoRepository alunoRepository) {
        this.alunoRepository = alunoRepository;
         }

    @GetMapping
    public List<Aluno> getAll(){
        return this.alunoRepository.findAll();
    }

    @PostMapping
    public Aluno save(@RequestBody Aluno aluno){
        return this.alunoRepository.save(aluno);
    }


}
