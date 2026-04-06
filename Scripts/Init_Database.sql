/*
=======================================================================
Create Database & Schemas
=======================================================================
Script Purpose:
this script will create new database 'DataWarehouse' after checking if 
it already exists.
if the database exists, its dropped and recreated.and addionally , the 
script set up three schema within the database : 'Bronze' , 'Silver' ,
'Gold'.

WARNING:

Running the script will delete the database , please do a copy before 
proceding.

*/

-- create Database 'DataWarehouse'
use master;
GO
 --Drop and Recreate the database 'DataWarehouse' 
 IF EXISTS (select 1 from sys.databases where name='DataWarehouse')
 begin
 alter database DataWarehouse set single_user with rollback immediate ;
 drop database DataWarehouse
 end;
 go

create database DataWarehouse ;

use DataWarehouse;

-- create schemas

create schema Bronze ;
go

create schema Silver ;
go

create schema Gold ;
go
