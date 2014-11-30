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
    ATTR_STR varchar(255),
    ATTR_DATE date,
    ATTR_INT integer,
    ATTR_BOOLEAN boolean,
    ATTR_DOUBLE double precision,
    --
    primary key (ID)
);
