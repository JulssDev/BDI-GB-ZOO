-- CREATE USER ADMIN ZOO
CREATE USER adminzoo WITH PASSWORD '******';
-- CREATE DB ZOOLOGICO
--CREATE DATABASE zoologico WITH ENCODING 'UTF8' TEMPLATE template0 OWNER adminzoo;
CREATE DATABASE zoologico WITH ENCODING='UTF8' LC_COLLATE='es_CO.UTF-8' LC_CTYPE='es_CO.UTF-8' TEMPLATE=template0;
-- GRANT ROLES TO USER ADMIN ZOO
GRANT ALL PRIVILEGES ON DATABASE zoologico TO adminzoo;