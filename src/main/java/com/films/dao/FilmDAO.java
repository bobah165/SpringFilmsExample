package com.films.dao;

import com.films.model.Film;
import java.util.List;


public interface FilmDAO {

    List<Film> allFilms();
    void add (Film film);
    void delete (Film film);
    void edit (Film film);
    Film getByID (int id);
}
