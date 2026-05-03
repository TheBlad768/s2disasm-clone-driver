; ---------------------------------------------------------------
; DAC Samples Files
; ---------------------------------------------------------------

;			| Filename	| Folder
		incdac	SegaPCM, "sound/DAC/SegaPCM.pcm"

    if SMPS_S1DACSamples||SMPS_S2DACSamples
		incdac	Kick, "sound/DAC/Sonic 1 & 2/Kick.pcm"
		incdac	Snare, "sound/DAC/Sonic 1 & 2/Snare.pcm"
		incdac	Timpani, "sound/DAC/Sonic 1 & 2/Timpani.pcm"
    endif

    if SMPS_S2DACSamples
		incdac	Clap, "sound/DAC/Sonic 1 & 2/Clap.pcm"
		incdac	Scratch, "sound/DAC/Sonic 1 & 2/Scratch.pcm"
		incdac	Tom, "sound/DAC/Sonic 1 & 2/Tom.pcm"
		incdac	Bongo, "sound/DAC/Sonic 1 & 2/Bongo.pcm"
    endif

    if SMPS_S3DACSamples||SMPS_SKDACSamples||SMPS_S3DDACSamples
		incdac	SnareS3, "sound/DAC/Sonic 3 & K & 3D/SnareS3.pcm"
		incdac	TomS3, "sound/DAC/Sonic 3 & K & 3D/TomS3.pcm"
		incdac	KickS3, "sound/DAC/Sonic 3 & K & 3D/KickS3.pcm"
		incdac	MuffledSnare, "sound/DAC/Sonic 3 & K & 3D/MuffledSnare.pcm"
		incdac	CrashCymbal, "sound/DAC/Sonic 3 & K & 3D/CrashCymbal.pcm"
		incdac	RideCymbal, "sound/DAC/Sonic 3 & K & 3D/RideCymbal.pcm"
		incdac	MetalHit, "sound/DAC/Sonic 3 & K & 3D/MetalHit.pcm"
		incdac	MetalHit2, "sound/DAC/Sonic 3 & K & 3D/MetalHit2.pcm"
		incdac	MetalHit3, "sound/DAC/Sonic 3 & K & 3D/MetalHit3.pcm"
		incdac	ClapS3, "sound/DAC/Sonic 3 & K & 3D/ClapS3.pcm"
		incdac	ElectricTom, "sound/DAC/Sonic 3 & K & 3D/ElectricTom.pcm"
		incdac	SnareS32, "sound/DAC/Sonic 3 & K & 3D/SnareS32.pcm"
		incdac	TimpaniS3, "sound/DAC/Sonic 3 & K & 3D/TimpaniS3.pcm"
		incdac	SnareS33, "sound/DAC/Sonic 3 & K & 3D/SnareS33.pcm"
		incdac	Click, "sound/DAC/Sonic 3 & K & 3D/Click.pcm"
		incdac	PowerKick, "sound/DAC/Sonic 3 & K & 3D/PowerKick.pcm"
		incdac	QuickGlassCrash, "sound/DAC/Sonic 3 & K & 3D/QuickGlassCrash.pcm"
    endif

    if SMPS_S3DACSamples||SMPS_SKDACSamples
		incdac	GlassCrashSnare, "sound/DAC/Sonic 3 & K & 3D/GlassCrashSnare.pcm"
		incdac	GlassCrash, "sound/DAC/Sonic 3 & K & 3D/GlassCrash.pcm"
		incdac	GlassCrashKick, "sound/DAC/Sonic 3 & K & 3D/GlassCrashKick.pcm"
		incdac	QuietGlassCrash, "sound/DAC/Sonic 3 & K & 3D/QuietGlassCrash.pcm"
		incdac	SnareKick, "sound/DAC/Sonic 3 & K & 3D/SnareKick.pcm"
		incdac	KickBass, "sound/DAC/Sonic 3 & K & 3D/KickBass.pcm"
		incdac	ComeOn, "sound/DAC/Sonic 3 & K & 3D/ComeOn.pcm"
		incdac	DanceSnare, "sound/DAC/Sonic 3 & K & 3D/DanceSnare.pcm"
		incdac	LooseKick, "sound/DAC/Sonic 3 & K & 3D/LooseKick.pcm"
		incdac	LooseKick2, "sound/DAC/Sonic 3 & K & 3D/LooseKick2.pcm"
		incdac	Woo, "sound/DAC/Sonic 3 & K & 3D/Woo.pcm"
		incdac	Go, "sound/DAC/Sonic 3 & K & 3D/Go.pcm"
		incdac	SnareGo, "sound/DAC/Sonic 3 & K & 3D/SnareGo.pcm"
		incdac	PowerTom, "sound/DAC/Sonic 3 & K & 3D/PowerTom.pcm"
		incdac	WoodBlock, "sound/DAC/Sonic 3 & K & 3D/WoodBlock.pcm"
		incdac	HitDrum, "sound/DAC/Sonic 3 & K & 3D/HitDrum.pcm"
		incdac	MetalCrashHit, "sound/DAC/Sonic 3 & K & 3D/MetalCrashHit.pcm"
		incdac	EchoedClapHit, "sound/DAC/Sonic 3 & K & 3D/EchoedClapHit.pcm"
		incdac	HipHopHitKick, "sound/DAC/Sonic 3 & K & 3D/HipHopHitKick.pcm"
		incdac	HipHopPowerKick, "sound/DAC/Sonic 3 & K & 3D/HipHopPowerKick.pcm"
		incdac	BassHey, "sound/DAC/Sonic 3 & K & 3D/BassHey.pcm"
		incdac	DanceStyleKick, "sound/DAC/Sonic 3 & K & 3D/DanceStyleKick.pcm"
		incdac	HipHopHitKick2, "sound/DAC/Sonic 3 & K & 3D/HipHopHitKick2.pcm"
		incdac	RevFadingWind, "sound/DAC/Sonic 3 & K & 3D/RevFadingWind.pcm"
		incdac	ScratchS3, "sound/DAC/Sonic 3 & K & 3D/ScratchS3.pcm"
		incdac	LooseSnareNoise, "sound/DAC/Sonic 3 & K & 3D/LooseSnareNoise.pcm"
		incdac	PowerKick2, "sound/DAC/Sonic 3 & K & 3D/PowerKick2.pcm"
		incdac	CrashNoiseWoo, "sound/DAC/Sonic 3 & K & 3D/CrashNoiseWoo.pcm"
		incdac	QuickHit, "sound/DAC/Sonic 3 & K & 3D/QuickHit.pcm"
		incdac	KickHey, "sound/DAC/Sonic 3 & K & 3D/KickHey.pcm"
    endif

    if SMPS_S3DDACSamples
		incdac	MetalCrashS3D, "sound/DAC/Sonic 3 & K & 3D/MetalCrashS3D.pcm"
		incdac	IntroKickS3D, "sound/DAC/Sonic 3 & K & 3D/IntroKickS3D.pcm"
    endif

    if SMPS_S3DACSamples
		incdac	EchoedClapHitS3, "sound/DAC/Sonic 3 & K & 3D/EchoedClapHitS3.pcm"
    endif

    if SMPS_SCDACSamples
		incdac	Beat, "sound/DAC/Sonic Crackers/Beat.pcm"
		incdac	SnareSC, "sound/DAC/Sonic Crackers/SnareSC.pcm"
		incdac	TimTom, "sound/DAC/Sonic Crackers/TimTom.pcm"
		incdac	LetsGo, "sound/DAC/Sonic Crackers/LetsGo.pcm"
		incdac	Hey, "sound/DAC/Sonic Crackers/Hey.pcm"
    endif
	even
