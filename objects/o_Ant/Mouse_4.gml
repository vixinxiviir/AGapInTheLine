if instance_find(o_AntChoiceMenu, 0)
{
	instance_destroy(instance_find(o_AntChoiceMenu, 0))
}

var choiceMenu = instance_create_depth(x, y-32,-100, o_AntChoiceMenu)
global.menuAnt = self;

