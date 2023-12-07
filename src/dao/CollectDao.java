package dao;

import model.Movie;
import util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CollectDao {
    /**
     * 根据用户id查询当前用户收藏的电影
     */
    public static List<Movie> queryCollectsByUid(int uid) throws Exception{
        List<Movie> collects = new ArrayList<Movie>();

        Connection con = JDBCUtil.getConnection();

        String sql = "select mid from collect where uid = ?";
        PreparedStatement preparedStatement = con.prepareStatement(sql);

        preparedStatement.setInt(1, uid);

        ResultSet rs = preparedStatement.executeQuery();
        while (rs.next()){
            Movie movie = MovieDao.getMovieById(rs.getInt(1));
            collects.add(movie);
        }

        return collects;
    }

    /**
     * 根据用户id和电影id查询是否已经收藏
     */
    public static boolean isCollect(int uid, int mid) throws Exception{
        boolean flag = false;

        Connection con = JDBCUtil.getConnection();

        String sql = "select * from collect where uid = ? and mid = ?";
        PreparedStatement preparedStatement = con.prepareStatement(sql);
        preparedStatement.setInt(1, uid);
        preparedStatement.setInt(2, mid);

        ResultSet rs = preparedStatement.executeQuery();
        while (rs.next()){
            flag = true;
        }

        return flag;
    }

    /**
     * 根据用户id,电影id取消收藏
     */
    public static void cancelCollect(int uid, int mid) throws Exception{
        Connection con = JDBCUtil.getConnection();

        String sql = "delete from collect where uid = ? and mid = ?";
        PreparedStatement preparedStatement = con.prepareStatement(sql);
        preparedStatement.setInt(1, uid);
        preparedStatement.setInt(2, mid);

        preparedStatement.executeUpdate();
    }

    /**
     * 根据用户id,电影id新增收藏
     */
    public static void addCollect(int uid, int mid) throws Exception{
        Connection con = JDBCUtil.getConnection();

        String sql = "insert into collect(uid, mid) values(?, ?)";
        PreparedStatement preparedStatement = con.prepareStatement(sql);
        preparedStatement.setInt(1, uid);
        preparedStatement.setInt(2, mid);

        preparedStatement.executeUpdate();
    }
}
