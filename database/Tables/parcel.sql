/*creating table parcel*/
'CREATE TABLE `parcel` (
  `id` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `sender number` varchar(45) NOT NULL,
  `receiver number` varchar(45) NOT NULL,
  `start location` varchar(45) NOT NULL,
  `end location` varchar(45) NOT NULL,
  `isDeleted` varchar(45) NOT NULL DEFAULT ''false'',
  `isSent` varchar(45) NOT NULL DEFAULT ''true'',
  `isDelivered` varchar(45) NOT NULL DEFAULT ''false'',
  `current location` varchar(45) NOT NULL,
  `sender id` varchar(45) NOT NULL,
  `parcelcol` varchar(45) NOT NULL
) '