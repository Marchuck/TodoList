package pl.lukaszmarczak.todolist;

import javax.persistence.*;

/**
 * TodoList
 *
 * @author Lukasz Marczak
 * @since 19 maj 2016.
 * 16 : 30
 */
@Entity
@Table(name = "TODOITEM")
@Access(value = AccessType.FIELD)
public class TodoItem {

    public TodoItem() {
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "todoitem_id")
    private long id;

    @Column(name = "todoitem_text")
    private String text;

    @Column(name = "todoitem_date")
    private String date;

    @Column(name = "todoitem_done")
    private boolean done;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }

    @Override
    public String toString() {
        return "id: " + id + ", text: " + text
                + ", date: " + date + ", done: " + done;
    }
}
