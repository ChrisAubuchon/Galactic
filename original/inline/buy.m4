l_inline_buy:
                ld      (tmpObject), a
                ld      a, location_earth
                ld      (tmpPlanet), a
                call    isItemInRoom
                ld      a, b
                cp      0
                jp      nz, loc_389E
                printMessage(s_unableToDoNow)
                jp      l_mainLoop
; ---------------------------------------------------------------------------

loc_389E:
                dec     hl
                dec     hl				; hl = & item.floorMessageIndex
                push    hl
                ld      a, (tmpObject)
                sub     p_buyable_low
                ld      e, a
                ld      d, 0
                ld      hl, g_boughtItemList
                add     hl, de
                ld      a, (hl)
                cp      0
                jp      z, loc_38BE
                printMessage(s_alreadyBought)
                pop     hl
                jp      l_mainLoop
; ---------------------------------------------------------------------------

loc_38BE:
                ld      (hl), 1				; Mark item as bought
		printMessage(s_okay)

		; The purchased floor message indices are one higher than
		; to forSale indices
                pop     hl
                ld      a, (hl)
                add     a, 1
                ld      (hl), a
		jp	l_mainLoop
