CREATE DEFINER=`root`@`localhost` PROCEDURE `getaparcel`(
IN myid varchar(100) )
BEGIN
select * from parcel
where id=myid;
END