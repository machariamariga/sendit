CREATE DEFINER=`root`@`localhost` PROCEDURE `createuser`(
id varchar(100),
username varchar(50),
fullname varchar(45),
phonenumber VARCHAR(20),
email varchar(45),
password varchar(45)
)
BEGIN
insert into user(
id,
username,
fullname,
phonenumber,
email,
password
)
values(
id,
username,
fullname,
phonenumber,
email,
password
);

END