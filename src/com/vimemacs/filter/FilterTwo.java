package com.vimemacs.filter;

import javax.servlet.*;
import java.io.IOException;

/**
 * Created by hwd on 2015/10/5.
 */
public class FilterTwo implements Filter {

    public FilterTwo() {
        System.out.println("======== FilterTwo 构造函数 ========");
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("======== FilterTwo 初始化方法 ========");
        String initParam = filterConfig.getInitParameter("param");
        System.out.println(" param == " + initParam);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("======== FilterTwo 开始执行doFilter方法 ========");
        filterChain.doFilter(servletRequest, servletResponse);
        System.out.println("======== FilterTwo 结束执行doFilter方法 ========");
    }

    @Override
    public void destroy() {
        System.out.println("======== FilterTwo 销毁方法 ========");
    }
}
