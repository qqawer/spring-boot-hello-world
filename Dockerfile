# 基础镜像：替换为 Eclipse Temurin 21 JRE 精简版（国外访问稳定，无标签兼容问题）
# 比 JDK 体积更小，仅包含运行 Spring Boot 所需的 JRE，更适合生产环境
FROM eclipse-temurin:21-jre-slim

# 作者（保留你的配置）
LABEL maintainer="user"

# 复制 maven 打包好的 jar 到容器，并重命名为 app.jar（保留你的通配符写法，无需修改）
COPY target/*.jar app.jar

# 暴露端口（SpringBoot 默认 8080，保留你的配置）
EXPOSE 8080

# 启动命令（保留你的配置，无需修改）
ENTRYPOINT ["java", "-jar", "/app.jar"]