#!/bin/bash

# 确保脚本在错误时退出
set -e

# 配置参数
IMAGE_NAME="custom-dify"
OUTPUT_TAR="./${IMAGE_NAME}.tar"

echo "▶ 开始构建应用..."
# 执行项目构建
pnpm build

echo "▶ 复制静态文件..."
# 复制必要文件，参考 package.json 中的 start 脚本
cp -r .next/static .next/standalone/.next/static
cp -r public .next/standalone/public

echo "▶ 开始构建镜像..."
docker buildx build \
  --platform linux/amd64 \
  -f deploy/Dockerfile \
  -t ${IMAGE_NAME}:latest \
  --load \
  .

echo "✅ 构建完成，导出镜像..."
docker save -o ${OUTPUT_TAR} ${IMAGE_NAME}:latest

echo "===================================="
echo "镜像文件: ${OUTPUT_TAR}"
echo "加载命令: docker load -i ${IMAGE_NAME}.tar"
echo "运行命令: docker run -d -p 3000:3000 ${IMAGE_NAME}:latest"