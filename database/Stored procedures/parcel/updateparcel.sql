CREATE DEFINER=`root`@`localhost` PROCEDURE `updateparcel`(
myid varchar(100),
mydescription varchar(50),
mysendernumber varchar(45),
myreceivernumber varchar(45),
mystartlocation varchar(45),
myendlocation varchar(45),
myisDeleted varchar(45),
myisUpdated varchar(45),
myisSent varchar(45),
myisDelivered varchar(45),
mycurrentlocation varchar(45),
mysenderid varchar(100)

)
BEGIN
update parcel
set
description=mydescription,
sendernumber=mysendernumber,
receivernumber=myreceivernumber,
startlocation=mystartlocation,
endlocation=myendlocation,
isDeleted=myisDeleted,
isUpdated=myisUpdated,
isSent=myisSent,
isDelivered=myisDelivered,
currentlocation=mycurrentlocation,
senderid=mysenderid
where id=myid;
END