#Edit worldTranslationRotation { ctrl_H=1 }

Frame table1{ shape:ssBox, X=<T t(0 2. .3) d(90 0 0 1)>, size=[1.0 2.2 .1 .04], color=[0.071, 0.18, 0.788], fixed, contact, logical={  } }

Frame table2{ shape:ssBox, X=<T t(2. 0 .3)>, size=[.8 2.2 .1 .02], color=[.3 .3 .3], fixed, contact, logical={ table } }

#Frame table3{ shape:ssBox, X=<T t(0 -2. .3) d(90 0 0 1)>, size=[.8 2.2 .1 .02], color=[.3 .3 .3], fixed, contact, logical={     } }