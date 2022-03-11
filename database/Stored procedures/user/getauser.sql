CREATE DEFINER=`root`@`localhost` PROCEDURE `getauser`(
IN myid varchar(100))
BEGIN
select * from user
where id=myid;
END