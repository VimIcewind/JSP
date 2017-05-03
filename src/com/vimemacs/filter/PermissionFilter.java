package com.vimemacs.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by hwd on 2015/10/5.
 */
public class PermissionFilter implements Filter {

    public PermissionFilter() {
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("======== PermissionFileter ========");
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;

        String servletPath = req.getServletPath();

        HttpSession session = req.getSession();
        String flag = (String) session.getAttribute("flag");

        if (servletPath != null && (servletPath.equals("/20/login.jsp") || (servletPath.equals("/20/index.jsp")) || servletPath.equals("/loginServlet20"))) {
            filterChain.doFilter(servletRequest, servletResponse);
        } else {
            if (flag !=null && flag.equals("login_success")) {
                filterChain.doFilter(servletRequest, servletResponse);
            } else if (flag !=null && flag.equals("login_error")) {
                req.setAttribute("msg", "登陆失败，请重新登陆！！！<br/>");
                req.setAttribute("return_uri", servletPath);
                RequestDispatcher rd = req.getRequestDispatcher("/20/login.jsp");
                rd.forward(servletRequest, servletResponse);
            } else {
                req.setAttribute("msg", "您尚未登陆！！！");
                req.setAttribute("return_uri", servletPath);
                RequestDispatcher rd = req.getRequestDispatcher("/20/login.jsp");
                rd.forward(servletRequest, servletResponse);
            }
        }
    }

    @Override
    public void destroy() {

    }
}
