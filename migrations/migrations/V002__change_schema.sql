ALTER TABLE product ADD price DOUBLE PRECISION;
ALTER TABLE orders ADD date_created date;

ALTER TABLE order_product DROP COLUMN product_id;
ALTER TABLE order_product DROP COLUMN order_id;

ALTER TABLE order_product ADD CONSTRAINT product_id FOREIGN KEY(product) REFERENCES product(id);

ALTER TABLE order_product ADD CONSTRAINT order_id FOREIGN KEY(orders) REFERENCES orders(id);