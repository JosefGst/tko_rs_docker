FROM 1224425503/ros1_full:latest

ENV WS_DIR="/catkin_ws"
WORKDIR ${WS_DIR}

SHELL ["/bin/bash", "-c"]

ARG DEBIAN_FRONTEND=noninteractive

RUN mkdir src && cd src && \
git clone https://gitcode.com/weixin_42990464/ddynamic_reconfigure.git && \
git clone https://github.com/IntelRealSense/realsense-ros.git && \
cd realsense-ros && \
git checkout $(git tag | sort -V | grep -P "^2.\d+\.\d+" | tail -1)
# cd .. && \
# git clone https://gitcode.com/weixin_42990464/ddynamic_reconfigure.git

# realsense configurations
# COPY ./tko_rs_cam ./src/tko_rs_cam/

# Build the ROS packages
RUN cd ${WS_DIR}
# RUN catkin_make -DCATKIN_ENABLE_TESTING=False -DCMAKE_BUILD_TYPE=Release
# RUN catkin_make install
RUN source /opt/ros/melodic/setup.bash && \
    catkin_make





# Set up the entrypoint
COPY ./docker/entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]

