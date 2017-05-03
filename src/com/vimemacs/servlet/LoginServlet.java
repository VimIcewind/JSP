package com.vimemacs.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by hwd on 2015/10/2.
 */
public class LoginServlet extends HttpServlet {
//    @Override
//    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String userName = req.getParameter("uname");
//        String password = req.getParameter("upwd");
//
//        System.out.println("用户名 ==>> " + userName);
//        System.out.println("密码 ==>> " + password);
//    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("======== 进入doGet方法 ========");
//        String userName = req.getParameter("uname");
//        String password = req.getParameter("upwd");
//
//        System.out.println("用户名 ==>> " + userName);
//        System.out.println("密码 ==>> " + password);
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

        if (userName.equals("VimIcewind") && password.equals("123456")) {
            //请求转发
            forward = "/17/success.jsp";
            RequestDispatcher rd = req.getRequestDispatcher(forward);
            rd.forward(req, resp);

            //请求重定向
            //resp.sendRedirect(req.getContextPath() + "/17/success.jsp");
            //forward = "www.jikexueyuan.com";
            //resp.sendRedirect(forward);
        } else {
            //请求转发
            forward = "/17/error.jsp";
            RequestDispatcher rd = req.getRequestDispatcher(forward);
            rd.forward(req, resp);

            //请求重定向
            //resp.sendRedirect(req.getContextPath() + "/17/error.jsp");
        }
    }
}
