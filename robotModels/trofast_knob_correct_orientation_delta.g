world 	{  }
world>trofast_joint0 (world) 	{  Q:[3, 0.67, 0.1, 0.707388, 0.706825, 0, 0] }
trofast_joint0 (world>trofast_joint0) 	{ , joint:rigid }
body (trofast_joint0) 	{ , mass:0.54, inertiaTensor:[0.0064, 0, 0, 0.0103, 0, 0.012],logical={ body } }
trofast_joint1 (body) 	{ , joint:rigid }
trofast (trofast_joint1) 	{  }
trofast_1 (trofast) 	{ , shape:mesh, mesh:'trofast.dae', color:[1,0.4235,0.0392,1.0], visual, logical={ drawer } }
#trofast_0 (trofast) 	{ , shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'/home/simple/ros_ws_lgp/src/reachability-aware-LGP/rhh-lgp/rhhlgp-rai/bin/trofast.dae', contact:-2 }
trofast_1>trofast_joint2 (trofast_1) 	{  Q:[-0.205, 0.145, 0.0, 0.500197,0.500197,0.499606,0.499606] }
trofast_1>trofast_joint3 (trofast_1) 	{  Q:[-0.23, 0.145, 0.0,  0.500197,0.500197,0.499606,0.499606] }
trofast_joint2 (trofast_1>trofast_joint2) 	{ , joint:rigid }
trofast_joint3 (trofast_1>trofast_joint3) 	{ , joint:rigid }
knob_base (trofast_joint2) 	{  }
knob_pole (trofast_joint3) 	{  }
knob_base_1 (knob_base) 	{ , shape:cylinder, size:[0, 0, 0.030, 0.035], color:[1,1.0,1.0,1.0], visual, logical={ knobBase } }
#knob_base_0 (knob_base) 	{ , shape:cylinder, size:[0, 0, 0.030, 0.035], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
knob_pole_1 (knob_pole) 	{ , shape:cylinder, size:[0, 0, 0.030, 0.030], color:[1,1.0,1.0,1.0], visual, logical={ knob } }
#knob_pole_0 (knob_pole) 	{ , shape:cylinder, size:[0, 0, 0.030, 0.030], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }


