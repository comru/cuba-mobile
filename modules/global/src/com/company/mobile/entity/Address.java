/*
 * Copyright (c) 2014 com.company.mobile
 */
package com.company.mobile.entity;

import javax.persistence.Embeddable;
import com.haulmont.chile.core.annotations.MetaClass;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.EmbeddableEntity;

@MetaClass(name = "mobile$Address")
@Embeddable
public class Address extends EmbeddableEntity {
    @Column(name = "CITY")
    protected String city;

    @Column(name = "COUNTRY")
    protected String country;

    private static final long serialVersionUID = -9145709035586223013L;

    public void setCity(String city) {
        this.city = city;
    }

    public String getCity() {
        return city;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCountry() {
        return country;
    }


}