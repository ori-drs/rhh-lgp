world 	{  }
world>cart_joint (world) 	{  Q:[3, 0, 0.15, 1, 0, 0, 0] }
world>load_joint_Y (world) 	{  Q:[2, 0, 0.35, 0.707388, 0, 0, 0.706825] }
cart_joint (world>cart_joint) 	{ , joint:rigid }
load_joint_Y (world>load_joint_Y) 	{ , joint:rigid, limits:[-1e+06, 1e+06, 1e+06, 0, 1], ctrl_limits:[1e+06, 0, 1] }
table2 (cart_joint) 	{ , mass:15.5, inertiaTensor:[3.41667, 0, 0, 3.41667, 0, 3.41667] }
load_link_Y (load_joint_Y) 	{ , mass:1e-05, inertiaTensor:[1e-05, 0, 0, 1e-05, 0, 1e-05] }
table2_1 (table2) 	{ , shape:box, size:[0.4, 2.2, 0.3, 0], color:[0.659, 0.376, 0, 1], colorName:"table_color", visual }
table2_0 (table2) 	{ , shape:box, size:[0.4, 2.2, 0.3, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
load_link_Y>load_joint_X (load_link_Y) 	{  Q:[0, 0, 0, 9.38186e-07, 0.707107, -9.38186e-07, 0.707107] }
load_joint_X (load_link_Y>load_joint_X) 	{ , joint:rigid, limits:[-1e+06, 1e+06, 1e+06, 0, 1], ctrl_limits:[1e+06, 0, 1] }
load_link_X (load_joint_X) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:1e-05, inertiaTensor:[1e-05, 0, 0, 1e-05, 0, 1e-05] }
load_link_X>load_joint_Z (load_link_X) 	{  Q:[0, 0, 0, 1.32679e-06, 1, 0, 0] }
load_joint_Z (load_link_X>load_joint_Z) 	{ , joint:rigid, limits:[-1e+06, 1e+06, 1e+06, 0, 1], ctrl_limits:[1e+06, 0, 1] }
load_link_Z (load_joint_Z) 	{ , mass:1e-05, inertiaTensor:[1e-05, 0, 0, 1e-05, 0, 1e-05] }
load_link_Z>load_joint_P (load_link_Z) 	{  Q:[0, 0, 0, 1.32679e-06, 0, 1, 0] }
load_joint_P (load_link_Z>load_joint_P) 	{ , joint:rigid, limits:[-1e+06, 1e+06, 10000, 0, 1], ctrl_limits:[10000, 0, 1] }
load_link_P (load_joint_P) 	{ , mass:1e-05, inertiaTensor:[1e-05, 0, 0, 1e-05, 0, 1e-05] }
load_link_P>load_joint_R (load_link_P) 	{  Q:[0, 0, 0, 9.38186e-07, 0.707107, -0.707107, 9.38186e-07] }
load_joint_R (load_link_P>load_joint_R) 	{ , joint:rigid, limits:[-1e+06, 1e+06, 1e+06, 0, 1], ctrl_limits:[1e+06, 0, 1] }
load_link_R (load_joint_R) 	{  Q:[-0, -0, -0, -0.707107, 0, 0, 0.707107], mass:1e-05, inertiaTensor:[1e-05, 0, 0, 1e-05, 0, 1e-05] }
load_link_R>load_joint_Yaw (load_link_R) 	{  Q:[0, 0, 0, 0.707108, 0, 0.707106, 0] }
load_joint_Yaw (load_link_R>load_joint_Yaw) 	{ , joint:rigid, limits:[-1e+06, 1e+06, 1e+06, 0, 1], ctrl_limits:[1e+06, 0, 1] }
load_link_Yaw (load_joint_Yaw) 	{  Q:[-0, -0, -0, -0.707107, 0, -0.707107, 0], mass:1.8, inertiaTensor:[0.00508, 0, 0, 0.00508, 0, 0.00417] }
load_link_Yaw_1 (load_link_Yaw) 	{ , shape:box, size:[0.1, 0.1, 0.2, 0], visual }
load_link_Yaw_0 (load_link_Yaw) 	{ , shape:box, size:[0.1, 0.1, 0.2, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
load_link_Yaw>load_handle_joint_left (load_link_Yaw) 	{  Q:[0, -0.04, 0.12, 1, 0, 0, 0] }
load_link_Yaw>load_handle_joint_right (load_link_Yaw) 	{  Q:[0, 0.04, 0.12, 1, 0, 0, 0] }
load_link_Yaw>load_to_handle (load_link_Yaw) 	{  Q:[0, 0, 0.15, 0.705619, -0.708591, 0, 0] }
load_handle_joint_left (load_link_Yaw>load_handle_joint_left) 	{ , joint:rigid }
load_handle_joint_right (load_link_Yaw>load_handle_joint_right) 	{ , joint:rigid }
load_to_handle (load_link_Yaw>load_to_handle) 	{ , joint:rigid }
handle_joint_left (load_handle_joint_left) 	{ , mass:0.001, inertiaTensor:[1e-05, 0, 0, 1e-05, 0, 1e-05] }
handle_joint_right (load_handle_joint_right) 	{ , mass:0.001, inertiaTensor:[1e-05, 0, 0, 1e-05, 0, 1e-05] }
handle (load_to_handle) 	{ , mass:0.2, inertiaTensor:[0.002, 0, 0, 0.002, 0, 4.05e-05] }
handle_joint_left_1 (handle_joint_left) 	{ , shape:cylinder, size:[0, 0, 0.08, 0.01], visual }
handle_joint_left_0 (handle_joint_left) 	{ , shape:cylinder, size:[0, 0, 0.08, 0.01], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
handle_joint_right_1 (handle_joint_right) 	{ , shape:cylinder, size:[0, 0, 0.08, 0.01], visual }
handle_joint_right_0 (handle_joint_right) 	{ , shape:cylinder, size:[0, 0, 0.08, 0.01], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
handle_1 (handle) 	{ , shape:box, size:[0.02, 0.02, 0.08, 0], visual, logical={ object } }
handle_0 (handle) 	{ , shape:box, size:[0.02, 0.02, 0.08, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }

