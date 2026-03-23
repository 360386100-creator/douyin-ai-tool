@echo off
chcp 65001 >nul
echo ========================================
echo   🚀 抖音带货AI工具 - GitHub更新脚本
echo ========================================
echo.

echo 📋 正在检查Git状态...
git status

echo.
echo 🔄 正在添加更新文件...
git add index.html .nojekyll CNAME

echo.
echo 💾 正在提交更新...
git commit -m "添加首页文件和GitHub Pages配置"

echo.
echo 📤 正在推送到GitHub...
git push origin master

echo.
echo ✅ 更新完成！
echo.
echo 🔗 您的工具链接：https://360386100-creator.github.io/douyin-ai-tool/
echo ⏱️ 请等待1-2分钟让GitHub Pages部署生效
echo.
echo 📱 测试链接：
echo 1. https://360386100-creator.github.io/douyin-ai-tool/
echo 2. https://360386100-creator.github.io/douyin-ai-tool/douyin-ai-tool.html
echo.
pause