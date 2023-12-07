package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtil {
    static String name = "root";
    static String pwd = "123";
    static String url = "jdbc:mysql://localhost:3306/mymovies?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true";

    public static Connection getConnection() throws Exception{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, name, pwd);
        return conn;
    }
}
