DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getallparcels`()
BEGIN
select * from parcel;
END$$
DELIMITER ;
