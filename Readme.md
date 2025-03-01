# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

`CREATE ROLE store WITH LOGIN PASSWORD 'store';`
`GRANT ALL PRIVILEGES ON DATABASE store TO store;`
`SELECT o.date_created, SUM(op.quantity) FROM orders AS o JOIN order_product AS op ON o.id = op.order_id WHERE o.status = 'shipped' AND o.date_created > NOW() - INTERVAL '7 DAY' GROUP BY o.date_created;`