--liquibase formatted sql

--changeset amalik:austin_311_service_requests 

CREATE TABLE DATASET01.AUSTIN_311_SERVICE_REQUESTS (
	unique_key STRING(65535),
	complaint_description STRING(65535),
	`source` STRING(65535),
	status STRING(65535),
	status_change_date TIMESTAMP,
	created_date TIMESTAMP,
	last_update_date TIMESTAMP,
	close_date TIMESTAMP,
	incident_address STRING(65535),
	street_number STRING(65535),
	street_name STRING(65535),
	city STRING(65535),
	incident_zip INT64,
	county STRING(65535),
	state_plane_x_coordinate STRING(65535),
	state_plane_y_coordinate FLOAT64,
	latitude FLOAT64,
	longitude FLOAT64,
	location STRING(65535),
	council_district_code INT64,
	map_page STRING(65535),
	map_tile STRING(65535)
);

--rollback DROP TABLE DATASET01.AUSTIN_311_SERVICE_REQUESTS;
