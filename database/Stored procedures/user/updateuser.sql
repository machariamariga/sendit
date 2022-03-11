CREATE DEFINER=`root`@`localhost` PROCEDURE `updateuser`(
myid varchar(100),
myusername varchar(45),
myfullname varchar(45),
myphonenumber varchar(20),
myemail varchar(45),
mypassword varchar(45),
myisAdmin varchar(45),
myisDeleted varchar(45),
myisSent varchar(45)

)
BEGIN
update user
set 
username=myusername,
fullname=myfullname,
phonenumber=myphonenumber,
email=myemail,
password=mypassword,
isAdmin=myisAdmin,
isDeleted=myisDeleted,
isSent=myisSent
where id=myid;
END