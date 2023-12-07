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

@WebServlet(urlPatterns = "/film_type.do")
public class FilmTypeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String type = req.getParameter("type");
        List<Movie> movieList = null;

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

        try{
            movieList = MovieDao.getMoviesByType(type);
        }catch (Exception e){
            e.printStackTrace();
        }

        req.setAttribute("movieList",movieList);
        req.setAttribute("type", type);

        try{
            // 转发到JSP页面
            req.getRequestDispatcher("jsp/film_type.jsp").forward(req, resp);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
