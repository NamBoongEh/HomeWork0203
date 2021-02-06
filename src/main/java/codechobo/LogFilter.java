package codechobo;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@WebFilter( filterName = "filter", value = "*.jsp")
public class LogFilter implements Filter {

    public LogFilter() {
    }

    public void init(FilterConfig config) throws ServletException{
        // filter 초기화 작업 작성
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException{
        System.out.println("[필터 start] " + new Date());

        HttpServletRequest httpServletRequest = (HttpServletRequest)request;
        HttpSession httpSession = httpServletRequest.getSession(false);
        boolean login = false;
        // 2. filter가 작업할 수 있게 요청과 응답 전달(알아서 만들어줬다. 그냥 쓰면 된다.)

        //로그인 했는지 안했는지에 따라서 어디로 보낼지 정한다.
        if(httpSession!=null){
            if(httpSession.getAttribute("filter")!=null)
                login = true;
        }
        if(login) {
            chain.doFilter(request, response);
        }
        else{
            RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
            rd.forward(request, response);
        }

        System.out.println("[필터 close] " + new Date());
    }

    public void destroy(){
        // 필터가 제거되기 전에 수행되어야 할 마무리 작업
    }
} //end
