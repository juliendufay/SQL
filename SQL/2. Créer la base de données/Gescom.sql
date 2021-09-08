/* Supprime la base si elle existe */

DROP DATABASE IF EXISTS gescom;

/* crée la base de données */


CREATE DATABASE gescom;

/* utilise la bdd mentionnée pour la suite */


USE gescom;

CREATE TABLE Price(
   Id_Price VARCHAR(50),
   HT_price DECIMAL,
   discount VARCHAR(50),
   PRIMARY KEY(Id_Price)
);

CREATE TABLE provider(
   Id_provider VARCHAR(50),
   Nom VARCHAR(50) NOT NULL,
   commercial_seller VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_provider)
);

CREATE TABLE Employee(
   Id_Employé VARCHAR(50),
   poste VARCHAR(50) NOT NULL,
   shop VARCHAR(50) NOT NULL,
   service VARCHAR(50) NOT NULL,
   gross_salary VARCHAR(50) NOT NULL,
   seniority_company VARCHAR(50),
   gender VARCHAR(50) NOT NULL,
   child_number VARCHAR(50) NOT NULL,
   hierarchy VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_Employé)
);

CREATE TABLE Buyer(
   Id_Seller VARCHAR(50),
   name VARCHAR(50),
   Adress VARCHAR(50),
   phone_number VARCHAR(50),
   Password VARCHAR(50),
   add_date DATE,
   update_date DATE,
   PRIMARY KEY(Id_Seller)
);

CREATE TABLE Sub_Categorie(
   Id_Catégorie VARCHAR(50),
   subname VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_Catégorie)
);

CREATE TABLE Categorie(
   Id_Categorie VARCHAR(50),
   name VARCHAR(50),
   PRIMARY KEY(Id_Categorie)
);

CREATE TABLE Orders(
   Id_Orders VARCHAR(50),
   Payment VARCHAR(50),
   Delivery VARCHAR(50),
   Date_order DATE,
   Num_order VARCHAR(50),
   PRIMARY KEY(Id_Orders)
);

CREATE TABLE Product(
   Id_Product VARCHAR(50),
   pro_name VARCHAR(50) NOT NULL,
   HT_price INT NOT NULL,
   pro_ref VARCHAR(50) NOT NULL,
   photo_name VARCHAR(50),
   pro_EAN VARCHAR(50),
   pro_physical_stock VARCHAR(50) NOT NULL,
   pro_alert_stock VARCHAR(50),
   pro_color VARCHAR(50) NOT NULL,
   pro_label VARCHAR(50),
   pro_in_sell VARCHAR(50) NOT NULL,
   pro_description VARCHAR(50),
   pro_add_date DATE,
   pro_update_date DATE,
   Id_Price VARCHAR(50) NOT NULL,
   Id_Catégorie VARCHAR(50) NOT NULL,
   Id_provider VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_Product)
);

CREATE TABLE Buy(
   Id_Product VARCHAR(50),
   Id_Seller VARCHAR(50),
   Id_Orders VARCHAR(50),
   Payment_Method VARCHAR(50),
   PRIMARY KEY(Id_Product, Id_Seller, Id_Orders)
);

CREATE TABLE Occupy(
   Id_Product VARCHAR(50),
   Id_Employé VARCHAR(50),
   PRIMARY KEY(Id_Product, Id_Employé)
);

CREATE TABLE Sort_out(
   Id_Catégorie VARCHAR(50),
   Id_Categorie VARCHAR(50),
   PRIMARY KEY(Id_Catégorie, Id_Categorie)
);

ALTER TABLE Product 
ADD CONSTRAINT fk_product_Price FOREIGN KEY(Id_Price) REFERENCES Price(Id_Price);

ALTER TABLE Product 
ADD CONSTRAINT fk_product_Catégorie FOREIGN KEY(Id_Catégorie) REFERENCES Sub_Categorie(Id_Catégorie);

ALTER TABLE Product 
ADD CONSTRAINT fk_product_provider FOREIGN KEY(Id_provider) REFERENCES provider(Id_provider);

ALTER TABLE Buy 
ADD CONSTRAINT fk_Buy_Product FOREIGN KEY(Id_Product) REFERENCES Product(Id_Product);

ALTER TABLE Buy 
ADD CONSTRAINT fk_Buy_Seller FOREIGN KEY(Id_Seller) REFERENCES Buyer(Id_Seller);

ALTER TABLE Buy 
ADD CONSTRAINT fk_Buy_Orders FOREIGN KEY(Id_Orders) REFERENCES Orders(Id_Orders);

ALTER TABLE Occupy 
ADD CONSTRAINT fk_Occupy_Product FOREIGN KEY(Id_Product) REFERENCES Product(Id_Product);

ALTER TABLE Occupy 
ADD CONSTRAINT fk_Occupy_Employé FOREIGN KEY(Id_Employé) REFERENCES Employee(Id_Employé);

ALTER TABLE Sort_out 
ADD CONSTRAINT fk_Sort_out_Catégorie FOREIGN KEY(Id_Catégorie) REFERENCES Sub_Categorie(Id_Catégorie);

ALTER TABLE Sort_out 
ADD CONSTRAINT fk_Sort_out_Categorie FOREIGN KEY(Id_Categorie) REFERENCES Categorie(Id_Categorie);