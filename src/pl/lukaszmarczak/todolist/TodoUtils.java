package pl.lukaszmarczak.todolist;

/**
 * TodoList
 *
 * @author Lukasz Marczak
 * @since 19 maj 2016.
 * 17 : 30
 */
public class TodoUtils {

    private TodoUtils() {

    }

    public static void log(String s) {
        System.out.println(s);
    }

    public static String drawStrikeStart(A item1) {
        return item1.isDone() ? "<strike>" : "";
    }

    public static String drawStrikeEnd(A item1) {
        return item1.isDone() ? "</strike>" : "";
    }
}
