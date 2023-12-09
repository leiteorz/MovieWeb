package dao;

import model.Movie;
import util.JDBCUtil;

import java.net.ConnectException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MovieDao {
    /**
     * 查询8个喜剧电影放在首页
     */
    public static List<Movie> getEightFunnyMovie() throws Exception{
        List<Movie> movieList = new ArrayList<Movie>();

        Connection conn = JDBCUtil.getConnection();

        String query = "select * from movies where type='喜剧' limit 8";
        Statement statement = conn.createStatement();

        ResultSet rs = statement.executeQuery(query);
        while (rs.next()){
            Movie movie = new Movie();
            movie.setId(rs.getInt(1));
            movie.setName(rs.getString(2));
            movie.setDirector(rs.getString(3));
            movie.setActor(rs.getString(4));
            movie.setYear(rs.getInt(5));
            movie.setCountry(rs.getString(6));
            movie.setLanguage(rs.getString(7));
            movie.setLength(rs.getString(8));
            movie.setImage(rs.getString(9));
            movie.setUrl(rs.getString(10));
            movie.setType(rs.getString(11));
            movie.setDescription(rs.getString(12));

            movieList.add(movie);
        }

        return movieList;
    }

    /**
     * 查询8个动作电影放在首页
     */
    public static List<Movie> getEightActMovie() throws Exception{
        List<Movie> movieList = new ArrayList<Movie>();

        Connection conn = JDBCUtil.getConnection();

        String query = "select * from movies where type='动作' limit 8";
        Statement statement = conn.createStatement();

        ResultSet rs = statement.executeQuery(query);
        while (rs.next()){
            Movie movie = new Movie();
            movie.setId(rs.getInt(1));
            movie.setName(rs.getString(2));
            movie.setDirector(rs.getString(3));
            movie.setActor(rs.getString(4));
            movie.setYear(rs.getInt(5));
            movie.setCountry(rs.getString(6));
            movie.setLanguage(rs.getString(7));
            movie.setLength(rs.getString(8));
            movie.setImage(rs.getString(9));
            movie.setUrl(rs.getString(10));
            movie.setType(rs.getString(11));
            movie.setDescription(rs.getString(12));

            movieList.add(movie);
        }

        return movieList;
    }

    /**
     * 查询8个科幻电影
     */
    public static List<Movie> getEightScienceMovie() throws Exception{
        List<Movie> movieList = new ArrayList<Movie>();

        Connection conn = JDBCUtil.getConnection();

        String query = "select * from movies where type='科幻' limit 8";
        Statement statement = conn.createStatement();

        ResultSet rs = statement.executeQuery(query);
        while (rs.next()) {
            Movie movie = new Movie();
            movie.setId(rs.getInt(1));
            movie.setName(rs.getString(2));
            movie.setDirector(rs.getString(3));
            movie.setActor(rs.getString(4));
            movie.setYear(rs.getInt(5));
            movie.setCountry(rs.getString(6));
            movie.setLanguage(rs.getString(7));
            movie.setLength(rs.getString(8));
            movie.setImage(rs.getString(9));
            movie.setUrl(rs.getString(10));
            movie.setType(rs.getString(11));
            movie.setDescription(rs.getString(12));

            movieList.add(movie);
        }

        return movieList;
    }

    /**
     * 获取8个动画电影
     */
    public static List<Movie> getEightCartoonMovie() throws Exception{
        List<Movie> movieList = new ArrayList<Movie>();

        Connection conn = JDBCUtil.getConnection();

        String query = "select * from movies where type='动画' limit 8";
        Statement statement = conn.createStatement();

        ResultSet rs = statement.executeQuery(query);
        while (rs.next()) {
            Movie movie = new Movie();
            movie.setId(rs.getInt(1));
            movie.setName(rs.getString(2));
            movie.setDirector(rs.getString(3));
            movie.setActor(rs.getString(4));
            movie.setYear(rs.getInt(5));
            movie.setCountry(rs.getString(6));
            movie.setLanguage(rs.getString(7));
            movie.setLength(rs.getString(8));
            movie.setImage(rs.getString(9));
            movie.setUrl(rs.getString(10));
            movie.setType(rs.getString(11));
            movie.setDescription(rs.getString(12));

            movieList.add(movie);
        }

        return movieList;
    }

    /**
     * 查询8个悬疑电影
     */
    public static List<Movie> getEightSuspenseMovie() throws Exception{
        List<Movie> movieList = new ArrayList<Movie>();

        Connection conn = JDBCUtil.getConnection();

        String query = "select * from movies where type='悬疑' limit 8";
        Statement statement = conn.createStatement();

        ResultSet rs = statement.executeQuery(query);
        while (rs.next()) {
            Movie movie = new Movie();
            movie.setId(rs.getInt(1));
            movie.setName(rs.getString(2));
            movie.setDirector(rs.getString(3));
            movie.setActor(rs.getString(4));
            movie.setYear(rs.getInt(5));
            movie.setCountry(rs.getString(6));
            movie.setLanguage(rs.getString(7));
            movie.setLength(rs.getString(8));
            movie.setImage(rs.getString(9));
            movie.setUrl(rs.getString(10));
            movie.setType(rs.getString(11));
            movie.setDescription(rs.getString(12));

            movieList.add(movie);
        }

        return movieList;
    }

    /**
     * 根据id查询电影
     */
    public static Movie getMovieById(int movieId) throws Exception{
        Movie movie = new Movie();

        Connection con = JDBCUtil.getConnection();

        String query = "select * from movies where id = ?";
        PreparedStatement preparedStatement = con.prepareStatement(query);
        preparedStatement.setInt(1, movieId);

        ResultSet rs = preparedStatement.executeQuery();

        while (rs.next()){
            movie.setId(rs.getInt(1));
            movie.setName(rs.getString(2));
            movie.setDirector(rs.getString(3));
            movie.setActor(rs.getString(4));
            movie.setYear(rs.getInt(5));
            movie.setCountry(rs.getString(6));
            movie.setLanguage(rs.getString(7));
            movie.setLength(rs.getString(8));
            movie.setImage(rs.getString(9));
            movie.setUrl(rs.getString(10));
            movie.setType(rs.getString(11));
            movie.setDescription(rs.getString(12));
        }

        return movie;
    }

    /**
     * 根据种类查询电影
     */
    public static List<Movie> getMoviesByType(String type) throws Exception{
        List<Movie> movieList = new ArrayList<Movie>();

        Connection con = JDBCUtil.getConnection();

        String query = "select * from movies where type = ?";
        PreparedStatement preparedStatement = con.prepareStatement(query);
        preparedStatement.setString(1, type);

        ResultSet rs = preparedStatement.executeQuery();
        while (rs.next()){
            Movie movie = new Movie();
            movie.setId(rs.getInt(1));
            movie.setName(rs.getString(2));
            movie.setDirector(rs.getString(3));
            movie.setActor(rs.getString(4));
            movie.setYear(rs.getInt(5));
            movie.setCountry(rs.getString(6));
            movie.setLanguage(rs.getString(7));
            movie.setLength(rs.getString(8));
            movie.setImage(rs.getString(9));
            movie.setUrl(rs.getString(10));
            movie.setType(rs.getString(11));
            movie.setDescription(rs.getString(12));

            movieList.add(movie);
        }

        return movieList;
    }

    /**
     * 添加电影
     */
    public static void addMovie(String name, String director, String actor,int year,
                                String country, String language, String length, String image, String url,
                                String type, String description) throws Exception{
        Connection con = JDBCUtil.getConnection();

        String sql = "insert into movies(name, director, actor, year, country, language, length,image, url, type," +
                "description) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement preparedStatement = con.prepareStatement(sql);
        preparedStatement.setString(1, name);
        preparedStatement.setString(2, director);
        preparedStatement.setString(3, actor);
        preparedStatement.setInt(4, year);
        preparedStatement.setString(5, country);
        preparedStatement.setString(6, language);
        preparedStatement.setString(7, length);
        preparedStatement.setString(8, image);
        preparedStatement.setString(9, url);
        preparedStatement.setString(10, type);
        preparedStatement.setString(11, description);

        preparedStatement.executeUpdate();
    }

    /**
     * 修改电影
     */
    public static void editMovie(int id, String name, String director, String actor,int year,
                                String country, String language, String length, String image, String url,
                                String type, String description) throws Exception{
        Connection con = JDBCUtil.getConnection();

        String sql = "update movies set name=?, director=?, actor=?, year=?, country=?, language=?, " +
                "length=?,image=?, url=?, type=?, description=? where id=?";
        PreparedStatement preparedStatement = con.prepareStatement(sql);
        preparedStatement.setString(1, name);
        preparedStatement.setString(2, director);
        preparedStatement.setString(3, actor);
        preparedStatement.setInt(4, year);
        preparedStatement.setString(5, country);
        preparedStatement.setString(6, language);
        preparedStatement.setString(7, length);
        preparedStatement.setString(8, image);
        preparedStatement.setString(9, url);
        preparedStatement.setString(10, type);
        preparedStatement.setString(11, description);
        preparedStatement.setInt(12, id);

        preparedStatement.executeUpdate();
    }

    /**
     * 根据id删除电影
     */
    public static void deleteMovieById(int id) throws Exception{
        Connection con = JDBCUtil.getConnection();

        String sql = "delete from movies where id = ?";
        PreparedStatement preparedStatement = con.prepareStatement(sql);
        preparedStatement.setInt(1, id);

        preparedStatement.executeUpdate();
    }
}
