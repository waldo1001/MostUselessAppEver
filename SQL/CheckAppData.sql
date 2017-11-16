/* 
To Connect:
- Server: devsrv\SQLEXPRESS
- UID: sa
- pwd: waldo1234
*/

--List all tables
SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE'
and TABLE_NAME LIKE '%b528ee70-8b63-4bd8-967c-402f9476b428%'
UNION
SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE'
and TABLE_NAME LIKE '%Just%Some%Table%'

--List Data in tables
SELECT TOP 10 *
FROM [CRONUS International Ltd_$Customer$b528ee70-8b63-4bd8-967c-402f9476b428]

SELECT TOP 10 *
FROM [CRONUS International Ltd_$Just Some Table]

--Snippets (sql...)

--Intellisense

--Export Data (save as)

--Add Data / Re-publish
