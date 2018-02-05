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
        List<CourseBean> list=new ArrayList<CourseBean>();
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

    /**
     * 添加 课程信息
     * 结果返回-1出错
     * @param c
     */
    public int add(CourseBean c) throws SQLException, ClassNotFoundException {
        Connection conn=null;
        PreparedStatement pst=null;
        ResultSet rst=null;
        try {
            String sql="insert into tbl_course values(?,?,?,?,?)";
            Object[] pars={
                    c.getId(),c.getName(),c.getCredit(),c.getCredit(),c.getTeacherid()
            };
            conn=ConnectionFactory.getConnection();
            pst=conn.prepareStatement(sql);
            pst.setObject(1,pars);
        }finally {
            ConnectionFactory.closeConnection(rst,pst,conn);
        }
        return -1;
    }

    /**
     * 通过id删除
     * @return true 成功， false失败
     * @param id
     */
    public boolean delete(long id) throws SQLException {
        Connection conn=null;
        PreparedStatement pst=null;
        ResultSet rst=null;
        try {
            conn=ConnectionFactory.getConnection();
            String sql="DELETE from tbl_course where id=? ";
            pst =conn.prepareStatement(sql);
            pst.setLong(1,id);
            return pst.execute();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            ConnectionFactory.closeConnection(rst,pst,conn);
        }
        return false;
    }

    /**
     * 通过id查询课程信息
     * @param id
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException
     */
    public String findDescriptionById(long id) throws SQLException, ClassNotFoundException {
        String des;
        Connection conn=null;
        PreparedStatement pst=null;
        ResultSet rst=null;
        try {
            conn=ConnectionFactory.getConnection();
            String sql="select description from tbl_course where id=? ";
            pst =conn.prepareStatement(sql);
            pst.setLong(1,id);
            rst=pst.executeQuery();
            des=rst.toString();
            return des;
        }finally {
            ConnectionFactory.closeConnection(rst,pst,conn);
        }
    }

    /**
     * 判断是否存在课程
     * @param id
     * @return
     */
    public boolean isSet(long id) throws SQLException, ClassNotFoundException {
        Connection conn=null;
        PreparedStatement pst=null;
        ResultSet rst;
        rst=null;
        try{
            conn=ConnectionFactory.getConnection();
            String sql="select * from tbl_course where id="+id;
            pst=conn.prepareStatement(sql);
            rst=pst.executeQuery();
            if (rst==null)
                return false;
        }finally {
            ConnectionFactory.closeConnection(rst,pst,conn);
        }
        return true;
    }


}
