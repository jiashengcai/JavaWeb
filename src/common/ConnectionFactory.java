package common;

import java.sql.*;

public class ConnectionFactory {
    private static String url="jdbc:mysql://127.0.0.1:3306/sc";
    private static String user="root";
    private static String password="root";
    private static String driver="com.mysql.jdbc.Driver";
    /**
     *  创建数据连接返回一个句柄
     */
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName(driver);
        return DriverManager.getConnection(url,user,password);
    }

    /**
     * 关闭所有连接
     * @param rSet
     * @param pSt
     * @param conn
     * @throws SQLException
     */
    public static void closeConnection(ResultSet rSet, PreparedStatement pSt,Connection conn) throws SQLException {
        if (rSet!=null){
            rSet.close();
        }
        if (pSt!=null){
            pSt.close();
        }
        if (conn!=null){
            conn.close();
        }


    }


}
