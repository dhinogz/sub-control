-- +goose Up
-- +goose StatementBegin
CREATE TABLE subscriptions (
    id SERIAL PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    renewal_date DATE,
    cost FLOAT,
    provider TEXT,
    status INT
);

CREATE TABLE users_subscriptions (
    id SERIAL PRIMARY KEY,
    user_id INT UNIQUE REFERENCES users (id) ON DELETE CASCADE,
    subscription_id INT UNIQUE REFERENCES subscriptions (id) ON DELETE CASCADE,
    reminder_settings INT,
    custom_name TEXT -- NULLABLE
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE subscriptions;
DROP TABLE users_subscriptions;
-- +goose StatementEnd
