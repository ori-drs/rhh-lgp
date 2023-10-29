knob_pole_1 (world) { Q:[2.77, 0.67, 0.245, 0.710914, 0, 0.703279, 0] , shape:cylinder, size:[0, 0, 0.025, 0.027], color:[1,1.0,1.0,1.0], visual, logical={ knob } }


knob_pole_joint (knob_pole_1) {joint:rigid}
knob_base (knob_pole_joint) {}
knob_base_1 (knob_base) { Q:[0.025, 0, 0.0, 0.0, 0, 0.0, 1], shape:cylinder, size:[0, 0, 0.025, 0.032], color:[1,1.0,1.0,1.0], visual , logical={ object, knobBase } }

trofast_joint1 (knob_pole_1) { , joint:rigid }
trofast (trofast_joint1) {}
trofast_1 (trofast) { Q:[0.23, 0, -0.045, 0.0, 0, 0.0, 1], shape:mesh, mesh:'trofast.dae', color:[1,0.4235,0.0392,1.0], visual, logical={ drawer } }
