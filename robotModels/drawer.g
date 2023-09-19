#Edit worldTranslationRotation { ctrl_H=1 }

rame table0{ shape:ssBox, X=<T t(0.800721 -0.35 0.74000) d(0.000000 0.000000 -0.702110 0.712069)>, size=[2 0.5 0.10000 .02], color=[0 1 0] fixed, contact, logical={  } }
Frame knob { shape:ssBox, X=<T t(0.800721 -0.1 0.45)  d(0.000000 0.000000 -0.702110 0.712069)>, size=[.05 .05 .05 .02], color:[0. 0. 1.], logical={object, knob } }
Frame drawer (knob) { shape:ssBox, Q=<T t(0.0 -0.28 0.0)>, size=[.5 .5 .1 .02] ,color:[0. 1. 0. 1.], logical={ object, drawer } }
Frame cilinder{ shape:ssBox, X=<T t(0.550000 -0.200000 0.8600000) d(0 0 0 1)>, size=[0.100000 0.100000 0.100000 .02], color=[1 0 0] , contact, logical={ object,cilinder } }
Frame cilinder2{ shape:ssBox, X=<T t(0.350000 -0.200000 0.8600000) d(0 0 0 1)>, size=[0.100000 0.100000 0.100000 .02], color=[1 0 0] , contact, logical={ object,cilinder } }