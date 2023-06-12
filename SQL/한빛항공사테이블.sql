

CREATE TABLE 회원 ( 
    회원아이디 VARCHAR(20) PRIMARY KEY, 
    비밀번호 VARCHAR(20) NOT NULL, 
    성명 VARCHAR(50) NOT NULL, 
    이메일주소 VARCHAR(50), 
    휴대전화번호 VARCHAR(20) 
);

CREATE TABLE 마일리지 ( 
    마일리지번호 INT PRIMARY KEY, 
    회원아이디 VARCHAR(20), 
    누적마일리지 INT, 
    사용마일리지 INT, 
    FOREIGN KEY (회원아이디) REFERENCES 회원(회원아이디) 
);

CREATE TABLE 신용카드 ( 
    신용카드번호 VARCHAR(20) PRIMARY KEY, 
    유효기간 DATE, 
    회원아이디 VARCHAR(20), 
    FOREIGN KEY (회원아이디) REFERENCES 회원(회원아이디) 
);

CREATE TABLE 이메일 ( 
    이메일주소 VARCHAR(50) PRIMARY KEY, 
    회원아이디 VARCHAR(20), 
    FOREIGN KEY (회원아이디) REFERENCES 회원(회원아이디) 
);

CREATE TABLE 좌석 ( 
    좌석번호 VARCHAR(10) PRIMARY KEY, 
    등급 VARCHAR(10) 
);

CREATE TABLE 비행기 (   
    비행기번호 VARCHAR(10) PRIMARY KEY,   
    출발일시 DATE   
);

CREATE TABLE 예약 (  
    예약번호 INT PRIMARY KEY,  
    회원아이디 VARCHAR(20),  
    비행기번호 VARCHAR(10),  
    좌석번호 VARCHAR(10),  
    FOREIGN KEY (회원아이디) REFERENCES 회원(회원아이디),  
    FOREIGN KEY (비행기번호) REFERENCES 비행기(비행기번호),  
    FOREIGN KEY (좌석번호) REFERENCES 좌석(좌석번호)  
);

