package pl.lukaszmarczak.todolist;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;


/**
 * TodoList
 *
 * @author Lukasz Marczak
 * @since 19 maj 2016.
 * 17 : 30
 */
public class TodoDbHibernateManager {

    public static List<TodoItem> getToDoItems() {
        List<TodoItem> items = new ArrayList<>();
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        //save example - without transaction
        Session session = sessionFactory.openSession();
        Criteria criteria = session.createCriteria(TodoItem.class);

// To get records having salary less than 2000
        //criteria.add(Restrictions.lt("salary", 2000));
        List<TodoItem> users = (List<TodoItem>) criteria.list();

        if (users != null) for (TodoItem it : users) System.out.println("next todo: " + it.getText());

        System.out.println("transaction saved");
        session.close();

        return items;
    }

    public static void save(String text,String date) {
        System.out.println("Record saving...");
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        System.out.println("session factory created...");
        //save example - without transaction
        Session session = sessionFactory.openSession();
        System.out.println("session factory opened...");
        //save example - with transaction
        Transaction tx1 = session.beginTransaction();
        TodoItem item = new TodoItem();
        item.setText(text);
        item.setDone(false);
        item.setDate(date);
        long id1 = (Long) session.save(item);
        System.out.println("1. Employee save called with transaction, id=" + id1);
        tx1.commit();
        System.out.println("transaction saved");
        session.close();
        System.out.println("session closed");

    }

    public static void update(TodoItem item) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

        //save example - without transaction
        Session session = sessionFactory.openSession();
        Transaction tx1 = session.beginTransaction();
        TodoItem toUpdateItem = (TodoItem) session.load(TodoItem.class, item.getId());

        //update some data
        System.out.println("Employee Details=" + toUpdateItem);
        toUpdateItem.setId(item.getId());
        toUpdateItem.setDone(item.isDone());
        toUpdateItem.setText(item.getText());
        toUpdateItem.setDate(item.getDate());
        session.update(toUpdateItem);
        System.out.println("6. Before committing save transaction");
        tx1.commit();
        session.close();
    }

    public static void delete(long itemId) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

        //save example - without transaction
        Session session = sessionFactory.openSession();
        Transaction tx1 = session.beginTransaction();
        TodoItem toUpdateItem = (TodoItem) session.load(TodoItem.class, itemId);

        //update some data
        System.out.println("Employee Details=" + toUpdateItem);

        session.delete(toUpdateItem);
        System.out.println("6. Before committing save transaction");
        tx1.commit();
        session.close();
    }
}
