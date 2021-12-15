CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';

CREATE TABLE IF NOT EXISTS castles(
  id INT AUTO_INCREMENT NOT NULL primary key,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last update',
  castlename TEXT NOT NULL,
  kingdom TEXT NOT NULL,
  dungeoncount INT NOT NULL,
  creatorId VARCHAR(255) NOT NULL,
  FOREIGN KEY (creatorId) REFERENCES accounts(id) ON DELETE CASCADE

) default charset utf8 COMMENT '';

CREATE TABLE IF NOT EXISTS knights(
  id INT AUTO_INCREMENT NOT NULL primary key,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last update',
  sirname TEXT NOT NULL,
  kingdom TEXT NOT NULL,
  rank TEXT NOT NULL,
  creatorId VARCHAR(255) NOT NULL,
  FOREIGN KEY (creatorId) REFERENCES accounts(id) ON DELETE CASCADE

)default charset utf8 COMMENT '';

INSERT INTO accounts(
  name,
  id
 
)
VALUES(
  'Scott',
  '123',
  
);

-- NOTE castle functions START
 
 INSERT INTO castles(
   castlename,
   kingdom,
   dungeoncount,
   creatorId
 )
 VALUES(
   'Elfheim',
   'West Field',
   14,
   '123'
 );

 SELECT * FROM castles;

 SELECT * FROM castles WHERE id = 2;

 DELETE FROM castles WHERE id = 5;

 UPDATE castles SET 
 castlename = 'Delmasca',
 kingdom = 'Cornelia',
 dungeoncount = 14
 WHERE id = 1;

--  NOTE castle functions END

-- NOTE knight functions START

 INSERT INTO knights(
   sirname,
   kingdom,
   rank
 )
 VALUES(
   'zidanekhjgjkgh',
   'Cornelia',
   'Noob Slayer'
 );

 SELECT * FROM knights;

 SELECT * FROM knights WHERE id = 2;

 DELETE FROM knights WHERE id = 3;

 UPDATE knights SET 
 sirname = 'Vaan',
 kingdom = 'Elfheim',
 rank = 'Noob Slayer'
 WHERE id = 1;

--  NOTE knight functions END

DROP Table castles;