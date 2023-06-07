--liquibase formatted sql

--changeset asmith:view01 runOnChange:true failOnError:false

CREATE OR REPLACE VIEW DATASET01.VIEW01(name,id) AS (
  SELECT
    name,id
  FROM
    DATASET01.TABLE_03
  ORDER BY
    name DESC
);

--rollback DROP VIEW DATASET01.VIEW01;