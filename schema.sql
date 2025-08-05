-- PostgreSQL Schema for AnalogDots Recommendation System

CREATE TABLE users (
    user_id VARCHAR PRIMARY KEY,
    user_name VARCHAR
);

CREATE TABLE shoes (
    shoe_id VARCHAR PRIMARY KEY,
    shoe_name VARCHAR
);

CREATE TABLE interactions (
    interaction_id SERIAL PRIMARY KEY,
    user_id VARCHAR REFERENCES users(user_id),
    shoe_id VARCHAR REFERENCES shoes(shoe_id),
    interaction_type VARCHAR CHECK (interaction_type IN ('view', 'purchase', 'clean', 'wear')),
    timestamp TIMESTAMP
);
