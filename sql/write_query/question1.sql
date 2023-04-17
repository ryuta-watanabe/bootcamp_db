-- 以下にクエリを書いてください
SELECT email, first_name, last_name
FROM users
JOIN settings
ON users.id = settings.user_id
WHERE is_send_email = 1;
