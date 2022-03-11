/*creating table user*/
'CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `full name` varchar(45) NOT NULL,
  `phone number` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `isAdmin` varchar(45) NOT NULL DEFAULT ''false'',
  `isDelete` varchar(45) NOT NULL DEFAULT ''false'',
  `isSent` varchar(45) NOT NULL DEFAULT ''false''
) 