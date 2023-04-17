-- 以下にクエリを書いてください
SELECT tags.name as tag_name
FROM posts
JOIN post_tags
ON posts.id = post_tags.post_id
JOIN tags
ON post_tags.tag_id = tags.id
WHERE posts.id = 40000
ORDER BY tags.name ASC;
