# ベースイメージ（OpenJDK）
FROM openjdk:17-jdk-slim

# 作業ディレクトリ作成
WORKDIR /app

# jar ファイルをコンテナにコピー
COPY build/libs/*.jar app.jar

# 環境変数 PORT を使ってアプリを起動（RenderがPORTを提供する）
ENV PORT 8080
EXPOSE ${PORT}

# Javaアプリを起動 test
CMD ["java", "-jar", "app.jar"]
