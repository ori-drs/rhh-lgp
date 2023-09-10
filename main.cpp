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
	createDrawerScene(C);
	C.addFile("robotModels/hsr/hsr_main.g");
	C.pruneInactiveJoints();
	C.optimizeTree();
	C["hsrG"]->ats->newNode<Graph>({"logical"}, {}, {{"gripper", true}});
	C["worldTranslationRotation"]->joint->H = 1e-0;

	rai::Frame *xAxis = C.addFrame("xAxis", "knob", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	rai::Frame *yAxis = C.addFrame("yAxis", "knob", "type:ssBox size:[.01 .3 .01 .01] color:[0. 1. 0.]");
	rai::Frame *zAxis = C.addFrame("zAxis", "knob", "type:ssBox size:[.01 .01 .3 .01] color:[0. 0. 1.]");
	xAxis->setRelativePosition({0.15, 0.0, 0.0});
	yAxis->setRelativePosition({0.0, 0.15, 0.0});
	zAxis->setRelativePosition({0.0, 0.0, 0.15});

	rai::Frame *xAxis1 = C.addFrame("xAxis1", "hsrG", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	rai::Frame *yAxis1 = C.addFrame("yAxis1", "hsrG", "type:ssBox size:[.01 .3 .01 .01] color:[0. 1. 0.]");
	rai::Frame *zAxis1 = C.addFrame("zAxis1", "hsrG", "type:ssBox size:[.01 .01 .3 .01] color:[0. 0. 1.]");
	xAxis1->setRelativePosition({0.15, 0.0, 0.0});
	yAxis1->setRelativePosition({0.0, 0.15, 0.0});
	zAxis1->setRelativePosition({0.0, 0.0, 0.15});

	bool solveWithKomoSkeleton = true;
	if(solveWithKomoSkeleton) {
		KOMO komo;

		komo.setModel(C, false);
		komo.setTiming(11.0, 10, 7., 2);
		komo.add_qControlObjective({}, 1, 1e0);
		komo.addSquaredQuaternionNorms();
		komo.add_jointLimits(true);

		Skeleton S = {
			//open drawer
			{ 1., 1., SY_touch, {"hsrG", "knob"} },
			{ 1., 2., SY_stable, {"hsrG", "knob"} },
			{ 2., 8., SY_open, {"hsrG", "knob"} },

			// //grasp cilinder
			{ 5., 5., SY_touch, {"hsrG", "cilinder"} },
			{ 5., 7., SY_stable, {"hsrG", "cilinder"} },

			//put the cilinder on the drawer
			{ 7., 9., SY_above, {"cilinder", "drawer"} },
			{ 7., -1., SY_stableOn, {"drawer", "cilinder"} },
			{ 7., 7., SY_touch, {"hsrG", "cilinder"} },
			{ 7., 7., SY_touch, {"cilinder", "drawer"} },

			//close the drawer
			{ 8., 8., SY_touch, {"hsrG", "knob"} },
			{ 8., 9., SY_stable, {"hsrG", "knob"} },
			{ 9., 11., SY_close, {"hsrG", "knob"} },
		};
		komo.setSkeleton(S);

		komo.optimize();

		komo.getReport(true);
		komo.view(true, "optimized motion");
		while(komo.view_play(true));
	}
	else{
		LGP_Tree lgp(C, "fol-pnp-switch.g");
		rai::String terminal;

		// terminal << "(opened drawer) ";
		terminal << "(placedindrawer cilinder drawer) ";
		terminal << "(closed drawer) ";
		// terminal << "(free hsrG) ";
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

//===========================================================================
// int main(int argc, char **argv)
// {
// 	rai::initCmdLine(argc, argv);
// 	rnd.seed(123);

// 	// scenario to test heuristics vs. no heuristics -- FIRST EXPERIMENT in paper uses this scenario with different configurations
// 	// solveClimbingTask(4, ACTION_HEURISTICS, 1, false, 2);
// 	// solveClimbingTask(4, SEQ_BOUND, 1, false, 2); // this is the baseline like Quim proposed it
// 	// solveClimbingTask(4, NONE, 1, false, 2);

// 	// scenario that is also feasible with just one crawler -- SECOND EXPERIMENT in paper uses this scenario with different configurations
// 	// solveClimbingTask(32, ACTION_HEURISTICS, 1, false, 2);
// 	// solveClimbingTask(32, ACTION_HEURISTICS, 1, false, 1);

// 	// complex scenario which contains rolling and climbing and disconnecting -- THIRD EXPERIMENT in paper uses this scenario with different configurations
// 	// solveComplexTask(4, true, 2, false);

// 	// this is the mobile manipulator scenario -- FOURTH EXPERIMENT in paper uses this scenario with different configurations
// 	// solveMobileManipulator(3, true, 2, false);

// 	// FIFTH EXPERIMENT in paper uses this scenario with different configurations
// 	// solveObstacleTask(2, true, 2, false);

// 	// SIXTH EXPERIMENT in paper uses panda robots to transfer objects to goal
// 	// solvePandaTask(4, true, 2, false);

// 	// SEVENTH EXPERIMENT using human support robot to transfer objects to goal
// 	solveHsrTask(1);

// 	// a receding horizon formulation that plans the first scenario from above iteratively with a horizon -- LAST EXPERIMENT
// 	// RHHLGP(25, 10, MT_complex);
// 	// RHHLGP(16, 4, MT_mobileManipulator);
// 	// RHHLGP(45, 6, MT_climb_single);
// 	// RHHLGP(32, 3, MT_climb);
// 	// RHHLGP(4, 6, MT_obstacle);
// 	// RHHLGP(2, 10, MT_panda);

// 	return 0;
// }

// void solveClimbingTask(uint numObj, HeuristicFct h, int verbose = 1, bool player = false, int numCrawlers = 2)
// {
// 	rai::Configuration C;
// 	if (numCrawlers == 1)
// 	{
// 		createRandomScene(C, numObj, "scenarios/empty_scene_single.g");
// 	}
// 	else
// 		createRandomScene(C, numObj, "scenarios/empty_scene.g");

// 	LGP_Tree lgp(C, "fol/fol.g");
// 	lgp.fol.addTerminalRule("(held banana)");
// 	// either we use the action heuristics
// 	if (h == ACTION_HEURISTICS)
// 	{
// 		if (numCrawlers == 1)
// 			lgp.heuristicCosts = [](LGP_Node *n)
// 			{ costToGo1And2(n, "banana", {"L_handA"}, 1); };
// 		else if (numCrawlers == 2)
// 			lgp.heuristicCosts = [](LGP_Node *n)
// 			{ costToGo1And2(n, "banana", {"L_handA", "R_handA"}, 1); };
// 	}
// 	// or seq bound as Quim proposed
// 	else if (h == SEQ_BOUND)
// 	{
// 		lgp.heuristicCosts = [&lgp](LGP_Node *n)
// 		{ lgp.seqBoundCostToGo(n); };
// 	}
// 	// (or none)
// 	lgp.verbose = verbose;
// 	if (player)
// 	{
// 		lgp.player();
// 	}
// 	else
// 	{
// 		lgp.run();
// 	}
// }

//===========================================================================
// void solveMobileManipulator(uint numObj, bool h = true, int verbose = 1, bool player = false)
// {
// 	rai::Configuration C;
// 	createShelfScene(C, numObj);

// 	LGP_Tree lgp(C, "fol/fol.g");
// 	rai::String terminal;
// 	for (uint i = 0; i < numObj; ++i)
// 	{
// 		terminal << "(on shelf2 obj" << i << ") ";
// 	}
// 	lgp.fol.addTerminalRule(terminal);
// 	if (h)
// 		lgp.heuristicCosts = [](LGP_Node *n)
// 		{ costToGo4(n, 4, "shelf1", "shelf2"); };
// 	lgp.verbose = verbose;
// 	if (player)
// 	{
// 		lgp.player();
// 	}
// 	else
// 	{
// 		lgp.run();
// 	}
// }

//===========================================================================
// void solveComplexTask(uint numObj, bool h = true, int verbose = 1, bool player = false)
// {
// 	rai::Configuration C;
// 	double zOffset = 1.;
// 	double zDiff = .9;
// 	createRandomScene(C, numObj, zDiff, zOffset, "scenarios/complexScene.g");
// 	rai::Frame *banana = C.getFrame("banana");
// 	rai::Frame *f = C.addFrame(STRING("green_banana"), "", "type:ssBox size:[.1 .1 .3 .02] color:[0.,1.,0], logical={ object:True, grippable }");
// 	f->setPosition({banana->getPosition().elem(0) + rnd.uni(-.5, .5), banana->getPosition().elem(1) - 1., .9 * (numObj + 1) + zOffset});

// 	LGP_Tree lgp(C, "fol/fol.g");
// 	lgp.fol.addTerminalRule("(held banana) (held green_banana)");
// 	if (h)
// 		lgp.heuristicCosts = [](LGP_Node *n)
// 		{ costToGo3(n, {"banana", "green_banana"}, STRING("L_handA").p); };
// 	lgp.verbose = verbose;
// 	if (player)
// 	{
// 		lgp.player();
// 	}
// 	else
// 	{
// 		lgp.run();
// 	}
// }

//===========================================================================
// void RHHLGP(int numObj, uint horizon, ManipulationTask task)
// {
// 	switch (task)
// 	{
// 	case MT_climb:
// 	{
// 		rai::Configuration C;
// 		createRandomScene(C, numObj, "scenarios/empty_scene.g");
// 		ptr<OpenGL> gl = setupCamera();

// 		void (*heuristic)(LGP_Node *n) = [](LGP_Node *n)
// 		{ costToGo1And2(n, "banana", {"L_handA", "R_handB"}, 1); };
// 		RHHLGP_solver rhhlgp(C, horizon, heuristic, "(held banana)", "fol/fol.g", 2);
// 		rhhlgp.optimize(gl);
// 	}
// 	break;

// 	case MT_climb_single:
// 	{
// 		rai::Configuration C;
// 		createRandomScene(C, numObj, "scenarios/empty_scene_single.g");
// 		ptr<OpenGL> gl = setupCamera();

// 		void (*heuristic)(LGP_Node *n) = [](LGP_Node *n)
// 		{ costToGo1And2(n, "banana", {"L_handA"}, 1); };
// 		RHHLGP_solver rhhlgp(C, horizon, heuristic, "(held banana)", "fol/fol.g", 2);
// 		rhhlgp.optimize(gl);
// 	}
// 	break;

// 	case MT_complex:
// 	{
// 		rai::Configuration C;
// 		double zOffset = 1.;
// 		double zDiff = .9;
// 		createRandomScene(C, numObj, zDiff, zOffset, "scenarios/complexScene.g");
// 		rai::Frame *banana = C.getFrame("banana");
// 		rai::Frame *f = C.addFrame(STRING("green_banana"), "", "type:ssBox size:[.1 .1 .3 .02] color:[0.,1.,0], logical={ object:True, grippable }");
// 		f->setPosition({banana->getPosition().elem(0) + rnd.uni(-.5, .5), banana->getPosition().elem(1) - 1., .9 * (numObj + 1) + zOffset});
// 		ptr<OpenGL> gl = setupCamera();

// 		void (*heuristic)(LGP_Node *n) = [](LGP_Node *n)
// 		{ costToGo3(n, {"banana", "green_banana"}, STRING("L_handA").p); };
// 		RHHLGP_solver rhhlgp(C, horizon, heuristic, "(held banana) (held green_banana)", "fol/fol.g", 2);
// 		rhhlgp.optimize(gl);
// 	}
// 	break;

// 	case MT_mobileManipulator:
// 	{
// 		rai::Configuration C;
// 		createShelfScene(C, numObj);
// 		ptr<OpenGL> gl = setupCamera();

// 		rai::String terminal;
// 		for (int i = 0; i < numObj; ++i)
// 		{
// 			terminal << "(on shelf2 obj" << i << ") ";
// 		}

// 		void (*heuristic)(LGP_Node *n) = [](LGP_Node *n)
// 		{ costToGo4(n, 4, "shelf1", "shelf2"); };
// 		RHHLGP_solver rhhlgp(C, horizon, heuristic, terminal, "fol/fol.g", 2);
// 		rhhlgp.optimize(gl);
// 	}
// 	break;

// 	case MT_obstacle:
// 	{
// 		rai::Configuration C;
// 		// now setting up scene
// 		createObstacleParcour(C, numObj);
// 		ptr<OpenGL> gl = setupCamera();
// 		rai::String terminal = "(held banana)";

// 		auto heuristic = [](LGP_Node *n)
// 		{ return costToGo5(n, "base0", "banana"); };
// 		RHHLGP_solver rhhlgp(C, horizon, heuristic, terminal, "fol/fol.g", 2);
// 		rhhlgp.optimize(gl);
// 	}
// 	break;

// 	case MT_panda:
// 	{
// 		rai::Configuration C;
// 		// now setting up scene
// 		createTableScene(C, numObj);
// 		ptr<OpenGL> gl = setupCamera();

// 		rai::String terminal;
// 		for (int i = 0; i < numObj; ++i)
// 		{
// 			terminal << "(on goal obj" << i << ") ";
// 		}

// 		auto heuristic = [](LGP_Node *n)
// 		{ return costToGo6(n, 5, "goal"); };
// 		RHHLGP_solver rhhlgp(C, horizon, heuristic, terminal, "fol/panda_fol.g", 2);
// 		rhhlgp.optimize(gl);
// 	}
// 	break;
// 	}
// }

//===========================================================================
// void solveObstacleTask(uint numObj, bool h = true, int verbose = 1, bool player = false)
// {
// 	rai::Configuration C;
// 	// now setting up scene
// 	createObstacleParcour(C, numObj);
// 	ptr<OpenGL> gl = setupCamera();

// 	rai::String terminal = "(held banana)";

// 	LGP_Tree lgp(C, "fol/fol.g");
// 	lgp.fol.addTerminalRule(terminal);
// 	lgp.heuristicCosts = [](LGP_Node *n)
// 	{ costToGo5(n, "base0", "banana"); };
// 	lgp.verbose = verbose;
// 	if (player)
// 	{
// 		lgp.player();
// 	}
// 	else
// 	{
// 		lgp.run();
// 	}
// }

// //===========================================================================
// void solvePandaTask(uint numObj, bool h = true, int verbose = 1, bool player = false)
// {
// 	// set up scene
// 	rai::Configuration C;
// 	createTableScene(C, numObj);
// 	ptr<OpenGL> gl = setupCamera();

// 	rai::String terminal;
// 	for (uint i = 0; i < numObj; ++i)
// 	{
// 		terminal << "(on goal obj" << i << ") ";
// 	}

// 	LGP_Tree lgp(C, "fol/panda_fol.g");
// 	lgp.fol.addTerminalRule(terminal);
// 	lgp.heuristicCosts = [](LGP_Node *n)
// 	{ costToGo6(n, 3, "goal"); };
// 	lgp.verbose = verbose;
// 	if (player)
// 	{
// 		lgp.player();
// 	}
// 	else
// 	{
// 		lgp.run();
// 	}
// }