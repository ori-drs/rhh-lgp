base world{ }
#base_footprint 	{ Q:[0.0, 0, 0.5, 1.0, 0, 0, 0.0]  }
base_footprint 	{  }
#trunk (base_footprint) 	{ , mass:93, inertiaTensor:[1.49873, -0.007369, -0.189135, 9.49238, 0.000185, 9.01236], type=box  size=[ 1.0 0.5 0.2 0 ] }
trunk_link (base_footprint) 	{ , mass:93, inertiaTensor:[1.49873, -0.007369, -0.189135, 9.49238, 0.000185, 9.01236] }
trunk_link_1 (base_footprint) 	{ , shape:mesh, color:[0.75, 0.75, 0.75, 0.2], mesh:'meshes/trunk/combined_torso.dae', meshscale=0.001, visual }
base_arm (base_footprint) 	{  Q:[0.539, 0, -0.062, 0.382683, 0, 0, 0.92388], mass:1.697, inertiaTensor:[0.004622, 9e-06, 6e-05, 0.004495, 9e-06, 0.002079] }
base_arm_1 (base_footprint) 	{  Q:[0.539, 0, -0.062, 0.382683, 0, 0, 0.92388], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/base_link.STL', visual }
#base_arm_0 (base_footprint) 	{  Q:[0.539, 0, -0.062, 0.382683, 0, 0, 0.92388], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/base_link.STL', contact:-2 }
base_arm>z_joint_1 (base_footprint) 	{  Q:[0.539, 0, 0.09443, 0.653281, 0.270595, 0.653283, -0.2706] }
z_joint_1 (base_arm>z_joint_1) 	{ , joint:hingeX, limits:[0, 0, 0, 1.3963, 520, 1], ctrl_limits:[1.3963, 520, 1] }
shoulder_link (z_joint_1) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:1.3773, inertiaTensor:[0.00457, 1e-06, 2e-06, 0.004831, 0.000448, 0.001409] }
shoulder_link_1 (z_joint_1) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/shoulder_link.ply', visual }
#shoulder_link_0 (z_joint_1) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/shoulder_link.ply', contact:-2 }
shoulder_link>z_joint_2 (z_joint_1) 	{  Q:[-0.12838, 0.005375, -2.85061e-17, -0.707105, -1.11022e-16, 0, 0.707108] }
z_joint_2 (shoulder_link>z_joint_2) 	{ , joint:hingeX, limits:[-2.41, 2.41, 1.3963, 520, 1], ctrl_limits:[1.3963, 520, 1] }
half_arm_1_link (z_joint_2) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:1.1636, inertiaTensor:[0.011088, 5e-06, 0, 0.001072, -0.000691, 0.011255] }
half_arm_1_link_1 (z_joint_2) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/half_arm_1_link.ply', visual }
#half_arm_1_link_0 (z_joint_2) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/half_arm_1_link.ply', contact:-2 }
half_arm_1_link>z_joint_3 (z_joint_2) 	{  Q:[-0.006375, -0.21038, -1.41553e-18, -0.707105, 2.77556e-16, -5.55112e-17, -0.707108] }
z_joint_3 (half_arm_1_link>z_joint_3) 	{ , joint:hingeX, limits:[0, 0, 0, 1.3963, 520, 1], ctrl_limits:[1.3963, 520, 1] }
half_arm_2_link (z_joint_3) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:1.1636, inertiaTensor:[0.010932, 0, -7e-06, 0.011127, 0.000606, 0.001043] }
half_arm_2_link_1 (z_joint_3) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/half_arm_2_link.ply', visual }
#half_arm_2_link_0 (z_joint_3) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/half_arm_2_link.ply', contact:-2 }
half_arm_2_link>z_joint_4 (z_joint_3) 	{  Q:[-0.21038, 0.006375, -4.67137e-17, -0.707105, -1.11022e-16, 1.11022e-16, 0.707108] }
z_joint_4 (half_arm_2_link>z_joint_4) 	{ , joint:hingeX, limits:[-2.66, 2.66, 1.3963, 520, 1], ctrl_limits:[1.3963, 520, 1] }
forearm_link (z_joint_4) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:0.9302, inertiaTensor:[0.008147, -1e-06, 0, 0.000631, -0.0005, 0.008316] }
forearm_link_1 (z_joint_4) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/forearm_link.ply', visual }
#forearm_link_0 (z_joint_4) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/forearm_link.ply', contact:-2 }
forearm_link>z_joint_5 (z_joint_4) 	{  Q:[-0.006375, -0.20843, -1.41553e-18, -0.707105, 1.11022e-16, -5.55112e-17, -0.707108] }
z_joint_5 (forearm_link>z_joint_5) 	{ , joint:hingeX, limits:[0, 0, 0, 1.2218, 320, 1], ctrl_limits:[1.2218, 320, 1] }
spherical_wrist_1_link (z_joint_5) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:0.6781, inertiaTensor:[0.001596, 0, 0, 0.001607, 0.000256, 0.000399] }
spherical_wrist_1_link_1 (z_joint_5) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/spherical_wrist_1_link.ply', visual }
#spherical_wrist_1_link_0 (z_joint_5) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/spherical_wrist_1_link.ply', contact:-2 }
spherical_wrist_1_link>z_joint_6 (z_joint_5) 	{  Q:[-0.10593, 0.00017505, -2.35212e-17, -0.707105, 2.88658e-15, 2.94209e-15, 0.707108] }
z_joint_6 (spherical_wrist_1_link>z_joint_6) 	{ , joint:hingeX, limits:[-2.23, 2.23, 1.2218, 320, 1], ctrl_limits:[1.2218, 320, 1] }
spherical_wrist_2_link (z_joint_6) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:0.6781, inertiaTensor:[0.001641, 0, 0, 0.00041, -0.000278, 0.001641] }
spherical_wrist_2_link_1 (z_joint_6) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/spherical_wrist_2_link.ply', visual }
#spherical_wrist_2_link_0 (z_joint_6) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/spherical_wrist_2_link.ply', contact:-2 }
spherical_wrist_2_link>z_joint_7 (z_joint_6) 	{  Q:[-0.00017505, -0.10593, -3.88689e-20, -0.707105, 1.11022e-16, 1.11022e-16, -0.707108] }
z_joint_7 (spherical_wrist_2_link>z_joint_7) 	{ , joint:hingeX, limits:[0, 0, 0, 1.2218, 320, 1], ctrl_limits:[1.2218, 320, 1] }
bracelet_link (z_joint_7) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:0.5, inertiaTensor:[0.000587, 3e-06, 3e-06, 0.000369, -0.000118, 0.000609] }
end_effector_link (z_joint_7) 	{  Q:[-0.061525, -0, -1.36613e-17, -1.14236e-15, -0.707107, -1.14236e-15, 0.707107], mass:0, inertiaTensor:[0, 0, 0, 0, 0, 0] }
bracelet_link_1 (z_joint_7) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/bracelet_with_vision_link.ply', visual }
#bracelet_link_0 (z_joint_7) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/bracelet_with_vision_link.ply', contact:-2 }
worldTranslationRotation (world base_footprint){ joint:transXYPhi,  ctrl_H=20  }

