CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteuser`(
myid VARCHAR(100))
BEGIN
delete from user
where id=myid;
END