DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getallusers`()
BEGIN
select * from user;
END$$
DELIMITER ;
