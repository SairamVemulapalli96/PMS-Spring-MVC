package com.rama.pms.model;

import java.util.Objects;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
/**
 * <p>
 * A Domain class to represent a Owner in a PMS(Property Management System).
 * </p>
 * 
 * @author vemulapalli.rama
 *
 */
public class Owner 
{
	/**
	 * <p>An unique identifier to track the owner</p>
	 */
	private int oid;
	
	@NotBlank(message = "Name should not be blank")
	@Size(min = 4, message = "Name should have a min of 4 characters")
	private String name;
	
	@NotBlank(message = "Age should NOT be blank")
	private int age;
	
	@NotBlank(message = "Gender should NOT be blank")
	private String gender;
	
	@NotBlank(message = "Email should NOT be blank")
	private String email;
	
	@NotBlank(message = "Password should NOT be blank")
	private String password;
	
	@NotBlank(message = "Contact No. should NOT be blank")
	@Size(min =10, max =10, message = "Contact Number must have exactly 10 digits")
	private String phoneNo;
	
	@NotBlank(message = "Address should NOT be blank")
	private String address;

	
	@Override
	public int hashCode() 
	{
		System.out.println("Contact - hashCode() invoked, hashCode " + Objects.hash(oid));
		//return Objects.hash(oid);
		return this.oid; /* simplest way */
	}

	@Override
	public boolean equals(Object obj)
	{
		System.out.println("Contact - equals invoked");
		System.out.println("Object : " + obj);
		
		if (this == obj) {
			System.out.println("....this==obj, returning true");
			return true;
		}
		if (obj == null) {
			System.out.println("....obj==null, returning false");
			return false;
		}
		if (getClass() != obj.getClass()) {
			System.out.println("....getClass()!=obj.getClass(), returning false");
			return false;
		}
		
		Owner other = (Owner) obj;
		System.out.println("....oid==other.oid ? " + (oid==other.oid));
		return oid == other.oid;
	}
}
