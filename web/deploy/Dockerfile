# 使用 Node.js 18 作为基础镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# # 设置 Node 内存限制
# ENV NODE_OPTIONS="--max-old-space-size=4096"
# ENV NODE_ENV=production
# ENV PORT=3000
# ENV HOSTNAME=0.0.0.0

# 复制源代码
COPY ./.next/standalone/ ./

# 复制环境配置文件
# COPY ./.env.local ./


EXPOSE 3000

# 启动应用
CMD ["node", "server.js"]