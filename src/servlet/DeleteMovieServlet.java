package servlet;

import dao.MovieDao;
import model.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/delete_movie.do")
public class DeleteMovieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /**
         * 先检查这个用户是不是管理员
         */
        ServletContext context = getServletContext();
        User user = (User) context.getAttribute("user");

        if (user == null || user.getType()==0){
            req.getRequestDispatcher("home.do").forward(req, resp);
        }else{
            int movieId = Integer.parseInt(req.getParameter("movieId"));

            try {
                MovieDao.deleteMovieById(movieId);
            }catch (Exception e){
                e.printStackTrace();
            }

            req.getRequestDispatcher("jsp/admin_user.jsp").forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
