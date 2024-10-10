create database instagram;
use instagram;

CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    full_name VARCHAR(100),
    bio TEXT,
    profile_picture_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO Users (username, email, password, full_name, bio, profile_picture_url) VALUES 
('kurhe_39', 'kurheavinash2019@.com', 'ak@123456', 'AVINASH KURHE', 'COMPUTER ENGINEERING..', 'http://example.com/profile.jpg'),
('NARESH_SG', 'naresh@.com', 'pass@1234', 'NARESH SHINDE', 'NATURE LOVER', 'http://example.com/profile2.jpg');

INSERT INTO Users (username, email, password, full_name, bio, profile_picture_url) VALUES 
('RAHUL_RJ', 'rahulraj@.com', 'pass@5678', 'RAHUL RAJAN', 'PHOTOGRAPHER', 'http://example.com/profile3.jpg'),
('MANISHA_PT', 'manisha@.com', 'pass@91011', 'MANISHA PATIL', 'TRAVEL ENTHUSIAST', 'http://example.com/profile4.jpg'),
('VIVEK_KM', 'vivek@.com', 'pass@1213', 'VIVEK KUMAR', 'MUSICIAN', 'http://example.com/profile5.jpg'),
('PRIYA_JS', 'priya@.com', 'pass@1415', 'PRIYA JOSHI', 'YOGA INSTRUCTOR', 'http://example.com/profile6.jpg'),
('ANKIT_MH', 'ankit@.com', 'pass@1617', 'ANKIT MEHTA', 'SOFTWARE DEVELOPER', 'http://example.com/profile7.jpg'),
('SHREYA_DP', 'shreya@.com', 'pass@1819', 'SHREYA DEEPAK', 'GRAPHIC DESIGNER', 'http://example.com/profile8.jpg'),
('AMIT_SK', 'amit@.com', 'pass@2021', 'AMIT SHARMA', 'DATA SCIENTIST', 'http://example.com/profile9.jpg'),
('ANITA_VK', 'anita@.com', 'pass@2223', 'ANITA VERMA', 'CONTENT WRITER', 'http://example.com/profile10.jpg'),
('ROHAN_PK', 'rohan@.com', 'pass@2425', 'ROHAN PATEL', 'CYCLIST', 'http://example.com/profile11.jpg'),
('DIVYA_RP', 'divya@.com', 'pass@2627', 'DIVYA RAMESH', 'ARTIST', 'http://example.com/profile12.jpg'),
('SUMIT_KN', 'sumit@.com', 'pass@2829', 'SUMIT KANADE', 'PHYSICIST', 'http://example.com/profile13.jpg'),
('POOJA_RS', 'pooja@.com', 'pass@3031', 'POOJA RATHOD', 'CHEF', 'http://example.com/profile14.jpg'),
('ARJUN_MG', 'arjun@.com', 'pass@3233', 'ARJUN MENON', 'FILMMAKER', 'http://example.com/profile15.jpg'),
('NEHA_JS', 'neha@.com', 'pass@3435', 'NEHA JAIN', 'MAKEUP ARTIST', 'http://example.com/profile16.jpg'),
('RAKESH_TK', 'rakesh@.com', 'pass@3637', 'RAKESH TIWARI', 'FITNESS TRAINER', 'http://example.com/profile17.jpg'),
('MEERA_VL', 'meera@.com', 'pass@3839', 'MEERA VISHWANATH', 'PHILOSOPHER', 'http://example.com/profile18.jpg'),
('GAURAV_MS', 'gaurav@.com', 'pass@4041', 'GAURAV MISHRA', 'CAR ENTHUSIAST', 'http://example.com/profile19.jpg'),
('SNEHA_KN', 'sneha@.com', 'pass@4243', 'SNEHA KANDE', 'DANCER', 'http://example.com/profile20.jpg'),
('VINAY_KR', 'vinay@.com', 'pass@4445', 'VINAY KUMAR', 'WRITER', 'http://example.com/profile21.jpg'),
('SMITA_RP', 'smita@.com', 'pass@4647', 'SMITA RANE', 'BIOLOGIST', 'http://example.com/profile22.jpg'),
('MOHIT_SG', 'mohit@.com', 'pass@4849', 'MOHIT SHAH', 'ROBOTICS ENGINEER', 'http://example.com/profile23.jpg'),
('KAVITA_JP', 'kavita@.com', 'pass@5051', 'KAVITA JADHAV', 'MARKETING MANAGER', 'http://example.com/profile24.jpg'),
('HARSH_VP', 'harsh@.com', 'pass@5253', 'HARSH VYAS', 'CRYPTO INVESTOR', 'http://example.com/profile25.jpg'),
('SARITA_PM', 'sarita@.com', 'pass@5455', 'SARITA PAWAR', 'LECTURER', 'http://example.com/profile26.jpg'),
('MANOJ_GS', 'manoj@.com', 'pass@5657', 'MANOJ GUPTA', 'CIVIL ENGINEER', 'http://example.com/profile27.jpg'),
('RAJNI_KP', 'rajni@.com', 'pass@5859', 'RAJNI KAPOOR', 'FASHION DESIGNER', 'http://example.com/profile28.jpg'),
('RAHUL_LS', 'rahul.ls@.com', 'pass@6061', 'RAHUL LOKHANDE', 'IT CONSULTANT', 'http://example.com/profile29.jpg'),
('SHEETAL_MP', 'sheetal@.com', 'pass@6263', 'SHEETAL MALI', 'HUMAN RESOURCES MANAGER', 'http://example.com/profile30.jpg');


SELECT * FROM users;

CREATE TABLE Posts (
    post_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    image_url VARCHAR(255) NOT NULL,
    caption TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Posts (user_id, image_url, caption) VALUES 
(1, 'http://example.com/image1.jpg', 'LOVE YOUR SELF'),
(2, 'http://example.com/image2.jpg', ' NATURE LOVE .');

INSERT INTO Posts (user_id, image_url, caption) VALUES 
(1, 'http://example.com/image1.jpg', 'LOVE YOUR SELF'),
(2, 'http://example.com/image2.jpg', 'NATURE LOVE'),
(3, 'http://example.com/image3.jpg', 'WORK HARD PLAY HARD'),
(4, 'http://example.com/image4.jpg', 'FAMILY TIME'),
(5, 'http://example.com/image5.jpg', 'BEAUTIFUL SUNSET'),
(6, 'http://example.com/image6.jpg', 'GOURMET DISHES'),
(7, 'http://example.com/image7.jpg', 'CAPTURING MOMENTS'),
(8, 'http://example.com/image8.jpg', 'GYM SESSIONS'),
(1, 'http://example.com/image9.jpg', 'FASHION RUNWAY'),
(10, 'http://example.com/image10.jpg', 'LATEST TECH'),
(11, 'http://example.com/image11.jpg', 'ARTISTIC VIBES'),
(12, 'http://example.com/image12.jpg', 'INSPIRING STORIES'),
(13, 'http://example.com/image13.jpg', 'DANCE MOVES'),
(2, 'http://example.com/image14.jpg', 'DELICIOUS RECIPES'),
(15, 'http://example.com/image15.jpg', 'MUSIC JAMS'),
(16, 'http://example.com/image16.jpg', 'GARDENING TIPS'),
(5, 'http://example.com/image17.jpg', 'MOVIE MAGIC'),
(18, 'http://example.com/image18.jpg', 'CYCLING ROUTES'),
(1, 'http://example.com/image19.jpg', 'TRAVEL DIARIES'),
(20, 'http://example.com/image20.jpg', 'YOGA POSES'),
(21, 'http://example.com/image21.jpg', 'PET LOVE'),
(22, 'http://example.com/image22.jpg', 'MOUNTAIN PEAKS'),
(23, 'http://example.com/image23.jpg', 'DESIGN INSPIRATION'),
(24, 'http://example.com/image24.jpg', 'ON SET'),
(1, 'http://example.com/image25.jpg', 'NEWS HEADLINES'),
(26, 'http://example.com/image26.jpg', 'ECONOMIC INSIGHTS'),
(27, 'http://example.com/image27.jpg', 'ENGINEERING PROJECTS'),
(28, 'http://example.com/image28.jpg', 'MIND MATTERS'),
(29, 'http://example.com/image29.jpg', 'ARCHITECTURAL WONDERS'),
(1, 'http://example.com/image30.jpg', 'FLYING HIGH');

select* from posts;


CREATE TABLE Comments (
    comment_id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    user_id INT,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES Posts(post_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Comments (post_id, user_id, content) VALUES 
(1, 2, 'Nice picture!'),
(2, 1, 'Thanks!');
  
 INSERT INTO Comments (post_id, user_id, content) VALUES 
(2, 4, 'Amazing view ...!'),
(4, 3, 'Love it!'),
(5, 6, 'So beautiful!'),
(6, 5, 'Great shot!'),
(7, 8, 'Stunning!'),
(8, 7, 'Wow!'),
(9, 10, 'Impressive!'),
(10, 9, 'Fantastic!'),
(11, 12, 'Awesome!'),
(12, 11, 'Lovely!'),
(13, 12, 'Great capture!'),
(14, 13, 'Nice!'),
(15, 16, 'Cool!'),
(16, 15, 'Beautiful!'),
(17, 18, 'Wonderful!'),
(18, 1, 'Perfect!'),
(19, 20, 'Excellent!'),
(20, 11, 'Fabulous!'),
(21, 22, 'Spectacular!'),
(22, 21, 'Superb!'),
(23, 24, 'Incredible!'),
(24, 23, 'Remarkable!'),
(25, 26, 'Extraordinary!'),
(26, 2, 'Marvellous!'),
(27, 28, 'Awesome work!'),
(28, 27, 'Great effort!'),
(29, 3, 'Well done!'),
(30, 29, 'Nice job!'),
(1, 3, 'Lovely scene!'),
(2, 4, 'So peaceful!'),
(5, 7, 'Breathtaking!'),
(6, 8, 'Enchanting!');
 
 select* from Comments;
 
 CREATE TABLE Likes (
    like_id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    user_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES Posts(post_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Likes (post_id, user_id) VALUES 
(1, 2),
(2, 1);
select * from Likes;
INSERT INTO Likes (post_id, user_id) VALUES 
(1, 4),
(11, 3),
(21, 6),
(27, 5),
(32, 8),
(8, 7),
(9, 10),
(11, 12),
(12, 11),
(14, 13),
(15, 16),
(16, 15),
(17, 18),
(19, 20),
(21, 22),
(22, 21),
(23, 24),
(24, 23),
(27, 28),
(28, 27),
(30, 29),
(1, 3),
(2, 4),
(5, 7),
(6, 8),
(9, 11),
(10, 12);

CREATE TABLE Followers (
    follower_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    follower_user_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (follower_user_id) REFERENCES Users(user_id)
);
SELECT  Users.username,count(follower_id) 
from Users 
join Followers 
on  Users.user_id=Followers.user_id  
group by username  
having count(follower_id)<=2
 order by count(follower_id) desc ;

INSERT INTO Followers (user_id, follower_user_id) VALUES 
(1, 2),
(2, 1);

INSERT INTO Followers (user_id, follower_user_id) VALUES 
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13),
(13, 14),
(14, 15),
(15, 16),
(16, 17),
(17, 18),
(18, 19),
(19, 20),
(20, 21),
(21, 22),
(22, 23),
(23, 24),
(24, 25),
(25, 26),
(26, 27),
(27, 28),
(28, 29),
(29, 30),
(30, 1),
(1, 3),
(2, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(8, 10),
(9, 11),
(10, 12);

select* from Followers;

CREATE TABLE DirectMessages (
    message_id INT PRIMARY KEY AUTO_INCREMENT,
    sender_id INT,
    receiver_id INT,
    message_text TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_id) REFERENCES Users(user_id),
    FOREIGN KEY (receiver_id) REFERENCES Users(user_id)
);

INSERT INTO DirectMessages (sender_id, receiver_id, message_text) VALUES 
(1, 2, 'Hey ! How are you?'),
(2, 1, 'Hey ! I am good, how about you?');

INSERT INTO DirectMessages (sender_id, receiver_id, message_text) VALUES 
(1, 2, 'Hey there!'),
(2, 3, 'How are you?'),
(3, 4, 'Good morning!'),
(4, 5, 'What\'s up?'),
(5, 6, 'Hello!'),
(6, 7, 'Nice to meet you!'),
(7, 8, 'How\'s it going?'),
(8, 9, 'Good afternoon!'),
(9, 10, 'What\'s new?'),
(10, 11, 'Long time no see!'),
(11, 12, 'Good evening!'),
(12, 13, 'Hey!'),
(13, 14, 'How\'ve you been?'),
(14, 15, 'What\'s happening?'),
(15, 16, 'Hi!'),
(16, 17, 'How\'s everything?'),
(17, 18, 'Hello there!'),
(18, 19, 'How\'s your day?'),
(19, 20, 'What\'s going on?'),
(20, 21, 'Good night!'),
(21, 22, 'Hey, how\'s it going?'),
(22, 23, 'How\'s life?'),
(23, 24, 'What are you up to?'),
(24, 25, 'Greetings!'),
(25, 26, 'Hey! How\'s everything?'),
(26, 27, 'How was your day?'),
(27, 28, 'What\'s new with you?'),
(28, 29, 'Hey! Long time!'),
(29, 30, 'What\'s good?'),
(30, 1, 'Good to see you!'),
(2, 1, 'Hello! How are you?'),
(3, 2, 'Good to hear from you!'),
(4, 3, 'How\'s work?'),
(5, 4, 'What\'s going on with you?'),
(6, 5, 'How\'s the family?'),
(7, 6, 'What\'s up with you?'),
(8, 7, 'Hey! How\'s it been?'),
(9, 8, 'Good day!'),
(10, 9, 'What\'s happening with you?');


select* from DirectMessages;
select * from Users;
SELECT * FROM Posts WHERE  user_id=  1;
delete from posts where post_id=3;   






select DirectMessages.message_text,Users.user_id 
from DirectMessages
join Users 
on DirectMessages.sender_id=Users.user_id where user_id =1;

select Users.username,count(post_id) as NO_OF_POST from Users left join Posts on Users.user_id=Posts.user_id group by username;

select * from LIkes;
select post_id ,count(user_id)from Likes group by post_id;
select count(user_id)from Likes where post_id=1;

select users.user_id,users.username ,count(post_id) as NO_OF_POST 
from Users 
join posts on users.user_id=posts.user_id group by user_id;

call add_user('micky321','vip@134','vip12345','vikas i patil','  ','http://example.com/profile3.jpg');
call delete_using_id(36);
call show_total_likes_using_post_id(1);
call user_wise_post_count();



