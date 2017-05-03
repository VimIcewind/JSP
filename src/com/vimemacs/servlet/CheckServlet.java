package com.vimemacs.servlet;

import com.vimemacs.entity.User;
import com.vimemacs.service.CheckUserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by hwd on 2015/10/4.
 */
public class CheckServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private CheckUserService cku = new CheckUserService();

    public CheckServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uname = req.getParameter("uname");
        String passwd = req.getParameter("upwd");

        RequestDispatcher rd = null;
        String forward = null;

        if (uname == null || passwd == null) {
            req.setAttribute("msg", "用户名或者密码为空！");
            rd = req.getRequestDispatcher("/18/error.jsp");
            rd.forward(req, resp);
        } else {
            User user = new User();
            user.setName(uname);
            user.setPassword(passwd);
            boolean bool = cku.check(user);

            if (bool) {
                forward = "/18/success.jsp";
            } else {
                req.setAttribute("msg", "用户名或者密码输入错误，请重新输入！");
                forward = "/18/error.jsp";
            }

            rd = req.getRequestDispatcher(forward);
            rd.forward(req, resp);
        }
    }
}
