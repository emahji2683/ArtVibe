
#!/bin/bash
# start_container.sh
docker stop $(docker ps -q) # 全てのコンテナを停止
docker start fa91d2df34cbd8209e466cf8bd9e05e6f02773663c91ad2cbca398e6e30eb9f3
docker start ee25a90c2eb6
open "http://localhost:3000"

