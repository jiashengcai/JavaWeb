package dao;

import bean.CourseBean;
import common.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CourseDao {
    /**
     * 学生dao类 对数据进行增删改查
     */
    public List<CourseBean> findAll() throws SQLException, ClassNotFoundException {
        Connection conn=null;
        PreparedStatement pSt=null;
        ResultSet rSet=null;
        List<CourseBean> list=new ArrayList<>();
        try {
            conn= ConnectionFactory.getConnection();//创建连接
            String sqlFind="select * from tbl_course";
            pSt=conn.prepareStatement(sqlFind);//预处理
            rSet=pSt.executeQuery();//执行
            while (rSet.next()){
                CourseBean cb=new CourseBean();
                cb.setId(rSet.getLong("id"));
                cb.setName(rSet.getString("name"));
                cb.setCredit(rSet.getInt("credit"));
                cb.setDescription(rSet.getString("description"));
                cb.setTeacherid(rSet.getString("teacher_id"));
                list.add(cb);
            }
        }finally {
            try {
                ConnectionFactory.closeConnection(rSet,pSt,conn);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }

}
