# tko realsense docker
docker for tko robot to start realsens cameras

## :hammer_and_wrench: Setup
```
cd tko_rs_docker/docker
docker compose build
```

## :scroll: Usage
launch the rs_multi.launch when the docker starts
```
docker compose run rs_multi_launch
```

launch the docker with interactive bash
```
docker compose run realsense
```

