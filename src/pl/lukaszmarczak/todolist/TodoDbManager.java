package pl.lukaszmarczak.todolist;

import com.sun.istack.internal.Nullable;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

import static sun.misc.MessageUtils.err;


/**
 * TodoList
 *
 * @author Lukasz Marczak
 * @since 19 maj 2016.
 * 17 : 30
 */
public class TodoDbManager {

    private static TodoDbManager instance;
    private List<TodoItem> items = new ArrayList<>();

    public synchronized static TodoDbManager getInstance() {
        return instance != null ? instance : new TodoDbManager();
    }

    private TodoDbManager() {
        instance = this;
    }

    public synchronized static List<TodoItem> getToDoItems() {
        log("Fetching all todo items");
        return getInstance().items;
    }

    @Nullable
    public synchronized static TodoItem getItem(long id) {
        for (TodoItem it : getInstance().items) {
            if (Long.compare(id, it.getId()) == 0) {
                return it;
            }
        }
        return null;
    }



    public synchronized static void save(String text, String date) {
        System.out.println("Record saving...");
        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        System.out.println("session factory created...");
        //save example - without transaction
        Session session = sessionFactory.openSession();
        System.out.println("session factory opened...");
        //save example - with transaction
        Transaction tx1 = session.beginTransaction();
        A item = new A();

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

    public synchronized static void update(TodoItem item) {
        log("item to update: " + item);
        for (int j = 0; j < getInstance().items.size(); j++) {
            TodoItem it = getInstance().items.get(j);
            if (Long.compare(item.getId(), it.getId()) == 0) {
                it.setDate(item.getDate());
                it.setText(item.getText());
                it.setDone(item.isDone());
                log("Item (" + item + ") updated");
                return;
            }
        }
        err("item not found");
    }

    public static void delete(long itemId) {
        int index = -1;
        for (int j = 0; j < getInstance().items.size(); j++) {
            TodoItem it = getInstance().items.get(j);
            if (Long.compare(itemId, it.getId()) == 0) {
                index = j;
                break;
            }
        }
        if (index != -1) {
            getInstance().items.remove(index);
            log("Deleted item " + itemId);
        } else {
            log("Cannot find item " + itemId);
        }
    }

    public static void log(String s) {
        System.out.println(s);
    }

    public static String drawStrikeStart(TodoItem item1) {
        return item1.isDone() ? "<strike>" : "";
    }

    public static String drawStrikeEnd(TodoItem item1) {
        return item1.isDone() ? "</strike>" : "";
    }

    public static String getChecked(TodoItem it) {
        return it.isDone() ? "checked" : "unchecked";
    }
}
