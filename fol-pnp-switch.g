QUIT
WAIT
INFEASIBLE
ANY
Terminate

FOL_World{
  hasWait=false
  gamma = 1.
  stepCost = 1.
  timeCost = 0.
}

## basic predicates
gripper
object
table
base
on
busy     # involved in an ongoing (durative) activity
free     # gripper hand is free
held     # object is held by an gripper
picked   # gripper X holds/has picked object Y
placed   # gripper X holds/has picked object Y
lifted
moved 
at
movedGripper 

## KOMO symbols
above
touch
stable
stableOn
graspTop
lift 
locomote 
moveGripper

## initial state (generated by the code)
START_STATE {}

### RULES

#####################################################################

### Reward
REWARD {
}

#####################################################################

DecisionRule move {
  X, Y
  { (base X) (object Y) (INFEASIBLE move X Y)!}
  {(locomote X Y) (at X Y)}
}

#####################################################################

DecisionRule pick {
  X, Y, Z
  { (gripper X) (object Y) (base Z) (busy X)! (held Y)! (INFEASIBLE pick X Y)! (at Z Y) }
  { (above Y ANY)! (on ANY Y)! (stableOn ANY Y)! 
    (picked X Y) (held Y) (busy X) 
    (graspTop X Y) (stable X Y) 
    (INFEASIBLE move X Y)
    }
}

#####################################################################

DecisionRule place {
  X, Y, Z
  { (gripper X) (object Y) (table Z) (lifted X Y) (held Y)}
  { (picked X Y)! (busy X)! (busy Y)! (held Y)! # logic only
    (stable ANY Y)! (touch X Y)! # NLP predicates
    (on Z Y) (above Y Z) (stableOn Z Y) tmp(touch X Y) tmp(touch Y Z)
    (INFEASIBLE pick ANY Y)! block(INFEASIBLE pick ANY Y)
    (INFEASIBLE lift ANY Y)! block(INFEASIBLE lift ANY Y) (placed Y)
    }
}


#####################################################################

DecisionRule lift {
  X, Y
  { (gripper X) (object Y) (picked X Y) (INFEASIBLE lift X Y)! (busy X)} 
  { (picked X Y)! (lifted X Y) (held Y) (busy X)! 
    (INFEASIBLE move X Y) 
    (INFEASIBLE pick X Y)
  }
} 

#####################################################################

#DecisionRule end {
#  X, Y
#  { (gripper X) (object Y) (placed Y) (INFEASIBLE end X Y)!}
#  { (moveGripper X Y) (movedGripper X Y)
#   (INFEASIBLE pick ANY Y)! block(INFEASIBLE pick ANY Y)
#    (INFEASIBLE lift ANY Y)! block(INFEASIBLE lift ANY Y)
#  (INFEASIBLE place ANY Y)! block(INFEASIBLE place ANY Y)
#  (INFEASIBLE move ANY Y)! block(INFEASIBLE move ANY Y)  }
#}
