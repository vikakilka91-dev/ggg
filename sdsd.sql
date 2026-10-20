-- 1. Создаем базу данных (в SQLite это опционально, но для порядка)
-- CREATE DATABASE ShopDB; 

-- 2. Создаем таблицу users
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    balance REAL DEFAULT 0.0,
    date_created DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 3. Создаем таблицу products
CREATE TABLE products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    sale INTEGER DEFAULT 0, -- 0 = False, 1 = True (идет ли сейчас распродажа)
    date_created DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 4. Заполняем таблицу users тестовыми значениями
INSERT INTO users (name, email, balance) VALUES 
('Иван Иванов', 'ivan@example.com', 1500.50),
('Мария Петрова', 'maria@example.com', 3200.00),
('Алексей Смирнов', 'alexey@example.com', 0.00),
('Елена Кузнецова', 'elena@example.com', 750.25),
('Дмитрий Попов', 'dmitry@example.com', 10000.00);

-- 5. Заполняем таблицу products тестовыми значениями
INSERT INTO products (name, price, sale) VALUES 
('Смартфон', 25000.00, 0),
('Наушники', 3500.00, 1),
('Чехол для смартфона', 500.00, 0),
('Зарядное устройство', 1200.00, 1),
('Умные часы', 8500.00, 0);

-- 6. Проверяем результат (выводим таблицы на экран)
SELECT * FROM users;
SELECT * FROM products;
