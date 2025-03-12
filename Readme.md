# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

В данном репозитории описаны миграции:
    
    V001__create_tables.sql - создание таблиц
    V002__change_schema.sql - нормализация схемы
    V003__insert_data.sql - заполнение таблиц данными
    V004__create_index.sql - создание индексов для отчётов 

## Выдача доступов пользователю миграций
### Create User
Для создания пользователя с паролем нужно использовать следующу команду

`CREATE ROLE store WITH LOGIN PASSWORD 'store';`
### Grant privileges to DB
Для выдачи привилегий выполним команду

`GRANT ALL PRIVILEGES ON DATABASE store TO store;`
### Sosisok on last week

Количество сосисок проданных за последние 7 дней можно получить выполнив команду

```
SELECT o.date_created, SUM(op.quantity) 
    FROM orders AS o 
    JOIN order_product AS op 
    ON o.id = op.order_id 
    WHERE o.status = 'shipped' AND o.date_created > NOW() - INTERVAL '7 DAY' GROUP BY o.date_created;
```