FROM tomcat:9.0-jdk17-openjdk-slim

WORKDIR /usr/src/app

# Antをインストール
RUN apt-get update && apt-get install -y ant && rm -rf /var/lib/apt/lists/*

# ソースコードとwebappをコピー
COPY . .

# Antでwarファイルをビルド
RUN ant war

# Tomcatのwebappsをクリア
RUN rm -rf /usr/local/tomcat/webapps/*

# ビルドしたwarファイルをROOT.warとして配置
RUN cp build/war/extenders-demo.war /usr/local/tomcat/webapps/ROOT.war

ENV PORT=8080
EXPOSE ${PORT}

CMD ["catalina.sh", "run"]
