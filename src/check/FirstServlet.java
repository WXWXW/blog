package check;

import java.io.IOException;
import java.io.PrintWriter;

import Dao.BlogDao;
import JavaBean.User;
import Dao.UserDao;
import java.util.*;

public class FirstServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        PrintWriter out= response.getWriter();
        String username=request.getParameter("username");
        String userpass=request.getParameter("userpass");
        User U=new User();
        U.setUsername(username);
        U.setUserpass(userpass);
        UserDao userdao=new UserDao();
        BlogDao blogDao=new BlogDao();
        List list=new ArrayList();
        list=blogDao.getblogList();
        request.setAttribute("list",list);
        if(userdao.dologin(U)=="success"){
            request.setAttribute("username",U.getUsername());
            request.getRequestDispatcher("./index.jsp").forward(request,response);
        }
        else{
            request.getRequestDispatcher("./login.jsp").forward(request,response);
        }

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
