package com.admin.action;

import javax.servlet.http.*;

public interface LecAction {
    public LecActionForward execute(HttpServletRequest request, HttpServletResponse response)
            throws Exception;
}

