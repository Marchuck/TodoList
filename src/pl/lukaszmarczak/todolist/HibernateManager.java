package pl.lukaszmarczak.todolist;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import static pl.lukaszmarczak.todolist.TodoUtils.log;

/**
 * TodoList
 *
 * @author Lukasz Marczak
 * @since 19 maj 2016.
 * 17 : 30
 */
public class HibernateManager {

    public static List<A> getToDoItems() {
        List<A> items = new ArrayList<>();
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        //save example - without transaction
        Session session = sessionFactory.openSession();
        Criteria criteria = session.createCriteria(
                A.class);
        List<A> users = (List<A>) criteria.list();
        // To get records having salary less than 2000
        //criteria.add(Restrictions.lt("salary", 2000));


        // List<A> users = (List<A>)session.createSQLQuery("SELECT * FROM A").addEntity(A.class).list();
        log("results:" + (users != null ? users.size() : "null ;("));
        if (users != null) for (A it : users) System.out.println("next todo: " + it.getText());
        items.addAll(users);
        System.out.println("transaction saved");
     //   session.close();

        return items;
    }

    public static void save(String text, String date) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        System.out.println("session factory created...");
        //save example - without transaction
        Session session = sessionFactory.openSession();
        System.out.println("session factory opened...");
        //save example - with transaction
        Transaction tx1 = session.beginTransaction();
        A item = new A();
        item.setId(UUID.randomUUID().toString().substring(0, 3));
        item.setText(text);
        item.setDone(false);
        item.setDate(date);
        session.save(item);

        log("1. Employee save called with transaction, id");
        tx1.commit();
        System.out.println("transaction saved");
       // session.close();
        System.out.println("session closed");

    }

    public static void update(A item) {
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

        //save example - without transaction
        Session session = sessionFactory.openSession();
        Transaction tx1 = session.beginTransaction();
        A toUpdateItem = (A) session.load(A.class, item.getId());

        //update some data
        log("item is " + (toUpdateItem == null ? "nullable" : "noNnull"));
        System.out.println("updating item ");
        if (toUpdateItem == null) throw new NullPointerException("Nullable item!!!!!!!!!!!!");
        toUpdateItem.setId(item.getId());
        toUpdateItem.setDone(item.isDone());
        toUpdateItem.setText(item.getText());
        toUpdateItem.setDate(item.getDate());
        session.update(toUpdateItem);
        System.out.println("6. Before committing save transaction");
        tx1.commit();
        //session.close();
    }

    public static void delete(String itemId) {
        log("deleting item");

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        try {
            A user = (A) session.get(A.class, itemId);
            session.delete(user);
        } catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
        }
        System.out.println("6. Before committing save transaction");
        transaction.commit();
      //  session.close();
    }

    public static A getItem(String l) {
        log("getItem: " + l);
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        //save example - without transaction
        Session session = sessionFactory.openSession();
        Transaction tx1 = session.beginTransaction();
        A toUpdateItem = (A) session.load(A.class, l);
        tx1.commit();
       // session.close();
        return toUpdateItem;
    }
}
