package servlet;

import dao.CollectDao;
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

@WebServlet(urlPatterns = "/collect.do")
public class CollectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext context = getServletContext();
        User user = (User) context.getAttribute("user");

        List<Movie> collects = null;

        try {
           collects = CollectDao.queryCollectsByUid(user.getId());
        }catch (Exception e){
            e.printStackTrace();
        }

        req.setAttribute("collectList", collects);

        // 转发去collect.jsp
        req.getRequestDispatcher("jsp/collect.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
