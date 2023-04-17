-- 以下にクエリを書いてください
SELECT posts.id as post_id, COUNT(posts.id = likes.post_id) as likes_count
FROM posts
JOIN likes
ON posts.id = likes.post_id
JOIN users
ON posts.user_id = users.id
WHERE users.id = 5000
GROUP BY posts.id
ORDER BY posts.posted_at DESC;
