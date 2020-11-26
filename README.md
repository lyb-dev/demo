docker run -d -it \
--name=myapp \
-p 8080:8080 \
--restart=always \
-v myapp-log:/logs \
-e TZ=Asia/Shanghai \
-e "JAVA_OPTS=-server -Xms2g -Xmx2g" \
-e "RUN_ARGS=--server.port=8080" \
--add-host=configinfo.appleframework.com:192.168.2.10 \
--add-host=configlist.appleframework.com:192.168.2.10 \
myapp