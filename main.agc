
// Project: game-unknown-valley 
// Created: 2020-08-22

// show all errors
// SetErrorMode(2)
// set window properties
SetWindowTitle( "game-unknown-valley" )
SetWindowSize( 1024, 768, 1 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

// Adding PersonagemX
#include "SetCharacterX.agc"

// Adding MovimentacaoPersonagemX
#include "SetMovimentationCharacterX.agc"


gosub SetCharacterX



do
	gosub SetMovimentationCharacterX


    Print( ScreenFPS() )
    Sync()
loop
