package org.filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import org.helpers.GlobalHelper;

public class PageFilter implements Filter {

  private FilterConfig filterConfig = null;

  public PageFilter() {
  }

  public void doFilter(ServletRequest request, ServletResponse response,
          FilterChain chain) throws IOException, ServletException {
    if (request instanceof HttpServletRequest) {
      GlobalHelper.msg(String.format("filtering request for: %s", ((HttpServletRequest) request).getRequestURL()));
    }
    chain.doFilter(request, response);
  }

  public void init(FilterConfig filterConfig) {
    this.filterConfig = filterConfig;
    GlobalHelper.msg("Filter initialized . . .");
  }

  @Override
  public void destroy() {
  }
}
