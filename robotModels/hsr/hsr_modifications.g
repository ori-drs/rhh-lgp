shape hsrG (hand_palm_link){ rel=<T d(-90 0 1 0) d(-90 0 0 1) t(0 0.1 0.0)> type=ssBox size=[.03 .03 .05 .01] color=[1 1 0] logical:{ gripper } }

## BASE
Edit worldTranslationRotation { base }

## ARM
Edit arm_lift_joint {arm}
Edit arm_flex_joint {arm}
Edit arm_roll_joint {arm}
Edit wrist_flex_joint {arm}
Edit wrist_roll_joint {arm}

# COLLISION
shape coll_base (base_footprint){ type=ssBox rel=<T 0 0 0.1 1 0 0 0 >  size=[ 0.42 0.42 0.2 0.1 ]  contact=-2, color:[1.,1.,1.,.01]  }
shape coll_torso (base_footprint){ type=ssBox rel=<T -0.07 0 0.5 1 0 0 0 >  size=[ 0.25 0.4 0.6 0.1 ]  contact=-2, color:[1.,1.,1.,.01]  }
shape coll_arm (arm_roll_link){ type=ssBox rel=<T 0 0 -0.15 1 0 0 0 >  size=[ 0.01 0.01 0.4 0.07 ]  contact=-2, color:[1.,1.,1.,.01]  }
shape coll_wrist (wrist_roll_link){ type=ssBox rel=<T 0 0 0.09 1 0 0 0 >  size=[ 0.01 0.01 0.1 0.07 ]  contact=-2, color:[1.,1.,1.,.01]  }