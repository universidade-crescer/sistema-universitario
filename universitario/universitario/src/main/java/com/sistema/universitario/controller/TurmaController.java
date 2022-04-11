package com.sistema.universitario.controller;

import com.sistema.universitario.models.Turma;
import com.sistema.universitario.repositories.TurmaRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/turma")
public class TurmaController {
    private final TurmaRepository turmaRepository;

    public TurmaController(TurmaRepository turmaRepository) {
        this.turmaRepository = turmaRepository;
    }

    @GetMapping
    public List<Turma> getAllTurma() { return this.turmaRepository.findAll(); }

    @PostMapping
    public Turma save(@RequestBody Turma turma) {
        return turmaRepository.save(turma);
    }
}
