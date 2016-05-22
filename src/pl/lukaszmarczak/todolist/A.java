package pl.lukaszmarczak.todolist;

import javax.persistence.*;
/**
 * TodoList
 *
 * @author Lukasz Marczak
 * @since 22 maj 2016.
 * 16 : 51
 */
@Entity
@Table(name = "A")
@Access(value = AccessType.FIELD)
public class A {
    @Id
    @Column(name = "id")
    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    @Column(name = "text")
    private String text;

    @Basic
    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Column(name = "date")
    private String date;

    @Basic
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Column(name = "done")
    private boolean done;

    @Basic
    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }
}
