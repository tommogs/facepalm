INSERT INTO ACCOUNTS(EMAIL, USERNAME, FIRSTNAME, LASTNAME, PASSWORD) VALUES('admin@omegapoint.se', 'admin', 'Daniel', 'Hultqvist', 'admin');
INSERT INTO ACCOUNTS(EMAIL, USERNAME, FIRSTNAME, LASTNAME, PASSWORD) VALUES('daniel@omegapoint.se', 'daniel', 'Daniel', 'Deogun', 'ockelbo300');
INSERT INTO ACCOUNTS(EMAIL, USERNAME, FIRSTNAME, LASTNAME, PASSWORD) VALUES('joakim@omegapoint.se', 'joakim', 'Joakim', 'Rossäng', 'y7sdy7ds');
INSERT INTO ACCOUNTS(EMAIL, USERNAME, FIRSTNAME, LASTNAME, PASSWORD) VALUES('alexander@omegapoint.se', 'alexander', 'Alexander', 'Hagerf', '8sdgitg');
INSERT INTO ACCOUNTS(EMAIL, USERNAME, FIRSTNAME, LASTNAME, PASSWORD) VALUES('dana@omegapoint.se', 'dana', 'Dana', 'Simola', 'u8sdfugr');
INSERT INTO ACCOUNTS(EMAIL, USERNAME, FIRSTNAME, LASTNAME, PASSWORD) VALUES('petter@omegapoint.se', 'petter', 'Petter', 'Berglund', 'jr8g4kdsd');

INSERT INTO FRIENDSHIPS(ID, USER_ID, FRIEND_ID, FRIENDS_SINCE) VALUES(1, 'admin', 'daniel', '2015-10-23');
INSERT INTO FRIENDSHIPS(ID, USER_ID, FRIEND_ID, FRIENDS_SINCE) VALUES(2, 'admin', 'joakim', '2015-10-23');

INSERT INTO FORUM_POSTS(ID, TITLE, AUTHOR) VALUES(1, 'How to exploit logins using SQL', 'Elias');
INSERT INTO FORUM_POSTS(ID, TITLE, AUTHOR) VALUES(2, 'XSS - How bad can it really be?', 'Dan');
INSERT INTO FORUM_POSTS(ID, TITLE, AUTHOR) VALUES(3, 'Direct object reference for the win!', 'Alexander');
INSERT INTO FORUM_POSTS(ID, TITLE, AUTHOR) VALUES(4, 'DIY touchscreen table, how hard can it be', 'Daniel');
INSERT INTO FORUM_POSTS(ID, TITLE, AUTHOR) VALUES(5, 'AIM here we go', 'Joakim');

INSERT INTO COMMENTS(ID,IMAGE_ID,AUTHOR,COMMENT) VALUES(1, 1, 'daniel', 'Nice image! When did you take it?');
INSERT INTO COMMENTS(ID,IMAGE_ID,AUTHOR,COMMENT) VALUES(2, 1, 'alexander', 'Great success');
INSERT INTO COMMENTS(ID,IMAGE_ID,AUTHOR,COMMENT) VALUES(3, 1, 'petter', 'Looking good.');
INSERT INTO COMMENTS(ID,IMAGE_ID,AUTHOR,COMMENT) VALUES(4, 1, 'joakim', 'Wow!');

INSERT INTO COMMENTS(ID,IMAGE_ID,AUTHOR,COMMENT) VALUES(5, 2, 'petter', 'Nein nein nein');
INSERT INTO COMMENTS(ID,IMAGE_ID,AUTHOR,COMMENT) VALUES(6, 2, 'dana', 'wat.');
INSERT INTO COMMENTS(ID,IMAGE_ID,AUTHOR,COMMENT) VALUES(7, 2, 'admin', 'Good, let the anger flow through you');
INSERT INTO COMMENTS(ID,IMAGE_ID,AUTHOR,COMMENT) VALUES(8, 3, 'joakim', 'Anyone from Poland?');