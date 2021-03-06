package com.tm.forms.search;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.tm.entities.SuperEntity;

/**
 * This tag should only be put on a class that : </br>
 * <ul>
 * <li>is in a class extending @See {@link SuperEntity}</li>
 * <li>is in a class that contains a field <tt><i>User</i> User</tt>
 * <li>is linked to a database column</li>
 * <li>has getter and setter</li>
 * </ul>
 * All field tagged with @{@link Searchable} will be searchable in
 * <tt>search.xhtml</tt>.
 * 
 * @author François Rullière
 *
 */
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(value = { ElementType.FIELD })
public @interface Searchable {
	/**
	 * Label that will be displayed in the filter. By default it will be the
	 * name of the field.
	 * 
	 * @return
	 */
	String label() default "";

	/**
	 * Link the user to the class, it has to start with <tt>User</tt> and end
	 * with a Field with a type of the current class. For instance for the
	 * <tt>Country</tt> class : </br>
	 * <tt>User.myEducation.School.Country</tt> or
	 * <tt>User.Nationality</tt></br>
	 * It seams that all @{@link Searchable} fields from the same class will
	 * have the same value of <tt>userFetchPath</tt>.
	 * 
	 * @return
	 */
	String userFetchPath();
}
