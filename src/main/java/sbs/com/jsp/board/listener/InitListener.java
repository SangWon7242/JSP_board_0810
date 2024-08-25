package sbs.com.jsp.board.listener;

import jakarta.servlet.ServletContainerInitializer;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import sbs.com.jsp.board.App;

@WebListener
public class InitListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // System.out.println("웹 어플리케이션 시작시 실행");
        App.init();
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // 어플리케이션 종료 시 실행할 작업을 여기 정의
        System.out.println("웹 어플리케이션 종료시 실행");
    }
}
