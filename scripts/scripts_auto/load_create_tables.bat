@echo off
chcp 65001
setlocal

:: Configura las variables de conexión
set "PGHOST=localhost"
set "PGPORT=5432"
set "PGUSER=adminzoo"
set "PGPASSWORD=Anohana"
set "PGDATABASE=zoologico"

:: Ejecuta cada archivo SQL en orden

echo Ejecutando create_schema.sql ...
psql -h %PGHOST% -p %PGPORT% -U %PGUSER% -d %PGDATABASE% -f "C:\Users\MTZ\Documents\Git\GitHub\Doc-UP-Julio\BDI-GB-ZOO\scripts\ddl\create_schema.sql"
if %errorlevel% neq 0 (
    echo Error ejecutando create_schema.sql
    exit /b %errorlevel%
)

echo Ejecutando create_tables.sql ...
psql -h %PGHOST% -p %PGPORT% -U %PGUSER% -d %PGDATABASE% -f "C:\Users\MTZ\Documents\Git\GitHub\Doc-UP-Julio\BDI-GB-ZOO\scripts\ddl\create_tables.sql"
if %errorlevel% neq 0 (
    echo Error ejecutando create_tables.sql
    exit /b %errorlevel%
)

echo Script ejecutado correctamente.
endlocal
pause