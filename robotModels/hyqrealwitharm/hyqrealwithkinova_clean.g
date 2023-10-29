base world{ color:[0.8, 0.2, 0.2, 0.5]}
#base_footprint 	{Q:[0, 0, 0.61, 1, 0, 0, 0] }
#base_z {Q:[0, 0, 0.61, 1, 0, 0, 0]}

base_footprint 	{}
#worldTranslationRotation (jointBase_z base_footprint){ joint:transXYPhi,  limits: [-4, 4, -2, 2, -0.1, 0.1], ctrl_H=20 }
worldTranslationRotation (world base_footprint){ joint:transXYPhi,  limits: [-100, 100, -100, 100, -6.28, 6.28], ctrl_H=20}
base_z {} 
jointBase_z (base_footprint base_z) {joint:transZ, limits:[0.6, 0.6]}
base_pitch {}
jointBase_pitch (base_z base_pitch) { joint:hingeY, limits: [-0.2, 0.2] }
trunk (base_pitch) 	{ , mass:93, inertiaTensor:[1.49873, -0.007369, -0.189135, 9.49238, 0.000185, 9.01236]}
trunk_1 (base_pitch) 	{ , shape:mesh, color:[0.38, 0.365, 0.365], mesh:'meshes/trunk/combined_torso.dae', meshscale=0.001, visual, Q:[0.0, 0, 0.0, 0, 0, 1, 1]  }
#trunk_0 (trunk) 	{ , shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/trunk/combined_torso_decimated.dae', contact:-2 }
trunk>lf_haa_joint (trunk) 	{  Q:[0.4435, 0.139, 0, -1.03412e-13, 2.44843e-12, 2.53174e-25, -1] }
trunk>rf_haa_joint (trunk) 	{  Q:[0.4435, -0.139, 0, 1, 0, -2.44826e-12, 0] }
trunk>lh_haa_joint (trunk) 	{  Q:[-0.4435, 0.139, 0, -1.03412e-13, 2.44843e-12, 2.53174e-25, -1] }
trunk>rh_haa_joint (trunk) 	{  Q:[-0.4435, -0.139, 0, 1, 0, -2.44826e-12, 0] }
base_arm (base_pitch) 	{  Q:[0.539, 0, -0.062, 0.382683, 0, 0, 0.92388], mass:1.697, inertiaTensor:[0.004622, 9e-06, 6e-05, 0.004495, 9e-06, 0.002079] }
base_arm_1 (base_pitch) 	{  Q:[0.539, 0, -0.062, 0.382683, 0, 0, 0.92388], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/base_link.dae', visual }
#base_arm_0 (base_pitch) 	{  Q:[0.539, 0, -0.062, 0.382683, 0, 0, 0.92388], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/base_link.dae', contact:-2 }
base_arm>z_joint_1 (base_pitch) 	{  Q:[0.539, 0, 0.09443, 0.653281, 0.270595, 0.653283, -0.2706] }
lf_haa_joint (trunk>lf_haa_joint) 	{ , joint:hingeX, limits:[-0.733038, 0.401426], ctrl_limits:[173], Q:[0, 0.0, 0.00, 0.7071068, 0., 0., 0.7071068 ]}
rf_haa_joint (trunk>rf_haa_joint) 	{ , joint:hingeX, limits:[-0.733038, 0.401426], ctrl_limits:[173], Q:[0, 0.0, 0.00, -0.7071068, 0, 0, -0.7071068 ] }
lh_haa_joint (trunk>lh_haa_joint) 	{ , joint:hingeX, limits:[-0.733038, 0.401426], ctrl_limits:[173], Q:[0, 0.0, 0.00, 0.7071068, 0, 0, 0.7071068 ] }
rh_haa_joint (trunk>rh_haa_joint) 	{ , joint:hingeX, limits:[-0.733038, 0.401426], ctrl_limits:[173], Q:[0, 0.0, 0.00, -0.7071068, 0, 0, -0.7071068 ]  }
z_joint_1 (base_arm>z_joint_1) 	{ , joint:hingeX, limits:[-100, 100], ctrl_limits:[520] }
lf_hipassembly (lf_haa_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:4.97328, inertiaTensor:[0.011231, -0.000592, 0.000225, 0.015768, 0.000224, 0.016863] }
lf_hipassembly_1 (lf_haa_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], color:[0.831, 0.039, 0.039], shape:cylinder, size:[0, 0, 0.117, 0.0444], visual  }
lf_hipassembly>lf_hfe_joint (lf_haa_joint) 	{  Q:[-0, -0.117, 0, -0.707107, -1.11022e-16, -5.55112e-17, 0.707107] }
rf_hipassembly (rf_haa_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:4.97328, inertiaTensor:[0.011231, -0.000592, 0.000225, 0.015768, 0.000224, 0.016863] }
rf_hipassembly_1 (rf_haa_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], color:[0.831, 0.039, 0.039], shape:cylinder, size:[0, 0, 0.117, 0.0444], visual }
rf_hipassembly>rf_hfe_joint (rf_haa_joint) 	{  Q:[-0, -0.117, 0, -0.707107, 1.11022e-16, -5.55112e-17, -0.707107] }
lh_hipassembly (lh_haa_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], color:[0.831, 0.039, 0.039], mass:4.97328, inertiaTensor:[0.011231, -0.000592, 0.000225, 0.015768, 0.000224, 0.016863] }
lh_hipassembly_1 (lh_haa_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], , color:[0.831, 0.039, 0.039], shape:cylinder, size:[0, 0, 0.117, 0.0444], visual }
lh_hipassembly>lh_hfe_joint (lh_haa_joint) 	{  Q:[-0, -0.117, 0, -0.707107, -1.11022e-16, -5.55112e-17, 0.707107] }
rh_hipassembly (rh_haa_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:4.97328, color:[0.831, 0.039, 0.039], inertiaTensor:[0.011231, -0.000592, 0.000225, 0.015768, 0.000224, 0.016863] }
rh_hipassembly_1 (rh_haa_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:cylinder, color:[0.831, 0.039, 0.039], size:[0, 0, 0.117, 0.0444], visual }
rh_hipassembly>rh_hfe_joint (rh_haa_joint) 	{  Q:[-0, -0.117, 0, -0.707107, 1.11022e-16, -5.55112e-17, -0.707107] }
shoulder_link (z_joint_1) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:1.3773, inertiaTensor:[0.00457, 1e-06, 2e-06, 0.004831, 0.000448, 0.001409] }
shoulder_link_1 (z_joint_1) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/shoulder_link.dae', visual }
#shoulder_link_0 (z_joint_1) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/shoulder_link.dae', contact:-2 }
shoulder_link>z_joint_2 (z_joint_1) 	{  Q:[-0.12838, 0.005375, -2.85061e-17, -0.707105, -1.11022e-16, 0, 0.707108] }
lf_hfe_joint (lf_hipassembly>lf_hfe_joint) 	{ , joint:hingeY, limits:[0.261799, 2.18166], ctrl_limits:[208], Q:[-0.1, -0.1, -0, 0, 0, 0.0, 1] }
rf_hfe_joint (rf_hipassembly>rf_hfe_joint) 	{ , joint:hingeX, limits:[0.261799, 2.18166], ctrl_limits:[208],Q:[0.1, 0.1, -0, 0, 0, 0.0, 1] }
lh_hfe_joint (lh_hipassembly>lh_hfe_joint) 	{ , joint:hingeX, limits:[0.261799, 2.18166], ctrl_limits:[208],Q:[-0.1, -0.1, -0, 0, 0, 0.0, 1] }
rh_hfe_joint (rh_hipassembly>rh_hfe_joint) 	{ , joint:hingeX, limits:[0.261799, 2.18166], ctrl_limits:[208],Q:[0.1, 0.1, -0, 0, 0, 0.0, 1] }
z_joint_2 (shoulder_link>z_joint_2) 	{ , joint:hingeX, limits:[-2.41, 2.41], ctrl_limits:[520] }
lf_upperleg (lf_hfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:5.87793, inertiaTensor:[0.016432, 0.001863, 0.003897, 0.075737, -0.00024, 0.079267] }
lf_upperleg_1 (lf_hfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, mesh:'meshes/leg/upperleg.dae', meshscale=0.001, visual, Q:[-0.1, 0.0, 0.00, 0.0, 0, 0, 1.0 ] }
#lf_upperleg_0 (lf_hfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/leg/upperleg.dae', contact:-2 }
lf_upperleg>lf_kfe_joint (lf_hfe_joint) 	{  Q:[7.99361e-17, -0, -0.36, -1, 0, 0, 0] }
rf_upperleg (rf_hfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:5.87793, inertiaTensor:[0.016432, 0.001863, -0.003897, 0.075737, 0.00024, 0.079267] }
rf_upperleg_1 (rf_hfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, mesh:'meshes/leg/upperleg.dae', meshscale=0.001, visual }
#rf_upperleg_0 (rf_hfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/leg/upperleg.dae', contact:-2 }
rf_upperleg>rf_kfe_joint (rf_hfe_joint) 	{  Q:[7.99361e-17, -0, -0.36, -1, 0, 0, 0] }
lh_upperleg (lh_hfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:5.87793, inertiaTensor:[0.016432, 0.001863, 0.003897, 0.075737, -0.00024, 0.079267] }
lh_upperleg_1 (lh_hfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, mesh:'meshes/leg/upperleg.dae', meshscale=0.001, visual }
#lh_upperleg_0 (lh_hfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/leg/upperleg.dae', contact:-2 }
lh_upperleg>lh_kfe_joint (lh_hfe_joint) 	{  Q:[7.99361e-17, -0, -0.36, -1, 0, 0, 0] }
rh_upperleg (rh_hfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:5.87793, inertiaTensor:[0.016432, 0.001863, -0.003897, 0.075737, 0.00024, 0.079267] }
rh_upperleg_1 (rh_hfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, mesh:'meshes/leg/upperleg.dae', meshscale=0.001, visual }
#rh_upperleg_0 (rh_hfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/leg/upperleg.dae', contact:-2 }
rh_upperleg>rh_kfe_joint (rh_hfe_joint) 	{  Q:[7.99361e-17, -0, -0.36, -1, 0, 0, 0] }
half_arm_1_link (z_joint_2) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:1.1636, inertiaTensor:[0.011088, 5e-06, 0, 0.001072, -0.000691, 0.011255] }
half_arm_1_link_1 (z_joint_2) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/half_arm_1_link.dae',  visual }
#half_arm_1_link_0 (z_joint_2) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/half_arm_1_link.dae', contact:-2 }
half_arm_1_link>z_joint_3 (z_joint_2) 	{  Q:[-0.006375, -0.21038, -1.41553e-18, -0.707105, 2.77556e-16, -5.55112e-17, -0.707108] }
lf_kfe_joint (lf_upperleg>lf_kfe_joint) 	{ , joint:hingeY, limits:[-2.77001, -0.669857], ctrl_limits:[249] }
rf_kfe_joint (rf_upperleg>rf_kfe_joint) 	{ , joint:hingeY, limits:[-2.77001, -0.669857], ctrl_limits:[249] }
lh_kfe_joint (lh_upperleg>lh_kfe_joint) 	{ , joint:hingeY, limits:[-2.77001, -0.669857], ctrl_limits:[249] }
rh_kfe_joint (rh_upperleg>rh_kfe_joint) 	{ , joint:hingeY, limits:[-2.77001, -0.669857], ctrl_limits:[249] }
z_joint_3 (half_arm_1_link>z_joint_3) 	{ , joint:hingeX, limits:[-100, 100], ctrl_limits:[520] }
lf_lowerleg (lf_kfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:1.29195, inertiaTensor:[0.001088, -0.000572, 0.000118, 0.029215, 0.00046, 0.029772] }
lf_lowerleg_1 (lf_kfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, mesh:'meshes/leg/lowerleg.dae', meshscale=0.001, visual }
#lf_lowerleg_0 (lf_kfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/leg/lowerleg_decimated.dae', contact:-2 }
lf_foot_1 (lf_kfe_joint) 	{  Q:[8.43769e-17, -0, -0.38, -0.707107, -5.55112e-17, -3.46234e-12, 0.707107], shape:sphere, size:[0, 0, 0, 0.032], visual }
lf_foot_0 (lf_kfe_joint) 	{  Q:[8.43769e-17, -0, -0.38, -0.707107, -5.55112e-17, -3.46234e-12, 0.707107], shape:sphere, size:[0, 0, 0, 0.032], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
rf_lowerleg (rf_kfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:1.29195, inertiaTensor:[0.001088, -0.000572, 0.000118, 0.029215, 0.00046, 0.029772] }
rf_lowerleg_1 (rf_kfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, mesh:'meshes/leg/lowerleg.dae', meshscale=0.001, visual }
#rf_lowerleg_0 (rf_kfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/leg/lowerleg_decimated.dae', contact:-2 }
rf_foot_1 (rf_kfe_joint) 	{  Q:[8.43769e-17, -0, -0.38, -0.707107, -5.55112e-17, -3.46234e-12, 0.707107], shape:sphere, size:[0, 0, 0, 0.032], visual }
rf_foot_0 (rf_kfe_joint) 	{  Q:[8.43769e-17, -0, -0.38, -0.707107, -5.55112e-17, -3.46234e-12, 0.707107], shape:sphere, size:[0, 0, 0, 0.032], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
lh_lowerleg (lh_kfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:1.29195, inertiaTensor:[0.001088, -0.000572, 0.000118, 0.029215, 0.00046, 0.029772] }
lh_lowerleg_1 (lh_kfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, mesh:'meshes/leg/lowerleg.dae', meshscale=0.001, visual }
#lh_lowerleg_0 (lh_kfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/leg/lowerleg_decimated.dae', contact:-2 }
lh_foot_1 (lh_kfe_joint) 	{  Q:[8.43769e-17, -0, -0.38, -0.707107, -5.55112e-17, -3.46234e-12, 0.707107], shape:sphere, size:[0, 0, 0, 0.032], visual }
#lh_foot_0 (lh_kfe_joint) 	{  Q:[8.43769e-17, -0, -0.38, -0.707107, -5.55112e-17, -3.46234e-12, 0.707107], shape:sphere, size:[0, 0, 0, 0.032], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
rh_lowerleg (rh_kfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:1.29195, inertiaTensor:[0.001088, -0.000572, 0.000118, 0.029215, 0.00046, 0.029772] }
rh_lowerleg_1 (rh_kfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, mesh:'meshes/leg/lowerleg.dae', meshscale=0.001, visual }
#rh_lowerleg_0 (rh_kfe_joint) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/leg/lowerleg_decimated.dae', contact:-2 }
rh_foot_1 (rh_kfe_joint) 	{  Q:[8.43769e-17, -0, -0.38, -0.707107, -5.55112e-17, -3.46234e-12, 0.707107], shape:sphere, size:[0, 0, 0, 0.032], visual }
rh_foot_0 (rh_kfe_joint) 	{  Q:[8.43769e-17, -0, -0.38, -0.707107, -5.55112e-17, -3.46234e-12, 0.707107], shape:sphere, size:[0, 0, 0, 0.032], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
half_arm_2_link (z_joint_3) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:1.1636, inertiaTensor:[0.010932, 0, -7e-06, 0.011127, 0.000606, 0.001043] }
half_arm_2_link_1 (z_joint_3) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/half_arm_2_link.dae', visual }
#half_arm_2_link_0 (z_joint_3) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/half_arm_2_link.dae', contact:-2 }
half_arm_2_link>z_joint_4 (z_joint_3) 	{  Q:[-0.21038, 0.006375, -4.67137e-17, -0.707105, -1.11022e-16, 1.11022e-16, 0.707108] }
z_joint_4 (half_arm_2_link>z_joint_4) 	{ , joint:hingeX, limits:[-2.66, 2.66], ctrl_limits:[520] }
#z_joint_4 (half_arm_2_link>z_joint_4) 	{ , joint:hingeX, limits:[-2.66, 2.66], ctrl_limits:[6.24, 520, 1] }
forearm_link (z_joint_4) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:0.9302, inertiaTensor:[0.008147, -1e-06, 0, 0.000631, -0.0005, 0.008316] }
forearm_link_1 (z_joint_4) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/forearm_link.dae', visual }
#forearm_link_0 (z_joint_4) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/forearm_link.dae', contact:-2 }
forearm_link>z_joint_5 (z_joint_4) 	{  Q:[-0.006375, -0.20843, -1.41553e-18, -0.707105, 1.11022e-16, -5.55112e-17, -0.707108] }
z_joint_5 (forearm_link>z_joint_5) 	{ , joint:hingeX, limits:[-100, 100], ctrl_limits:[320] }
#z_joint_5 (forearm_link>z_joint_5) 	{ , joint:hingeX, limits:[0, 0, 0, 1.2218, 320, 1], ctrl_limits:[320] }
spherical_wrist_1_link (z_joint_5) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:0.6781, inertiaTensor:[0.001596, 0, 0, 0.001607, 0.000256, 0.000399] }
spherical_wrist_1_link_1 (z_joint_5) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/spherical_wrist_1_link.dae', visual }
#spherical_wrist_1_link_0 (z_joint_5) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/spherical_wrist_1_link.dae', contact:-2 }
spherical_wrist_1_link>z_joint_6 (z_joint_5) 	{  Q:[-0.10593, 0.00017505, -2.35212e-17, -0.707105, 2.88658e-15, 2.94209e-15, 0.707108] }
z_joint_6 (spherical_wrist_1_link>z_joint_6) 	{ , joint:hingeX, limits:[-2.23, 2.23], ctrl_limits:[320] }
#z_joint_6 (spherical_wrist_1_link>z_joint_6) 	{ , joint:hingeX, limits:[-2.23, 2.23], ctrl_limits:[6.24, 320, 1] }
spherical_wrist_2_link (z_joint_6) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:0.6781, inertiaTensor:[0.001641, 0, 0, 0.00041, -0.000278, 0.001641] }
spherical_wrist_2_link_1 (z_joint_6) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/spherical_wrist_2_link.dae', visual }
#spherical_wrist_2_link_0 (z_joint_6) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/spherical_wrist_2_link.dae', contact:-2 }
spherical_wrist_2_link>z_joint_7 (z_joint_6) 	{  Q:[-0.00017505, -0.10593, -3.88689e-20, -0.707105, 1.11022e-16, 1.11022e-16, -0.707108] }
z_joint_7 (spherical_wrist_2_link>z_joint_7) 	{ , joint:hingeX, limits:[-100, 100], ctrl_limits:[320] }
#z_joint_7 (spherical_wrist_2_link>z_joint_7) 	{ , joint:hingeX, limits:[0, 0, 0, 1.2218, 320, 1], ctrl_limits:[6.24, 320, 1] }
bracelet_link (z_joint_7) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:0.5, inertiaTensor:[0.000587, 3e-06, 3e-06, 0.000369, -0.000118, 0.000609] }
end_effector_link (z_joint_7) 	{  Q:[-0.061525, -0, -1.36613e-17, -1.14236e-15, -0.707107, -1.14236e-15, 0.707107], mass:0, inertiaTensor:[0, 0, 0, 0, 0, 0] }
bracelet_link_1 (z_joint_7) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.75294, 0.75294, 0.75294, 1], mesh:'meshes/arm/bracelet_with_vision_link.dae', visual }
#bracelet_link_0 (z_joint_7) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/arm/bracelet_with_vision_link.dae', contact:-2 }