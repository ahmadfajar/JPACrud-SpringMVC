package org.fajarapps.jpacrud.domain;

/**
 * Thrown if an entity does not exist in the database when requesting a validation for an entity.
 *
 * @author Ahmad Fajar
 * @since 26/08/2015, modified: 26/08/2015 14:44
 */
public class EntityNotFoundException extends EntityException
{
    private static final long serialVersionUID = -4775057688361679109L;

    public EntityNotFoundException() {
        super();
    }

    public EntityNotFoundException(String s) {
        super(s);
    }

    public EntityNotFoundException(String s, Throwable throwable) {
        super(s, throwable);
    }

    public EntityNotFoundException(Throwable cause) {
        super(cause);
    }

}
