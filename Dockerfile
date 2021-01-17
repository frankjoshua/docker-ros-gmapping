FROM ros:noetic-ros-base

RUN apt-get update && apt-get install -y \
  curl \
  ros-$ROS_DISTRO-slam-gmapping \
  && rm -rf /var/lib/apt/lists/*

HEALTHCHECK CMD /ros_entrypoint.sh rostopic list || exit 1

RUN mkdir -p /app
COPY ./app /app
WORKDIR /app
CMD ["roslaunch", "--wait", "ros.launch"]