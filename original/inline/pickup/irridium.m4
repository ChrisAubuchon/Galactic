l_pickUpItem_irridium:
                call    isItemInRoom
                ld      a, b
                cp      0
                jp      z, l_pickup_beyondYourPower
                ld      (hl), location_none
		printMessage(s_irridiumIllusion)
                jp      l_mainLoop

