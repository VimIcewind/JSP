package com.vimemacs.filter;

import com.sun.xml.internal.ws.api.message.FilterMessageImpl;

import javax.servlet.*;
import java.io.IOException;

/**
 * Created by hwd on 2015/10/5.
 */
public class EncodingFilter implements Filter {

    private String charEncoding = null;

    public EncodingFilter() {
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        charEncoding = filterConfig.getInitParameter("encoding");
        if (charEncoding == null) {
            throw new ServletException("EncodingFilter中的编码设置为空！！！");
        }
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        if (!charEncoding.equals(servletRequest.getCharacterEncoding())) {
            servletRequest.setCharacterEncoding(charEncoding);
        }
        servletResponse.setCharacterEncoding(charEncoding);
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
