package com.spring.angular.sample.data;

import java.util.ArrayList;
import java.util.List;

public class PersonForm {
	
	public List<Person> personList;

	public List<Person> getPersonList() {
		personList=new ArrayList<Person>();
		Person person1=new Person();
		person1.setFirstName("john");
		person1.setLastName("doe");
		person1.setBirthDate("11/11/2011");
		person1.setBalance("122");
		person1.setEmail("whatever@gmail.com");
		
		Person person2=new Person();
		person2.setFirstName("mary");
		person2.setLastName("joe");
		person2.setBirthDate("12/10/2001");
		person2.setBalance("552");
		person2.setEmail("letsgetit@gmail.com");
		
		
		Person person3=new Person();
		person3.setFirstName("ray");
		person3.setLastName("hopewell");
		person3.setBirthDate("17/07/1990");
		person3.setBalance("732");
		person3.setEmail("lasthopes@gmail.com");
		personList.add(person1);
		personList.add(person2);
		personList.add(person3);
		return personList;
	}

	public void setPersonList(List<Person> personList) {
		this.personList = personList;
	}
	

	
}
