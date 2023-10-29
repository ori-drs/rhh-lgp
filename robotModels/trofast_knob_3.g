world 	{  }
world>trofast3_joint0 (world) 	{  Q:[3, 1, 0.36, 0.707388, 0.706825, 0, 0] }
trofast3_joint0 (world>trofast3_joint0) 	{ , joint:rigid }
body3 (trofast3_joint0) 	{ , mass:0.54, inertiaTensor:[0.0064, 0, 0, 0.0103, 0, 0.012] }
trofast3_joint1 (body3) 	{ , joint:rigid }
trofast3 (trofast3_joint1) 	{  }
trofast3_1 (trofast3) 	{ , shape:mesh, mesh:'trofast.dae', color:[1,0.4235,0.0392,1.0], visual }
trofast3_0 (trofast3) 	{ , shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'trofast.dae', contact:-2 }
world>trofast3_joint2 (world) 	{  Q:[2.795, 1 0.505, 0.710914, 0, 0.703279, 0] }
world>trofast3_joint3 (world) 	{  Q:[2.77, 1, 0.505, 0.710914, 0, 0.703279, 0] }
trofast3_joint2 (world>trofast3_joint2) 	{ , joint:rigid }
trofast3_joint3 (world>trofast3_joint3) 	{ , joint:rigid }
knob3_base (trofast3_joint2) 	{  }
knob3_pole (trofast3_joint3) 	{  }
knob3_base_1 (knob3_base) 	{ , shape:cylinder, size:[0, 0, 0.025, 0.032], color:[1,1.0,1.0,1.0], visual }
knob3_base_0 (knob3_base) 	{ , shape:cylinder, size:[0, 0, 0.025, 0.032], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
knob3_pole_1 (knob3_pole) 	{ , shape:cylinder, size:[0, 0, 0.025, 0.027], color:[1,1.0,1.0,1.0], visual }
knob3_pole_0 (knob3_pole) 	{ , shape:cylinder, size:[0, 0, 0.025, 0.027], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }


