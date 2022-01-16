// Use this sample to create your own voice commands
intent('hello world', p => {
    p.play('(hello|hi there)');
});

intent('(play)', 'play (the|) (some|) music', p=> {
   p.play({"command": "play"});
   p.play("(Playing now|on it| ok boss)");
});