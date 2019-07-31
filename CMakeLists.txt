cmake_minimum_required(VERSION 2.8.3)
project(magnetic_guide_navigation_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  actionlib_msgs
  actionlib
  geometry_msgs
  robotnik_msgs
)

add_message_files(
  FILES
  Direction.msg
  GraphNodeIDArray.msg
  GraphNode.msg
  GraphNodePose.msg
  GraphNodeArray.msg
  GraphArc.msg
  GraphArcIntersection.msg
  MagneticLocalizationStatus.msg
  MagneticSensor.msg
  SetNodeReq.msg
  SetNodeRes.msg
)

add_service_files(
  FILES
  SetAxis.srv
  GetGraphNode.srv
  GetGraphRoute.srv
  ReloadGraph.srv
  SetNode.srv
  GetGraphRaw.srv
)

## Generate actions in the 'action' folder
add_action_files(
  DIRECTORY action
  FILES
  GoTo.action
  Move.action
  Turn.action
  GoToNode.action
)

generate_messages(
  DEPENDENCIES
  actionlib_msgs  # Or other packages containing msgs
  geometry_msgs
  robotnik_msgs
)


catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES magnetic_guide_navigation_msgs
   CATKIN_DEPENDS message_runtime std_msgs actionlib_msgs robotnik_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)
