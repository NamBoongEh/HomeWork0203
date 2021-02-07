package codechobo;

import java.util.Date;

public class User implements java.io.Serializable{
    // 변수 생성
    private String id;
    private String name;
    private String pw;
    private String email;
    private Date inDate; //정보 입력일
    private Date upDate; //정보 업데이트일

    public User(){}

    @Override
    public String toString() {
        return id + " " + name + " " + pw + " " + email;
    }

    public User(String id, String name, String pw, String email){
        this.id = id;
        this.name = name;
        this.pw = pw;
        this.email = email;
        this.inDate = new Date();
        this.upDate = inDate;
    }

    //각 변수 별 하나씩 기본 초기화와 참조변수 있는 초기화
    //오른쪽 누르고 generate 눌러서 getter setter 클릭 -> 모든 변수 클릭
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getInDate() {
        return inDate;
    }

    public void setInDate(Date inDate) {
        this.inDate = inDate;
    }

    public Date getUpDate() {
        return upDate;
    }

    public void setUpDate(Date upDate) {
        this.upDate = upDate;
    }

}
