SetMovimentationCharacterX:
	// Move the charapter to Left
	if GetRawKeyState(65) or GetRawKeyState(37)
		SetSpritePosition(characterX , (GetSpriteX(characterX) - 12), (GetSpriteY(characterX)))
	endif

	// Move the charapter to Right
	if GetRawKeyState(68) or GetRawKeyState(39)
		SetSpritePosition(characterX , (GetSpriteX(characterX) + 12), (GetSpriteY(characterX)))
	endif

// Jump

	// when press space the jump starts
	// if press again the double jump starts
	if GetRawKeyPressed(32) and h = 0
		h = 1
	elseif GetRawKeyPressed(32) and doubleJump = "false"
		h = 1
		sleep(20)
		doubleJump = "true"
	endif

	// Moves the character up
	if h > 0 and h <= 12
		SetSpritePosition(characterX , (GetSpriteX(characterX)), (GetSpriteY(characterX) - 9))
		h = h + 1
	endif

	// Moves the character down until falls to the ground
	if h > 12
		SetSpritePosition(characterX , (GetSpriteX(characterX)), (GetSpriteY(characterX) + 11))

		// when on the ground stop
		if GetSpriteY(characterX) > 700 and h > 12
			SetSpritePosition(characterX , (GetSpriteX(characterX)), (712))
			
			h = 0
			doubleJump = "false"
		endif
	endif

return
