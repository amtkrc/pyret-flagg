use context essentials2021
include image

flagg-red = rectangle(220, 160, "solid", "crimson")
horizontalline-white = rectangle(220, 40, "solid", "white")
verticalline-white = rectangle(40, 160, "solid", "white")
      
horizontalline-blue = rectangle(220, 20, "solid", "darkblue")
verticalline-blue = rectangle(20, 160, "solid", "darkblue")
          
          
          
flagg-line-background = overlay-align("middle", "center", horizontalline-white, flagg-red)
white-lines = overlay-xy(verticalline-white, -60, 0, flagg-line-background)
          
blueline-in-flagg = overlay-align("middle", "center",horizontalline-blue, white-lines)
overlay-xy(verticalline-blue, -70, 0, blueline-in-flagg)