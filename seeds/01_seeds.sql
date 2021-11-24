INSERT INTO users (id, name, email, password)
VALUES (1, 'Jeff', 'jeff@jeff.jeff', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(2, 'Richard', 'Richard@Richard.Richard', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(3, 'Tommy', 'Tommy@Tommy.Tommy', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 1, 'big_house', 'biiiig', 'herethereoverthere', 'herethereoverhere', 320, 6, 6, 7, 'Canada', '1st_ave', 'vicotia', 'BC', 'pppccc', true),
(2, 2, 'house', 'usual', 'herethereoverthere', 'herethereoverhere', 180, 3, 4, 5, 'Canada', '1st_ave', 'Vancouver', 'BC', 'pppccc', true),
(3, 3, 'clean_house', 'cleeeean', 'herethereoverthere', 'herethereoverhere', 220, 2, 6, 5, 'Canada', '3rd_ave', 'Burnaby', 'BC', 'pppccc', true);


INSERT INTO reservations (id, guest_id, property_id, start_date, end_date)
VALUES (1, 1, 2, '2018-09-11', '2018-09-26'),
(2, 2, 3, '2019-01-04', '2019-02-01'),
(3, 3, 1, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 2, 1, 4, 'good stay'),
(2, 2, 3, 2, 3, 'normal'),
(3, 3, 1, 3, 5, 'biiiig');

