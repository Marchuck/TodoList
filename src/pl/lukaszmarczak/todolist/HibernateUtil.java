package pl.lukaszmarczak.todolist;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * TodoList
 *
 * @author Lukasz Marczak
 * @since 19 maj 2016.
 * 17 : 42
 */
public class HibernateUtil {

    private static final SessionFactory sessionFactory;

    static {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            sessionFactory = new Configuration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        System.out.println("getSessionFactory");
        return sessionFactory;
    }

}