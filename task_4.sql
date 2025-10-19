-- This script prints the full description of the 'books' table in the current database
-- by querying the INFORMATION_SCHEMA.COLUMNS table.
-- The database is assumed to be the one passed as an argument to the mysql command.

SELECT
    COLUMN_NAME,
    COLUMN_TYPE,
    IS_NULLABLE,
    COLUMN_KEY,
    COLUMN_DEFAULT,
    EXTRA
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_SCHEMA = DATABASE() AND TABLE_NAME = 'Books'
ORDER BY
    ORDINAL_POSITION;
