package servlet;

import dao.UserDao;
import model.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/user_center.do")
public class UserCenterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 获取登陆用户信息
         */
        ServletContext context = getServletContext();
        User user = (User) context.getAttribute("user");

        // 获取表单提交的信息
        String newName = req.getParameter("userName");
        String oldPwd = req.getParameter("oldPwd");
        String newPwd = req.getParameter("newPwd");

        // 如果旧密码不匹配
        if (!oldPwd.equals(user.getPwd())){
            // 返回用户中心,并且提示旧密码错误
            req.getRequestDispatcher("jsp/user_center.jsp").forward(req, resp);
        }else{
            // 返回首页,并且更新信息
            user.setName(newName);
            user.setPwd(newPwd);
            context.setAttribute("user", user);

            try {
                UserDao.modifyUserById(user.getId(), newName, newPwd);  // 修改数据库
            }catch (Exception e){
                e.printStackTrace();
            }

            req.getRequestDispatcher("home.do").forward(req, resp);
        }
    }
}
