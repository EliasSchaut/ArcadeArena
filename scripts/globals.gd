extends Node

enum Colors {
	White,
	Blue,
	Red,
	Green,
	Yellow,
}

enum Heros {
	All,
	PacMan,
	Paddle,
	Spaceship,
	LaserCannon
}

var color_map = {
	Globals.Colors.White: Color("#ffffff"),
	Globals.Colors.Blue: Color("#0000FF"),
	Globals.Colors.Red: Color("#FF0000"),
	Globals.Colors.Green: Color("#00FF00"),
	Globals.Colors.Yellow: Color("#FFFF00"),
}
