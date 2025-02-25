DELETE FROM user_role;
DELETE FROM users;
DELETE FROM meals;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password'),
       ('Admin', 'admin@gmail.com', 'admin'),
       ('Guest', 'guest@gmail.com', 'guest');

INSERT INTO user_role (role, user_id)
VALUES ('USER', 100000),
       ('ADMIN', 100001);

INSERT INTO meals (user_id, date_time, description, calories)
VALUES (100000, '2025-02-23 09:00:00', 'breakfast', 500),
       (100000, '2025-02-23 13:00:00', 'lunch', 700),
       (100000, '2025-02-23 16:00:00', 'coffee', 100),
       (100000, '2025-02-23 19:00:00', 'dinner', 550),
       (100000, '2025-02-24 09:00:00', 'breakfast', 450),
       (100000, '2025-02-24 13:00:00', 'lunch', 650),
       (100000, '2025-02-24 19:00:00', 'dinner', 500),
       (100001, '2025-02-23 09:00:00', 'breakfast', 300),
       (100001, '2025-02-23 13:00:00', 'lunch', 600),
       (100001, '2025-02-23 19:00:00', 'dinner', 1000),
       (100001, '2025-02-24 09:00:00', 'breakfast', 350),
       (100001, '2025-02-24 13:00:00', 'lunch', 650),
       (100001, '2025-02-24 19:00:00', 'dinner', 950);

