-- 以下にクエリを書いてください
SELECT follows.follower_id as user_id, (
  SELECT CONCAT(users.first_name, users.last_name)
  FROM users
  WHERE follows.follower_id = users.id
) as full_name
FROM follows
JOIN users
ON follows.following_id = users.id
WHERE users.id = 6000
ORDER BY full_name ASC;
