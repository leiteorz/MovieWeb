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


@WebServlet(urlPatterns = "/edit_movie.do")
public class EditMovieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.valueOf(req.getParameter("movieId"));

        try {
            Movie movie = MovieDao.getMovieById(id);
            System.out.println(movie);
            req.setAttribute("movie", movie);
        }catch (Exception e){
            e.printStackTrace();
        }

        req.getRequestDispatcher("jsp/edit_movie.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=GBK");

        /**
         * 先检查这个用户是不是管理员
         */
        ServletContext context = getServletContext();
        User user = (User) context.getAttribute("user");
        if (user == null || user.getType()==0){
            req.getRequestDispatcher("home.do").forward(req, resp);
        }else{
            // 获取表单提交的信息
            int id = Integer.parseInt(req.getParameter("movieId"));
            String name = req.getParameter("name");
            String director = req.getParameter("director");
            String actor = req.getParameter("actor");
            int year = Integer.valueOf(req.getParameter("year"));
            String country = req.getParameter("country");
            String language = req.getParameter("language");
            String length = req.getParameter("length");
            String image = req.getParameter("image");
            String url = req.getParameter("url");
            String type = req.getParameter("type");
            String description = req.getParameter("description");

            try {
                MovieDao.editMovie(id, name, director, actor, year, country, language, length, image, url, type, description);
            }catch (Exception e){
                e.printStackTrace();
            }

            req.getRequestDispatcher("jsp/admin_user.jsp").forward(req,resp);
        }
    }
}
