package com.vimemacs.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by hwd on 2015/10/2.
 */
public class HelloServlet extends HttpServlet{
    @Override
    public void init() throws ServletException {
        System.out.println("======== init without parameter ========");
        //super.init();
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("======== init with parameter ========");
        super.init(config);
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("======== service ========");
        PrintWriter pw = resp.getWriter();
        pw.println("Hello, World!");
        pw.close();
    }

    @Override
    public void destroy() {
        System.out.println("======== destroy ========");
        super.destroy();
    }
}
