ALTER TABLE product ADD price DOUBLE PRECISION;
ALTER TABLE orders ADD date_created date;

ALTER TABLE order_product DROP CONSTRAINT product_id;
ALTER TABLE order_product ADD CONSTRAINT product_id FOREIGN KEY(product_id) REFERENCES product(id);

ALTER TABLE order_product DROP CONSTRAINT order_id;
ALTER TABLE order_product ADD CONSTRAINT order_id FOREIGN KEY(order_id) REFERENCES orders(id);