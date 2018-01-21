package Dao;
import java.sql.*;

public class BaseDao {

    Connection connection=null;

    public Connection getConnection(){
        String url="jdbc:mysql://localhost:3306/test";

        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection=DriverManager.getConnection(url,"root","Kaiser.08");
        }catch(Exception e){
            e.printStackTrace();
        }
        return connection;
    }

    public int  doexecutsql(String sql,String arr[]){
        int j =0;
        Connection conn=getConnection();
        try{
            PreparedStatement ps=conn.prepareStatement(sql);
            if(arr!=null && arr.length>0){
                for(int i=0;i<arr.length;i++){
                    ps.setString(i+1, arr[i]);
                }
            }
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return j ;
    }

}
