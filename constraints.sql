CREATE TABLE apps_safe (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    downloads INT CHECK (downloads >= 0),
    rating DECIMAL(2,1) CHECK (rating BETWEEN 0 AND 5),
    price DECIMAL(5,2) CHECK (price >= 0)
);
