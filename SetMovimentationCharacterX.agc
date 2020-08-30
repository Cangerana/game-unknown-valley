SetMovimentationCharacterX:
	// Move the charapter to Up
	if GetRawKeyState(87) or GetRawKeyState(38)
		SetSpritePosition(characterX , (GetSpriteX(characterX)), (GetSpriteY(characterX) - 12))
	endif
	// Move the charapter to Down
	if GetRawKeyState(83) or GetRawKeyState(40)
		SetSpritePosition(characterX , (GetSpriteX(characterX)), (GetSpriteY(characterX) + 12))
	endif
	// Move the charapter to Left
	if GetRawKeyState(65) or GetRawKeyState(37)
		SetSpritePosition(characterX , (GetSpriteX(characterX) - 12), (GetSpriteY(characterX)))
	endif
	// Move the charapter to Right
	if GetRawKeyState(68) or GetRawKeyState(39)
		SetSpritePosition(characterX , (GetSpriteX(characterX) + 12), (GetSpriteY(characterX)))
	endif
return
