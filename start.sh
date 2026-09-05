#
#
#!/bin/bash
###
# docker compose  down -v 
# docker compose  down
##对需要挂载的目录进行提高访问权限
chmod 777 /gpu-data

# 启动除onlyoffice以外所有服务
docker compose up -d db web tika elasticsearch
echo "已启动 db web tika elasticsearch，等待3分钟(180秒)再启动onlyoffice"
sleep 180
echo "开始启动 onlyoffice"
docker compose up -d onlyoffice
echo "全部服务启动完成"
