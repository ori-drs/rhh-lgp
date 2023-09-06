shape hyqrealwithkinovaG (end_effector_link){ rel=<T d(-90 0 1 0) d(-90 0 0 1) t(0 0.1 0.0)> type=ssBox size=[.03 .03 .05 .01] color=[1 1 0] contact logical:{ gripper } }
shape baseG (base_footprint){type=ssBox size=[.03 .03 .05 .01] color=[1 1 0 0] logical:{ base } } 


## BASE
Edit worldTranslationRotation {base }
Edit jointBase_pitch {base }
Edit jointBase_z {q=0.6 base }

## ARM
#Edit z_joint_1 {q=2.3577493051846776 arm}
#Edit z_joint_2 {q=0.2531656546587593 arm}
#Edit z_joint_3 {q=3.1341070767893875 arm}
#Edit z_joint_4 {q=-2.249735516593585 arm}
#Edit z_joint_5 {q=-0.008052252525192038 arm}
#Edit z_joint_6 {q=0.9208671865221225 arm}
#Edit z_joint_7 {q=1.574369854243149 arm}
Edit z_joint_1 {q=2.35618 arm}
Edit z_joint_2 {q=0.26 arm}
Edit z_joint_3 {q=3.14 arm}
Edit z_joint_4 {q=-2.26 arm}
Edit z_joint_5 {q=0.0 arm}
Edit z_joint_6 {q=1.0 arm}
Edit z_joint_7 {q=1.57 arm}

## LEGS
#Edit lf_haa_joint {q: 0.0}
#Edit lf_hfe_joint {q: 0.0}
Edit lf_kfe_joint {q: -1.}
Edit rf_kfe_joint {q: -1.}
Edit lh_kfe_joint {q: -1.}
Edit rh_kfe_joint {q: -1.}

# COLLISION
shape coll_base (base_pitch){ type=ssBox rel=<T 0.08 0 -0.03 1 0 0 0 >  size=[ 1.3 0.7 0.42 0.1 ]  contact=-2, color:[1.,1.,1.,0.001]  }
shape coll_bicept (half_arm_1_link){ type=ssBox rel=<T 0.0 -0.22 0.0 0 0 0 1 >  size=[ 0.1 0.5 0.1 0.04 ]  contact=-2, color:[1.,1.,1.,0.001]  }
shape coll_forearm (forearm_link){ type=ssBox rel=<T 0.0 -0.2 0.0 1 0 0 0 >  size=[ 0.01 0.28 0.01 0.03 ]  contact=-2, color:[1.,1.,1.,0.001]  }
shape coll_wrist (spherical_wrist_2_link){ type=ssBox rel=<T 0.0 -0.07 0.0 1 0 0 0 >  size=[ 0.01 0.2 0.01 0.038 ]  contact=-2, color:[1.,1.,1.,0.001]  }

shape target (world) { rel:<t(2.5  0.0 0.35) d(90 1 0 0)> type=ssBox size=[.005 .005 .005 .02], contact=2, color=[0 1 0] }
#shape target2 (world) { rel:<t(2. 0 0.4) d(90 0 0 1)> type=ssBox size=[.1 .1 .2 .02] color=[0 1 0]}
