
CREATE DATABASE IF NOT EXISTS polygon;


USE polygon;


CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    avatar VARCHAR(255) NOT NULL,
    status TEXT,
    adminLevel TINYINT DEFAULT 0,
    joined INT UNSIGNED,
    lastonline INT UNSIGNED
);
CREATE TABLE IF NOT EXISTS forum_forums (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS forum_subforums (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    forumid INT,
    FOREIGN KEY (forumid) REFERENCES forum_forums(id)
);
CREATE TABLE IF NOT EXISTS forum_threads (
    id INT AUTO_INCREMENT PRIMARY KEY,
    subforumid INT,
    author INT,
    subject VARCHAR(255) NOT NULL,
    body TEXT,
    bumpIndex INT UNSIGNED,
    FOREIGN KEY (subforumid) REFERENCES forum_subforums(id),
    FOREIGN KEY (author) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS assets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(20) NOT NULL,
    name VARCHAR(100) NOT NULL,
    file_path VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS bans (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    isDismissed BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (userId) REFERENCES users(id)
);

INSERT INTO users (username, password, email, avatar, status, adminLevel, joined, lastonline)
VALUES 
('user2', '123', 'dedahmed@lox.putin', '/avatars/admin_avatar.jpg', 'Test account', 0, UNIX_TIMESTAMP(), UNIX_TIMESTAMP()),
('admin_name', 'amdin_pass', 'admin_mail@gmail.com', '/avatars/admin_avatar.jpg', 'Admin bio', 1, UNIX_TIMESTAMP(), UNIX_TIMESTAMP());



INSERT INTO forum_forums (name) VALUES 
('General Discussion'),
('Technical Support'),
('Announcements');

INSERT INTO forum_subforums (name, forumid) VALUES 
('Off-Topic', 1),
('Bug Reports', 2),
('Updates', 3);


INSERT INTO forum_threads (subforumid, author, subject, body, bumpIndex) VALUES 
(1, 1, 'Welcome to the Forum', 'This is the welcome thread. Feel free to introduce yourself!', UNIX_TIMESTAMP()),
(1, 1, 'Rules and Guidelines', 'Please read the rules and guidelines before posting.', UNIX_TIMESTAMP());


INSERT INTO assets (type, name, file_path) VALUES 
('shirts', 'Red T-Shirt', '/assets/red_tshirt.png'),
('pants', 'Blue Jeans', '/assets/blue_jeans.png');

INSERT INTO bans (userId, isDismissed) VALUES (2, FALSE);
