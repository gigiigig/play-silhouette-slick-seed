# --- !Ups

create table user (userID VARCHAR(256) NOT NULL PRIMARY KEY,firstName VARCHAR(256),lastName VARCHAR(256),fullName VARCHAR(256),email VARCHAR(256),avatarURL VARCHAR(256));
create table logininfo (id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,providerID VARCHAR(256) NOT NULL,providerKey VARCHAR(256) NOT NULL);
create table userlogininfo (userID VARCHAR(256) NOT NULL,loginInfoId BIGINT NOT NULL);
create table passwordinfo (hasher VARCHAR(256) NOT NULL,password VARCHAR(256) NOT NULL,salt VARCHAR(256),loginInfoId BIGINT NOT NULL);
create table oauth1info (id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,token VARCHAR(256) NOT NULL,secret VARCHAR(256) NOT NULL,loginInfoId BIGINT NOT NULL);
create table oauth2info (id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,accesstoken VARCHAR(256) NOT NULL,tokentype VARCHAR(256),expiresin INTEGER,refreshtoken VARCHAR(256),logininfoid BIGINT NOT NULL);
create table openidinfo (id VARCHAR(256) NOT NULL PRIMARY KEY,logininfoid BIGINT NOT NULL);
create table openidattributes (id VARCHAR(256) NOT NULL,`key` VARCHAR(256) NOT NULL,`value` VARCHAR(256) NOT NULL);


# --- !Downs

drop table openidattributes;
drop table openidinfo;
drop table oauth2info;
drop table oauth1info;
drop table passwordinfo;
drop table userlogininfo;
drop table logininfo;
drop table user;