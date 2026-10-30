CREATE TABLE corporate_stores (
    store_id INT PRIMARY KEY,
    city_location VARCHAR(50) NOT NULLs
);

CREATE TABLE daily_register_sales (
    transaction_id INT PRIMARY KEY,
    store_id INT,
    sale_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (store_id) REFERENCES corporate_stores(store_id)
SELECT
    tc.constraint_type,
    kcu.table_name,
    kcu.column_name,
    ccu.table_name AS referenced_table,
    ccu.column_name AS referenced_column
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu
    ON tc.constraint_name = kcu.constraint_name
JOIN information_schema.constraint_column_usage ccu
    ON tc.constraint_name = ccu.constraint_name
WHERE tc.table_name = 'daily_register_sales'
  AND tc.constraint_type = 'FOREIGN KEY';
	
);

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY table_name;