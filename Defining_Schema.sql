use sindhuretails;

CREATE TABLE dim_product (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50),
  price DECIMAL(10, 2)
);

CREATE TABLE dim_customer (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100),
  age INT,
  location VARCHAR(100)
);

CREATE TABLE dim_time (
  date_id INT PRIMARY KEY,
  date DATE,
  month VARCHAR(20),
  quarter VARCHAR(10),
  year INT
);

CREATE TABLE dim_store (
  store_id INT PRIMARY KEY,
  store_name VARCHAR(100),
  location VARCHAR(100)
);


CREATE TABLE fact_sales (
  sale_id INT PRIMARY KEY,
  product_id INT,
  customer_id INT,
  date_id INT,
  store_id INT,
  quantity INT,
  sales_amount DECIMAL(10, 2),
  FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
  FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
  FOREIGN KEY (date_id) REFERENCES dim_time(date_id),
  FOREIGN KEY (store_id) REFERENCES dim_store(store_id)
);
