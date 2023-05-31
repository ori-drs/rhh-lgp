base world{ }
base_footprint 	{  }
base_link (base_footprint) 	{ , mass:50, inertiaTensor:[0.3742, 0.000434172, 0.03088, 0.3436, 0.01775, 0.1509] }
base_link_1 (base_footprint) 	{ , shape:mesh, color:[0.25, 0.25, 0.25, 1], mesh:'hsr_meshes/meshes/base_v2/base_light.ply', visual }
base_link_1 (base_footprint) 	{ , shape:mesh, color:[0.75, 0.75, 0.75, 1], mesh:'hsr_meshes/meshes/base_v2/body_light.ply', visual }
base_link_1 (base_footprint) 	{ , shape:mesh, color:[0.75, 0.75, 0.75, 1], mesh:'hsr_meshes/meshes/base_v2/torso_base.ply', visual }
base_link_0 (base_footprint) 	{ , shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/base_v2/base.stl', contact:-2 }
base_range_sensor_link_1 (base_footprint) 	{  Q:[0.1675, 0, 0.1844, 1, 0, 0, 0], shape:mesh, mesh:'hsr_meshes/meshes/sensors/laser.ply', visual }
base_range_sensor_link_0 (base_footprint) 	{  Q:[0.1675, 0, 0.1844, 1, 0, 0, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/sensors/laser.stl'}
base_link>base_roll_joint (base_footprint) 	{  Q:[0, 0, 0, 0.707107, 0, -0.707107, 0] }
base_link>arm_lift_joint (base_footprint) 	{  Q:[0, 0, 0.34, 0.707107, 0, -0.707107, 0] }
base_link>torso_lift_joint (base_footprint) 	{  Q:[0, 0, 0.752, 0.707107, 0, -0.707107, 0] }
base_roll_joint (base_link>base_roll_joint) 	{ , joint:hingeX, limits:[0, 0, 0, 2.5, 34.46, 1], ctrl_limits:[2.5, 34.46, 1] }
arm_lift_joint (base_link>arm_lift_joint) 	{ , joint:transX, limits:[0, 0.69, 0.2, 100, 1], ctrl_limits:[0.2, 100, 1] }
torso_lift_joint (base_link>torso_lift_joint) 	{ , joint:transX, limits:[0, 0.345, 0.1, 100, 1], mimic:(arm_lift_joint), ctrl_limits:[0.1, 100, 1] }
base_roll_link (base_roll_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:10.2394, inertiaTensor:[0.07671, -0.01005, 0.001749, 0.09057, 0.001549, 0.145] }
base_roll_link>base_r_drive_wheel_joint (base_roll_joint) 	{  Q:[0.04, -0.133, 0.11, -0.5, -0.5, -0.5, -0.5] }
base_roll_link>base_l_drive_wheel_joint (base_roll_joint) 	{  Q:[0.04, 0.133, 0.11, -0.5, -0.5, -0.5, -0.5] }
base_roll_link>base_r_passive_wheel_x_frame_joint (base_roll_joint) 	{  Q:[0.03, -0.055, -0.1495, -0.707107, 0, -0.707107, 0] }
base_roll_link>base_l_passive_wheel_x_frame_joint (base_roll_joint) 	{  Q:[0.03, 0.055, -0.1495, -0.707107, 0, -0.707107, 0] }
arm_lift_link (arm_lift_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:1.27582, inertiaTensor:[0.004633, 0.000475273, -0.002403, 0.008065, -0.000100269, 0.007672] }
arm_lift_link_1 (arm_lift_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.25, 0.25, 0.25, 1],  mesh:'hsr_meshes/meshes/arm_v0/shoulder.stl', visual }
arm_lift_link_0 (arm_lift_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/arm_v0/shoulder.stl', contact:-2 }
arm_lift_link>arm_flex_joint (arm_lift_joint) 	{  Q:[3.13083e-17, 0.078, -0.141, -0.5, 0.5, -0.5, 0.5] }
torso_lift_link (torso_lift_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:3.42078, inertiaTensor:[0.1045, -0.000460885, 0.00010113, 0.105, 0.002941, 0.01284] }
torso_lift_link_1 (torso_lift_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh,  color:[0.25, 0.25, 0.25, 1], mesh:'hsr_meshes/meshes/torso_v0/torso_light.ply', visual }
torso_lift_link_0 (torso_lift_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/torso_v0/torso.stl'}
torso_lift_link>head_pan_joint (torso_lift_joint) 	{  Q:[-0, -0, -0, -1, 0, 0, 0] }
base_r_drive_wheel_joint (base_roll_link>base_r_drive_wheel_joint) 	{ , joint:hingeX, limits:[0, 0, 0, 20.8, 11.067, 1], ctrl_limits:[20.8, 11.067, 1] }
base_l_drive_wheel_joint (base_roll_link>base_l_drive_wheel_joint) 	{ , joint:hingeX, limits:[0, 0, 0, 20.8, 11.067, 1], ctrl_limits:[20.8, 11.067, 1] }
base_r_passive_wheel_x_frame_joint (base_roll_link>base_r_passive_wheel_x_frame_joint) 	{ , joint:hingeX, limits:[0, 0, 0, 3, 1, 1], ctrl_limits:[3, 1, 1] }
base_l_passive_wheel_x_frame_joint (base_roll_link>base_l_passive_wheel_x_frame_joint) 	{ , joint:hingeX, limits:[0, 0, 0, 3, 1, 1], ctrl_limits:[3, 1, 1] }
arm_flex_joint (arm_lift_link>arm_flex_joint) 	{ , joint:hingeX, limits:[-2.62, 0, 1.2, 100, 1], ctrl_limits:[1.2, 100, 1] }
head_pan_joint (torso_lift_link>head_pan_joint) 	{ , joint:hingeX, limits:[-3.84, 1.75, 1, 100, 1], ctrl_limits:[1, 100, 1] }
base_r_drive_wheel_link (base_r_drive_wheel_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, 0.707107], mass:0.2, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
base_r_drive_wheel_link_1 (base_r_drive_wheel_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, 0.707107], shape:cylinder, color:[0.25, 0.25, 0.25, 1], size:[0, 0, 0.03, 0.04], colorName:wheel, visual }
base_r_drive_wheel_link_0 (base_r_drive_wheel_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, 0.707107], shape:cylinder, size:[0, 0, 0.03, 0.04], color:[0.8, 0.2, 0.2, 0]  }
base_l_drive_wheel_link (base_l_drive_wheel_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, 0.707107], mass:0.2, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
base_l_drive_wheel_link_1 (base_l_drive_wheel_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, 0.707107], shape:cylinder, color:[0.25, 0.25, 0.25, 1], size:[0, 0, 0.03, 0.04], colorName:wheel, visual }
base_l_drive_wheel_link_0 (base_l_drive_wheel_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, 0.707107], shape:cylinder, size:[0, 0, 0.03, 0.04], color:[0.8, 0.2, 0.2, 0] }
base_r_passive_wheel_x_frame (base_r_passive_wheel_x_frame_joint) 	{ , mass:0.2, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
base_r_passive_wheel_x_frame>base_r_passive_wheel_y_frame_joint (base_r_passive_wheel_x_frame_joint) 	{  Q:[0, 0, 0, 0.707107, 0, 0, 0.707107] }
base_l_passive_wheel_x_frame (base_l_passive_wheel_x_frame_joint) 	{ , mass:0.2, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
base_l_passive_wheel_x_frame>base_l_passive_wheel_y_frame_joint (base_l_passive_wheel_x_frame_joint) 	{  Q:[0, 0, 0, 0.707107, 0, 0, 0.707107] }
arm_flex_link (arm_flex_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, -0.707107], mass:1.33929, inertiaTensor:[0.00889053, 0, 0, 0.00825549, 0, 0.00190511] }
arm_flex_link_1 (arm_flex_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, -0.707107],shape:mesh,color:[0.75, 0.75, 0.75, 1], mesh:'hsr_meshes/meshes/arm_v0/arm_flex_light.ply', visual }
arm_flex_link_0 (arm_flex_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, -0.707107], shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/arm_v0/arm_flex.stl', contact:-2 }
arm_flex_link>arm_roll_joint (arm_flex_joint) 	{  Q:[1.11022e-18, 0.005, 0.345, -0.5, -0.5, 0.5, -0.5] }
head_pan_link (head_pan_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:0.571903, inertiaTensor:[0.000971142, 6.17949e-05, -0.000113923, 0.000653355, 6.90363e-05, 0.000765203] }
head_pan_link_1 (head_pan_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75, 0.75, 0.75, 1], mesh:'hsr_meshes/meshes/head_v1/head_pan.ply', visual }
head_pan_link_0 (head_pan_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/head_v1/head_pan.stl'}
head_pan_link>head_tilt_joint (head_pan_joint) 	{  Q:[4.44089e-18, -0, -0.02, -0.5, 0.5, -0.5, 0.5] }
base_r_passive_wheel_y_frame_joint (base_r_passive_wheel_x_frame>base_r_passive_wheel_y_frame_joint) 	{ , joint:hingeX, limits:[0, 0, 0, 10, 8.85, 1], ctrl_limits:[10, 8.85, 1] }
base_l_passive_wheel_y_frame_joint (base_l_passive_wheel_x_frame>base_l_passive_wheel_y_frame_joint) 	{ , joint:hingeX, limits:[0, 0, 0, 10, 8.85, 1], ctrl_limits:[10, 8.85, 1] }
arm_roll_joint (arm_flex_link>arm_roll_joint) 	{ , joint:hingeX, limits:[-2.09, 3.84, 2, 100, 1], ctrl_limits:[2, 100, 1] }
head_tilt_joint (head_pan_link>head_tilt_joint) 	{ , joint:hingeX, limits:[-1.57, 0.52, 1, 100, 1], ctrl_limits:[1, 100, 1] }
base_r_passive_wheel_y_frame (base_r_passive_wheel_y_frame_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, 0.707107], mass:0.2, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
base_r_passive_wheel_y_frame>base_r_passive_wheel_z_joint (base_r_passive_wheel_y_frame_joint) 	{  Q:[-0, -0, -0, -0.5, 0.5, 0.5, 0.5] }
base_l_passive_wheel_y_frame (base_l_passive_wheel_y_frame_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, 0.707107], mass:0.2, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
base_l_passive_wheel_y_frame>base_l_passive_wheel_z_joint (base_l_passive_wheel_y_frame_joint) 	{  Q:[-0, -0, -0, -0.5, 0.5, 0.5, 0.5] }
arm_roll_link (arm_roll_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:0.247936, inertiaTensor:[0.004267, -1.83222e-05, 1.79845e-05, 0.000780924, -1.39233e-05, 0.00412] }
arm_roll_link_1 (arm_roll_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75, 0.75, 0.75, 1],mesh:'hsr_meshes/meshes/arm_v0/arm_roll_light.ply', visual }
arm_roll_link_0 (arm_roll_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/arm_v0/arm_roll.stl', contact:-2 }
arm_roll_link>wrist_flex_joint (arm_roll_joint) 	{  Q:[-0, -0, -0, -0.5, 0.5, -0.5, 0.5] }
head_tilt_link (head_tilt_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, -0.707107], mass:2.1238, inertiaTensor:[0.01941, -0.000138091, 0.005035, 0.01498, 8.74925e-05, 0.01167] }
head_tilt_link_1 (head_tilt_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, -0.707107], shape:mesh, color:[0.25, 0.25, 0.25, 1],  mesh:'hsr_meshes/meshes/head_v1/head_upper.ply', visual }
head_tilt_link_1 (head_tilt_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, -0.707107], shape:mesh, color:[0.75, 0.75, 0.75, 1], mesh:'hsr_meshes/meshes/head_v1/head_tilt.ply', visual }
head_tilt_link_1 (head_tilt_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, -0.707107], shape:mesh, color:[0.125, 0.125, 0.125, 1], mesh:'hsr_meshes/meshes/head_v1/tablet_base.ply', visual }
head_tilt_link_0 (head_tilt_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, -0.707107], shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/head_v1/head.stl'}
head_tilt_link_0 (head_tilt_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, -0.707107], shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/head_v1/tablet.stl'}
head_l_stereo_camera_link_1 (head_tilt_joint) 	{  Q:[-0.07, 0.02, 0.061, -0.707107, 0.707107, 1.73117e-12, -1.73112e-12], shape:mesh, color:[0, 0, 0, 1], mesh:'hsr_meshes/meshes/sensors/head_camera.ply', visual }
head_r_stereo_camera_link_1 (head_tilt_joint) 	{  Q:[0.07, 0.02, 0.061, -0.707107, 0.707107, 1.73117e-12, -1.73112e-12], shape:mesh, color:[0, 0, 0, 1],mesh:'hsr_meshes/meshes/sensors/head_camera.ply', visual }
head_rgbd_sensor_link_1 (head_tilt_joint) 	{  Q:[-0.022, -0.079796, 0.215172, -0.707107, 0.707107, 1.73117e-12, -1.73112e-12], shape:mesh, color:[0.03125, 0.03125, 0.03125, 1], mesh:'hsr_meshes/meshes/sensors/rgbd_light.ply', visual }
head_rgbd_sensor_link_0 (head_tilt_joint) 	{  Q:[-0.022, -0.079796, 0.215172, -0.707107, 0.707107, 1.73117e-12, -1.73112e-12], shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/sensors/rgbd.stl', contact:-2 }
base_r_passive_wheel_z_joint (base_r_passive_wheel_y_frame>base_r_passive_wheel_z_joint) 	{ , joint:hingeX, limits:[0, 0, 0, 10, 8.85, 1], ctrl_limits:[10, 8.85, 1] }
base_l_passive_wheel_z_joint (base_l_passive_wheel_y_frame>base_l_passive_wheel_z_joint) 	{ , joint:hingeX, limits:[0, 0, 0, 10, 8.85, 1], ctrl_limits:[10, 8.85, 1] }
wrist_flex_joint (arm_roll_link>wrist_flex_joint) 	{ , joint:hingeX, limits:[-1.92, 1.22, 1.5, 100, 1], ctrl_limits:[1.5, 100, 1] }
base_r_passive_wheel_z_link (base_r_passive_wheel_z_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:0.2, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
base_r_passive_wheel_z_link_1 (base_r_passive_wheel_z_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:sphere, color:[0.25, 0.25, 0.25, 1],  size:[0, 0, 0, 0.03], colorName:wheel, visual }
base_r_passive_wheel_z_link_0 (base_r_passive_wheel_z_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:sphere, size:[0, 0, 0, 0.03], color:[0.8, 0.2, 0.2, 0] }
base_l_passive_wheel_z_link (base_l_passive_wheel_z_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:0.2, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
base_l_passive_wheel_z_link_1 (base_l_passive_wheel_z_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:sphere, color:[0.25, 0.25, 0.25, 1], size:[0, 0, 0, 0.03], colorName:wheel, visual }
base_l_passive_wheel_z_link_0 (base_l_passive_wheel_z_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:sphere, size:[0, 0, 0, 0.03], color:[0.8, 0.2, 0.2, 0] }
wrist_flex_link (wrist_flex_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, -0.707107], mass:0.681225, inertiaTensor:[7.43536e-05, 4.94515e-07, 2.2937e-08, 3.84329e-05, -2.55576e-06, 6.46809e-05] }
wrist_flex_link_1 (wrist_flex_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, -0.707107], shape:mesh, color:[0.25, 0.25, 0.25, 1], mesh:'hsr_meshes/meshes/wrist_v0/wrist_flex.ply', colorName:"body_sub", visual }
wrist_flex_link_1 (wrist_flex_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, -0.707107], shape:cylinder, size:[0, 0, 0.02, 0.017], colorName:"body_sub", visual }
wrist_flex_link_0 (wrist_flex_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, -0.707107], shape:cylinder, size:[0, 0, 0.04, 0.017], color:[0.8, 0.2, 0.2, 0] contact:-2 }
wrist_flex_link>wrist_roll_joint (wrist_flex_joint) 	{  Q:[-0, -0, -0, -0.5, -0.5, 0.5, -0.5] }
wrist_roll_joint (wrist_flex_link>wrist_roll_joint) 	{ , joint:hingeX, limits:[-1.92, 3.67, 1.5, 100, 1], ctrl_limits:[1.5, 100, 1] }
wrist_roll_link (wrist_roll_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:0.761692, inertiaTensor:[0.000805634, -1.44318e-05, 2.82047e-05, 0.000768077, 2.24602e-05, 0.000453407] }
hand_palm_link (wrist_roll_joint) 	{  Q:[0.1405, 0, -0.012, 7.3123e-14, -0.707107, 7.3123e-14, -0.707107], mass:0.15, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
wrist_roll_link_1 (wrist_roll_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75, 0.75, 0.75, 1],mesh:'hsr_meshes/meshes/wrist_v0/wrist_roll.ply', visual }
wrist_roll_link_0 (wrist_roll_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/wrist_v0/wrist_roll.stl', contact:-2 }
hand_palm_link_1 (wrist_roll_joint) 	{  Q:[0.1405, 0, -0.012, 7.3123e-14, -0.707107, 7.3123e-14, -0.707107], shape:mesh, mesh:'hsr_meshes/meshes/hand_v0/palm.stl', colorName:"body_sub", visual }
hand_palm_link_0 (wrist_roll_joint) 	{  Q:[0.1405, 0, -0.012, 7.3123e-14, -0.707107, 7.3123e-14, -0.707107], shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/hand_v0/palm.stl'}
hand_palm_link>hand_l_proximal_joint (wrist_roll_joint) 	{  Q:[0.123, 0.0245, -0.02875, 7.3123e-14, -0.707107, 7.3123e-14, -0.707107] }
hand_palm_link>hand_r_proximal_joint (wrist_roll_joint) 	{  Q:[0.123, -0.0245, -0.02875, 0.707107, 7.30797e-14, 0.707107, 7.30797e-14] }
hand_motor_joint (hand_palm_link) 	{ , joint:hingeX, limits:[-0.798, 1.24, 1, 100, 1], ctrl_limits:[1, 100, 1] }
hand_l_proximal_joint (hand_palm_link>hand_l_proximal_joint) 	{ , joint:hingeX, limits:[-0.798, 1.24, 1, 100, 1], mimic:(hand_motor_joint), ctrl_limits:[1, 100, 1] }
hand_r_proximal_joint (hand_palm_link>hand_r_proximal_joint) 	{ , joint:hingeX, limits:[-0.798, 1.24, 1, 100, 1], mimic:(hand_motor_joint), ctrl_limits:[1, 100, 1] }
hand_motor_dummy_link (hand_motor_joint) 	{ , mass:0.15, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
hand_l_proximal_link (hand_l_proximal_joint) 	{ , mass:0.15, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
hand_r_proximal_link (hand_r_proximal_joint) 	{  Q:[-0, -0, -0, -6.12323e-17, 0, -0, 1], mass:0.15, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
hand_r_proximal_link>hand_r_spring_proximal_joint (hand_r_proximal_joint) 	{  Q:[-0, -0, -0, -1, 0, -0, 0] }
hand_l_spring_proximal_joint (hand_l_proximal_link) 	{ , joint:hingeX, limits:[0, 0.698, 1, 100, 1], ctrl_limits:[1, 100, 1] }
hand_r_spring_proximal_joint (hand_r_proximal_link>hand_r_spring_proximal_joint) 	{ , joint:hingeX, limits:[0, 0.698, 1, 100, 1], ctrl_limits:[1, 100, 1] }
hand_l_spring_proximal_link (hand_l_spring_proximal_joint) 	{ , mass:0.043589, inertiaTensor:[2.60339e-05, -1.44078e-07, -1.98241e-06, 2.88248e-05, -1.26842e-06, 5.13592e-06] }
hand_l_spring_proximal_link_1 (hand_l_spring_proximal_joint) 	{ , shape:mesh, color:[0.25, 0.25, 0.25, 1],mesh:'hsr_meshes/meshes/hand_v0/l_proximal.stl', colorName:"body_sub", visual }
hand_l_spring_proximal_link_0 (hand_l_spring_proximal_joint) 	{ , shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/hand_v0/l_proximal.stl', contact:-2 }
hand_l_spring_proximal_link>hand_l_mimic_distal_joint (hand_l_spring_proximal_joint) 	{  Q:[0, 0, 0.07, 1, 0, 0, 0] }
hand_r_spring_proximal_link (hand_r_spring_proximal_joint) 	{  Q:[-0, -0, -0, -6.12323e-17, 0, -0, 1], mass:0.043956, inertiaTensor:[2.62366e-05, 1.631e-08, 1.28184e-06, 2.88382e-05, -1.62171e-06, 4.95715e-06] }
hand_r_spring_proximal_link_1 (hand_r_spring_proximal_joint) 	{  Q:[-0, -0, -0, -6.12323e-17, 0, -0, 1], shape:mesh,color:[0.25, 0.25, 0.25, 1], mesh:'hsr_meshes/meshes/hand_v0/r_proximal.stl', colorName:"body_sub", visual }
hand_r_spring_proximal_link_0 (hand_r_spring_proximal_joint) 	{  Q:[-0, -0, -0, -6.12323e-17, 0, -0, 1], shape:mesh,  color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/hand_v0/r_proximal.stl', contact:-2 }
hand_r_spring_proximal_link>hand_r_mimic_distal_joint (hand_r_spring_proximal_joint) 	{  Q:[0, 0, 0.07, -1, 0, -0, 0] }
hand_l_mimic_distal_joint (hand_l_spring_proximal_link>hand_l_mimic_distal_joint) 	{ , joint:hingeX, limits:[-0.698, -0, 1, 100, 1], mimic:(hand_l_spring_proximal_joint), ctrl_limits:[1, 100, 1] }
hand_r_mimic_distal_joint (hand_r_spring_proximal_link>hand_r_mimic_distal_joint) 	{ , joint:hingeX, limits:[-0.698, -0, 1, 100, 1], mimic:(hand_r_spring_proximal_joint), ctrl_limits:[1, 100, 1] }
hand_l_mimic_distal_link (hand_l_mimic_distal_joint) 	{ , mass:0.15, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
hand_r_mimic_distal_link (hand_r_mimic_distal_joint) 	{  Q:[-0, -0, -0, -6.12323e-17, 0, -0, 1], mass:0.15, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
hand_r_mimic_distal_link>hand_r_distal_joint (hand_r_mimic_distal_joint) 	{  Q:[-0, -0, -0, -1, 0, -0, 0] }
hand_l_distal_joint (hand_l_mimic_distal_link) 	{ , joint:hingeX, limits:[-1.24, 0.798, 1, 100, 1], mimic:(hand_motor_joint), ctrl_limits:[1, 100, 1] }
hand_r_distal_joint (hand_r_mimic_distal_link>hand_r_distal_joint) 	{ , joint:hingeX, limits:[-1.24, 0.798, 1, 100, 1], mimic:(hand_motor_joint), ctrl_limits:[1, 100, 1] }
hand_l_distal_link (hand_l_distal_joint) 	{ , mass:0.027731, inertiaTensor:[4.45195e-06, 0, 0, 5.03765e-07, 0, 4.45676e-06] }
hand_l_finger_tip_frame (hand_l_distal_joint) 	{  Q:[0.01675, 0.0193, 0.0379, 0.707107, -0.707107, 0, 0], mass:0.15, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
hand_l_finger_vacuum_frame (hand_l_distal_joint) 	{  Q:[0.00475, -0.011539, 0.03322, 0.92388, 0.382683, 0, 0], mass:0.15, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
hand_l_distal_link_1 (hand_l_distal_joint) 	{ , shape:mesh, color:[0.25, 0.25, 0.25, 1],mesh:'hsr_meshes/meshes/hand_v0/l_distal.stl', colorName:"body_sub", visual }
hand_l_distal_link_0 (hand_l_distal_joint) 	{ , shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/hand_v0/l_distal.stl'}
hand_l_finger_vacuum_frame_1 (hand_l_distal_joint) 	{  Q:[0.00475, -0.011539, 0.03322, 0.92388, 0.382683, 0, 0], shape:box, color:[0.25, 0.25, 0.25, 1], size:[0.008, 0.008, 0.02, 0], colorName:"body_sub", visual }
hand_r_distal_link (hand_r_distal_joint) 	{  Q:[-0, -0, -0, -6.12323e-17, 0, -0, 1], mass:0.020927, inertiaTensor:[3.07518e-06, -4.954e-08, 9.481e-09, 4.07408e-06, 8.43648e-07, 2.8078e-06] }
hand_r_finger_tip_frame (hand_r_distal_joint) 	{  Q:[-0.01675, 0.0193, 0.0379, -4.32978e-17, -4.32978e-17, 0.707107, 0.707107], mass:0.15, inertiaTensor:[0.015, 0, 0, 0.015, 0, 0.015] }
hand_r_distal_link_1 (hand_r_distal_joint) 	{  Q:[-0, -0, -0, -6.12323e-17, 0, -0, 1], shape:mesh, color:[0.25, 0.25, 0.25, 1],mesh:'hsr_meshes/meshes/hand_v0/r_distal.stl', colorName:"body_sub", visual }
hand_r_distal_link_0 (hand_r_distal_joint) 	{  Q:[-0, -0, -0, -6.12323e-17, 0, -0, 1], shape:mesh, color:[0.8, 0.2, 0.2, 0] mesh:'hsr_meshes/meshes/hand_v0/r_distal.stl'}
worldTranslationRotation (world base_footprint){ joint:transXYPhi,  ctrl_H=20  }
