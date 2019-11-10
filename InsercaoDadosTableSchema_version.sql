--Insecao de dados na Tabela schema_version

INSERT INTO public.schema_version(
	installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success)
	VALUES 
	('2', 'BCD', 'teste02', 'BBBB', 'tttttt', '22', 'CCCCCCC', '2019-10-29 10:20:53','11', '1'),
	('3', 'BCDF', 'teste03', 'CCCCC', 'tttttt', '21', 'DDDDDDDDDDDD', '2019-10-30 10:25:53','11', '1'),
	('4', 'HGFD', 'teste03', 'HHHHH', 'TTTTTT', '14', 'GGGGG', '2019-11-04 10:30:33','11', '1');
	
	
	