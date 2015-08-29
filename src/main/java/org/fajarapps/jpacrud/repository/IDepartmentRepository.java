package org.fajarapps.jpacrud.repository;

import org.fajarapps.jpacrud.entity.Department;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Spring JPA repository object interface untuk mendapatkan data dari table Department.
 *
 * @author Ahmad Fajar
 * @since 26/08/2015, modified: 26/08/2015 13:37
 */
public interface IDepartmentRepository extends PagingAndSortingRepository<Department, Integer>
{
}
