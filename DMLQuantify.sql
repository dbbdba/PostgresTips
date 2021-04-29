/*
	Quantifica os DMLs realizados no schema, ordenado pelo numero de tuplas mortas. Ideal para análise de vacuum
*/

SELECT relname, n_tup_ins as "inserts",n_tup_upd as "updates",n_tup_del as "deletes", n_live_tup as "live_tuples", n_dead_tup as "dead_tuples"
FROM pg_stat_user_tables
WHERE schemaname = 'schema'
order by 6 desc;
