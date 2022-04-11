package com.sistema.universitario.controller;

import com.sistema.universitario.models.Disciplina;
import com.sistema.universitario.repositories.DisciplinaRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/disciplina")
public class DisciplinaController {

    private final DisciplinaRepository disciplinaRepository;

    public DisciplinaController(DisciplinaRepository disciplinaRepository) {
        this.disciplinaRepository = disciplinaRepository;
    }

    @GetMapping
    public List<Disciplina> getAllDiscplina() {
        return this.disciplinaRepository.findAll();
    }

}
