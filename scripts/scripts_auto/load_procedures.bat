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

echo Ejecutando FUNCTION-CalcularCostoTotal.sql ...
psql -h %PGHOST% -p %PGPORT% -U %PGUSER% -d %PGDATABASE% -f "C:\Users\MTZ\Documents\Git\GitHub\Doc-UP-Julio\BDI-GB-ZOO\scripts\functions\01_calcular_costo_total.sql"
if %errorlevel% neq 0 (
    echo Error ejecutando 01_calcular_costo_total.sql
    exit /b %errorlevel%
)

echo Ejecutando STOREPROCEDURE-RegistrarVisita.sql ...
psql -h %PGHOST% -p %PGPORT% -U %PGUSER% -d %PGDATABASE% -f "C:\Users\MTZ\Documents\Git\GitHub\Doc-UP-Julio\BDI-GB-ZOO\scripts\functions\02_contar_visitantes_habitat.sql"
if %errorlevel% neq 0 (
    echo Error ejecutando 01_registrar_visita.sql
    exit /b %errorlevel%
)

echo Script ejecutado correctamente.
endlocal
pause