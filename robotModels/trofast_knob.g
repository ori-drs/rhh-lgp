Frame world {}
Frame knob_pole_1 { X=<T t(2.77 0.67 0.245) E(0 1.57 0)> , shape:cylinder, size:[0, 0, 0.025, 0.027], color:[1,1.0,1.0,1.0], visual, contact=-2, logical={ knob }}
Frame trofast_1 (knob_pole_1)	{Q=<T t(0.145 0 0.23) E(1.57 -1.57 0)> , shape:mesh, mesh:'trofast.dae', color:[1,0.4235,0.0392,1.0], visual, contact=-2,logical={ drawer } }
Frame knob_base_1 (knob_pole_1) { Q=<T t(0.0 0.0 0.025) E(0 0 0)> ,shape:cylinder, size:[0, 0, 0.025, 0.032], color:[1,1.0,1.0,1.0], visual , contact=-2, logical={ knobBase }}
Frame trofast (trofast_1) {}
