world 	{  }
world>world_to_base_joint (world) 	{  Q:[3, 1, 0.0, 1, 0, 0, 0] }
world_to_base_joint (world>world_to_base_joint) 	{ , joint:rigid }
base_link (world_to_base_joint) 	{ , mass:0.2, inertiaTensor:[1, 0, 0, 1, 0, 1] }
joint1 (base_link) 	{ , joint:rigid }
joint2 (base_link) 	{ , joint:rigid }
joint3 (base_link) 	{ , joint:rigid }
joint4 (base_link) 	{ , joint:rigid }
joint5 (base_link) 	{ , joint:rigid }
joint6 (base_link) 	{ , joint:rigid }
joint7 (base_link) 	{ , joint:rigid }
joint8 (base_link) 	{ , joint:rigid }
joint9 (base_link) 	{ , joint:rigid }
joint10 (base_link) 	{ , joint:rigid }
joint11 (base_link) 	{ , joint:rigid }
joint12 (base_link) 	{ , joint:rigid }
joint13 (base_link) 	{ , joint:rigid }
joint14 (base_link) 	{ , joint:rigid }
joint15 (base_link) 	{ , joint:rigid }
joint16 (base_link) 	{ , joint:rigid }
joint17 (base_link) 	{ , joint:rigid }
joint18 (base_link) 	{ , joint:rigid }
joint19 (base_link) 	{ , joint:rigid }
joint20 (base_link) 	{ , joint:rigid }
joint21 (base_link) 	{ , joint:rigid }
joint22 (base_link) 	{ , joint:rigid }
joint23 (base_link) 	{ , joint:rigid }
slit1 (joint1) 	{  }
holder_slit1_1_left_low (joint2) 	{  }
holder_slit1_1_left_high (joint3) 	{  }
holder_slit1_1_right_low (joint4) 	{  }
holder_slit1_1_right_high (joint5) 	{  }
slit2 (joint6) 	{  }
holder_slit2_1_left_low (joint7) 	{  }
holder_slit2_1_left_high (joint8) 	{  }
holder_slit2_1_right_low (joint9) 	{  }
holder_slit2_1_right_high (joint10) 	{  }
holder_slit2_2_left_low (joint11) 	{  }
holder_slit2_2_left_high (joint12) 	{  }
holder_slit2_2_right_low (joint13) 	{  }
holder_slit2_2_right_high (joint14) 	{  }
slit3 (joint15) 	{  }
slit4 (joint16) 	{  }
top1 (joint17) 	{  }
top1_front (joint18) 	{  }
top2 (joint19) 	{  }
top2_front (joint20) 	{  }
top3 (joint21) 	{  }
top3_front (joint22) 	{  }
bottom (joint23) 	{  }
slit1_1 (slit1) 	{Q:<t(0 -0.495 0.21) E(0 0 0)> , shape:box, size:[0.44, 0.02, 0.42, 0], visual }
slit1_0 (slit1) 	{Q:<t(0 -0.495 0.21) E(0 0 0)> , shape:box, size:[0.44, 0.02, 0.42, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
holder_slit1_1_left_low_1 (holder_slit1_1_left_low) 	{ Q:<t(0 -0.48 0.30) E(0 0 0)>, shape:box, size:[0.42, 0.02, 0.02, 0], visual }
holder_slit1_1_left_low_0 (holder_slit1_1_left_low) 	{Q:<t(0 -0.48 0.30) E(0 0 0)> , shape:box, size:[0.42, 0.02, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
holder_slit1_1_left_high_1 (holder_slit1_1_left_high) 	{ Q:<t(0 -0.18 0.34) E(0 0 0)>, shape:box, size:[0.42, 0.02, 0.02, 0], visual }
holder_slit1_1_left_high_0 (holder_slit1_1_left_high) 	{ Q:<t(0 -0.18 0.34) E(0 0 0)>, shape:box, size:[0.42, 0.02, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
holder_slit1_1_right_low_1 (holder_slit1_1_right_low) 	{Q:<t(0 -0.18 0.30) E(0 0 0)> , shape:box, size:[0.42, 0.02, 0.02, 0], visual }
holder_slit1_1_right_low_0 (holder_slit1_1_right_low) 	{Q:<t(0 -0.18 0.30) E(0 0 0)> , shape:box, size:[0.42, 0.02, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
holder_slit1_1_right_high_1 (holder_slit1_1_right_high) 	{Q:<t(0 -0.48 0.34) E(0 0 0)>  , shape:box, size:[0.42, 0.02, 0.02, 0], visual }
holder_slit1_1_right_high_0 (holder_slit1_1_right_high) 	{Q:<t(0 -0.48 0.34) E(0 0 0)>  , shape:box, size:[0.42, 0.02, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
slit2_1 (slit2) 	{Q:<t(0 -0.165 0.34) E(0 0 0)> , shape:box, size:[0.44, 0.02, 0.68, 0], visual }
slit2_0 (slit2) 	{Q:<t(0 -0.165 0.34) E(0 0 0)> , shape:box, size:[0.44, 0.02, 0.68, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
holder_slit2_1_left_low_1 (holder_slit2_1_left_low) 	{ Q:<t(0 -0.15 0.30) E(0 0 0)>, shape:box, size:[0.42, 0.02, 0.02, 0], visual }
holder_slit2_1_left_low_0 (holder_slit2_1_left_low) 	{ Q:<t(0 -0.15 0.30) E(0 0 0)>, shape:box, size:[0.42, 0.02, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
holder_slit2_1_left_high_1 (holder_slit2_1_left_high) 	{ Q:<t(0 -0.15 0.34) E(0 0 0)>, shape:box, size:[0.42, 0.02, 0.02, 0], visual }
holder_slit2_1_left_high_0 (holder_slit2_1_left_high) 	{ Q:<t(0 -0.15 0.34) E(0 0 0)>, shape:box, size:[0.42, 0.02, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
holder_slit2_1_right_low_1 (holder_slit2_1_right_low) 	{ Q:<t(0 0.15 0.30) E(0 0 0)>, shape:box, size:[0.42, 0.02, 0.02, 0], visual }
holder_slit2_1_right_low_0 (holder_slit2_1_right_low) 	{ Q:<t(0 0.15 0.30) E(0 0 0)>, shape:box, size:[0.42, 0.02, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
holder_slit2_1_right_high_1 (holder_slit2_1_right_high) 	{Q:<t(0 0.15 0.34) E(0 0 0)> , shape:box, size:[0.42, 0.02, 0.02, 0], visual }
holder_slit2_1_right_high_0 (holder_slit2_1_right_high) 	{ Q:<t(0 0.15 0.34) E(0 0 0)> , shape:box, size:[0.42, 0.02, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
holder_slit2_2_left_low_1 (holder_slit2_2_left_low) 	{Q:<t(0 -0.15 0.56) E(0 0 0)> , shape:box, size:[0.42, 0.02, 0.02, 0], visual }
holder_slit2_2_left_low_0 (holder_slit2_2_left_low) 	{Q:<t(0 -0.15 0.56) E(0 0 0)>  , shape:box, size:[0.42, 0.02, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
holder_slit2_2_left_high_1 (holder_slit2_2_left_high) 	{ Q:<t(0 -0.15 0.60) E(0 0 0)>, shape:box, size:[0.42, 0.02, 0.02, 0], visual }
holder_slit2_2_left_high_0 (holder_slit2_2_left_high) 	{Q:<t(0 -0.15 0.60) E(0 0 0)> , shape:box, size:[0.42, 0.02, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
holder_slit2_2_right_low_1 (holder_slit2_2_right_low) 	{Q:<t(0 0.15 0.56) E(0 0 0)> , shape:box, size:[0.42, 0.02, 0.02, 0], visual }
holder_slit2_2_right_low_0 (holder_slit2_2_right_low) 	{Q:<t(0 0.15 0.56) E(0 0 0)> , shape:box, size:[0.42, 0.02, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
holder_slit2_2_right_high_1 (holder_slit2_2_right_high) 	{Q:<t(0 0.15 0.60) E(0 0 0)> , shape:box, size:[0.42, 0.02, 0.02, 0], visual }
holder_slit2_2_right_high_0 (holder_slit2_2_right_high) 	{Q:<t(0 0.15 0.60) E(0 0 0)> , shape:box, size:[0.42, 0.02, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
slit3_1 (slit3) 	{Q:<t(0 0.165 0.47) E(0 0 0)>  , shape:box, size:[0.44, 0.02, 0.94, 0], visual }
slit3_0 (slit3) 	{Q:<t(0 0.165 0.47) E(0 0 0)> , shape:box, size:[0.44, 0.02, 0.94, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
slit4_1 (slit4) 	{Q:<t(0 0.495 0.47) E(0 0 0)> , shape:box, size:[0.44, 0.02, 0.94, 0], visual }
top1_1 (top1) 	{Q:<t(0 -0.33 0.41) E(0 0 0)> , shape:box, size:[0.44, 0.33, 0.02, 0], visual }
top1_0 (top1) 	{Q:<t(0 -0.33 0.41) E(0 0 0)> , shape:box, size:[0.44, 0.33, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
top1_front_1 (top1_front) 	{ Q:<t(0.21 -0.33 0.37) E(0 0 0)>, shape:box, size:[0.02, 0.33, 0.06, 0], visual }
top1_front_0 (top1_front) 	{ Q:<t(0.21 -0.33 0.37) E(0 0 0)>, shape:box, size:[0.02, 0.33, 0.06, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
top2_1 (top2) 	{Q:<t(0.0 0.0 0.67) E(0 0 0)> , shape:box, size:[0.44, 0.33, 0.02, 0], visual }
top2_0 (top2) 	{Q:<t(0.0 0.0 0.67) E(0 0 0)> , shape:box, size:[0.44, 0.33, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
top2_front_1 (top2_front) 	{Q:<t(0.21 0.0 0.63) E(0 0 0)> , shape:box, size:[0.02, 0.33, 0.06, 0], visual }
top2_front_0 (top2_front) 	{Q:<t(0.21 0.0 0.63) E(0 0 0)>  , shape:box, size:[0.02, 0.33, 0.06, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
top3_1 (top3) 	{Q:<t(0.0 0.33 0.93) E(0 0 0)> , shape:box, size:[0.44, 0.33, 0.02, 0], visual }
top3_0 (top3) 	{Q:<t(0.0 0.33 0.93) E(0 0 0)> , shape:box, size:[0.44, 0.33, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
top3_front_1 (top3_front) 	{ Q:<t(0.21 0.33 0.89) E(0 0 0)>, shape:box, size:[0.02, 0.33, 0.06, 0], visual }
top3_front_0 (top3_front) 	{ Q:<t(0.21 0.33 0.89) E(0 0 0)>, shape:box, size:[0.02, 0.33, 0.06, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }
bottom_1 (bottom) 	{Q:<t(0.0 0.0 0.06) E(0 0 0)> , shape:box, size:[0.44, 0.99, 0.02, 0], visual }
bottom_0 (bottom) 	{Q:<t(0.0 0.0 0.06) E(0 0 0)> , shape:box, size:[0.44, 0.99, 0.02, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2 }

