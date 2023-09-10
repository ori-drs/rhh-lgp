#Edit worldTranslationRotation {ctrl_H=1}

Frame table1 {shape:ssBox, X=<T t( 2.5 1.25 .6)>, size=[1 2.4 .1 .02], color=[.3 .3 .3] fixed, contact, logical={} }

Frame table2 {shape:ssBox, X=<T t(2.5 -1.25 .6)>, size=[1 2.4 .1 .02], color=[.3 .3 .3] fixed, contact, logical={ table } }


Frame tray (table2) {shape:ssBox, Q=<T t(0. 0 0.07)>, size=[.15 .15 .04 .02], color=[0 1 0] fixed, contact}
Frame _ (tray) {shape:ssBox, size=[.27  .27 .04 .02], color=[0 1 0] fixed, contact}


Frame wall1 { shape:ssBox, X=<T t(0.8 0.45 0.5)>, size=[0.02 0.8  1 .02], color=[0.82 0.7 0.55] fixed, contact,logical={ wall }}
Frame wall2 { shape:ssBox, X=<T t(1.9 0 0.5)>, size=[2.2 0.02 1 .02], color=[0.82 0.7 0.55] fixed, contact, logical = {wall}}

Frame _1 {shape:ssBox, X=<T t(0.5 -2.5 0.3)>, size=[4.95 0.02 0.56 0.02], color=[0.82 0.7 0.55] fixed, contact }
Frame _2 {shape:ssBox, X=<T t(0.5 2.5 0.3)>, size=[4.95 0.02 0.56 .02], color=[0.82 0.7 0.55]  fixed, contact}
Frame _3 {shape:ssBox, X=<T t(3.1 0 0.3)>, size=[0.02 4.95 0.56 .02], color=[0.82 0.7 0.55] fixed, contact}
Frame _4 {shape:ssBox,X=<T t(-2 0 0.3)>, size=[0.02 4.95 0.56 .02], color=[0.82 0.7 0.55]   fixed, contact}
 