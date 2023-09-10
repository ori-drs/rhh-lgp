#include "help.h"

//===========================================================================
ptr<OpenGL> setupCamera()
{
	ptr<OpenGL> gl = make_shared<OpenGL>();
	gl->camera.setDefault();
	return gl;
}

//===========================================================================
// this is for random scenes in the style of walking on stairs to a target
void createRandomScene(rai::Configuration &C, uint numObj, double zDiff, double zOffset, const char *file)
{
	double x, y;
	for (;;)
	{
		C.clear();
		C.addFile(file);
		C.optimizeTree();
		x = .5;
		y = 0.;
		for (uint i = 0; i < numObj; i++)
		{
			x += (rnd.uni(-.8, .8) + 0.3);
			y += rnd.uni(-2., 2.);
			rai::Frame *f = C.addFrame(STRING("obj" << i), "", "type:ssBox size:[.3 2. .04 .02], contact:1, logical={ object:True, base }");
			f->setColor({1., .75, .69});
			f->setPosition({x, y, zDiff * (i + 1) + zOffset});
		}
		C.stepSwift();
		arr g, J;
		C.kinematicsPenetration(g, J);
		if (g.scalar() == 0.)
			break;
	}
	C.proxies.clear();
	rai::Frame *f = C.addFrame(STRING("banana"), "", "type:ssBox size:[.1 .1 .3 .02], contact:1, color:[.9,.8,0], logical={ object:True, grippable }");
	f->setPosition({x, y + .5, zDiff * (numObj + 1) + zOffset}); // try y+/-.5
}

//===========================================================================
// this is for random scenes in the style of walking on stairs to a target; this is feasible for 1 crawler as well
void createRandomScene(rai::Configuration &C, uint numObj, const char *file, int numCrawlers)
{
	double zDiff = .5;
	double zOffset = .5; // for 1 crawler
	double x, y;
	for (;;)
	{
		C.clear();
		C.addFile(file);
		C.optimizeTree();
		x = 0.;
		y = 0.;
		for (uint i = 0; i < numObj; i++)
		{
			x += .4;
			y += rnd.uni(-1., 1.);
			rai::Frame *f = C.addFrame(STRING("obj" << i), "", "type:ssBox size:[.3 .3 .04 .02], contact:1, logical={ object:True, base }");
			f->setPosition({x, y, zDiff * (i + 1) + zOffset});
			f->setColor({1., .75, .69});
		}
		C.stepSwift();
		arr g, J;
		C.kinematicsPenetration(g, J);
		if (g.scalar() == 0.)
			break;
	}
	C.proxies.clear();
	rai::Frame *f = C.addFrame(STRING("banana"), "", "type:ssBox size:[.1 .1 .3 .02] color:[.9,.8,0], logical={ object:True, grippable }");
	f->setPosition({x, y + rnd.uni(-1., 1.), .5 + zDiff * (numObj + 1) + zOffset});
}

//===========================================================================
// this is for random scenes with a mobile manipulator
void createShelfScene(rai::Configuration &C, uint numObj)
{
	for (;;)
	{
		C.clear();
		C.addFile("scenarios/mobileManipulatorScene.g");
		C.optimizeTree();
		for (uint i = 0; i < numObj; i++)
		{
			rai::Frame *f = C.addFrame(STRING("obj" << i), "shelf1", "type:ssBox size:[.08, .08, .15, .02], contact:1, collisions:-1, color:[1.,0.,0.], logical={ object:True, grippable }, joint=rigid");
			f->setRelativePosition({(rnd.uni(-.5, .5)), rnd.uni(-.4, .4) + .1, .35});
		}
		C.stepSwift();
		arr g, J;
		C.kinematicsPenetration(g, J);
		if (g.scalar() == 0.)
			break;
	}
	C.proxies.clear();
}

// TODO: maybe change the rounding of the boxes
void createObstacleParcour(rai::Configuration &C, uint numObj)
{
	C.addFile("scenarios/obstacleScene.g");
	double obstWidth = 0.5;
	double offset = 1.5 + obstWidth; // try 1.5
	arr p;
	// this adds the obstacles
	for (;;)
	{
		for (uint i = 1; i <= numObj; i++)
		{
			rai::Frame *o = C.addFrame(STRING("obs" << i), "", "logical:{object, base}");
			if (i % 2 == 1)
			{
				o->setShape(rai::ST_ssBox, {obstWidth - .01, 4., 0.1, .001});
				o->setPosition({offset * (i - .5), 0., .6});
			}
			else
			{
				o->setShape(rai::ST_ssBox, {obstWidth - .01, 4., 0.45, .13});
				o->setPosition({offset * (i - .5), 0., .375});
			}
			o->setColor({1., .75, .69});
			o->setContact(1);
			rai::Frame *f = C.addFrame(STRING("base" << i), "", "type:ssBox size:[1.5 4 0.2 0.001], X:<t(0. 0. 0.) d(0 1 0 0)>, logical:{ object, base }");
			f->setPosition({i * offset, 0., .1});
			f->setContact(1);
			// f->setColor({.3, .3, .3});
		}

		// this adds the side walls so the robots do not go over there
		rai::Frame *sideL = C.addFrame(STRING("boundary1"), "");
		sideL->setShape(rai::ST_ssBox, {numObj * offset, .05, .7, .001});
		sideL->setPosition({offset * numObj * .5, 2.1, .35});
		sideL->setContact(1);
		rai::Frame *sideR = C.addFrame(STRING("boundary2"), "");
		sideR->setShape(rai::ST_ssBox, {numObj * offset, .05, .7, .001});
		sideR->setPosition({offset * numObj * .5, -2.1, .35});
		sideR->setContact(1);
		// add banana
		rai::Frame *b = C.addFrame(STRING("banana"), "", "type:ssBox size:[.1 .1 .3 .02] color:[0.,1.,0], logical={ object:True, grippable }");
		b->setPosition({numObj * offset + .5, 0, 1.});
		b->setContact(1);

		C.stepSwift();
		arr g, J;
		C.kinematicsPenetration(g, J);
		if (g.scalar() == 0.)
			break;
	}
	C.proxies.clear();
	C.optimizeTree();
}

//===========================================================================
// this is for random scenes with panda robots
void createTableScene(rai::Configuration &C, uint numObj)
{
	rnd.seed(1);
	for (;;)
	{
		C.clear();
		C.addFile("scenarios/pandaStation.g");
		C.optimizeTree();
		for (uint i = 0; i < numObj; i++)
		{
			rai::Frame *f = C.addFrame(STRING("obj" << i), "table1", "type:ssBox size:[.08, .08, .15, .02], contact:1, collisions:1, color:[1.,0.,0.], logical={ object:True, grippable }, joint=rigid");
			f->setRelativePosition({(rnd.uni(-.3, .1)), rnd.uni(-.2, .2), .1});
		}
		C.stepSwift();
		arr g, J;
		C.kinematicsPenetration(g, J);
		if (g.scalar() == 0.)
			break;
		break;
	}
	C.proxies.clear();
}

//===========================================================================
// this is for creating scene with two tables and different objects, suitable
// for pick and place tasks

void createTableSceneClassic(rai::Configuration &C, uint numObj)
{
	for (;;)
	{
		C.clear();
	
	
		C.addFile("robotModels/tables2.g");
		for (uint i = 0; i < numObj; i++)
		{
			rai::Frame *f = C.addFrame(STRING("obj" << i), "table1", "type:ssBox size:[.1 .1 .2 .02] color:[1. 0. 0.], contact, logical={ object }, joint:rigid");
			f->setRelativePosition({rnd.uni(-.3, .3), rnd.uni(-1., 1.), .15});
			f->setRelativeQuaternion(rai::Quaternion(0).addZ(rnd.uni(-RAI_PI, RAI_PI)).getArr4d());
		}
		C.stepSwift();
		arr y, J;
		C.kinematicsPenetration(y, J);
		if (y.scalar() == 0.)
			break;
	}

	C.proxies.clear();

	rai::Frame *f = C.addFrame("tray", "table2", "type:ssBox size:[.15 .15 .04 .02] color:[0. 1. 0.], logical={ table }");
	f->setRelativePosition({0., 0., .07});

	C.addFrame("", "tray", "type:ssBox size:[.27 .27 .04 .02] color:[0. 1. 0.]");

	rai::Frame *xAxis = C.addFrame("xAxis", "tray", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	rai::Frame *yAxis = C.addFrame("yAxis", "tray", "type:ssBox size:[.01 .3 .01 .01] color:[0. 1. 0.]");
	rai::Frame *zAxis = C.addFrame("zAxis", "tray", "type:ssBox size:[.01 .01 .3 .01] color:[0. 0. 1.]");
	xAxis->setRelativePosition({0.15, 0.0, 0.0});
	yAxis->setRelativePosition({0.0, 0.15, 0.0});
	zAxis->setRelativePosition({0.0, 0.0, 0.15});
}

void createDrawerScene(rai::Configuration &C)
{
	// for (;;)
	// {
	// 	C.clear();
	
	
	// 	C.addFile("robotModels/drawer.g");
	// 	for (uint i = 0; i < numObj; i++)
	// 	{
	// 		rai::Frame *f = C.addFrame(STRING("obj" << i), "table1", "type:ssBox size:[.1 .1 .2 .02] color:[1. 0. 0.], contact, logical={ object }, joint:rigid");
	// 		f->setRelativePosition({rnd.uni(-.3, .3), rnd.uni(-1., 1.), .15});
	// 		f->setRelativeQuaternion(rai::Quaternion(0).addZ(rnd.uni(-RAI_PI, RAI_PI)).getArr4d());
	// 	}
	// 	C.stepSwift();
	// 	arr y, J;
	// 	C.kinematicsPenetration(y, J);
	// 	if (y.scalar() == 0.)
	// 		break;
	// }

	// rai::Frame *f1 = C.addFrame("obj5", "obj0", "type:ssBox size:[.05 .05 .05 .02] color:[0. 1. 0.], contact, logical={ object }, joint:rigid");
	// f1->setRelativePosition({-0.07, -0.07, 0.0});
	// f1->setRelativeQuaternion(rai::Quaternion(0).addZ(rnd.uni(-RAI_PI, RAI_PI)).getArr4d());
	// C.attach("obj0", "obj5");
	C.clear();
	// C.addFile("robotModels/drawer.g");
	rai::Frame *f2 = C.addFrame("knob", "", "type:ssBox size:[.05 .05 .05 .02] color:[0. 0. 1.], logical={object, knob }");
	f2->setPosition({0.0, -2.0, 0.2});
	f2->setQuaternion(rai::Quaternion(0).addZ(-0.5).getArr4d());
	// std::cout << "!!!!!!!!!!!!!!!!!!!   " << f2->getQuaternion().elem(0) << " " << f2->getQuaternion().elem(1) << " " << f2->getQuaternion().elem(2) << " " << f2->getQuaternion().elem(3) << " " << std::endl;

	rai::Quaternion noRotationQuaternion(1.0, 0.0, 0.0, 0.0);
	rai::Frame *f3 = C.addFrame("drawer", "knob", "type:ssBox size:[.5 .5 .1 .02] color:[0. 1. 0. 1.], logical={ object, drawer }");
	f3->setRelativePosition({0.0, -0.28, 0.0});
    f3->setQuaternion(rai::Quaternion(0).addZ(-0.5).getArr4d());
	// f3->setPosition({0.0, -2.5, 0.4});
	// f3->setQuaternion(rai::Quaternion(0).addZ(0).getArr4d());

	rai::Frame *f4 = C.addFrame(STRING("cilinder"), "", "type:ssBox size:[.1 .1 .2 .02] color:[1. 0. 0.], logical={ object, cilinder }");
	f4->setPosition({1.0, -2.0, 0.3});
	f4->setQuaternion(noRotationQuaternion.getArr4d());


	C.proxies.clear();

	// rai::Frame *f = C.addFrame("tray", "table2", "type:ssBox size:[.15 .15 .04 .02] color:[0. 1. 0.], logical={ table }");
	// f->setRelativePosition({0., 0., .07});

	// C.addFrame("", "tray", "type:ssBox size:[.27 .27 .04 .02] color:[0. 1. 0.]");

	// rai::Frame *xAxis = C.addFrame("xAxis", "tray", "type:ssBox size:[.3 .01 .01 .01] color:[1. 0. 0.]");
	// rai::Frame *yAxis = C.addFrame("yAxis", "tray", "type:ssBox size:[.01 .3 .01 .01] color:[0. 1. 0.]");
	// rai::Frame *zAxis = C.addFrame("zAxis", "tray", "type:ssBox size:[.01 .01 .3 .01] color:[0. 0. 1.]");
	// xAxis->setRelativePosition({0.15, 0.0, 0.0});
	// yAxis->setRelativePosition({0.0, 0.15, 0.0});
	// zAxis->setRelativePosition({0.0, 0.0, 0.15});
}