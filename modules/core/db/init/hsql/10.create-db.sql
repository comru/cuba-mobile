-- begin MOBILE_EMPTY
create table MOBILE_EMPTY (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    ATTR_DATE date,
    ATTR_INT integer,
    ATTR_BOOLEAN boolean,
    ATTR_DOUBLE double precision,
    --
    primary key (ID)
);
-- end MOBILE_EMPTY
-- begin MOBILE_EMPLOYEE
create table MOBILE_EMPLOYEE (
    ID varchar(36) not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ADDRESS_CITY varchar(255),
    ADDRESS_COUNTRY varchar(255),
    --
    NAME varchar(255),
    --
    primary key (ID)
);
-- end MOBILE_EMPLOYEE
