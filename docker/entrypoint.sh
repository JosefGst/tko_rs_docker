#!/bin/bash
# Basic entrypoint for ROS / Colcon Docker containers

ROS_DISTRO=melodic

# Source ROS 
source /opt/ros/${ROS_DISTRO}/setup.bash
echo "Sourced ROS ${ROS_DISTRO}"

# Source the base workspace, if built
if [ -f /catkin_ws/devel/setup.bash ]
then
  echo "source /catkin_ws/devel/setup.bash" >> ~/.bashrc
  source /catkin_ws/devel/setup.bash
fi

# Execute the command passed into this entrypoint
exec "$@"
