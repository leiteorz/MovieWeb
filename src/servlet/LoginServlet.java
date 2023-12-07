package servlet;

import dao.MovieDao;
import dao.UserDao;
import model.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取表单提交的用户名和密码
        String uid = req.getParameter("uid");
        String pwd = req.getParameter("password");

        boolean flag = false;
        User user = null;

        // 验证用户名和密码是否正确
        try {
            user = UserDao.ifUidAndPwdTrue(uid, pwd);
        }catch (Exception e){
            e.printStackTrace();
        }

        if(user != null) flag = true;

        try {
            if (!flag){
                // 密码错误, 跳转登陆页面
                req.getRequestDispatcher("jsp/login.jsp").forward(req, resp);
            }else {
                /**
                 * 设置登陆用户
                 */
                // 获取ServletContext对象
                ServletContext context = getServletContext();
                // 在ServletContext中存储数据
                context.setAttribute("user", user);

                // 跳转首页
                req.getRequestDispatcher("home.do").forward(req, resp);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
