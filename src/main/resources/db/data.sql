INSERT INTO user_tb(username, password, email, role, created_at) values('ADMIN', '4321', 'ADMIN@nate.com', 'ADMIN', now());
INSERT INTO user_tb(username, password, email, role, created_at) values('ssar', '1234', 'ssar@nate.com', 'USER', now());
INSERT INTO user_tb(username, password, email, role, created_at) values('love', '1234', 'love@nate.com', 'manager', now());
INSERT INTO user_tb(username, password, email, role, created_at) values('alice', '1234', 'alice@nate.com', 'USER', now());
INSERT INTO user_tb(username, password, email, role, created_at) values('aozp73', '1234', 'aozp73@naver.com', 'USER', now());
INSERT INTO user_tb(username, password, email, role, created_at) values('bishop', '1234', 'bishop@nate.com', 'USER', now());

INSERT INTO board_tb(content, thumbnail, user_id, created_at) values('첫번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(content, thumbnail, user_id, created_at) values('두번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('1번째 제목', '세번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('2번째 제목', '네번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('2번째 제목', '다섯번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('3번째 제목', '여섯번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('3번째 제목', '여섯번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('3번째 제목', '여섯번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('4번째 제목', '여섯번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('4번째 제목', '여섯번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('4번째 제목', '여섯번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('4번째 제목', '여섯번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('5번째 제목', '여섯번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('5번째 제목', '여섯번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('5번째 제목', '여섯번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('5번째 제목', '여섯번째 내용', '/images/dora.png', 3, now());
INSERT INTO board_tb(title, content, thumbnail, user_id, created_at) values('5번째 제목', '여섯번째 내용', '/images/dora.png', 3, now());

INSERT INTO compboard_tb(compname, title, comprole, created_at) values('가회사1', '신입구함', 'it', now());
INSERT INTO compboard_tb(compname, title, comprole, created_at) values('나회사2', '인턴구함', '화학', now());
INSERT INTO compboard_tb(compname, title, comprole, created_at) values('가회사3', '신입구함', '전기', now());
INSERT INTO compboard_tb(compname, title, comprole, created_at) values('다회사4', '경력구함', '전기', now());
INSERT INTO compboard_tb(compname, title, comprole, created_at) values('가회사4', '신입구함', '기계', now());

INSERT INTO compboard_tb(compname, title, comprole, created_at) values('나회사1', '인턴구함', 'it', now());
INSERT INTO compboard_tb(compname, title, comprole, created_at) values('다회사4', '경력구함', '기계', now());
INSERT INTO compboard_tb(compname, title, comprole, created_at) values('가회사2', '신입구함', '화학', now());
INSERT INTO compboard_tb(compname, title, comprole, created_at) values('나회사4', '인턴구함', '기계', now());
INSERT INTO compboard_tb(compname, title, comprole, created_at) values('나회사3', '인턴구함', '전기', now());
INSERT INTO compboard_tb(compname, title, comprole, created_at) values('다회사4', '경력구함', 'it', now());
INSERT INTO compboard_tb(compname, title, comprole, created_at) values('다회사4', '경력구함', '화학', now());


INSERT INTO reply_tb(comment, user_id, board_id, created_at) values('댓글1', '2', '2', now());
INSERT INTO reply_tb(comment, user_id, board_id, created_at) values('댓글2', '2', '3', now());
INSERT INTO reply_tb(comment, user_id, board_id, created_at) values('댓글3', '3', '2', now());
INSERT INTO reply_tb(comment, user_id, board_id, created_at) values('댓글4', '3', '3', now());

commit;