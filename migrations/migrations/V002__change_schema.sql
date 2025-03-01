ALTER TABLE product ADD price DOUBLE PRECISION;
ALTER TABLE orders ADD date_created date;

ALTER TABLE order_product ADD CONSTRAINT products FOREIGN KEY(product_id) REFERENCES product(id);

ALTER TABLE order_product ADD CONSTRAINT orders FOREIGN KEY(order_id) REFERENCES orders(id);