# :camera: tko realsense docker
docker for tko robot to start realsens cameras

## :hammer_and_wrench: Setup
```
cd tko_rs_docker/docker
docker compose build
```

## :scroll: Usage

launch the docker with interactive bash
```
docker compose run realsense
```

launch cameras
```
docker compose run cameraf
docker compose run cameraf_down
docker compose run camerar
docker compose run cameral
docker compose run camerab

