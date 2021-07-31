CREATE DATABASE IF NOT EXISTS `BOOKS` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `BOOKS`;

CREATE TABLE `AUTHOR` (
  `firstname` VARCHAR(42),
  `lastname` VARCHAR(42),
  `biography` VARCHAR(42),
  `createdat` VARCHAR(42),
  `updatedat` VARCHAR(42),
  PRIMARY KEY (`firstname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `REVIEW` (
  `title` VARCHAR(42),
  `body` VARCHAR(42),
  `rating` VARCHAR(42),
  `createdat` VARCHAR(42),
  `updatedat` VARCHAR(42),
  `username` VARCHAR(42),
  `title_1` VARCHAR(42),
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `WRITE_IN` (
  `name` VARCHAR(42),
  `title` VARCHAR(42),
  PRIMARY KEY (`name`, `title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `BOOK` (
  `title` VARCHAR(42),
  `image` VARCHAR(42),
  `summary` VARCHAR(42),
  `nbr_page` VARCHAR(42),
  `price` VARCHAR(42),
  `publishedat` VARCHAR(42),
  `createdat` VARCHAR(42),
  `updatedat` VARCHAR(42),
  `firstname` VARCHAR(42),
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `RELEASED_IN` (
  `name` VARCHAR(42),
  `title` VARCHAR(42),
  PRIMARY KEY (`name`, `title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `FORMAT` (
  `name` VARCHAR(42),
  `createdat` VARCHAR(42),
  `updatedat` VARCHAR(42),
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `USER` (
  `username` VARCHAR(42),
  `email` VARCHAR(42),
  `password` VARCHAR(42),
  `createdat` VARCHAR(42),
  `updatedat` VARCHAR(42),
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `LANGUAGE` (
  `name` VARCHAR(42),
  `createdat` VARCHAR(42),
  `updatedat` VARCHAR(42),
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `HAVE` (
  `name` VARCHAR(42),
  `title` VARCHAR(42),
  PRIMARY KEY (`name`, `title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `GENRE` (
  `name` VARCHAR(42),
  `createdat` VARCHAR(42),
  `updatedat` VARCHAR(42),
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `REVIEW` ADD FOREIGN KEY (`title_1`) REFERENCES `BOOK` (`title`);
ALTER TABLE `REVIEW` ADD FOREIGN KEY (`username`) REFERENCES `USER` (`username`);
ALTER TABLE `WRITE_IN` ADD FOREIGN KEY (`title`) REFERENCES `BOOK` (`title`);
ALTER TABLE `WRITE_IN` ADD FOREIGN KEY (`name`) REFERENCES `LANGUAGE` (`name`);
ALTER TABLE `BOOK` ADD FOREIGN KEY (`firstname`) REFERENCES `AUTHOR` (`firstname`);
ALTER TABLE `RELEASED_IN` ADD FOREIGN KEY (`title`) REFERENCES `BOOK` (`title`);
ALTER TABLE `RELEASED_IN` ADD FOREIGN KEY (`name`) REFERENCES `FORMAT` (`name`);
ALTER TABLE `HAVE` ADD FOREIGN KEY (`title`) REFERENCES `BOOK` (`title`);
ALTER TABLE `HAVE` ADD FOREIGN KEY (`name`) REFERENCES `GENRE` (`name`);