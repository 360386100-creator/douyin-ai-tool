@echo off
chcp 65001 >nul

echo ========================================
echo   🚀 抖音带货AI工具 - GitHub更新脚本（修复版）
echo ========================================
echo.

echo 📋 正在检查Git状态...
git status
echo.

echo 🔧 正在检查远程仓库配置...
call :check_git_config
echo.

echo 🔄 正在添加更新文件...
git add .
echo.

echo 💾 正在提交更新...
git commit -m "更新抖音带货AI工具 - %date% %time%"
echo.

echo 📤 正在推送到GitHub...
git push
echo.

echo ✅ 更新完成！
echo.
echo 🔗 您的工具链接：https://360386100-creator.github.io/douyin-ai-tool/
echo.
echo ⏰ 请等待1-2分钟后访问链接
echo.
echo 📝 已上传文件清单：
echo - index.html (首页欢迎页面)
echo - .nojekyll (GitHub Pages配置)
echo - CNAME (域名配置)
echo - 极简部署指南.txt
echo - 所有抖音带货AI工具文件
echo.
pause
exit /b

:check_git_config
REM 检查是否已配置远程仓库
git remote | findstr "origin" >nul
if %errorlevel% neq 0 (
    echo ❗ 未检测到远程仓库配置，正在配置...
    git remote add origin https://github.com/360386100-creator/douyin-ai-tool.git
    echo ✅ 远程仓库已配置完成
) else (
    echo ✅ 远程仓库配置正常
)
exit /b