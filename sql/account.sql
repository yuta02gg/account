set names utf8;
set foreign_key_checks = 0;

drop database if exists account;
create database if not exists account;
use account;

CREATE TABLE account_info (
    id INT(100) PRIMARY KEY AUTO_INCREMENT,
    family_name VARCHAR(100),
    last_name VARCHAR(100),
    family_name_kana VARCHAR(100),
    last_name_kana VARCHAR(100),
    mail VARCHAR(255),
    password VARCHAR(255),
    gender INT(1),
    postal_code INT(7),
    prefecture VARCHAR(100),
    address_1 VARCHAR(100),
    address_2 VARCHAR(255),
    authority INT(1),
    delete_flag INT(1),
    registered_time DATETIME,
    update_time DATETIME
);
