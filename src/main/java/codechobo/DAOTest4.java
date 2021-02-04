package codechobo;

import java.sql.*;

public class DAOTest4 {

    public static boolean selectUser(String userId) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        boolean result = false;

        try {
            String url = "jdbc:oracle:thin:@localhost:1521:xe";
            String id = "student";
            String pw = "1234";

            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url,id,pw);
            System.out.println("연결 성공!");

            String sql = "select * from USER_INFO where user_id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userId);

            rs = pstmt.executeQuery();

            while(rs.next()) {
              if(rs.getString("user_id").equals(userId)){
                  result = true;
              }
            }


        }
        catch(Exception e) {
            e.printStackTrace();
            System.out.println("같은 값이 있다는거...ㅠㅠ");
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

        return result;
    }
}
