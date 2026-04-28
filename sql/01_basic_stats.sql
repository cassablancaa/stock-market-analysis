SELECT
    company,
    ROUND(AVG(close_price), 2)  AS avg_close,
    ROUND(MAX(close_price), 2)  AS max_close,
    ROUND(MIN(close_price), 2)  AS min_close,
    ROUND(AVG(volume)/1e6, 2)   AS avg_volume_mln
FROM stocks
GROUP BY company
ORDER BY avg_close DESC;