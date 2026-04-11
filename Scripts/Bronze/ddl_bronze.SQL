/*
=========================================================================
                     DDL SCRIPT : Create Bronze Tables
=========================================================================

this script wil create all tables in the bronze schema , droping table if 
they already exists :

-> run this script if you want to re-define the DDL structure of bronze tables

Folders: DATASETS/source_crm

- cust_info.csv -> Bronze.crm_cust_info
- prd_info.csv -> Bronze.crm_prd_info
- sales_details.csv -> Bronze.Bronze.sales_details

Folders: DATASETS/source_erp

- CUST_AZ12.csv -> Bronze.erp_CUST_AZ12
- LOC_A101.csv -> Bronze.erp_LOC_A101
- PX_CAT_G1V2.csv -> Bronze.erp_PX_CAT_G1V2

*/

if OBJECT_ID('bronze.crm_cust_info','U') is not null
    drop table bronze.crm_cust_info;

create table bronze.crm_cust_info (
    cst_id int,
    cst_key nvarchar(50),
    cst_firstname nvarchar(50),
    cst_lastname nvarchar(50),
    cst_materiel_status nvarchar(50),
    cst_gender nvarchar(50),
    cst_create_date date
);

if OBJECT_ID('Bronze.crm_prd_info','U') is not null
    drop table Bronze.crm_prd_info;

create table Bronze.crm_prd_info (
    prd_id int,
    prd_key nvarchar(50),
    prd_nm nvarchar(50),
    prd_cost int ,
    prd_line nvarchar(10),
    prd_start_dt datetime ,
    prd_end_dt datetime 
);

if OBJECT_ID('bronze.crm_sales_details','U') is not null
    drop table bronze.crm_sales_details;

create table bronze.crm_sales_details (
    sls_ord_num nvarchar(50) ,
    sls_prd_key nvarchar(50),
    sls_cust_id int,
    sls_order_dt int,
    sls_ship_dt int,
    sls_due_dt int,
    sls_sales int,
    sls_quantity int,
    sls_price int
);

if OBJECT_ID('bronze.erp_cust_az12','U') is not null
    drop table bronze.erp_cust_az12;

create table bronze.erp_cust_az12 (
    cid nvarchar(50) ,
    bdate date,
    gen nvarchar(25)
);

if OBJECT_ID('bronze.erp_loc_a101','U') is not null
    drop table bronze.erp_loc_a101;

create table bronze.erp_loc_a101 (
    cid nvarchar(50),
    ctry nvarchar(50)
);

if OBJECT_ID('bronze.erp_px_cat_g1v2','U') is not null
    drop table bronze.erp_px_cat_g1v2;

create table bronze.erp_px_cat_g1v2 (
    id nvarchar(50),
    cat nvarchar(50),
    subcat nvarchar(50),
    maintenance nvarchar(10) ,
)

