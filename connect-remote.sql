sshtunnel opc@129.146.75.93 -i /Users/c.m.ruepprich/.ssh/oci-jcat -L 8888:localhost:1521
connect kscope/kscope@localhost:8888/xe
@install.sql
