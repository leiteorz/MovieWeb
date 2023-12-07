package dao;

import model.Movie;
import util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MovieDao {
    /**
     * ��ѯ8��ϲ���Ӱ������ҳ
     */
    public static List<Movie> getEightFunnyMovie() throws Exception{
        List<Movie> movieList = new ArrayList<Movie>();

        Connection conn = JDBCUtil.getConnection();

        String query = "select * from movies where type='ϲ��' limit 8";
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
     * ��ѯ8��������Ӱ������ҳ
     */
    public static List<Movie> getEightActMovie() throws Exception{
        List<Movie> movieList = new ArrayList<Movie>();

        Connection conn = JDBCUtil.getConnection();

        String query = "select * from movies where type='����' limit 8";
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
     * ��ѯ8���ƻõ�Ӱ
     */
    public static List<Movie> getEightScienceMovie() throws Exception{
        List<Movie> movieList = new ArrayList<Movie>();

        Connection conn = JDBCUtil.getConnection();

        String query = "select * from movies where type='�ƻ�' limit 8";
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
     * ��ȡ8��������Ӱ
     */
    public static List<Movie> getEightCartoonMovie() throws Exception{
        List<Movie> movieList = new ArrayList<Movie>();

        Connection conn = JDBCUtil.getConnection();

        String query = "select * from movies where type='����' limit 8";
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
     * ��ѯ8�����ɵ�Ӱ
     */
    public static List<Movie> getEightSuspenseMovie() throws Exception{
        List<Movie> movieList = new ArrayList<Movie>();

        Connection conn = JDBCUtil.getConnection();

        String query = "select * from movies where type='����' limit 8";
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
     * ����id��ѯ��Ӱ
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
     * ���������ѯ��Ӱ
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
}
