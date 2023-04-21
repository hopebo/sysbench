#!/usr/bin/env sysbench

-- ----------------------------------------------------------------------
-- Sending self-defined queries to the database server with sysbench framework
-- sysbench --db-driver=mysql --mysql-host=XXX --mysql-port=XXX --mysql-user=XXX --mysql-password=XXX --mysql-db=sbtest --time=600 --threads=64 --report-interval=1 simple_query.lua run
-- ----------------------------------------------------------------------

require("oltp_common")

function prepare_statements()
end

function event()
   con:query("SELECT k FROM sbtest.sbtest1 WHERE id + 1 < 500000")
end
