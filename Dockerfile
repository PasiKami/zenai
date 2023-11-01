# 使用官方的python镜像
FROM python:3.10

# 你的工作路径
WORKDIR /usr/src/zenai

# 将你的python依赖列表复制到容器里
COPY requirements.txt ./

# 使用pip来安装你的依赖
RUN pip install --no-cache-dir -r requirements.txt

# 将其他源代码复制到工作路径
COPY . .

# 你的程序需要的端口
EXPOSE 8501

#这是你的程序入口
CMD [ "python", "简介.py" ]
