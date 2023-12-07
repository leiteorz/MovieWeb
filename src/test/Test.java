package test;


import dao.MovieDao;
import model.Movie;

import java.util.List;

public class Test {
    public static void main(String[] args){
        List<Movie> funnyMovies = null;
        try {
            funnyMovies = MovieDao.getEightFunnyMovie();  // 喜剧
            for (Movie movie : funnyMovies){
                System.out.println(movie.toString());
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
