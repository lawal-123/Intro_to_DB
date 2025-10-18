-- Script that prints the full description of the table 'books'
-- from the database 'alx_book_store' by querying information_schema.COLUMNS.
-- The database name is assumed to be the currently selected database (via DATABASE()).
-- All SQL keywords are in uppercase.

SELECT
    COLUMN_NAME AS Field,
    COLUMN_TYPE AS Type,
    IS_NULLABLE AS Null,
    COLUMN_KEY AS Key,
    COLUMN_DEFAULT AS Default,
    EXTRA AS Extra
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_SCHEMA = DATABASE()
    AND TABLE_NAME = 'books'
ORDER BY
    ORDINAL_POSITION;
