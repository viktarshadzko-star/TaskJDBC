-- Create Users table
CREATE TABLE IF NOT EXISTS users (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Beverages table
CREATE TABLE IF NOT EXISTS beverages (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    quantity INTEGER NOT NULL DEFAULT 0 CHECK (quantity >= 0),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Orders table
CREATE TABLE IF NOT EXISTS orders (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    beverage_id BIGINT NOT NULL,
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    total_price DECIMAL(10, 2) NOT NULL CHECK (total_price >= 0),
    order_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) NOT NULL DEFAULT 'PENDING',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    CONSTRAINT fk_beverage FOREIGN KEY (beverage_id) REFERENCES beverages(id) ON DELETE RESTRICT
);



-- Insert sample data for testing
INSERT INTO users (username, email, password, phone_number) VALUES
    ('john_doe', 'john@example.com', 'password123', '+1234567890'),
    ('jane_smith', 'jane@example.com', 'password456', '+0987654321'),
    ('bob_wilson', 'bob@example.com', 'password789', '+1122334455');

INSERT INTO beverages (name, type, price, quantity) VALUES
    ('Espresso', 'Coffee', 2.50, 100), --Not Sabina Carpenter
    ('Cappuccino', 'Coffee', 3.50, 80),
    ('Green Tea', 'Tea', 2.00, 120),
    ('Orange Juice', 'Juice', 3.00, 60), -- Not that one too
    ('Latte', 'Coffee', 4.00, 90),
    ('Lemonade', 'Juice', 2.50, 75);

INSERT INTO orders (user_id, beverage_id, quantity, total_price, status) VALUES
    (1, 1, 2, 5.00, 'COMPLETED'),
    (1, 3, 1, 2.00, 'COMPLETED'),
    (2, 2, 1, 3.50, 'PENDING'),
    (3, 4, 3, 9.00, 'COMPLETED'),
    (2, 5, 2, 8.00, 'PROCESSING');

