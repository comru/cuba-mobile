/*
 * Copyright (c) 2014 com.company.mobile
 */
package com.company.mobile.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Embedded;

@Table(name = "MOBILE_EMPLOYEE")
@Entity(name = "mobile$Employee")
public class Employee extends StandardEntity {
    private static final long serialVersionUID = -3148425569505138972L;

    @Column(name = "NAME")
    protected String name;

    @Embedded
    @AttributeOverrides({
        @AttributeOverride(name = "city", column = @Column(name = "ADDRESS_CITY")),
        @AttributeOverride(name = "country", column = @Column(name = "ADDRESS_COUNTRY"))
    })
    protected Address address;

    public void setAddress(Address address) {
        this.address = address;
    }

    public Address getAddress() {
        return address;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


}