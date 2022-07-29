use pubs_mysql;


SELECT au_fname, city, state, contract , phone
FROM author_t
WHERE state = 'CA' AND contract = '1'
group BY au_fname;