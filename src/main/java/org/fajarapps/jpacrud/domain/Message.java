package org.fajarapps.jpacrud.domain;

import java.io.Serializable;

/**
 * Message binding helper yang dipergunakan untuk menampilkan flash message pada halaman html.
 *
 * @author Ahmad Fajar
 * @since 27/08/2015, modified: 27/08/2015 00:30
 */
public final class Message implements Serializable
{
    private static final long serialVersionUID = 7503750389106359368L;
    public static final String ERROR = "error";
    public static final String SUCCESS = "success";
    private String message;
    private String type;

    public Message(String type, String message) {
        this.message = message;
        this.type = type;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Message{" +
                "message='" + message + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
