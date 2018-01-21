package Dao;

import JavaBean.User;

import java.sql.*;

public class UserDao {

    BaseDao baseDao=new BaseDao();
    Connection conn=baseDao.getConnection();

    public String dologin(User U) {

        String sql = " select user,pass from users where user=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, U.getUsername());
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                if (rs.getString("pass").equals(U.getUserpass())) {
                    return "success";
                } else {
                    return "error";
                }
            }
        } catch (java.sql.SQLException e) {
            e.printStackTrace();
        }
        return "error";
    }
}
