-- 以下にクエリを書いてください
SELECT f.following_id as user_id, p.content as latest_post_content
FROM users as u
JOIN follows as f
ON u.id = f.follower_id
JOIN posts as p
ON p.posted_at = (
  SELECT MAX(tmp_p.posted_at)
  FROM posts as tmp_p
  WHERE tmp_p.user_id = f.following_id
  GROUP BY tmp_p.user_id
)
AND p.user_id = f.following_id
WHERE u.id = 7000
ORDER BY user_id;
