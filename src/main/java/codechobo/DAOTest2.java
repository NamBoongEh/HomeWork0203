package codechobo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DAOTest2 {

    public static int insertUser(User u) {
        // 이건 나중에 해제할꺼다. 맨 밑에 finally 참고.
        Connection conn = null;
        PreparedStatement pstmt = null;
        System.out.println("인서트 하는 곳에 도착했습니다.");
        int result = 0;

        try {
            //url 연결법
            // jdbc:oracle:thin:  <-여기까진 공통
            // @localhost:####    <-오라클에서 포트 번호를 ####에 넣어주기
            // :##                <-오라클에서 sid ###에 넣어주기
            String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 여기에 뭐가 들어가야할까?
            String id = "student";
            String pw = "1234";

            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url,id,pw);
            System.out.println("내가 연결을 했다니 정말 대단해!d^0^b");

            // ****여기까진 성공*****


            // sql 쿼리(values를 4개 만든건 4개를 넣겠다는 뜻)
            // ㅣuser_id만 다르면 나머지는 같아도 상관이 없다는걸 알 수 있다.
            // ***질문! sysdate는 따로 값을 주지않아도 되는건지?
            String sql = "insert into user_info(user_id, password, name, email) values(?,?,?,?)";

            // sql 미리 컴파일
            pstmt = conn.prepareStatement(sql);
            // 위에서 values 4개 만들었으니 4개를 넣을 값들을 적어준다.
            pstmt.setString(1, u.getId());
            pstmt.setString(2, u.getPw());
            pstmt.setString(3, u.getName());
            pstmt.setString(4, u.getEmail());
            // 쿼리 업데이트 실행(업데이트 된 갯수를 result에 넣는다)
            result = pstmt.executeUpdate();

            System.out.println("데이터 추가 성공!d^0^b");
        }
        catch(Exception e) {
            System.out.println("데이터 추가에 실패했다ㅠㅠ");
            e.printStackTrace();
        }
        //여기 해제 순서 꼭 이 방법대로 진행해야한다!!!!!!!
        finally {
            if(pstmt!=null) {
                try {
                    pstmt.close();
                }
                //1번 : PreparedStatement 객체 해제
                catch(SQLException sqle) {
                }
            }
            if(conn!=null) {
                try {
                    conn.close();
                }
                //2번 : Connection 해제
                catch(SQLException sqle) {
                }
            }
        }

        return result;
    }

} // end of class
