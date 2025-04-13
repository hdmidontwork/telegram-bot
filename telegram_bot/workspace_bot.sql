-- 1. Создание базы данных
CREATE DATABASE workspace_bot;

-- 2. Подключение к базе данных
\c workspace_bot;

-- 3. Создание таблицы для рабочих мест
CREATE TABLE workspace_bot (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'free',
    booked_by INTEGER,
    booking_time TIMESTAMP
);
-- 4. Создание таблицы для пользователей
CREATE TABLE users1 (
    user_id INTEGER PRIMARY KEY,
    username TEXT,
    first_name TEXT,
    last_name TEXT
);

-- 5. Добавление тестовых данных в таблицу workspaces
INSERT INTO workspace_bot (name, status) VALUES ('Место 1', 'free');
INSERT INTO workspace_bot (name, status) VALUES ('Место 2', 'free');
INSERT INTO workspace_bot (name, status) VALUES ('Место 3', 'booked');

-- 6. Добавление тестовых данных в таблицу users
INSERT INTO users1 (user_id, username, first_name, last_name) 
VALUES (123456789, 'test_user', 'John', 'Doe');

-- 7. Проверка данных в таблицах
SELECT * FROM workspace_bot;
SELECT * FROM users1;