@echo off
chcp 65001 >nul
echo ================================
echo   Break Clouds 本地预览
echo   访问 http://localhost:3000
echo   按 Ctrl+C 停止
echo ================================
cd /d "C:\Users\雷神\source\repos\break-clouds.github.io"
npx serve . -l 3000 --no-clipboard
pause
