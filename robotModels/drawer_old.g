body world {
}

body base_link {
mass:0.2
inertiaTensor:[1.0 0.0 0.0 1.0 0.0 1.0]
}

body slit1 {
}

shape visual slit1_1 (slit1) {  
Q:<t(0 -0.495 0.21) E(0 0 0)>
type:box
size:[0.44 0.02 0.42 0]
visual
}

shape collision slit1_0 (slit1) {  
color:[.8 .2 .2 .5]
Q:<t(0 -0.495 0.21) E(0 0 0)>
type:box
size:[0.44 0.02 0.42 0]
contact:-2
}

body holder_slit1_1_left_low {
}

shape visual holder_slit1_1_left_low_1 (holder_slit1_1_left_low) {  
Q:<t(0 -0.48 0.30) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
visual
}

shape collision holder_slit1_1_left_low_0 (holder_slit1_1_left_low) {  
color:[.8 .2 .2 .5]
Q:<t(0 -0.48 0.30) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
contact:-2
}

body holder_slit1_1_left_high {
}

shape visual holder_slit1_1_left_high_1 (holder_slit1_1_left_high) {  
Q:<t(0 -0.18 0.34) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
visual
}

shape collision holder_slit1_1_left_high_0 (holder_slit1_1_left_high) {  
color:[.8 .2 .2 .5]
Q:<t(0 -0.18 0.34) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
contact:-2
}

body holder_slit1_1_right_low {
}

shape visual holder_slit1_1_right_low_1 (holder_slit1_1_right_low) {  
Q:<t(0 -0.18 0.30) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
visual
}

shape collision holder_slit1_1_right_low_0 (holder_slit1_1_right_low) {  
color:[.8 .2 .2 .5]
Q:<t(0 -0.18 0.30) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
contact:-2
}

body holder_slit1_1_right_high {
}

shape visual holder_slit1_1_right_high_1 (holder_slit1_1_right_high) {  
Q:<t(0 -0.18 0.34) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
visual
}

shape collision holder_slit1_1_right_high_0 (holder_slit1_1_right_high) {  
color:[.8 .2 .2 .5]
Q:<t(0 -0.18 0.34) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
contact:-2
}

body slit2 {
}

shape visual slit2_1 (slit2) {  
Q:<t(0 -0.165 0.34) E(0 0 0)>
type:box
size:[0.44 0.02 0.68 0]
visual
}

shape collision slit2_0 (slit2) {  
color:[.8 .2 .2 .5]
Q:<t(0 -0.165 0.34) E(0 0 0)>
type:box
size:[0.44 0.02 0.68 0]
contact:-2
}

body holder_slit2_1_left_low {
}

shape visual holder_slit2_1_left_low_1 (holder_slit2_1_left_low) {  
Q:<t(0 -0.15 0.30) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
visual
}

shape collision holder_slit2_1_left_low_0 (holder_slit2_1_left_low) {  
color:[.8 .2 .2 .5]
Q:<t(0 -0.15 0.30) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
contact:-2
}

body holder_slit2_1_left_high {
}

shape visual holder_slit2_1_left_high_1 (holder_slit2_1_left_high) {  
Q:<t(0 -0.15 0.34) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
visual
}

shape collision holder_slit2_1_left_high_0 (holder_slit2_1_left_high) {  
color:[.8 .2 .2 .5]
Q:<t(0 -0.15 0.34) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
contact:-2
}

body holder_slit2_1_right_low {
}

shape visual holder_slit2_1_right_low_1 (holder_slit2_1_right_low) {  
Q:<t(0 0.15 0.30) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
visual
}

shape collision holder_slit2_1_right_low_0 (holder_slit2_1_right_low) {  
color:[.8 .2 .2 .5]
Q:<t(0 0.15 0.30) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
contact:-2
}

body holder_slit2_1_right_high {
}

shape visual holder_slit2_1_right_high_1 (holder_slit2_1_right_high) {  
Q:<t(0 0.15 0.34) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
visual
}

shape collision holder_slit2_1_right_high_0 (holder_slit2_1_right_high) {  
color:[.8 .2 .2 .5]
Q:<t(0 0.15 0.34) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
contact:-2
}

body holder_slit2_2_left_low {
}

shape visual holder_slit2_2_left_low_1 (holder_slit2_2_left_low) {  
Q:<t(0 -0.15 0.56) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
visual
}

shape collision holder_slit2_2_left_low_0 (holder_slit2_2_left_low) {  
color:[.8 .2 .2 .5]
Q:<t(0 -0.15 0.56) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
contact:-2
}

body holder_slit2_2_left_high {
}

shape visual holder_slit2_2_left_high_1 (holder_slit2_2_left_high) {  
Q:<t(0 -0.15 0.60) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
visual
}

shape collision holder_slit2_2_left_high_0 (holder_slit2_2_left_high) {  
color:[.8 .2 .2 .5]
Q:<t(0 -0.15 0.60) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
contact:-2
}

body holder_slit2_2_right_low {
}

shape visual holder_slit2_2_right_low_1 (holder_slit2_2_right_low) {  
Q:<t(0 0.15 0.56) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
visual
}

shape collision holder_slit2_2_right_low_0 (holder_slit2_2_right_low) {  
color:[.8 .2 .2 .5]
Q:<t(0 0.15 0.56) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
contact:-2
}

body holder_slit2_2_right_high {
}

shape visual holder_slit2_2_right_high_1 (holder_slit2_2_right_high) {  
Q:<t(0 0.15 0.60) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
visual
}

shape collision holder_slit2_2_right_high_0 (holder_slit2_2_right_high) {  
color:[.8 .2 .2 .5]
Q:<t(0 0.15 0.60) E(0 0 0)>
type:box
size:[0.42 0.02 0.02 0]
contact:-2
}

body slit3 {
}

shape visual slit3_1 (slit3) {  
Q:<t(0 0.165 0.47) E(0 0 0)>
type:box
size:[0.44 0.02 0.94 0]
color=[1.0, 1.0, 0]
visual

}

shape collision slit3_0 (slit3) {  
color:[.8 .2 .2 .5]
Q:<t(0 0.165 0.47) E(0 0 0)>
type:box
size:[0.44 0.02 0.94 0]
contact:-2
}

body slit4 {
}

shape visual slit4_1 (slit4) {  
Q:<t(0 0.495 0.47) E(0 0 0)>
type:box
size:[0.44 0.02 0.94 0]
color=[0.0, 1.0, 0]
visual
}

shape collision slit4_0 (slit4) {  
color:[.8 .2 .2 .5]
Q:<t(0 0.495 0.47) E(0 0 0)>
type:box
size:[0.44 0.02 0.94 0]
contact:-2
}

body top1 {
}

shape visual top1_1 (top1) {  
Q:<t(0 -0.33 0.41) E(0 0 0)>
type:box
size:[0.44 0.33 0.02 0]
visual
}

shape collision top1_0 (top1) {  
color:[.8 .2 .2 .5]
Q:<t(0 -0.33 0.41) E(0 0 0)>
type:box
size:[0.44 0.33 0.02 0]
contact:-2
}

body top1_front {
}

shape visual top1_front_1 (top1_front) {  
Q:<t(0.21 -0.33 0.37) E(0 0 0)>
type:box
size:[0.02 0.33 0.06 0]
visual
}

shape collision top1_front_0 (top1_front) {  
color:[.8 .2 .2 .5]
Q:<t(0.21 -0.33 0.37) E(0 0 0)>
type:box
size:[0.02 0.33 0.06 0]
contact:-2
}

body top2 {
}

shape visual top2_1 (top2) {  
Q:<t(0.0 0.0 0.67) E(0 0 0)>
type:box
size:[0.44 0.33 0.02 0]
visual
}

shape collision top2_0 (top2) {  
color:[.8 .2 .2 .5]
Q:<t(0.0 0.0 0.67) E(0 0 0)>
type:box
size:[0.44 0.33 0.02 0]
contact:-2
}

body top2_front {
}

shape visual top2_front_1 (top2_front) {  
Q:<t(0.21 0.0 0.63) E(0 0 0)>
type:box
size:[0.02 0.33 0.06 0]
visual
}

shape collision top2_front_0 (top2_front) {  
color:[.8 .2 .2 .5]
Q:<t(0.21 0.0 0.63) E(0 0 0)>
type:box
size:[0.02 0.33 0.06 0]
contact:-2
}

body top3 {
}

shape visual top3_1 (top3) {  
Q:<t(0.0 0.33 0.93) E(0 0 0)>
type:box
size:[0.44 0.33 0.02 0]
visual
}

shape collision top3_0 (top3) {  
color:[.8 .2 .2 .5]
Q:<t(0.0 0.33 0.93) E(0 0 0)>
type:box
size:[0.44 0.33 0.02 0]
contact:-2
}

body top3_front {
}

shape visual top3_front_1 (top3_front) {  
Q:<t(0.21 0.33 0.89) E(0 0 0)>
type:box
size:[0.02 0.33 0.06 0]
visual
}

shape collision top3_front_0 (top3_front) {  
color:[.8 .2 .2 .5]
Q:<t(0.21 0.33 0.89) E(0 0 0)>
type:box
size:[0.02 0.33 0.06 0]
contact:-2
}

body bottom {
}

shape visual bottom_1 (bottom) {  
Q:<t(0.0 0.0 0.06) E(0 0 0)>
type:box
size:[0.44 0.99 0.02 0]
visual
}

shape collision bottom_0 (bottom) {  
color:[.8 .2 .2 .5]
Q:<t(0.0 0.0 0.06) E(0 0 0)>
type:box
size:[0.44 0.99 0.02 0]
contact:-2
}

joint world_to_base_joint (world base_link) {  
type:rigid
A:<t(4 0 0.05) E(0 0 0)>
}

joint joint1 (base_link slit1) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint2 (base_link holder_slit1_1_left_low) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint3 (base_link holder_slit1_1_left_high) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint4 (base_link holder_slit1_1_right_low) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint5 (base_link holder_slit1_1_right_high) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint6 (base_link slit2) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint7 (base_link holder_slit2_1_left_low) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint8 (base_link holder_slit2_1_left_high) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint9 (base_link holder_slit2_1_right_low) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint10 (base_link holder_slit2_1_right_high) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint11 (base_link holder_slit2_2_left_low) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint12 (base_link holder_slit2_2_left_high) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint13 (base_link holder_slit2_2_right_low) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint14 (base_link holder_slit2_2_right_high) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint15 (base_link slit3) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint16 (base_link slit4) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint17 (base_link top1) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint18 (base_link top1_front) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint19 (base_link top2) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint20 (base_link top2_front) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint21 (base_link top3) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint22 (base_link top3_front) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

joint joint23 (base_link bottom) {  
type:rigid
A:<t(0.0 0 0.0) E(0 0 0)>
}

