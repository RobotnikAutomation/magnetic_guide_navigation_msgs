# states for state field
string STATE_FAILURE=failure
string STATE_LOCALIZED=localized
string STATE_NOT_LOCALIZED=not_localized
# movement movement_axis
string MOVEMENT_AXIS_X=x
string MOVEMENT_AXIS_Y=y
# movement direction
string MOVEMENT_DIRECTION_FWD=forward
string MOVEMENT_DIRECTION_BWD=backward

int16 current_node
int16 last_node
int16 target_node
string state
string graph_id
string movement_axis
string movement_direction
geometry_msgs/Pose2D error_position_on_node
MagneticSensor[] sensor_state
robotnik_msgs/Pose2DStamped pose
