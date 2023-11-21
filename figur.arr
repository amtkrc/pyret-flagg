use context essentials2021




fly = above-align("middle", flip-horizontal(rotate(180,triangle-aas(130, 40, 40, "solid", "steel-blue"))), 
  ellipse(400, 40, "solid", "steel-blue"))

wing = above-align("middle", fly, triangle-aas(130, 40, 40, "solid", "steel-blue"))
wing2 = underlay-xy(wing, 0, 140, triangle-aas(120, 30, 40, "solid", "steel-blue"))
wing3 = underlay-xy(wing2, 0, 95, flip-horizontal(rotate(180,triangle-aas(120, 30, 40, "solid", "steel-blue"))))
wing4 = underlay-xy(wing3, -8, 121, rotate(270, triangle-sss(60, 60, 24, "solid", "steel-blue")))







motor = overlay-xy(wing4, 182,35, rectangle(30, 15, "solid", "steel-blue"))

motor2 = overlay-xy(motor, 220,70, rectangle(30, 15, "solid", "steel-blue"))

motor3 = overlay-xy(motor2, 220,182, rectangle(30, 15, "solid", "steel-blue"))

rotate(20, overlay-xy(motor3, 182,218, rectangle(30, 15, "solid", "steel-blue")))

