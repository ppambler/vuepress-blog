### 
# @Description: In User Settings Edit
 # @Author: your name
 # @Date: 2019-08-14 10:19:51
 # @LastEditTime: 2019-08-14 10:19:51
 # @LastEditors: your name
 ###
#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:ppambler/vuepress-blog.git master:gh-pages

cd -