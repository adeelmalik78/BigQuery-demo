# Liquibase demo for BigQuery

## Liquibase Setup for BQ

Complete the following three items to establish connection to BigQuery database from Liquibase.

### 1. JDBC Driver

* Download current JDBC driver from [ODBC and JDBC drivers for BigQuery](https://cloud.google.com/bigquery/docs/reference/odbc-jdbc-drivers#current_jdbc_driver)
  * This download consists of 60+ jar files that are needed.
* Provide classpath to BigQuery driver jar files using one of the following methods:
  * liquibase.properties file: `liquibase.classpath=<path-to-JDBC-driver-jar-files>`
  * OS environment variables: `LIQUIBASE_CLASSPATH=<path-to-JDBC-driver-jar-files>`
  * CLI argument: `--classpath=<path-to-JDBC-driver-jar-files>`

### 2. Liquibase BigQuery Extension
* Download Liquibase BigQuery extension from [Liquibase-BigQuery Github repository](https://github.com/liquibase/liquibase-bigquery/tags)
  * This downloads the following jar file: `liquibase-bigquery-<version>.jar` file
* Provide classpath to Liquibase-BigQuery extension jar files using one of the following methods:
  * liquibase.properties file: `liquibase.classpath=<path-to-liquibase-bigquery-jar-files>`
  * OS environment variables: `LIQUIBASE_CLASSPATH=<path-to-liquibase-bigquery-jar-files>`
  * CLI argument: `--classpath=<path-to-liquibase-bigquery-jar-files>`

### 3. JDBC URL in Liquibase
Specify JDBC URL in Liquibase using one of the following methods:
* liquibase.properties file: `liquibase.command.url: jdbc:bigquery://https://googleapis.com/bigquery/v2:443;ProjectId=<your-project-id>;DefaultDataset=<your-dataset-id>;OAuthServiceAcctEmail=<your-service-account-email>;OAuthPvtKeyPath=<path-to-your-private-key.p12>;LogPath=Logs;OAuthType=0;`
* OS environment variable: `LIQUIBASE_COMMAND_URL: jdbc:bigquery://https://googleapis.com/bigquery/v2:443;ProjectId=<your-project-id>;DefaultDataset=<your-dataset-id>;OAuthServiceAcctEmail=<your-service-account-email>;OAuthPvtKeyPath=<path-to-your-private-key.p12>;LogPath=Logs;OAuthType=0;`
* CLI argument: `--url: jdbc:bigquery://https://googleapis.com/bigquery/v2:443;ProjectId=<your-project-id>;DefaultDataset=<your-dataset-id>;OAuthServiceAcctEmail=<your-service-account-email>;OAuthPvtKeyPath=<path-to-your-private-key.p12>;LogPath=Logs;OAuthType=0;`
