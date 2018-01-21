package commitblog;

import Dao.BaseDao;
import Dao.BlogDao;
import FileDeal.FileCreate;
import FileDeal.FileOperate;
import JavaBean.Blog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class CommitBlog extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String content=request.getParameter("editorValue");
        String title=request.getParameter("title");
        String time=request.getParameter("time");
        String url="postblog\\"+time+"-"+title+".html";

        List list=new ArrayList();

        Blog blog=new Blog();
        blog.setUrl(url);
        blog.setTitle(title);
        blog.setBlog(content);
        blog.setTime(time);

        FileCreate fileCreate=new FileCreate();
        fileCreate.createhtml(url,content);

        BaseDao baseDao=new BaseDao();
        BlogDao blogDao=new BlogDao();
        String rs=blogDao.addblog(blog);
        list=blogDao.getblogList();
        request.setAttribute("list",list);

        if(rs.equals("success")){
                request.getRequestDispatcher("./index.jsp").forward(request,response);
        }else{
            request.getRequestDispatcher("./write.jsp").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
