package org.fajarapps.jpacrud.domain;

/**
 * Thrown if there is an error when validating an entity.
 *
 * @author Ahmad Fajar
 * @since 26/08/2015, modified: 26/08/2015 14:44
 */
public class EntityException extends Exception
{
    private static final long serialVersionUID = 8620489894045929496L;

    public EntityException() {
        super();
    }

    public EntityException(String message) {
        super(message);
    }

    public EntityException(String message, Throwable cause) {
        super(message, cause);
    }

    public EntityException(Throwable cause) {
        super(cause);
    }

}
