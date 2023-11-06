use context essentials2021
include shared-gdrive(
  "dcic-2021", 
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

include gdrive-sheets  #Den inneholder en funksjon som laster Google Tables med funksjonen.
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"

kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer 

end

print(kWh-wealthy-consumer-data)

Energy-per-unit-of-fuel = 10     #10 kWh
Distance-travelled-per-day = 30  #30 km
Distance-per-unit-of-fuel = 4    #4 kWh


fun bil-i-energi(): #Det vil beregne verdiene ovenfor i henhold til formelen nedenfor
 block:
    energy-per-day = ((Distance-travelled-per-day / Distance-per-unit-of-fuel) * Energy-per-unit-of-fuel)
   energy-per-day
 end
end

#string to number
fun energi-to-number(str :: String) -> Number: #Funksjonen kalt energi-to-number konverterer energiverdier til numeriske verdier. Hvis en tom verdi ("") angis, brukes funksjonen "bil-i-energi". Ellers konverterer den den gitte verdien.
  block:
  cases(Option) string-to-number(str):
    | some(a) => a
      | none => bil-i-energi() #Det gir formulene ovenfor. 
  end
       end
  
where:
  energi-to-number("") is bil-i-energi()
energi-to-number("48") is 48
end

nummerigjen = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)

print(nummerigjen)

total = sum(nummerigjen, "energi") #En variabel kalt "total" beregner summen av "energi"-kolonnen i "nummerigjen"-tabellen.

total-i-table = table:komponent :: String, energi :: Number
  row:"total", total
end

row = get-row(total-i-table, 0)
add-row(nummerigjen, row)


fun gjennomsnittAvEnergi(): #En funksjon kalt gjennomsnittAvEnergi beregner gjennomsnittet av energiforbruksverdiene og skriver ut resultatet.
  
  block:
    gjennomsnit = total + bil-i-energi()
    print("Gjennomsnittet av forbrukt i kWh er")
   gjennomsnit
  end
end

gjennomsnittAvEnergi()


bar-chart(nummerigjen, "komponent", "energi") #Den viser verdiene i tabellen grafisk.
