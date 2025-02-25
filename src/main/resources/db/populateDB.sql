DELETE FROM meals;
DELETE FROM user_role;
DELETE FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password'),
       ('Admin', 'admin@gmail.com', 'admin'),
       ('Guest', 'guest@gmail.com', 'guest');

INSERT INTO user_role (role, user_id)
VALUES ('USER', 100000),
       ('ADMIN', 100001);

INSERT INTO meals (user_id, date_time, description, calories)
VALUES (100000, '2025-02-16 10:00:00', 'breakfast', 330),
       (100000, '2025-02-16 15:00:00', 'dinner', 550),
       (100000, '2025-02-16 17:00:00', 'coffee', 30),
       (100000, '2025-02-16 19:40:00', 'dinner', 320),
       (100000, '2025-02-20 09:30:00', 'breakfast', 450),
       (100000, '2025-02-20 13:00:00', 'lunch', 250),
       (100000, '2025-03-05 00:00:00', 'dinner', 350),
       (100001, '2025-02-23 11:00:00', 'breakfast', 500),
       (100001, '2025-02-23 15:00:00', 'coffee', 560),
       (100001, '2025-02-23 18:00:00', 'lunch', 500),
       (100001, '2025-02-23 20:00:00', 'dinner', 600),
       (100001, '2025-02-24 12:00:00', 'breakfast', 350),
       (100001, '2025-02-24 18:00:00', 'dinner', 300);

