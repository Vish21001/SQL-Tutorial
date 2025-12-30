CREATE TABLE apps (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    downloads INT,
    rating DECIMAL(2,1),
    price DECIMAL(5,2)
);
