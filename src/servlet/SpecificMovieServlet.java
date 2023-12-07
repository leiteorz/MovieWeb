package servlet;

import com.sun.org.apache.xpath.internal.operations.Mod;
import dao.CollectDao;
import dao.MovieDao;
import model.Movie;
import model.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/specific_movie.do")
public class SpecificMovieServlet extends HttpServlet {
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

        int id = Integer.valueOf(req.getParameter("movieId"));
        System.out.println("电影id:" + id);

        /**
         * 根据用户id和电影id判断是否已经被收藏
         */
        try {
            Boolean flag = CollectDao.isCollect(user.getId(), id);
            req.setAttribute("isCollect", flag);
        }catch (Exception e){
            e.printStackTrace();
        }

        try {
            Movie movie = MovieDao.getMovieById(id);
            System.out.println(movie);
            req.setAttribute("movie", movie);
        }catch (Exception e){
            e.printStackTrace();
        }

        try{
            // 转发到JSP页面
            req.getRequestDispatcher("jsp/specific_movie.jsp").forward(req, resp);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
