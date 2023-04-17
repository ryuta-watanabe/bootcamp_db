-- 以下にクエリを書いてください
SELECT tags.name as tag_name, COUNT(post_tags.post_id = posts.id) as posts_count
FROM post_tags
JOIN posts
ON post_tags.post_id = posts.id
JOIN tags
ON post_tags.tag_id = tags.id
GROUP BY tag_name
HAVING COUNT(post_tags.post_id = posts.id) >= 20
ORDER BY posts_count DESC, tags.id;
