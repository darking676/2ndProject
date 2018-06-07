package com.admin.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ClaAction {
    public ClaActionForward execute(HttpServletRequest request, HttpServletResponse response)
            throws Exception;
}
