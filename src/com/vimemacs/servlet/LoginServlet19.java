package com.vimemacs.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by hwd on 2015/10/5.
 */
public class LoginServlet19 extends HttpServlet {
    public LoginServlet19() {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("======== 进入doPost ========");
        String userName = req.getParameter("uname");
        String password = req.getParameter("upwd");

        System.out.println("用户名 ==>> " + userName);
        System.out.println("密码 ==>> " + password);

        String forward = null;

        if (userName.equals("极客学院") && password.equals("123456")) {
            //请求转发
            forward = "/19/success.jsp";
            RequestDispatcher rd = req.getRequestDispatcher(forward);
            rd.forward(req, resp);
        } else {
            //请求转发
            forward = "/19/error.jsp";
            RequestDispatcher rd = req.getRequestDispatcher(forward);
            rd.forward(req, resp);
        }
    }
}
