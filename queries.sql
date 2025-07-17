-- Get recent logs
SELECT * FROM user_logs ORDER BY log_time DESC LIMIT 10;

-- Count of activities by user
SELECT username, COUNT(*) as total_actions
FROM user_logs
GROUP BY username;

-- Failed login attempts
SELECT * FROM user_logs
WHERE activity LIKE '%Failed%';
