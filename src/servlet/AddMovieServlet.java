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

@WebServlet(urlPatterns = "/add_movie.do")
public class AddMovieServlet extends HttpServlet {
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
                MovieDao.addMovie(name, director, actor, year, country, language, length, image, url, type, description);
            }catch (Exception e){
                e.printStackTrace();
            }

            req.getRequestDispatcher("jsp/admin_user.jsp").forward(req,resp);
        }
    }
}
