///scrLoadMusic()
//Initializes external music as easily usable global variables

global.stageMusic01 = audio_create_stream("Music/musGuyRock.ogg");
global.bossMusic01 = audio_create_stream("Music/musMegaman.ogg");
global.bossMusic02 = audio_create_stream("Music/musMiku.ogg");

global.deathMusic01 = audio_create_stream("Music/musOnDeath.ogg");
audio_sound_gain(global.deathMusic01,0.5,0);
