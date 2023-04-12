-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages

experienceStages = {
	{
		minlevel = 1,
		maxlevel = 1000,
		multiplier = 10
	}, 
	{
		minlevel = 1001,
		maxlevel = 1500,
		multiplier = 5
	},	
	{
		minlevel = 1501,
		multiplier = 1
	}
}

skillsStages = {
	{
		minlevel = 0,
		maxlevel = 160,
		multiplier = 20
	}, {
		minlevel = 161,
		multiplier = 1
	}
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 130,
		multiplier = 20
	}, {
		minlevel = 131,
		multiplier = 1
	}
}
