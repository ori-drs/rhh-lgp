BASE = rhhlgp-rai
BASE2 = src

OBJS = main.o src/help.o src/actionHeuristics.o src/costToGo.o src/RHLGP.o

DEPEND = Core Kin Gui Geo KOMO Logic LGP Optim

include $(BASE)/build/generic.mk
