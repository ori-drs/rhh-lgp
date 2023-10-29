#include "src/costToGo.h"
#include "src/RHHLGP.h"
#include "src/help.h"
#include <LGP/LGP_tree.h>
#include <Kin/kin.h>
// #include "src/objectHandling.h"

//===========================================================================
void solveHsrTask(uint numObj)
{
	// set up scene
	rai::Configuration C;
	C.addFile("robotModels/drawer.g");
	C.addFile("robotModels/hyqrealwitharm/hyqrealwithkinova_main.g");
	// C.pruneInactiveJoints();
	// C.optimizeTree();
	C["hyqrealwithkinovaG"]->ats->newNode<Graph>({"logical"}, {}, {{"gripper", true}});
	C.selectJointsByAtt({"base", "arm"});

    rai::Quaternion noRotationQuaternion(1.0, 0.0, 0.0, 0.0);
    rai::Quaternion rotationQuaternion(cos(M_PI / 4), 0, sin(M_PI / 4), 0);


    rai::Frame *f1 = C.addFrame(STRING("obj0"), "", "type:ssBox size:[.2745 .073 .0765 .002] , contact=-2, color:[0. 1. 0. 1.], logical={ object }");
    f1->setPosition({1.5, 0.0, 0.03825});
    f1->setQuaternion(noRotationQuaternion.getArr4d());

   
    rai::Frame *framePlaceBottle = C.addFrame(STRING("placeBottle"), "world", "logical={ placingTemporary }");
    framePlaceBottle->setRelativePosition({3.0, 0.67, 0.45});
    framePlaceBottle->setQuaternion(noRotationQuaternion.getArr4d());

	  rai::Frame *xAxis1FrameBottle = C.addFrame("xAxis1", "placeBottle", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	  rai::Frame *yAxis1FrameBottle = C.addFrame("yAxis1", "placeBottle", "type:ssBox size:[.01 .3 .01 .01] color:[0. 1. 0.]");
	  rai::Frame *zAxis1FrameBottle = C.addFrame("zAxis1", "placeBottle", "type:ssBox size:[.01 .01 .3 .01] color:[0. 0. 1.]");
	  xAxis1FrameBottle->setRelativePosition({0.15, 0.0, 0.0});
	  yAxis1FrameBottle->setRelativePosition({0.0, 0.15, 0.0});
	  zAxis1FrameBottle->setRelativePosition({0.0, 0.0, 0.15});


    rai::Frame *framePlaceDrawer = C.addFrame(STRING("placeBottleInsideDrawer"), "trofast", "logical={ placingDefinitively }");
    framePlaceDrawer->setRelativePosition({0.0, 0.0, 0.0});
    framePlaceDrawer->setQuaternion(noRotationQuaternion.getArr4d());

	  rai::Frame *xAxis1KnobPole = C.addFrame("xAxis1", "knob_pole_1", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	  rai::Frame *yAxis1KnobPole = C.addFrame("yAxis1", "knob_pole_1", "type:ssBox size:[.01 .3 .01 .01] color:[0. 1. 0.]");
	  rai::Frame *zAxis1KnobPole = C.addFrame("zAxis1", "knob_pole_1", "type:ssBox size:[.01 .01 .3 .01] color:[0. 0. 1.]");
	  xAxis1KnobPole->setRelativePosition({0.15, 0.0, 0.0});
	  yAxis1KnobPole->setRelativePosition({0.0, 0.15, 0.0});
	  zAxis1KnobPole->setRelativePosition({0.0, 0.0, 0.15});

      rai::Frame *xAxis1KnobBase = C.addFrame("xAxis1", "knob_base_1", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	  rai::Frame *yAxis1KnobBase = C.addFrame("yAxis1", "knob_base_1", "type:ssBox size:[.01 .3 .01 .01] color:[0. 1. 0.]");
	  rai::Frame *zAxis1KnobBase = C.addFrame("zAxis1", "knob_base_1", "type:ssBox size:[.01 .01 .3 .01] color:[0. 0. 1.]");
	  xAxis1KnobBase->setRelativePosition({0.15, 0.0, 0.0});
	  yAxis1KnobBase->setRelativePosition({0.0, 0.15, 0.0});
	  zAxis1KnobBase->setRelativePosition({0.0, 0.0, 0.15});


	  rai::Frame *xAxis1Trofast = C.addFrame("xAxis1", "trofast_1", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	  rai::Frame *yAxis1Trofast = C.addFrame("yAxis1", "trofast_1", "type:ssBox size:[.01 .3 .01 .01] color:[0. 1. 0.]");
	  rai::Frame *zAxis1Trofast = C.addFrame("zAxis1", "trofast_1", "type:ssBox size:[.01 .01 .3 .01] color:[0. 0. 1.]");
	  xAxis1Trofast->setRelativePosition({0.15, 0.0, 0.0});
	  yAxis1Trofast->setRelativePosition({0.0, 0.15, 0.0});
	  zAxis1Trofast->setRelativePosition({0.0, 0.0, 0.15});

      rai::Frame *closed_frame = C.addFrame("closed_frame", "", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	  closed_frame->setPosition({2.77, 0.67, 0.245});
      closed_frame->setQuaternion(noRotationQuaternion.getArr4d());

	  rai::Frame *opened_frame = C.addFrame("opened_frame", "", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	  opened_frame->setPosition({2.5, 0.67, 0.245});
      opened_frame->setQuaternion(noRotationQuaternion.getArr4d());

	  rai::Frame *xAxis1OpenedFrame = C.addFrame("xAxis1", "opened_frame", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	  rai::Frame *yAxis1OpenedFrame = C.addFrame("yAxis1", "opened_frame", "type:ssBox size:[.01 .3 .01 .01] color:[0. 1. 0.]");
	  rai::Frame *zAxis1OpenedFrame = C.addFrame("zAxis1", "opened_frame", "type:ssBox size:[.01 .01 .3 .01] color:[0. 0. 1.]");
	  xAxis1OpenedFrame->setRelativePosition({0.15, 0.0, 0.0});
	  yAxis1OpenedFrame->setRelativePosition({0.0, 0.15, 0.0});
	  zAxis1OpenedFrame->setRelativePosition({0.0, 0.0, 0.15});

	// rai::Frame *xAxis = C.addFrame("xAxis", "knob", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	// rai::Frame *yAxis = C.addFrame("yAxis", "knob", "type:ssBox size:[.01 .3 .01 .01] color:[0. 1. 0.]");
	// rai::Frame *zAxis = C.addFrame("zAxis", "knob", "type:ssBox size:[.01 .01 .3 .01] color:[0. 0. 1.]");
	// xAxis->setRelativePosition({0.15, 0.0, 0.0});
	// yAxis->setRelativePosition({0.0, 0.15, 0.0});
	// zAxis->setRelativePosition({0.0, 0.0, 0.15});

	// rai::Frame *xAxis1 = C.addFrame("xAxis1", "hyqrealwithkinovaG", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	// rai::Frame *yAxis1 = C.addFrame("yAxis1", "hyqrealwithkinovaG", "type:ssBox size:[.01 .3 .01 .01] color:[0. 1. 0.]");
	// rai::Frame *zAxis1 = C.addFrame("zAxis1", "hyqrealwithkinovaG", "type:ssBox size:[.01 .01 .3 .01] color:[0. 0. 1.]");
	// xAxis1->setRelativePosition({0.15, 0.0, 0.0});
	// yAxis1->setRelativePosition({0.0, 0.15, 0.0});
	// zAxis1->setRelativePosition({0.0, 0.0, 0.15});

	bool solveWithKomoSkeleton = true;
	if (solveWithKomoSkeleton)
	{
		KOMO komo;

		komo.setModel(C, false);
		komo.setTiming(7.0, 10, 5., 2);
		// komo.add_qControlObjective({}, 0);
    	// komo.add_qControlObjective({}, 2);
		komo.add_qControlObjective({}, 2, 1.);
  		komo.add_qControlObjective({}, 0, 1e-2);
		komo.addSquaredQuaternionNorms();
		komo.add_jointLimits(true);

		Skeleton S = {
			// pick object + keep heading end-effector
			{1., 1., SY_touch, {"hyqrealwithkinovaG", "obj0"}},
			{1., 1., SY_gripperOrientation, {"hyqrealwithkinovaG", "obj0"}},
			{1., 1., SY_pitchGripperDown, {"hyqrealwithkinovaG", "obj0"}},
			// keep object attached to end-effector
			{1., 2., SY_stable, {"hyqrealwithkinovaG", "obj0"}},
			// place object on table
			{2., 5., SY_touch, {"obj0", "placeBottle"}},
			// open drawer
			{3., 4., SY_touch, {"hyqrealwithkinovaG", "knob_pole_1"}},
			{3., 4., SY_open, {"hyqrealwithkinovaG", "knob_pole_1"}},
			{3., 4., SY_stable, {"hyqrealwithkinovaG", "knob_pole_1"}},
			{3., 6., SY_touch, {"knob_pole_1", "opened_frame"}},
			{3., 4., SY_touch, {"hyqrealwithkinovaG", "opened_frame"}},
			// keep trofast and object orientation
			{4., 7., SY_objectOrientation, {"knob_pole_1"}},
			{2., 7., SY_objectOrientationConstant, {"obj0"}},
			// pick object
			{4., 5., SY_touch, {"hyqrealwithkinovaG", "obj0"}},
			{4., 5., SY_stable, {"hyqrealwithkinovaG", "obj0"}},
			{4., 5., SY_gripperOrientation, {"hyqrealwithkinovaG", "obj0"}},
			{4., 5., SY_pitchGripperDown, {"hyqrealwithkinovaG", "obj0"}},
			// place object inside drawer
			{5., 6., SY_gripperOrientation, {"hyqrealwithkinovaG", "obj0"}},
			{5., 6., SY_pitchGripperDown, {"hyqrealwithkinovaG", "obj0"}},
			{5., 7., SY_touch, {"obj0", "trofast_1"}},
			{5., 6., SY_touch, {"hyqrealwithkinovaG", "obj0"}},
			// closing drawer
			// {6., 7., SY_close, {"hyqrealwithkinovaG", "knob_pole_1"}},
			{6., 7., SY_touch, {"obj0", "trofast_1"}},
			{6., 7., SY_touch, {"hyqrealwithkinovaG", "knob_pole_1"}},
			{6., 7., SY_touch, {"knob_pole_1", "closed_frame"}},
			{6., 7., SY_touch, {"hyqrealwithkinovaG", "closed_frame"}},
			{6., 7., SY_open, {"hyqrealwithkinovaG", "obj0"}},

		};
		komo.setSkeleton(S);
		komo.add_collision(true);

		komo.optimize();
    	komo.checkGradients();
		komo.getReport(true);

		//komo.view(false, "optimized motion");
		// for (uint i = 0; i < 2; i++)
		// 	komo.view_play(true);
		    komo.getReport(true); // true -> plot the cost curves
    for (uint i = 0; i < 7; i++)
        komo.displayTrajectory(.1, true); // play the trajectory
	
}
else
{
	LGP_Tree lgp(C, "fol-pnp-switch.g");
	rai::String terminal;

	// terminal << "(opened drawer) ";
	terminal << "(placedindrawer cilinder drawer) ";
	terminal << "(placedindrawer cilinder2 drawer) ";
	terminal << "(closed drawer) ";
	// terminal << "(free hyqrealwithkinovaG) ";
	lgp.fol.addTerminalRule(terminal);

	lgp.displayBound = BD_seqPath;
	lgp.heuristicCosts = [](LGP_Node *n)
	{ pickAndPlaceCost(n); };

	lgp.run();
}
}

int main(int argc, char **argv)
{
	rai::initCmdLine(argc, argv);
	// rnd.seed(123);
	solveHsrTask(1);

	return 0;
}