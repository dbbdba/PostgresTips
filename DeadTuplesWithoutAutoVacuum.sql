/*
	Mostra autovacuum não realizado nas tabelas que contém tuplas mortas
*/

select schemaname, relname, n_dead_tup, last_vacuum, last_autovacuum from pg_catalog.pg_stat_all_tables where n_dead_tup > 0 and last_autovacuum is not null order by 5;

