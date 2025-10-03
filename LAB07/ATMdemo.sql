DROP DATABASE IF EXISTS atm_demo;
CREATE DATABASE atm_demo;
USE atm_demo;

-- Bảng tài khoản
CREATE TABLE accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    balance DOUBLE
);

-- Bảng thẻ
CREATE TABLE cards (
    card_no VARCHAR(20) PRIMARY KEY,
    account_id INT,
    pin_hash VARCHAR(64),
    status VARCHAR(10) DEFAULT 'ACTIVE',
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

-- Bảng giao dịch
CREATE TABLE transactions (
    tx_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    card_no VARCHAR(20),
    atm_id INT,
    tx_type VARCHAR(20),
    amount DOUBLE,
    balance_after DOUBLE,
    time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Thêm 1 tài khoản demo
INSERT INTO accounts(balance) VALUES (5000.00);

-- Thêm 1 thẻ demo (PIN = '1234')
INSERT INTO cards(card_no, account_id, pin_hash)
VALUES ('1234567890', 1, SHA2('1234', 256));
