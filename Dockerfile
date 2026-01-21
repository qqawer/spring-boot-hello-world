# 基础镜像，尽量和你开发的 JDK 版本一致
FROM openjdk:21-slim


# 作者
LABEL maintainer="user"

# 把 maven 打包好的 jar 复制进容器，并改名为 app.jar
COPY target/*.jar app.jar

# 暴露容器内部端口（SpringBoot 默认是 8080）
EXPOSE 8080

# 启动命令
ENTRYPOINT ["java", "-jar", "/app.jar"]