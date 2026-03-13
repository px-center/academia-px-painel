@echo off
REM Script de automacao - Atualizar dashboard Academia PX

set "ORIGEM=C:\Users\GustavoAlvesdeSouza\OneDrive - PX Center\Área de Trabalho\10_Forecast\50_Projeções\10_Automação KPI\KPI_para_GS_Dias_Detalhado.csv"
set "DESTINO=C:\Users\GustavoAlvesdeSouza\Desktop\academia-px-painel\data.csv"
set "PASTA_REPO=C:\Users\GustavoAlvesdeSouza\Desktop\academia-px-painel"

REM Copiar CSV do OneDrive para o repo
copy /Y "%ORIGEM%" "%DESTINO%"

REM Ir para pasta do repositorio
cd /d "%PASTA_REPO%"

REM Git commit e push
git add "data.csv"
git commit -m "Atualizar dados - %date% %time%"
git push origin main
