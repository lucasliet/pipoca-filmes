package ads.pipoca.model.service;

import java.io.IOException;
import java.util.ArrayList;

import ads.pipoca.model.dao.FilmeDAO;
import ads.pipoca.model.entity.Filme;

public class FilmeService {
    public ArrayList<Filme> listarFilmes() throws IOException {
        FilmeDAO dao = new FilmeDAO();
        return dao.listarFilmes();
    }

    public Filme buscarFilme(int id) throws IOException {
        FilmeDAO dao = new FilmeDAO();
        return dao.buscarFilme(id);
    }

    public int deletarFilme(int id) throws IOException {
        FilmeDAO dao = new FilmeDAO();
        return dao.deletarFilme(id);
    }

    public int inserirFilme(Filme filme) throws IOException {
        FilmeDAO dao = new FilmeDAO();
        return dao.inserirFilme(filme);
    }

    public Filme atualizarFilme(Filme filme) throws IOException {
        FilmeDAO dao = new FilmeDAO();
        return dao.atualizarFilme(filme);
    }
}