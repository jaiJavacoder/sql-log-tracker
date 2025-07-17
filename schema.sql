CREATE DATABASE IF NOT EXISTS log_tracker;
USE log_tracker;

CREATE TABLE user_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    activity VARCHAR(100),
    log_time DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Sample data
INSERT INTO user_logs (username, activity) VALUES
('jayakanthan', 'Logged In'),
('jayakanthan', 'Viewed Dashboard'),
('admin', 'Modified User Role'),
('test_user', 'Failed Login'),
('jayakanthan', 'Logged Out');
