#!/bin/sh

xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/workspace/catkin_ws/src/World/my_world.world" &

sleep 7

xterm -e "roslaunch turtlebot_gazebo gmapping_demo.launch" &

sleep 7

xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" &

sleep 7

xterm -e "roslaunch turtlebot_teleop keyboard_teleop.launch" & 

sleep 7