# 初始化Git仓库（如果尚未初始化）
git init

# 创建.gitignore文件，排除不需要版本控制的文件
cat > .gitignore << EOF
public/
resources/
.DS_Store
node_modules/
.hugo_build.lock
EOF

# 添加所有文件
git add .

# 提交更改
git commit -m "更新博客" 

# 添加远程仓库
git remote add origin https://github.com/ceshitian/ceshitian.github.io

# 推送到GitHub
git push -u origin main --force