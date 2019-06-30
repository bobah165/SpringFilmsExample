package com.films.service;

import com.films.model.Film;
import java.util.List;

public interface FilmService {
    List<Film> allFilms();
    void add (Film film);
    void delete (Film film);
    void edit (Film film);
    Film getByID (int id);
}
