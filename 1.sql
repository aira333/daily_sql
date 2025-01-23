-- Find viewers with multiple article views in a day
-- table - plaground.views
-- column - viewer_id, view_date, article_id
-- task - Find viewers who viewed more than one article on a given day
-- output - should contain a single column viewer_id listing each viewer who viewed more than one article on a given day.

SELECT viewer_id
FROM
(
    SELECT viewer_id, view_date, COUNT(distinct article_id) as number_of_articles
    FROM palyground.views
    GROUP BY viewer_id, view_date
    HAVING COUNT(distinct article_id) > 1
)
ORDER BY viewer_id ASC;