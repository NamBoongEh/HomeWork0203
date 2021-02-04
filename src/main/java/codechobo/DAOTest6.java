package codechobo;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DAOTest6 {

    public static void main(String[] args) {

        List<User> list = selectAllUsers();
        System.out.println(list);


    }

    public static List<User> selectAllUsers(){
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        User u = null;
        ArrayList<User> list = new ArrayList<User>();

        try {
            String url = "jdbc:oracle:thin:@localhost:1521:xe";
            String id = "student";
            String pw = "1234";


            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url, id, pw);

            System.out.println("연결 성공!^-^b");

            String sql = "select * from user_info";
            pstmt = conn.prepareStatement(sql);

            rs = pstmt.executeQuery();

            while(rs.next()) {
                String user_id = rs.getString("user_id");
                String password = rs.getString("password");
                String name = rs.getString("name");
                String email = rs.getString("email");

                u = new User(user_id,password,name,email);
                list.add(u);
            }

        }
        catch(Exception e) {
            e.printStackTrace();
            System.out.println("연결 실패ㅠㅠ");
        }
        finally {
            if(rs!=null) {
                try {
                    rs.close();
                }
                catch(SQLException sqle) {
                }
            }
            if(pstmt!=null) {
                try {
                    pstmt.close();
                }
                catch(SQLException sqle) {
                }
            }
            if(conn!=null) {
                try {
                    conn.close();
                }
                catch(SQLException sqle) {
                }
            }
        }

        return list;
    }

}