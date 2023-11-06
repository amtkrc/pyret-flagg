use context essentials2021
include image
include color


fun findflagg(land):
  if land == "norge":
    block:
      
      #Norges Flagg
      flagg-red = rectangle(220, 160, "solid", "crimson")
horizontalline-white = rectangle(220, 40, "solid", "white")
verticalline-white = rectangle(40, 160, "solid", "white")
horizontalline-blue = rectangle(220, 20, "solid", "darkblue")
verticalline-blue = rectangle(20, 160, "solid", "darkblue")
          
          
flagg-line-background = overlay-align("middle", "center", horizontalline-white, flagg-red)
white-lines = overlay-xy(verticalline-white, -60, 0, flagg-line-background)
          
blueline-in-flagg = overlay-align("middle", "center",horizontalline-blue, white-lines)
overlay-xy(verticalline-blue, -70, 0, blueline-in-flagg)
end

    
 else if land == "finland":
    block:

    #Finlands Flagg
finlandFlagg-blue = rectangle(180, 110, "solid", "white")
finlandFlagg-horizantal = rectangle(180, 30, "solid", "dark-blue")
finlandFlagg-vertical = rectangle(30, 110, "solid", "dark-blue")

finlandFlagg-white = (overlay-align("middle","center", finlandFlagg-horizantal, finlandFlagg-blue))
overlay-xy(finlandFlagg-vertical, -50, -0, finlandFlagg-white)
end
  
    
    
  else if land == "sverige":
    block:

      #Sveriges Flagg
SweedenFlagg-blue = rectangle(160, 100, "solid", "dark-blue")
SweedenFlagg-horizantal = rectangle(160, 20, "solid", "yellow")
SweedenFlagg-vertical = rectangle(20, 100, "solid", "yellow")

SweedenFlagg-yellow = (overlay-align("middle","center", SweedenFlagg-horizantal, SweedenFlagg-blue))
overlay-xy(SweedenFlagg-vertical, -50, -0, SweedenFlagg-yellow)
 end
    
    
  else if land == "island":
    block:

#Islands Flagg
islandFlagg-blue = rectangle(250, 180, "solid", "darkBlue")
islandHorizontalLine-white = rectangle(250, 40, "solid", "white")
islandVerticalLine-white = rectangle(40, 180, "solid", "white")
islandHorizontalLine-red = rectangle(250, 20, "solid", "crimson")
islandVerticalLine-red = rectangle(20, 180, "solid", "crimson")
          
          
          
islandFlagg-line-background = overlay-align("middle", "center", islandHorizontalLine-white, islandFlagg-blue)
islandWhite-lines = overlay-xy(islandVerticalLine-white, -70, 0, islandFlagg-line-background)

islandRedLine-in-flagg = overlay-align("middle", "center",islandHorizontalLine-red, islandWhite-lines)
overlay-xy(islandVerticalLine-red, -80, 0, islandRedLine-in-flagg)
 end
    
    
 
  else if land == "danmark":
    block:
      
#Danmarks Flagg
DenmarkFlagg-red = rectangle(370, 280, "solid", "crimson")
DenmarkFlagg-horizantal = rectangle(370, 40, "solid", "white")
DenmarkFlagg-vertical = rectangle(40, 280, "solid", "white")

DenmarkFlagg-white = (overlay-align("middle","center", DenmarkFlagg-horizantal, DenmarkFlagg-red))
overlay-xy(DenmarkFlagg-vertical, -120, -0, DenmarkFlagg-white)
end
     
  else:
    "Fant ikke flagg"
end
end


#du kan bruke denne kode for å tegne et flagg som du vil landet
findflagg("norge")