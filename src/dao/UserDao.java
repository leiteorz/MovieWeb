package dao;

import model.User;
import util.JDBCUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
    /**
     * 判断账户、密码是否正确, 返回用户信息
     */
    public static User ifUidAndPwdTrue(String uid, String pwd) throws Exception{
        Connection con = JDBCUtil.getConnection();

        String query = "select * from user where uid=? and pwd=?";
        PreparedStatement preparedStatement = con.prepareStatement(query);
        preparedStatement.setString(1, uid);
        preparedStatement.setString(2, pwd);

        ResultSet rs = preparedStatement.executeQuery();

        User user = null;

        while (rs.next()){
            user = new User();
            user.setId(rs.getInt(1));
            user.setName(rs.getString(2));
            user.setSex(rs.getString(3));
            user.setPwd(rs.getString(4));
            user.setUid(rs.getString(5));
            user.setType(rs.getInt(6));
        }

        return user;
    }

    /**
     * 修改信息
     */
    public static void modifyUserById(int id, String newName, String newPwd) throws Exception{
        Connection con = JDBCUtil.getConnection();

        String sql = "UPDATE user SET name = ?, pwd = ? where id = ?";
        PreparedStatement preparedStatement = con.prepareStatement(sql);
        // 设置参数
        preparedStatement.setString(1, newName);
        preparedStatement.setString(2, newPwd);
        preparedStatement.setInt(3, id);

        // 执行更新操作
        preparedStatement.executeUpdate();
    }

    /**
     * 注册账户
     */
    public static void addNewUser(String name, String sex, String pwd, String uid) throws Exception{
        Connection con = JDBCUtil.getConnection();

        String sql = "insert into user (name, sex, pwd, uid) values (?, ?, ?, ?)";
        PreparedStatement preparedStatement = con.prepareStatement(sql);

        preparedStatement.setString(1, name);
        preparedStatement.setString(2, sex);
        preparedStatement.setString(3, pwd);
        preparedStatement.setString(4, uid);

        // 执行
        preparedStatement.executeUpdate();
    }
}
