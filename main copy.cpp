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
	C.pruneInactiveJoints();
	C.optimizeTree();
	C["hyqrealwithkinovaG"]->ats->newNode<Graph>({"logical"}, {}, {{"gripper", true}});
	C.selectJointsByAtt({"base", "arm"});

	rai::Frame *xAxis = C.addFrame("xAxis", "knob", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	rai::Frame *yAxis = C.addFrame("yAxis", "knob", "type:ssBox size:[.01 .3 .01 .01] color:[0. 1. 0.]");
	rai::Frame *zAxis = C.addFrame("zAxis", "knob", "type:ssBox size:[.01 .01 .3 .01] color:[0. 0. 1.]");
	xAxis->setRelativePosition({0.15, 0.0, 0.0});
	yAxis->setRelativePosition({0.0, 0.15, 0.0});
	zAxis->setRelativePosition({0.0, 0.0, 0.15});

	rai::Frame *xAxis1 = C.addFrame("xAxis1", "hyqrealwithkinovaG", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	rai::Frame *yAxis1 = C.addFrame("yAxis1", "hyqrealwithkinovaG", "type:ssBox size:[.01 .3 .01 .01] color:[0. 1. 0.]");
	rai::Frame *zAxis1 = C.addFrame("zAxis1", "hyqrealwithkinovaG", "type:ssBox size:[.01 .01 .3 .01] color:[0. 0. 1.]");
	xAxis1->setRelativePosition({0.15, 0.0, 0.0});
	yAxis1->setRelativePosition({0.0, 0.15, 0.0});
	zAxis1->setRelativePosition({0.0, 0.0, 0.15});

	bool solveWithKomoSkeleton = true;
	if (solveWithKomoSkeleton)
	{
		KOMO komo;

		komo.setModel(C, false);
		komo.setTiming(11.0, 10, 5., 2);
		komo.add_qControlObjective({}, 0);
    	komo.add_qControlObjective({}, 2);
		komo.addSquaredQuaternionNorms();
		komo.add_jointLimits(true);

		Skeleton S = {
			// open drawer
			{1., 1., SY_touch, {"hyqrealwithkinovaG", "knob"}},
			{1., 2., SY_stable, {"hyqrealwithkinovaG", "knob"}},
			{2., 8., SY_open, {"hyqrealwithkinovaG", "knob"}},

			// //grasp cilinder
			{5., 5., SY_touch, {"hyqrealwithkinovaG", "cilinder"}},
			{5., 7., SY_stable, {"hyqrealwithkinovaG", "cilinder"}},

			// put the cilinder on the drawer
			{7., 9., SY_above, {"cilinder", "drawer"}},
			{7., -1., SY_stableOn, {"drawer", "cilinder"}},
			{7., 7., SY_touch, {"hyqrealwithkinovaG", "cilinder"}},
			{7., 7., SY_touch, {"cilinder", "drawer"}},

			// close the drawer
			{8., 8., SY_touch, {"hyqrealwithkinovaG", "knob"}},
			{8., 9., SY_stable, {"hyqrealwithkinovaG", "knob"}},
			{9., 11., SY_close, {"hyqrealwithkinovaG", "knob"}},
		};
		komo.setSkeleton(S);
		komo.add_collision(true);
		
		komo.optimize();

		komo.getReport(true);

		//komo.view(false, "optimized motion");
		for (uint i = 0; i < 2; i++)
			komo.view_play(true);
	

	// 		  rai::ConfigurationViewer V;
	// //   V.setConfiguration(komo.pathConfig, "result", true);
	// //   while(V.playVideo(C.frames.N));

	// V.setPath(komo.getPath_X(), "optimized motion", true);
	//   for(uint i=0;i<2;i++) V.playVideo(true);
	// // komo.view(true, "optimized motion");
	// for (uint i = 0; i < 3; i++)
	// {
	// 	komo.displayTrajectory(.1, true); // play the trajectory
	// }
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
	rnd.seed(123);
	solveHsrTask(1);

	return 0;
}