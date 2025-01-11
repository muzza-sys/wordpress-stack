-- Custom SQL commands to initialize the database

CREATE TABLE IF NOT EXISTS wp_custom_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    custom_data VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);