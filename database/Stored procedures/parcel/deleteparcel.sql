CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteparcel`(
myid VARCHAR(100))
BEGIN
delete from parcel
where id=myid;
END