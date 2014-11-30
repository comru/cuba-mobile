package com.company.mobile.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.cuba.core.entity.StandardEntity;

@Table(name = "MOBILE_EMPTY")
@Entity(name = "mobile$Empty")
public class Empty extends StandardEntity {
    @Column(name = "NAME")
    protected String name;

    @Temporal(TemporalType.DATE)
    @Column(name = "ATTR_DATE")
    protected Date attrDate;

    @Column(name = "ATTR_INT")
    protected Integer attrInt;

    @Column(name = "ATTR_BOOLEAN")
    protected Boolean attrBoolean;

    @Column(name = "ATTR_DOUBLE")
    protected Double attrDouble;

    private static final long serialVersionUID = 1910644151638942331L;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


    public void setAttrDate(Date attrDate) {
        this.attrDate = attrDate;
    }

    public Date getAttrDate() {
        return attrDate;
    }

    public void setAttrInt(Integer attrInt) {
        this.attrInt = attrInt;
    }

    public Integer getAttrInt() {
        return attrInt;
    }

    public void setAttrBoolean(Boolean attrBoolean) {
        this.attrBoolean = attrBoolean;
    }

    public Boolean getAttrBoolean() {
        return attrBoolean;
    }

    public void setAttrDouble(Double attrDouble) {
        this.attrDouble = attrDouble;
    }

    public Double getAttrDouble() {
        return attrDouble;
    }


}