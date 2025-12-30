CREATE TABLE apps (
    id BIGINT PRIMARY KEY,
    
    -- Basic App Info
    name VARCHAR(150) NOT NULL,
    short_description VARCHAR(255),
    full_description TEXT,
    
    -- Classification
    category VARCHAR(50) NOT NULL,
    subcategory VARCHAR(50),
    age_rating VARCHAR(10),         -- e.g. 4+, 9+, 12+, 17+
    
    -- Developer Info
    developer_name VARCHAR(150) NOT NULL,
    developer_email VARCHAR(150),
    developer_website VARCHAR(200),
    
    -- App Metrics
    downloads BIGINT DEFAULT 0 CHECK (downloads >= 0),
    active_users BIGINT DEFAULT 0 CHECK (active_users >= 0),
    rating DECIMAL(2,1) CHECK (rating BETWEEN 0 AND 5),
    rating_count BIGINT DEFAULT 0 CHECK (rating_count >= 0),
    
    -- Monetization
    price DECIMAL(6,2) DEFAULT 0.00 CHECK (price >= 0),
    has_ads BOOLEAN DEFAULT FALSE,
    has_in_app_purchases BOOLEAN DEFAULT FALSE,
    
    -- Technical Details
    platform VARCHAR(20) NOT NULL,   -- Android, iOS, Web
    min_os_version VARCHAR(20),
    app_size_mb DECIMAL(6,2),
    
    -- Release & Update Info
    release_date DATE NOT NULL,
    last_updated DATE,
    current_version VARCHAR(20),
    
    -- Store Status
    is_featured BOOLEAN DEFAULT FALSE,
    is_verified BOOLEAN DEFAULT FALSE,
    is_active BOOLEAN DEFAULT TRUE,
    
    -- Compliance & Safety
    privacy_policy_url VARCHAR(255),
    terms_of_service_url VARCHAR(255),
    data_encryption BOOLEAN DEFAULT FALSE,
    
    -- Timestamps
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
