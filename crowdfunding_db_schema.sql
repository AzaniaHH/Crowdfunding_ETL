-- Create table for categories
CREATE TABLE categories (
    category_id VARCHAR(10) PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- Create table for subcategories
CREATE TABLE subcategories (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory_name VARCHAR(255) NOT NULL
);

-- Create table for contacts
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Create table for campaigns
CREATE TABLE campaigns (
    campaign_id INT PRIMARY KEY,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    launch_date TIMESTAMP,
    end_date TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
);

SELECT * FROM categories;
SELECT * FROM subcategories;
SELECT * FROM contacts;
SELECT * FROM campaigns;
