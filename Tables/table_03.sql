--liquibase formatted sql

--changeset asmith:01 labels:POCEnv
--comment: These Files are for POC Env only

create table DATASET01.TABLE_03 (id smallint,
name  STRING(40),
location STRING(10),
created_date timestamp
)
;
--rollback drop table DATASET01.TABLE_03;