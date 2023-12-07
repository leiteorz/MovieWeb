package servlet;

import dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/register.do")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 首先获取从前端提交过来的注册信息
        String uid = req.getParameter("uid");
        String userName = req.getParameter("user_name");
        String pwd = req.getParameter("pwd");
        String rePwd = req.getParameter("re_pwd");
        String sex = req.getParameter("gender");

        // 判断"密码"和"重复密码"是否一致
        if(!pwd.equals(rePwd)){
            // 不一致,跳转回注册界面
            req.getRequestDispatcher("jsp/register.jsp").forward(req, resp);
        }else{
            // 把信息输入数据库中,并且返回首页
            try {
                UserDao.addNewUser(userName, sex, pwd, uid);
            }catch (Exception e){
                e.printStackTrace();
            }
            // 返回首页
            req.getRequestDispatcher("home.do").forward(req, resp);
        }
    }
}
