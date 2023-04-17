-- 以下にクエリを書いてください
SELECT CONCAT(users.first_name, ' ', users.last_name) as fullname, comments.content, comments.commented_at
FROM comments
JOIN posts
ON comments.post_id = posts.id
JOIN users
ON comments.user_id = users.id
WHERE posts.id = 12345
ORDER BY comments.commented_at DESC;
