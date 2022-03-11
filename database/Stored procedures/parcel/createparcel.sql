CREATE DEFINER=`root`@`localhost` PROCEDURE `createparcel`(
id varchar(100),
description varchar(50),
sendernumber varchar(45),
receivernumber varchar(45),
startlocation varchar(45),
endlocation varchar(45),
currentlocation varchar(45),
senderid varchar(45)
)
BEGIN
insert into parcel(
id,
description,
sendernumber,
receivernumber,
startlocation,
endlocation,
currentlocation,
senderid
)
values(
id,
description,
sendernumber,
receivernumber,
startlocation,
endlocation,
currentlocation,
senderid
);

END