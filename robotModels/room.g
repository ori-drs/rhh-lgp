#Edit worldTranslationRotation {ctrl_H=1}

Frame table1 {shape:ssBox, X=<T t( 2.2 0.25 .6)>, size=[0.5 1.9 .1 .02], color=[.3 .3 .3] fixed, contact, logical={} }

Frame table2 {shape:ssBox, X=<T t(2.2 -2.25 .6)>, size=[0.5 1.9 .1 .02], color=[.3 .3 .3] fixed, contact, logical={} }


Frame tray (table2) {shape:ssBox, Q=<T t(0. 0 0.07)>, size=[.15 .15 .04 .02], color=[0 1 0] fixed, contact}
Frame _ (tray) {shape:ssBox, size=[.27  .27 .04 .02], color=[0 1 0] fixed, contact}


#Frame wall { shape:ssBox, X=<T t(1.5 -1 0.5)>, size=[2.3  0.07 1 .02], color=[0.82 0.7 0.55] fixed, contact, logical = {}}
Frame wall { shape:ssBox, X=<T t(1.8 -1 0.5)>, size=[1.5  0.07 1 .02], color=[0.82 0.7 0.55] fixed, contact, logical = {}}

Frame _1 {shape:ssBox, X=<T t(0.35 -3.5 0.5)>, size=[4.7 0.05 1 0.02], color=[0.82 0.7 0.55] fixed, contact }
Frame _2 {shape:ssBox, X=<T t(0.35 1.5 0.5)>, size=[4.7 0.05 1 .02], color=[0.82 0.7 0.55]  fixed, contact}
Frame _3 {shape:ssBox, X=<T t(2.7 -1 0.5)>, size=[0.05 4.95 1 .02], color=[0.82 0.7 0.55] fixed, contact}
Frame _4 {shape:ssBox,X=<T t(-2 -1 0.5)>, size=[0.05 4.95 1 .02], color=[0.82 0.7 0.55]   fixed, contact}
 