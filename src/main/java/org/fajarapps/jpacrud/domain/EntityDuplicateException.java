package org.fajarapps.jpacrud.domain;

/**
 * Thrown if an entity already exist in the database to prevent duplication.
 *
 * @author Ahmad Fajar
 * @since 26/08/2015, modified: 26/08/2015 14:44
 */
public class EntityDuplicateException extends EntityException
{
    private static final long serialVersionUID = -6209245104870776771L;

    public EntityDuplicateException() {
        super();
    }

    public EntityDuplicateException(String s) {
        super(s);
    }

    public EntityDuplicateException(String s, Throwable throwable) {
        super(s, throwable);
    }

    public EntityDuplicateException(Throwable cause) {
        super(cause);
    }

}
