package Dao;

import JavaBean.Blog;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

public class BlogDao {
    List list=new ArrayList();
    BaseDao baseDao=new BaseDao();
    Connection conn=baseDao.getConnection();

    public List getblogList() {
        String sql = " select * from blogs order by id desc";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Blog blog=new Blog();
                blog.setTime(rs.getString("time"));
                blog.setTitle(rs.getString("title"));
                blog.setUrl(rs.getString("url"));
                list.add(blog);
            }
        } catch (java.sql.SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public String addblog(Blog blog){
            String sql="insert into blogs (url,title,time) values (?,?,?)";
            String[] arr=new String[3];
            arr[0]=blog.getUrl();
            arr[1]=blog.getTitle();
            arr[2]=blog.getTime();
            baseDao.doexecutsql(sql,arr);
            return "success";
    }
}
