
#!/bin/bash
# start_container.sh
docker stop $(docker ps -q) # 全てのコンテナを停止
docker compose up
open "http://localhost:3000"

