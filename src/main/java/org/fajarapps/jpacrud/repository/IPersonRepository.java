package org.fajarapps.jpacrud.repository;

import org.fajarapps.jpacrud.entity.Department;
import org.fajarapps.jpacrud.entity.Person;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.QueryHints;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import javax.persistence.QueryHint;

/**
 * Spring JPA repository object interface untuk mendapatkan data dari table Person.
 *
 * @author Ahmad Fajar
 * @since 26/08/2015, modified: 27/08/2015 00:04
 */
public interface IPersonRepository extends PagingAndSortingRepository<Person, Long>
{
    /**
     * Mendapatkan daftar personil dengan menggunakan field 'department' sebagai filter kriteria pencarian.
     *
     * @param department Object kriteria filter
     * @param pageable   Paging and sorting method
     * @return The slice collection or data-paging collection of Person object.
     */
    @QueryHints(value = {@QueryHint(name = "org.hibernate.cacheable", value = "true")})
    @Query("SELECT p FROM Person p JOIN p.department d WHERE d = :dept")
    Page<Person> findByDepartement(@Param("dept") Department department, Pageable pageable);

    /**
     * Mendapatkan daftar personil dengan menggunakan field 'department' dan 'fullname'
     * sebagai filter kriteria pencarian.
     *
     * @param department Object kriteria filter
     * @param term       String term pencarian
     * @param pageable   Paging and sorting method
     * @return The slice collection or data-paging collection of Person object.
     */
    @QueryHints(value = {@QueryHint(name = "org.hibernate.cacheable", value = "true")})
    @Query("SELECT p FROM Person p JOIN p.department d WHERE d = :dept AND p.fullname LIKE :term")
    Page<Person> findByDepartementAndTerm(@Param("dept") Department department, @Param("term") String term,
                                          Pageable pageable);

    /**
     * Mendapatkan daftar personil dengan menggunakan field 'fullname' sebagai filter kriteria pencarian.
     *
     * @param term     String term pencarian
     * @param pageable Paging and sorting method
     * @return The slice collection or data-paging collection of Person object.
     */
    @QueryHints(value = {@QueryHint(name = "org.hibernate.cacheable", value = "true")})
    @Query("SELECT p FROM Person p WHERE p.fullname LIKE :term")
    Page<Person> findByTerm(@Param("term") String term, Pageable pageable);

}
