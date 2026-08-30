CREATE DATABASE bank_churn
GO

USE [bank_churn]

-- Create demographic table
CREATE TABLE demographic (
	CustomerId INT PRIMARY KEY IDENTITY(1,1),
	Gender NVARCHAR(10),
	Age INT,
	Salary DECIMAL(10,2),
	LocationId INT,
	Churned BIT
);

-- Create account table
CREATE TABLE account (
	CustomerId INT,
	Tenure INT,
	Balance DECIMAL(10,2),
	NumProducts INT,
	HasCreditCard BIT,
	IsActive BIT
);

-- Create location table
CREATE TABLE location(
	LocationID INT PRIMARY KEY IDENTITY(1,1),
	[Geography] NVARCHAR(15)
);

