package org.onlinebusiness.servlet.StructsAction;

import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class LogoutStruts implements SessionAware {

    Map<String, Object> session;

    @Override
    public void setSession(Map map) {
        session = map;
    }

    public LogoutStruts() {

    }

    public String sessionLogout() {
        session.clear();
        return "success";
    }
}
