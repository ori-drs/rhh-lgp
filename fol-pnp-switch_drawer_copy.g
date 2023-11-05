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
partOf
knob
drawer
cilinder

on
busy     # involved in an ongoing (durative) activity
free     # gripper hand is free
held     # object is held by an gripper
picked   # gripper G holds/has picked object C
placed   # gripper G holds/has picked object C
opened
closed
placedindrawer
openingLocation

## KOMO symbols
touch
above
open
close
lift

touch
touch_cilinder
stable
stableOn
stablePose
takenKnob
grasped


## initial state (generated by the code)
START_STATE {}

### RULES

#####################################################################

### Reward
REWARD {
}

#####################################################################

DecisionRule takeknob {
  G, K
  { (gripper G) (knob K)   }
  { (above K ANY)! (on ANY K)! (stableOn ANY K)! 
    (picked G K) (held K) (busy G) # these are only on the logical side, to enable correct preconditions
    (touch G K) (stable G K) # these are predicates that enter the NLP
    }
}

#####################################################################

DecisionRule opendrawer {
  G, K, D, F, O
  { (gripper G) (knob K) (object O) (drawer D) (openingLocation F) (picked G K)}
  { (picked G K)!
    (open G K)  (touch G F) (touch K F) (touch G K)! (busy G)! (held O)! 
    (grasped G F)
    }
}
#####################################################################

DecisionRule closedrawer {
  G, K, D, F
  { (gripper G) (knob K) (drawer D) (openingLocation F) (grasped G F) }
  { (picked G K)!
    (close G K) (stablePose G) (stable G K)! (touch G K)! (held K)! 
    (closed D)
    }
}