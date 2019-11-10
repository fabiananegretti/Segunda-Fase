--Criação Tabela Schema Version

create table schema_version(
	installed_rank SERIAL PRIMARY KEY,
	version VARCHAR(50),
	description VARCHAR(200),
	type VARCHAR(20),
	script VARCHAR(1000),
	checksum INT,
	installed_on TIMESTAMP,
	execution_time INT,
	success TINYINT

)




