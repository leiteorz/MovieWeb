package servlet;

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
import java.util.List;

@WebServlet(urlPatterns = "/home.do")
public class HomeServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        resp.setContentType("text/html;charset=GBK");

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
         * 从数据库中获取电影信息
         */
        List<Movie> funnyMovies = null;
        List<Movie> actionMovies = null;
        List<Movie> scienceMovies = null;
        List<Movie> cartoonMovies = null;
        List<Movie> suspenseMovies = null;
        try {
            funnyMovies = MovieDao.getEightFunnyMovie();  // 喜剧
            actionMovies = MovieDao.getEightActMovie(); // 动作
            scienceMovies = MovieDao.getEightScienceMovie();    // 科幻
            cartoonMovies = MovieDao.getEightCartoonMovie();    // 动漫
            suspenseMovies = MovieDao.getEightSuspenseMovie();  // 悬疑
        }catch (Exception e){
            e.printStackTrace();
        }

        req.setAttribute("funnyMovies", funnyMovies);
        req.setAttribute("actionMovies", actionMovies);
        req.setAttribute("scienceMovies", scienceMovies);
        req.setAttribute("cartoonMovies", cartoonMovies);
        req.setAttribute("suspenseMovies", suspenseMovies);

        try{
            // 转发到JSP页面
            req.getRequestDispatcher("jsp/home.jsp").forward(req, resp);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
        doGet(req, resp);
    }
}
