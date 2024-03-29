#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 安装依赖文件
npm install

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

git init
git add .
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:WangChenQing94/doc.git master:release

cd -