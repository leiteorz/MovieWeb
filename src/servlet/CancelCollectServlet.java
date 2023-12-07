package servlet;

import dao.CollectDao;
import model.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/cancel_collect.do")
public class CancelCollectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 获取登陆用户
         */
        // 获取ServletContext对象
        ServletContext context = getServletContext();
        User user = (User) context.getAttribute("user");
        if (user == null){
            req.setAttribute("isLogin", false);
        }else{
            req.setAttribute("isLogin", true);
            req.setAttribute("user", user);
        }

        /**
         * 获取当前的电影id
         */
        int movieId = Integer.parseInt(req.getParameter("movieId"));
        // 删除收藏
        try {
            CollectDao.cancelCollect(user.getId(), movieId);
        }catch (Exception e){
            e.printStackTrace();
        }

        // 跳转
        req.getRequestDispatcher("specific_movie.do?movieId" + movieId).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
