-- Identificação de Queries Lentas
SELECT 'SELECT pg_terminate_backend('|| pid::text ||');' kill_command, pid, substring(query,1, 40), (now() - xact_start), usename, client_addr
FROM pg_stat_activity 
WHERE state IN ('idle in transaction', 'active') --, 'idle') 
--and query like 'select %'
ORDER BY (now() - xact_start) desc;
