--liquibase formatted sql

--changeset asmith:01 labels:POCEnv
--comment: These Files are for POC Env only

create or replace table DATASET01.TABLE_04
(
id smallint,
name  STRING(40),
location STRING(10),
created_date timestamp
)
;
--rollback drop table DATASET01.TABLE_04;