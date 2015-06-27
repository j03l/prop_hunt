// Props will not be able to become these models
BANNED_PROP_MODELS = {
	"models/props/cs_assault/dollar.mdl",
	"models/props/cs_assault/money.mdl",
	"models/props/cs_office/snowman_arm.mdl",
    "models/props/cs_office/projector_remote.mdl",
	"models/props/cs_office/projector_remote_p1.mdl",
    "models/props/cs_office/projector_remote_p2.mdl",
    "models/props/cs_office/computer_mouse.mdl",
    "models/props/cs_militia/reload_bullet_tray.mdl",
    "models/nooze/morganzine.mdl",
    "models/props_lab/huladoll.mdl",
	"models/labware/tube2.mdl",
	"models/labware/tube1.mdl",
	"models/props/facility_backzone/petridish01a.mdl",
	"models/props/facility_backzone/petridish01a_gib1.mdl",
	"models/props/facility_backzone/petridish01a_gib2.mdl",
	"models/props/facility_backzone/petridish01a_gib3.mdl",
	"models/props/facility_backzone/labjunk_bottle02a.mdl",
	"models/props_c17/tools_wrench01a.mdl",
	"models/props_lab/huladoll.mdl"

}


// Maximum time (in minutes) for this fretta gamemode (Default: 30)
GAME_TIME = 60

// Number of seconds hunters are blinded/locked at the beginning of the map (Default: 30)
CreateConVar("HUNTER_BLINDLOCK_TIME", "30", FCVAR_REPLICATED)

//Create the convars here
// Health points removed from hunters when they shoot  (Default: 5)
CreateConVar( "HUNTER_FIRE_PENALTY", "5", FCVAR_REPLICATED)

// How much health to give back to the Hunter after killing a prop (Default: 20)
CreateConVar( "HUNTER_KILL_BONUS", "20", FCVAR_REPLICATED)

//Whether or not we include grenade launcher ammo (default: 1)
CreateConVar( "WEAPONS_ALLOW_GRENADE", "1", FCVAR_REPLICATED)

// If you loose one of these will be played
// Set blank to disable
LOSS_SOUNDS = {
	"vo/announcer_failure.wav",
	"vo/announcer_you_failed.wav"
}


// Sound files hunters can taunt with
// You need at least 2 files listed here
HUNTER_TAUNTS = {
	"taunts/you_dont_know_the_power.wav",
	"taunts/you_underestimate_the_power.wav",
	 "taunts/dkgaming_taunts/hunters/h1-1.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-10.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-11.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-12.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-13.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-14.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-15.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-16.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-17.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-18.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-19.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-2.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-20.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-3.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-4.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-5.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-6.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-7.mp3" ,
	 "taunts/dkgaming_taunts/hunters/h1-8.mp3" ,
	 "taunts/frankaroo_taunts/hunters/exterminate.wav" ,
	 "taunts/frankaroo_taunts/hunters/glados-president.wav" ,
	 "taunts/dkgaming_taunts/hunters/h1-9.mp3" ,
	 "taunts/Hunters/Nexus/MJ-whosbad.wav" ,
	 "taunts/Hunters/bio/Bender Bite my shiny metal ass.wav" ,
	 "taunts/Hunters/bio/Duke Nukem Line - Its Time To Kick Ass And Chew Bubblegum.wav" ,
	 "taunts/Hunters/bio/Sarcastic Homer.wav" 
	 
}


// Sound files props can taunt with
// You need at least 2 files listed here
PROP_TAUNTS = {
		"taunts/boom_headshot.wav",
		"taunts/doh.wav",
		"taunts/go_away_or_i_shall.wav",
		"taunts/ill_be_back.wav",
		"taunts/negative.wav",
		"taunts/oh_yea_he_will_pay.wav",
		"taunts/ok_i_will_tell_you.wav",
		"taunts/please_come_again.wav",
		"taunts/threat_neutralized.wav",
		"taunts/what_is_wrong_with_you.wav",
		"taunts/woohoo.wav",
		"taunts/props/1.wav",
		"taunts/props/2.wav",
		"taunts/props/3.wav",
		"taunts/props/4.wav",
		"taunts/props/5.wav",
		"taunts/props/6.wav",
		"taunts/props/7.wav",
		"taunts/props/8.wav",
		"taunts/props/9.wav",
		"taunts/props/10.wav",
		"taunts/props/11.wav",
		"taunts/props/12.wav",
		"taunts/props/13.mp3",
		"taunts/props/14.wav",
		"taunts/props/15.wav",
		"taunts/props/16.wav",
		"taunts/props/17.mp3",
		"taunts/props/18.wav",
		"taunts/props/19.wav",
		"taunts/props/20.wav",
		"taunts/props/21.wav",
		"taunts/props/22.wav",
		"taunts/props/23.wav",
		"taunts/props/24.wav",
		"taunts/props/25.wav",
		"taunts/props/26.wav",
		"taunts/props/27.wav",
		"taunts/props/28.wav",
		"taunts/props/29.wav",
		"taunts/props/30.wav",
		"taunts/props/31.mp3",
		"taunts/props/32.mp3",
		"taunts/props/33.mp3",
		"taunts/props/34.mp3",
		"taunts/props/35.mp3",
	"taunts/dkgaming_taunts/props/1-1.mp3" ,
	 "taunts/dkgaming_taunts/props/1-14.mp3", 
	 "taunts/dkgaming_taunts/props/1-18.mp3" ,
	 "taunts/dkgaming_taunts/props/1-2.mp3" ,
	 "taunts/dkgaming_taunts/props/1-20.mp3" ,
	 "taunts/dkgaming_taunts/props/1-21.mp3" ,
	 "taunts/dkgaming_taunts/props/1-22.mp3" ,
	 "taunts/dkgaming_taunts/props/1-24.mp3" ,
	 "taunts/dkgaming_taunts/props/1-25.mp3" ,
	 "taunts/dkgaming_taunts/props/1-26.mp3" ,
	 "taunts/dkgaming_taunts/props/1-27.mp3" ,
	 "taunts/dkgaming_taunts/props/1-28.mp3" ,
	 "taunts/dkgaming_taunts/props/1-30.mp3" ,
	 "taunts/dkgaming_taunts/props/1-36.mp3" ,
	 "taunts/dkgaming_taunts/props/1-37.mp3" ,
	 "taunts/dkgaming_taunts/props/1-38.mp3" ,
	 "taunts/dkgaming_taunts/props/1-39.mp3" ,
	 "taunts/dkgaming_taunts/props/1-4.mp3" ,
	 "taunts/dkgaming_taunts/props/1-40.mp3" ,
	 "taunts/dkgaming_taunts/props/1-41.mp3" ,
	 "taunts/dkgaming_taunts/props/1-42.mp3" ,
	 "taunts/dkgaming_taunts/props/1-43.mp3" ,
	 "taunts/dkgaming_taunts/props/1-44.mp3" ,
	 "taunts/dkgaming_taunts/props/1-45.mp3" ,
	 "taunts/dkgaming_taunts/props/1-46.mp3" ,
	 "taunts/dkgaming_taunts/props/1-47.mp3" ,
	 "taunts/dkgaming_taunts/props/1-48.mp3" ,
	 "taunts/dkgaming_taunts/props/1-49.mp3" ,
	 "taunts/dkgaming_taunts/props/1-50.mp3" ,
	 "taunts/dkgaming_taunts/props/1-51.mp3" ,
	 "taunts/dkgaming_taunts/props/1-52.mp3" ,
	 "taunts/dkgaming_taunts/props/1-54.mp3" ,
	 "taunts/dkgaming_taunts/props/1-56.mp3" ,
	 "taunts/dkgaming_taunts/props/1-57.mp3" ,
	 "taunts/dkgaming_taunts/props/1-58.mp3" ,
	 "taunts/dkgaming_taunts/props/1-59.mp3" ,
	 "taunts/dkgaming_taunts/props/1-6.mp3" ,
	 "taunts/dkgaming_taunts/props/1-60.mp3" ,
	 "taunts/dkgaming_taunts/props/1-61.mp3" ,
	 "taunts/dkgaming_taunts/props/1-62.mp3" ,
	 "taunts/dkgaming_taunts/props/1-63.mp3" ,
	 "taunts/dkgaming_taunts/props/1-64.mp3" ,
	 "taunts/dkgaming_taunts/props/1-65.mp3" ,
	 "taunts/dkgaming_taunts/props/1-66.mp3" ,
	 "taunts/dkgaming_taunts/props/1-67.mp3" ,
	 "taunts/dkgaming_taunts/props/1-68.mp3",
	 "taunts/dkgaming_taunts/props/1-69.mp3",
	 "taunts/dkgaming_taunts/props/1-72.mp3" ,
	 "taunts/frankaroo_taunts/props/banana-bus.wav" ,
	 "taunts/frankaroo_taunts/props/bananas-are-good.mp3" ,
	 "taunts/frankaroo_taunts/props/blablabla.mp3" ,
	 "taunts/frankaroo_taunts/props/bye_have_a_great_time.wav" ,
	 "taunts/frankaroo_taunts/props/claptrap-follow-the-silly-sound.mp3" ,
	 "taunts/frankaroo_taunts/props/claptrap-haha-im-alive.mp3" ,
	 "taunts/frankaroo_taunts/props/claptrap-im-over-here.mp3" ,
	 "taunts/frankaroo_taunts/props/claptrap-oh-no-going-to-die.mp3" ,
	 "taunts/frankaroo_taunts/props/claptrap-please-dont-shot-me.mp3" ,
	 "taunts/frankaroo_taunts/props/claptrap-this-way.mp3" ,
	 "taunts/frankaroo_taunts/props/claptrap-wait-is-that.mp3" ,
	 "taunts/frankaroo_taunts/props/designed_to_be_a_moron.wav" ,
	 "taunts/frankaroo_taunts/props/dinkleberg.mp3" ,
	 "taunts/frankaroo_taunts/props/doctor-01.wav" ,
	 "taunts/frankaroo_taunts/props/doctor-02.wav" ,
	 "taunts/frankaroo_taunts/props/doctor-03.wav" ,
	 "taunts/frankaroo_taunts/props/doctor-04.wav" ,
	 "taunts/frankaroo_taunts/props/doctor-05.wav" ,
	 "taunts/frankaroo_taunts/props/eclipse.mp3" ,
	 "taunts/frankaroo_taunts/props/everythingisawesome.mp3" ,
	 "taunts/frankaroo_taunts/props/kermit-corpse.mp3" ,
	 "taunts/frankaroo_taunts/props/kermit-gonna-make.mp3" ,
	 "taunts/frankaroo_taunts/props/kermit-the-world.mp3" ,
	 "taunts/frankaroo_taunts/props/my-heart-will-go-on.mp3" ,
	 "taunts/frankaroo_taunts/props/poker-face.mp3" ,
	 "taunts/frankaroo_taunts/props/sark-01.wav" ,
	 "taunts/frankaroo_taunts/props/smoke-weed.mp3" ,
	 "taunts/frankaroo_taunts/props/trololololol.wav" ,
	 "taunts/frankaroo_taunts/props/yodel-franz-lang.mp3" ,
	 "taunts/boom_headshot.wav" ,
	 "taunts/doh.wav" ,
	 "taunts/go_away_or_i_shall.wav", 
	 "taunts/ill_be_back.wav" ,
	 "taunts/negative.wav" ,
	 "taunts/oh_yea_he_will_pay.wav", 
	 "taunts/ok_i_will_tell_you.wav" ,
	 "taunts/please_come_again.wav" ,
	 "taunts/props/1.wav" ,
	 "taunts/props/10.wav" ,
	 "taunts/props/11.wav" ,
	 "taunts/props/12.wav" ,
	 "taunts/props/14.wav" ,
	 "taunts/props/15.wav" ,
	 "taunts/props/16.wav" ,
	 "taunts/props/17.mp3" ,
	 "taunts/props/18.wav" ,
	 "taunts/props/19.wav" ,
	 "taunts/props/2.wav" ,
	 "taunts/props/20.wav" ,
	 "taunts/props/21.wav" ,
	 "taunts/props/22.wav" ,
	 "taunts/props/23.wav" ,
	 "taunts/props/24.wav" ,
	 "taunts/props/25.wav" ,
	 "taunts/props/26.wav" ,
	 "taunts/props/27.wav" ,
	 "taunts/props/28.wav" ,
	 "taunts/props/29.wav" ,
	 "taunts/props/3.wav" ,
	 "taunts/props/30.wav" ,
	 "taunts/props/31.mp3" ,
	 "taunts/props/32.mp3" ,
	 "taunts/props/33.mp3" ,
	 "taunts/props/34.mp3" ,
	 "taunts/props/35.mp3" ,
	 "taunts/props/36.wav" ,
	 "taunts/props/37.wav" ,
	 "taunts/props/38.wav" ,
	 "taunts/props/39.wav" ,
	 "taunts/props/4.wav" ,
	 "taunts/props/40.wav" ,
	 "taunts/props/41.wav" ,
	 "taunts/props/42.wav" ,
	 "taunts/props/43.wav" ,
	 "taunts/props/44.wav" ,
	 "taunts/props/45.wav" ,
	 "taunts/props/46.wav" ,
	 "taunts/props/47.wav" ,
	 "taunts/props/48.wav" ,
	 "taunts/props/49.wav" ,
	 "taunts/props/5.wav" ,
	 "taunts/props/50.wav" ,
	 "taunts/props/6.wav" ,
	 "taunts/props/7.wav" ,
	 "taunts/props/8.wav" ,
	 "taunts/props/9.wav" ,
	 "taunts/threat_neutralized.wav" , 
	 "taunts/what_is_wrong_with_you.wav",	 
	 "taunts/woohoo.wav" ,
	 "taunts/you_dont_know_the_power.wav" ,
	 "taunts/you_underestimate_the_power.wav",
	--
	--Bio's Taunts--
	"taunts/props/bio/fart.wav" ,
	"taunts/props/bio/biolaugh1Amp.mp3",
	"taunts/props/bio/biolaugh2Amp.mp3",
	"taunts/props/bio/biolaugh3Amp.mp3",
	"taunts/props/bio/biolaugh4Amp.mp3",
	"sound/taunts/props/bio/Another Day.mp3",
	"sound/taunts/props/bio/Duckman - What the hell are you starin_ at__.mp3",
	"sound/taunts/props/bio/get the fuck outta here you stupid idiot.mp3",
	"sound/taunts/props/bio/The Knights Who Say Ni.mp3",
	"sound/taunts/props/bio/Travelling the Distance.mp3",
	"sound/taunts/props/bio/Wackity Schmackity Doo!.mp3",
	"sound/taunts/props/bio/Angry Grandpa - Fuck bread louder.wav",
	"sound/taunts/props/bio/King of the Hill Loser louder.wav",
	"sound/taunts/props/bio/Nyeh Squidward louder.wav",

	--
	--Nexus's Taunts--
	"taunts/props/Nexus/HahahaFeelGood.wav", 
	"taunts/props/Nexus/swallow my baby batter.wav"
}


// Seconds a player has to wait before they can taunt again (Default: 5)
TAUNT_DELAY = 3


// Rounds played on a map (Default: 10)
ROUNDS_PER_MAP = 10


// Time (in seconds) for each round (Default: 300)
ROUND_TIME = 300


// Determains if players should be team swapped every round [0 = No, 1 = Yes] (Default: 1)
SWAP_TEAMS_EVERY_ROUND = 1


// If you win, one of these will be played
// Set blank to disable
VICTORY_SOUNDS = {
	"vo/announcer_success.wav",
	"vo/announcer_victory.wav",
	"vo/announcer_we_succeeded.wav"
}