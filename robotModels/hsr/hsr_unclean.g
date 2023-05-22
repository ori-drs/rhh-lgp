body base_footprint {
}

body base_link {
mass:50.00
inertiaTensor:[0.3742 0.000434172172 0.03088 0.3436 0.01775 0.1509]
}

shape visual base_link_1 (base_link) {  
type:mesh
mesh:'hsr_meshes/meshes/base_v2/base.stl'
visual
}

shape collision base_link_0 (base_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/base_v2/base.stl'
contact:-2
}

body base_roll_link {
mass:10.239419
inertiaTensor:[0.07671000 -0.01005000 0.00174900 0.09057000 0.00154900 0.14500000]
}

body base_r_drive_wheel_link {
mass:0.2
inertiaTensor:[0.015 0 0 0.015 0 0.015]
}

shape visual base_r_drive_wheel_link_1 (base_r_drive_wheel_link) {  
Q:<t(0.0 0.0 0.0) E(1.57079632679 0.0 0.0)>
type:cylinder
size:[0 0 0.03 0.04]
colorName:wheel
visual
}

shape collision base_r_drive_wheel_link_0 (base_r_drive_wheel_link) {  
color:[.8 .2 .2 .5]
Q:<t(0.0 0.0 0.0) E(1.57079632679 0.0 0.0)>
type:cylinder
size:[0 0 0.03 0.04]
contact:-2
}

body base_l_drive_wheel_link {
mass:0.2
inertiaTensor:[0.015 0 0 0.015 0 0.015]
}

shape visual base_l_drive_wheel_link_1 (base_l_drive_wheel_link) {  
Q:<t(0.0 0.0 0.0) E(1.57079632679 0.0 0.0)>
type:cylinder
size:[0 0 0.03 0.04]
colorName:wheel
visual
}

shape collision base_l_drive_wheel_link_0 (base_l_drive_wheel_link) {  
color:[.8 .2 .2 .5]
Q:<t(0.0 0.0 0.0) E(1.57079632679 0.0 0.0)>
type:cylinder
size:[0 0 0.03 0.04]
contact:-2
}

body base_r_passive_wheel_x_frame {
mass:0.2
inertiaTensor:[0.015 0 0 0.015 0 0.015]
}

body base_r_passive_wheel_y_frame {
mass:0.2
inertiaTensor:[0.015 0 0 0.015 0 0.015]
}

body base_r_passive_wheel_z_link {
mass:0.2
inertiaTensor:[0.015 0 0 0.015 0 0.015]
}

shape visual base_r_passive_wheel_z_link_1 (base_r_passive_wheel_z_link) {  
type:sphere
size:[0 0 0 0.03]
colorName:wheel
visual
}

shape collision base_r_passive_wheel_z_link_0 (base_r_passive_wheel_z_link) {  
color:[.8 .2 .2 .5]
type:sphere
size:[0 0 0 0.03]
contact:-2
}

body base_l_passive_wheel_x_frame {
mass:0.2
inertiaTensor:[0.015 0 0 0.015 0 0.015]
}

body base_l_passive_wheel_y_frame {
mass:0.2
inertiaTensor:[0.015 0 0 0.015 0 0.015]
}

body base_l_passive_wheel_z_link {
mass:0.2
inertiaTensor:[0.015 0 0 0.015 0 0.015]
}

shape visual base_l_passive_wheel_z_link_1 (base_l_passive_wheel_z_link) {  
type:sphere
size:[0 0 0 0.03]
colorName:wheel
visual
}

shape collision base_l_passive_wheel_z_link_0 (base_l_passive_wheel_z_link) {  
color:[.8 .2 .2 .5]
type:sphere
size:[0 0 0 0.03]
contact:-2
}

body base_range_sensor_link {
}

shape visual base_range_sensor_link_1 (base_range_sensor_link) {  
type:mesh
mesh:'hsr_meshes/meshes/sensors/laser.stl'
visual
}

shape collision base_range_sensor_link_0 (base_range_sensor_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/sensors/laser.stl'
contact:-2
}

body base_imu_frame {
}

body torso_lift_link {
mass:3.420779
inertiaTensor:[0.1045 -0.000460884801 0.000101130383 0.105 0.002941 0.01284]
}

shape visual torso_lift_link_1 (torso_lift_link) {  
type:mesh
mesh:'hsr_meshes/meshes/torso_v0/torso.stl'
visual
}

shape collision torso_lift_link_0 (torso_lift_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/torso_v0/torso.stl'
contact:-2
}

body head_pan_link {
mass:0.571903
inertiaTensor:[0.0009711421 0.00006179487 -0.000113923121 0.00065335493 0.000069036305 0.000765202576]
}

shape visual head_pan_link_1 (head_pan_link) {  
type:mesh
mesh:'hsr_meshes/meshes/head_v1/head_pan.stl'
visual
}

shape collision head_pan_link_0 (head_pan_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/head_v1/head_pan.stl'
contact:-2
}

body head_tilt_link {
mass:2.123802
inertiaTensor:[0.01941 -0.000138091054 0.005035 0.01498 0.000087492537 0.01167]
}

shape visual head_tilt_link_1 (head_tilt_link) {  
type:mesh
mesh:'hsr_meshes/meshes/head_v1/head.stl'
visual
}


shape visual head_tilt_link_1 (head_tilt_link) {  
type:mesh
mesh:'hsr_meshes/meshes/head_v1/tablet.stl'
visual
}

shape collision head_tilt_link_0 (head_tilt_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/head_v1/head.stl'
contact:-2
}

shape collision head_tilt_link_0 (head_tilt_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/head_v1/tablet.stl'
contact:-2
}

body head_l_stereo_camera_link {
}

shape visual head_l_stereo_camera_link_1 (head_l_stereo_camera_link) {  
Q:<t(0 0 0) E(0.0 0.0 0.0)>
type:mesh
mesh:'hsr_meshes/meshes/sensors/head_camera.dae'
visual
}

body head_l_stereo_camera_gazebo_frame {
}

body head_r_stereo_camera_link {
}

shape visual head_r_stereo_camera_link_1 (head_r_stereo_camera_link) {  
Q:<t(0 0 0) E(0.0 0.0 0.0)>
type:mesh
mesh:'hsr_meshes/meshes/sensors/head_camera.dae'
visual
}

body head_r_stereo_camera_gazebo_frame {
}

body head_center_camera_frame {
}

body head_center_camera_gazebo_frame {
}

body head_rgbd_sensor_link {
}

shape visual head_rgbd_sensor_link_1 (head_rgbd_sensor_link) {  
Q:<t(0 0 0) E(0.0 0.0 0.0)>
type:mesh
mesh:'hsr_meshes/meshes/sensors/rgbd.stl'
visual
}

shape collision head_rgbd_sensor_link_0 (head_rgbd_sensor_link) {  
color:[.8 .2 .2 .5]
Q:<t(0 0 0) E(0.0 0.0 0.0)>
type:mesh
mesh:'hsr_meshes/meshes/sensors/rgbd.stl'
contact:-2
}

body head_rgbd_sensor_gazebo_frame {
}

body arm_lift_link {
mass:1.275819
inertiaTensor:[0.004633 0.000475272668 -0.002403 0.008065 -0.000100268629 0.007672]
}

shape visual arm_lift_link_1 (arm_lift_link) {  
type:mesh
mesh:'hsr_meshes/meshes/arm_v0/shoulder.stl'
visual
}

shape collision arm_lift_link_0 (arm_lift_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/arm_v0/shoulder.stl'
contact:-2
}

body arm_flex_link {
mass:1.339295
inertiaTensor:[0.00889053 0.0 0.0 0.00825549 0.0 0.00190511]
}

shape visual arm_flex_link_1 (arm_flex_link) {  
type:mesh
mesh:'hsr_meshes/meshes/arm_v0/arm_flex.stl'
visual
}

shape collision arm_flex_link_0 (arm_flex_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/arm_v0/arm_flex.stl'
contact:-2
}

body arm_roll_link {
mass:0.247936
inertiaTensor:[0.004267 -0.000018322199 0.000017984455 0.000780923828 -0.00001392334 0.00412]
}

shape visual arm_roll_link_1 (arm_roll_link) {  
type:mesh
mesh:'hsr_meshes/meshes/arm_v0/arm_roll.stl'
visual
}

shape collision arm_roll_link_0 (arm_roll_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/arm_v0/arm_roll.stl'
contact:-2
}

body wrist_flex_link {
mass:0.681225
inertiaTensor:[0.000074353558 0.000000494515 0.000000022937 0.000038432887 -0.00000255576 0.000064680918]
}

shape visual wrist_flex_link_1 (wrist_flex_link) {  
type:mesh
mesh:'hsr_meshes/meshes/wrist_v0/wrist_flex.dae'
colorName:body_sub
visual
}

shape visual wrist_flex_link_1 (wrist_flex_link) {  
Q:<t(0.0 0.0 0.04) E(0.0 0.0 0.0)>
type:cylinder
size:[0 0 0.02 0.017]
colorName:body_sub
visual
}

shape collision wrist_flex_link_0 (wrist_flex_link) {  
color:[.8 .2 .2 .5]
Q:<t(0.0 0.0 0.03) E(0.0 0.0 0.0)>
type:cylinder
size:[0 0 0.04 0.017]
contact:-2
}

body wrist_roll_link {
mass:0.761692
inertiaTensor:[0.000805633819 -0.000014431758 0.000028204659 0.000768077165 0.000022460226 0.000453406611]
}

shape visual wrist_roll_link_1 (wrist_roll_link) {  
type:mesh
mesh:'hsr_meshes/meshes/wrist_v0/wrist_roll.stl'
visual
}

shape collision wrist_roll_link_0 (wrist_roll_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/wrist_v0/wrist_roll.stl'
contact:-2
}

body wrist_ft_sensor_frame {
}

body hand_palm_link {
mass:0.15
inertiaTensor:[0.015 0.0 0.0 0.015 0.0 0.015]
}

shape visual hand_palm_link_1 (hand_palm_link) {  
type:mesh
mesh:'hsr_meshes/meshes/hand_v0/palm.stl'
colorName:body_sub
visual
}

shape collision hand_palm_link_0 (hand_palm_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/hand_v0/palm.stl'
contact:-2
}

body hand_motor_dummy_link {
mass:0.15
inertiaTensor:[0.015 0.0 0.0 0.015 0.0 0.015]
}

body hand_l_proximal_link {
mass:0.15
inertiaTensor:[0.015 0.0 0.0 0.015 0.0 0.015]
}

body hand_l_spring_proximal_link {
mass:0.043589
inertiaTensor:[0.000026033886 -0.000000144078 -0.00000198241 0.000028824811 -0.000001268421 0.000005135919]
}

shape visual hand_l_spring_proximal_link_1 (hand_l_spring_proximal_link) {  
type:mesh
mesh:'hsr_meshes/meshes/hand_v0/l_proximal.stl'
colorName:body_sub
visual
}

shape collision hand_l_spring_proximal_link_0 (hand_l_spring_proximal_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/hand_v0/l_proximal.stl'
contact:-2
}

body hand_l_mimic_distal_link {
mass:0.15
inertiaTensor:[0.015 0.0 0.0 0.015 0.0 0.015]
}

body hand_l_distal_link {
mass:0.027731
inertiaTensor:[0.000004451952 0.0 0.0 0.000000503765 0.0 0.000004456764]
}

shape visual hand_l_distal_link_1 (hand_l_distal_link) {  
type:mesh
mesh:'hsr_meshes/meshes/hand_v0/l_distal.stl'
colorName:body_sub
visual
}

shape collision hand_l_distal_link_0 (hand_l_distal_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/hand_v0/l_distal.stl'
contact:-2
}

body hand_l_finger_tip_frame {
mass:0.15
inertiaTensor:[0.015 0.0 0.0 0.015 0.0 0.015]
}

body hand_l_finger_vacuum_frame {
mass:0.15
inertiaTensor:[0.015 0.0 0.0 0.015 0.0 0.015]
}

shape visual hand_l_finger_vacuum_frame_1 (hand_l_finger_vacuum_frame) {  
Q:<t(0.0 0.0 -0.01) E(0.0 0.0 0.0)>
type:box
size:[0.008 0.008 0.02 0]
colorName:body_sub
visual
}

body hand_r_proximal_link {
mass:0.15
inertiaTensor:[0.015 0.0 0.0 0.015 0.0 0.015]
}

body hand_r_spring_proximal_link {
mass:0.043956
inertiaTensor:[0.00002623664 0.00000001631 0.000001281845 0.000028838232 -0.000001621709 0.000004957151]
}

shape visual hand_r_spring_proximal_link_1 (hand_r_spring_proximal_link) {  
type:mesh
mesh:'hsr_meshes/meshes/hand_v0/r_proximal.stl'
colorName:body_sub
visual
}

shape collision hand_r_spring_proximal_link_0 (hand_r_spring_proximal_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/hand_v0/r_proximal.stl'
contact:-2
}

body hand_r_mimic_distal_link {
mass:0.15
inertiaTensor:[0.015 0.0 0.0 0.015 0.0 0.015]
}

body hand_r_distal_link {
mass:0.020927
inertiaTensor:[0.00000307518 -0.00000004954 0.000000009481 0.000004074079 0.000000843648 0.000002807795]
}

shape visual hand_r_distal_link_1 (hand_r_distal_link) {  
type:mesh
mesh:'hsr_meshes/meshes/hand_v0/r_distal.stl'
colorName:body_sub
visual
}

shape collision hand_r_distal_link_0 (hand_r_distal_link) {  
color:[.8 .2 .2 .5]
type:mesh
mesh:'hsr_meshes/meshes/hand_v0/r_distal.stl'
contact:-2
}

body hand_r_finger_tip_frame {
mass:0.15
inertiaTensor:[0.015 0.0 0.0 0.015 0.0 0.015]
}

body hand_camera_frame {
}

body hand_camera_gazebo_frame {
}

joint base_footprint_joint (base_footprint base_link) {  
type:rigid
}

joint base_roll_joint (base_link base_roll_link) {  
type:hingeX
axis:[0.0 0.0 1.0]
A:<t(0.0 0.0 0.0) E(0.0 0.0 0.0)>
ctrl_limits:[2.5 34.46 1]
}

joint base_r_drive_wheel_joint (base_roll_link base_r_drive_wheel_link) {  
type:hingeX
axis:[0.0 1.0 0.0]
A:<t(-0.11 -0.133 0.04) E(0.0 0.0 0.0)>
ctrl_limits:[20.8 11.067 1]
}

joint base_l_drive_wheel_joint (base_roll_link base_l_drive_wheel_link) {  
type:hingeX
axis:[0.0 1.0 0.0]
A:<t(-0.11 0.133 0.04) E(0.0 0.0 0.0)>
ctrl_limits:[20.8 11.067 1]
}

joint base_r_passive_wheel_x_frame_joint (base_roll_link base_r_passive_wheel_x_frame) {  
type:hingeX
axis:[1.0 0.0 0.0]
A:<t(0.1495                 -0.055                 0.03) E(0.0 0.0 0.0)>
ctrl_limits:[3.0 1.0 1]
}

joint base_r_passive_wheel_y_frame_joint (base_r_passive_wheel_x_frame base_r_passive_wheel_y_frame) {  
type:hingeX
axis:[0.0 1.0 0.0]
ctrl_limits:[10.0 8.85 1]
}

joint base_r_passive_wheel_z_joint (base_r_passive_wheel_y_frame base_r_passive_wheel_z_link) {  
type:hingeX
axis:[0.0 0.0 1.0]
ctrl_limits:[10.0 8.85 1]
}

joint base_l_passive_wheel_x_frame_joint (base_roll_link base_l_passive_wheel_x_frame) {  
type:hingeX
axis:[1.0 0.0 0.0]
A:<t(0.1495                 0.055                 0.03) E(0.0 0.0 0.0)>
ctrl_limits:[3.0 1.0 1]
}

joint base_l_passive_wheel_y_frame_joint (base_l_passive_wheel_x_frame base_l_passive_wheel_y_frame) {  
type:hingeX
axis:[0.0 1.0 0.0]
ctrl_limits:[10.0 8.85 1]
}

joint base_l_passive_wheel_z_joint (base_l_passive_wheel_y_frame base_l_passive_wheel_z_link) {  
type:hingeX
axis:[0.0 0.0 1.0]
ctrl_limits:[10.0 8.85 1]
}

joint base_range_sensor_joint (base_link base_range_sensor_link) {  
type:rigid
A:<t(0.1675 0.0 0.1844) E(0.0 0.0 0.0)>
}

joint base_imu_frame_joint (base_link base_imu_frame) {  
type:rigid
A:<t(0.0005 0.1296 0.181) E(3.14159265359 0.0 0.0)>
}


joint head_pan_joint (torso_lift_link head_pan_link) {  
type:hingeX
axis:[0.0 0.0 1.0]
A:<t(0.0 0.0 0.0) E(0.0 0.0 0.0)>
limits:[-3.84 1.75]
ctrl_limits:[1.0 100.0 1]
}

joint head_tilt_joint (head_pan_link head_tilt_link) {  
type:hingeX
axis:[0.0 -1.0 0.0]
A:<t(0.02 0.0 0.0) E(0.0 0.0 0.0)>
limits:[-1.57 0.52]
ctrl_limits:[1.0 100.0 1]
}

joint head_l_stereo_camera_joint (head_tilt_link head_l_stereo_camera_link) {  
type:rigid
A:<t(0.02 0.07 0.061) E(-1.57079632679 0.0 -1.57079632679)>
}

joint head_l_stereo_camera_gazebo_frame_joint (head_l_stereo_camera_link head_l_stereo_camera_gazebo_frame) {  
type:rigid
A:<t(0 0 0) E(1.57079632679 -1.57079632679 0.0)>
}

joint head_r_stereo_camera_joint (head_tilt_link head_r_stereo_camera_link) {  
type:rigid
A:<t(0.02 -0.07 0.061) E(-1.57079632679 0.0 -1.57079632679)>
}

joint head_r_stereo_camera_gazebo_frame_joint (head_r_stereo_camera_link head_r_stereo_camera_gazebo_frame) {  
type:rigid
A:<t(0 0 0) E(1.57079632679 -1.57079632679 0.0)>
}

joint head_center_camera_frame_joint (head_tilt_link head_center_camera_frame) {  
type:rigid
A:<t(0.0195 0.0 0.061) E(-1.57079632679 0.0 -1.57079632679)>
}

joint head_center_camera_gazebo_frame_joint (head_center_camera_frame head_center_camera_gazebo_frame) {  
type:rigid
A:<t(0 0 0) E(1.57079632679 -1.57079632679 0.0)>
}

joint head_rgbd_sensor_joint (head_tilt_link head_rgbd_sensor_link) {  
type:rigid
A:<t(-0.079796 0.022 0.215172) E(-1.57079632679 0.0 -1.57079632679)>
}

joint head_rgbd_sensor_gazebo_frame_joint (head_rgbd_sensor_link head_rgbd_sensor_gazebo_frame) {  
type:rigid
A:<t(0 0 0) E(1.57079632679 -1.57079632679 0.0)>
}

joint arm_lift_joint (base_link arm_lift_link) {  
type:transX
axis:[0.0 0.0 1.0]
A:<t(0.0 0.0 0.340) E(0.0 0.0 0.0)>
limits:[0.0 0.69]
ctrl_limits:[0.2 100.0 1]
}

joint torso_lift_joint (base_link torso_lift_link) {  
type:transX
mimic:(arm_lift_joint)
axis:[0.0 0.0 1.0]
A:<t(0.0 0.0 0.752) E(0.0 0.0 0.0)>
limits:[0.0 0.345]
ctrl_limits:[0.1 100.0 1]
} 

joint arm_flex_joint (arm_lift_link arm_flex_link) {  
type:hingeX
axis:[0.0 -1.0 0.0]
A:<t(0.141 0.078 0.0) E(0.0 0.0 0.0)>
limits:[-2.62 0.0]
ctrl_limits:[1.2 100.0 1]
}

joint arm_roll_joint (arm_flex_link arm_roll_link) {  
type:hingeX
axis:[0.0 0.0 1.0]
A:<t(0.005 0.0 0.345) E(0.0 0.0 0.0)>
limits:[-2.09 3.84]
ctrl_limits:[2.0 100.0 1]
}

joint wrist_flex_joint (arm_roll_link wrist_flex_link) {  
type:hingeX
axis:[0.0 -1.0 0.0]
A:<t(0.0 0.0 0.0) E(0.0 0.0 0.0)>
limits:[-1.92 1.22]
ctrl_limits:[1.5 100.0 1]
}

joint wrist_roll_joint (wrist_flex_link wrist_roll_link) {  
type:hingeX
axis:[0.0 0.0 1.0]
A:<t(0.0 0.0 0.0) E(0.0 0.0 0.0)>
limits:[-1.92 3.67]
ctrl_limits:[1.5 100.0 1]
}

joint wrist_ft_sensor_frame_joint (wrist_roll_link wrist_ft_sensor_frame) {  
type:rigid
A:<t(0.0 0.0 0.0735) E(3.14159265359 0.0 0.0)>
}

joint hand_palm_joint (wrist_roll_link hand_palm_link) {  
type:rigid
A:<t(0.012 0.0 0.1405) E(0.0 0.0 3.14159265359)>
}

joint hand_motor_joint (hand_palm_link hand_motor_dummy_link) {  
type:hingeX
axis:[1.0 0.0 0.0]
limits:[-0.798 1.24]
ctrl_limits:[1.0 100.0 1]
}

joint hand_l_proximal_joint (hand_palm_link hand_l_proximal_link) {  
type:hingeX
mimic:(hand_motor_joint)
axis:[1.0 0.0 0.0]
A:<t(-0.01675 -0.0245 -0.0175) E(0.0 0.0 0.0)>
limits:[-0.798 1.24]
ctrl_limits:[1.0 100.0 1]
}

joint hand_l_spring_proximal_joint (hand_l_proximal_link hand_l_spring_proximal_link) {  
type:hingeX
axis:[1.0 0.0 0.0]
limits:[0.0 0.698]
ctrl_limits:[1.0 100.0 1]
}

joint hand_l_mimic_distal_joint (hand_l_spring_proximal_link hand_l_mimic_distal_link) {  
type:hingeX
mimic:(hand_l_spring_proximal_joint)
axis:[1.0 0.0 0.0]
A:<t(0.0 0.0 0.07)>
limits:[-0.698 -0.0]
ctrl_limits:[1.0 100.0 1]
}

joint hand_l_distal_joint (hand_l_mimic_distal_link hand_l_distal_link) {  
type:hingeX
mimic:(hand_motor_joint)
axis:[1.0 0.0 0.0]
limits:[-1.24 0.798]
ctrl_limits:[1.0 100.0 1]
}

joint hand_l_finger_tip_frame_joint (hand_l_distal_link hand_l_finger_tip_frame) {  
type:rigid
A:<t(0.01675 0.0193 0.0379) E(-1.57079632679 0.0 0.0)>
}

joint hand_l_finger_vacuum_frame_joint (hand_l_distal_link hand_l_finger_vacuum_frame) {  
type:rigid
A:<t(0.00475 -0.011539 0.03322) E(0.785398163397 0.0 0.0)>
}

joint hand_r_proximal_joint (hand_palm_link hand_r_proximal_link) {  
type:hingeX
mimic:(hand_motor_joint)
axis:[-1.0 0.0 0.0]
A:<t(-0.01675 0.0245 -0.0175) E(0.0 0.0 0.0)>
limits:[-0.798 1.24]
ctrl_limits:[1.0 100.0 1]
}

joint hand_r_spring_proximal_joint (hand_r_proximal_link hand_r_spring_proximal_link) {  
type:hingeX
axis:[-1.0 0.0 0.0]
limits:[0.0 0.698]
ctrl_limits:[1.0 100.0 1]
}

joint hand_r_mimic_distal_joint (hand_r_spring_proximal_link hand_r_mimic_distal_link) {  
type:hingeX
mimic:(hand_r_spring_proximal_joint)
axis:[-1.0 0.0 0.0]
A:<t(0.0 0.0 0.07)>
limits:[-0.698 -0.0]
ctrl_limits:[1.0 100.0 1]
}

joint hand_r_distal_joint (hand_r_mimic_distal_link hand_r_distal_link) {  
type:hingeX
mimic:(hand_motor_joint)
axis:[-1.0 0.0 0.0]
limits:[-1.24 0.798]
ctrl_limits:[1.0 100.0 1]
}

joint hand_r_finger_tip_frame_joint (hand_r_distal_link hand_r_finger_tip_frame) {  
type:rigid
A:<t(0.01675 -0.0193 0.0379) E(1.57079632679 0.0 0.0)>
}

joint hand_camera_frame_joint (hand_palm_link hand_camera_frame) {  
type:rigid
A:<t(0.039 0.0 -0.0045) E(0.0 0.0 0.0)>
}

joint hand_camera_gazebo_frame_joint (hand_camera_frame hand_camera_gazebo_frame) {  
type:rigid
A:<t(0 0 0) E(1.57079632679 -1.57079632679 0)>
}

