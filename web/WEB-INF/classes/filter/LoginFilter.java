package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/*")
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {}

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        if (servletRequest instanceof HttpServletRequest) {
            HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
            Object userLoggedIn = httpServletRequest.getSession().getAttribute("client");
            if (userLoggedIn == null &&
                    !httpServletRequest.getRequestURI().contains("/login") &&
                    !httpServletRequest.getRequestURI().contains("/registration") &&
                    !httpServletRequest.getRequestURI().contains("/changeLanguage")) {
                ((HttpServletResponse) servletResponse).sendRedirect("/login");
            } else {
                filterChain.doFilter(servletRequest, servletResponse);
            }
        } else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {}
}
