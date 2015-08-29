package org.fajarapps.jpacrud.domain.types;

/**
 * Registers Gender enumerator data type.
 *
 * @author Ahmad Fajar
 * @since 26/08/2015, modified: 26/08/2015 12:29
 */
public enum Gender
{
    L("Laki-Laki"),
    P("Perempuan");

    private final String label;

    Gender(String name) {
        this.label = name;
    }

    public String getLabel() {
        return label;
    }
}
