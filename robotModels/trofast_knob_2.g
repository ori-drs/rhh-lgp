world 	{  }
world>trofast2_joint0 (world) 	{  Q:[3, 1, 0.1, 0.707388, 0.706825, 0, 0] }
trofast2_joint0 (world>trofast2_joint0) 	{ , joint:rigid }
body2 (trofast2_joint0) 	{ , mass:0.54, inertiaTensor:[0.0064, 0, 0, 0.0103, 0, 0.012] }
trofast2_joint1 (body2) 	{ , joint:rigid }
trofast2 (trofast2_joint1) 	{  }
trofast2_1 (trofast2) 	{ , shape:mesh, mesh:'trofast.dae', color:[1,0.4235,0.0392,1.0], visual }
trofast2_0 (trofast2) 	{ , shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'trofast.dae', contact:-2 }
world>trofast2_joint2 (world) 	{  Q:[2.795, 1 0.245, 0.710914, 0, 0.703279, 0] }
world>trofast2_joint3 (world) 	{  Q:[2.77, 1, 0.245, 0.710914, 0, 0.703279, 0] }
trofast2_joint2 (world>trofast2_joint2) 	{ , joint:rigid }
trofast2_joint3 (world>trofast2_joint3) 	{ , joint:rigid }
knob2_base (trofast2_joint2) 	{  }
knob2_pole (trofast2_joint3) 	{  }
knob2_base_1 (knob2_base) 	{ , shape:cylinder, size:[0, 0, 0.025, 0.032], color:[1,1.0,1.0,1.0], visual }
knob2_base_0 (knob2_base) 	{ , shape:cylinder, size:[0, 0, 0.025, 0.032], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
knob2_pole_1 (knob2_pole) 	{ , shape:cylinder, size:[0, 0, 0.025, 0.027], color:[1,1.0,1.0,1.0], visual }
knob2_pole_0 (knob2_pole) 	{ , shape:cylinder, size:[0, 0, 0.025, 0.027], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }



