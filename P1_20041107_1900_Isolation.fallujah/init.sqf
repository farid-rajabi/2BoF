sleep 1;
enableEnvironment [false, false];

private _explosion_sounds = ["a3\sounds_f\ambient\battlefield\battlefield_explosions1.wss",
	"a3\sounds_f\ambient\battlefield\battlefield_explosions2.wss",
	"a3\sounds_f\ambient\battlefield\battlefield_explosions3.wss",
	"a3\sounds_f\ambient\battlefield\battlefield_explosions4.wss",
	"a3\sounds_f\ambient\battlefield\battlefield_explosions5.wss"];
while { true } do {
	playSound3D [_explosion_sounds select (floor (random (count _explosion_sounds))),
		logic_explosion, false, getPosASL logic_explosion,
		floor (random [1, 3, 5]), 1, 10000];
	sleep (random 60);
};
