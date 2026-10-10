/* BANTER FILE VERSION 1.6 with French translation included */

//BANTER FILE, FRIENDSHIP AND LOVE TALKS

BEGIN BSHEENA
//////////////////////////////////////////////////////////////////////////////////
//Talk2: Racism towards half breeds
IF
~Global("SheenaTalk","LOCALS",2)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaTalkTime","GLOBAL")~
THEN BEGIN SheenaT0
 SAY @2000 
 IF ~Race(Player1,HALFORC)~ THEN REPLY  @2001 GOTO SheenaT1
 IF ~Race(Player1,HALF_ELF)~ THEN REPLY  @2002 GOTO SheenaT2
 IF ~~ THEN REPLY  @2003 GOTO SheenaT3
 IF ~~ THEN REPLY  @2004 GOTO SheenaT4
 IF ~~ THEN REPLY  @2005 GOTO SheenaT5
 END

//Orcs
IF ~~ THEN BEGIN SheenaT1
 SAY @2006 = @2007 
 IF ~Race(Player1,HALFORC)~ THEN REPLY  @2008 GOTO SheenaT1a
 IF ~Race(Player1,HALFORC) GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) !InParty("Imoen2")~ THEN REPLY  @2009 GOTO SheenaT1b
END

IF ~~ THEN BEGIN SheenaT1a
 SAY @2010 
 IF ~Race(Player1,HALFORC)~ THEN REPLY  @2011 GOTO SheenaT1c
 IF ~Race(Player1,HALFORC)~ THEN REPLY  @2012 GOTO SheenaT1c
END

IF ~~ THEN BEGIN SheenaT1b
 SAY @2013 
IF ~Race(Player1,HALFORC)~ THEN REPLY  @2014 EXIT
IF ~Race(Player1,HALFORC)~ THEN REPLY  @2012 GOTO SheenaT1c
END

IF ~~ THEN BEGIN SheenaT1c
 SAY @2015 
 IF ~Race(Player1,HALFORC)~ THEN REPLY  @2016 EXIT
 IF ~~ THEN REPLY  @2017 EXIT
END


//Half elf
IF ~~ THEN BEGIN SheenaT2
 SAY @2018 
 IF ~Race(Player1,HALF_ELF)~ THEN REPLY  @2019 GOTO SheenaT2a
 IF ~Race(Player1,HALF_ELF)~ THEN REPLY  @2020 GOTO SheenaT2b
 IF ~~ THEN REPLY  @2021 GOTO SheenaT2c
 END

IF ~~ THEN BEGIN SheenaT2a
 SAY @2010 
 IF ~Race(Player1,HALF_ELF)~ THEN REPLY  @2022 GOTO SheenaT1c
 IF ~Race(Player1,HALF_ELF)~ THEN REPLY  @2012 GOTO SheenaT2d
END

IF ~~ THEN BEGIN SheenaT2b
 SAY @2023 
 IF ~Race(Player1,HALF_ELF)~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaT2c
 SAY @2024 
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaT2d
 SAY @2015 
 IF ~Race(Player1,HALF_ELF)~ THEN REPLY  @2016 EXIT
 IF ~~ THEN REPLY  @2017 EXIT
END


//Origin will not reveal itself on this day
IF ~~ THEN BEGIN SheenaT3
 SAY @2025 
 IF ~~ THEN REPLY  @2026 EXIT
 IF ~~ THEN REPLY  @2027 GOTO SheenaT5
 END

//T4 A POWERS 
IF ~~ THEN BEGIN SheenaT4
 SAY @2028 
 IF ~~ THEN REPLY  @2029 GOTO SheenaT3
 IF ~~ THEN REPLY  @2030 GOTO SheenaT4a
END

IF ~~ THEN BEGIN SheenaT4a
 SAY @2031 
 IF ~~ THEN REPLY  @2032 GOTO SheenaT4b
 IF ~~ THEN REPLY  @2033 GOTO SheenaT4c
 IF ~~ THEN REPLY  @2034 GOTO SheenaT4c
 IF ~~ THEN REPLY  @2035 GOTO SheenaT4c

END

IF ~~ THEN BEGIN SheenaT4b
 SAY @2036 
 IF ~~ THEN REPLY  @2029 GOTO SheenaT3
 IF ~~ THEN REPLY  @2033 GOTO SheenaT4c
 IF ~~ THEN REPLY  @2034 GOTO SheenaT4c
 IF ~~ THEN REPLY  @2035 GOTO SheenaT4c

END

IF ~~ THEN BEGIN SheenaT4c
 SAY @2037 
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END


IF ~~ THEN BEGIN SheenaT5
 SAY @2038 
 IF ~~ THEN REPLY  @2039 GOTO SheenaT2b
 IF ~~ THEN REPLY  @2040 GOTO SheenaT2c
 END
//////////////////////////////////////////////////////////////////////////////////
//Talk4: Sheenas stepfather and the holy avenger history
IF
~Global("SheenaTalk","LOCALS",4)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaTalkTime","GLOBAL")~
THEN BEGIN SheenaT20
 SAY @2041 
 IF ~~ THEN REPLY  @2042 GOTO SheenaT21
 IF ~~ THEN REPLY  @2043 GOTO SheenaT21
 IF ~~ THEN REPLY  @2044 GOTO SheenaT21
 IF ~Class(Player1,PALADIN)~ THEN REPLY  @2045 GOTO SheenaT21
END

IF ~~ THEN BEGIN SheenaT21
 SAY @2046 = @2047 
 IF ~~ THEN REPLY  @2048 GOTO SheenaT22
 IF ~~ THEN REPLY  @2049 GOTO SheenaT23
 IF ~~ THEN REPLY  @2050 GOTO SheenaT24
 IF ~~ THEN REPLY  @2051 GOTO SheenaT26
 IF ~~ THEN REPLY  @2052 GOTO SheenaT25
 END

IF ~~ THEN BEGIN SheenaT22
 SAY @2053 
 IF ~~ THEN REPLY  @2054 GOTO SheenaT23
 IF ~~ THEN REPLY  @2055 GOTO SheenaT24
 IF ~~ THEN REPLY  @2050 GOTO SheenaT24
 IF ~~ THEN REPLY  @2051 GOTO SheenaT26
 END

IF ~~ THEN BEGIN SheenaT23
 SAY @2056 = @2057 
  IF ~~ THEN REPLY  @2051 GOTO SheenaT26
  IF ~~ THEN REPLY  @2048 GOTO SheenaT22
 END

IF ~~ THEN BEGIN SheenaT24
 SAY @2058 = @2059 
 IF ~~ THEN REPLY  @2060 GOTO SheenaT28
 IF ~~ THEN REPLY  @2061 GOTO SheenaT23
 IF ~~ THEN REPLY  @2062 GOTO SheenaT22
 IF ~~ THEN REPLY  @2063 GOTO SheenaT27
 IF ~GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)~ THEN REPLY  @2064 GOTO SheenaT28
 END

IF ~~ THEN BEGIN SheenaT25
 SAY @2065 
IF ~~ THEN REPLY  @2061 GOTO SheenaT23

END

IF ~~ THEN BEGIN SheenaT26
 SAY @2066 
 IF ~~ THEN REPLY  @2061 GOTO SheenaT23
 IF ~~ THEN REPLY  @2048 GOTO SheenaT22
 IF ~~ THEN REPLY  @2067 GOTO SheenaT29
END

IF ~~ THEN BEGIN SheenaT27
 SAY @2068 
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaT28
 SAY @2069 
IF ~~ THEN REPLY  @2070 GOTO SheenaT23
IF ~~ THEN REPLY  @2071 GOTO SheenaT29
END

IF ~~ THEN BEGIN SheenaT29
 SAY @2072 
 IF ~~ THEN EXIT
END

//////////////////////////////////////////////////////////////////////////////////
//Talk6: Slayer talk
IF
~Global("SheenaTalk","LOCALS",6)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaTalkTime","GLOBAL")~
THEN BEGIN SheenaT30
 SAY @2073 
 IF ~~ THEN REPLY  @2074 GOTO SheenaT31
 IF ~~ THEN REPLY  @2075 GOTO SheenaT32
 IF ~~ THEN REPLY  @2076 GOTO SheenaT31
END

IF ~~ THEN BEGIN SheenaT31
 SAY @2077 
 IF ~~ THEN REPLY  @2078 GOTO SheenaT33
 IF ~~ THEN REPLY  @2079 GOTO SheenaT34
 IF ~~ THEN REPLY  @2080 GOTO SheenaT35
END

IF ~~ THEN BEGIN SheenaT32
 SAY @2081 
 IF ~~ THEN DO ~SetGlobal("SheenaMatch","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN SheenaT33
 SAY @2082 
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaT34
 SAY @2083 
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaT35
 SAY @2084 
 IF ~~ THEN EXIT
END
//////////////////////////////////////////////////////////////////////////////////
//Talk8: Sheena talks about how she despises the half dragon. A chance to either 
//see the half dragon more often or extremely rarely during the game.
//HAS TO HAPPEN BEFORE THE SLAYER OR NOT AT ALL
IF
~Global("SheenaTalk","LOCALS",8)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaTalkTime","GLOBAL")~
THEN BEGIN SheenaT40
 SAY @2085 
 IF ~~ THEN REPLY  @2086 GOTO SheenaT41
 IF ~~ THEN REPLY  @2087 GOTO SheenaT42
 IF ~~ THEN REPLY  @2088 GOTO SheenaT43
 IF ~Gender(Player1,MALE)~ THEN REPLY  @2089 GOTO SheenaT44
END

IF ~~ THEN BEGIN SheenaT41
 SAY @2090
 IF ~~ THEN REPLY  @2091 GOTO SheenaT45
 IF ~~ THEN REPLY  @2092 GOTO SheenaT42
 IF ~~ THEN REPLY  @2093 GOTO SheenaT43
 IF ~Gender(Player1,MALE)~ THEN REPLY  @2094 GOTO SheenaT44
END

//BRANCHING ON INNER BEAUTY
IF ~~ THEN BEGIN SheenaT42
 SAY @2095
IF ~~ THEN REPLY  @2096 GOTO SheenaT46
 IF ~~ THEN REPLY  @2097 GOTO SheenaT45
 IF ~~ THEN REPLY  @2098 GOTO SheenaT43 
IF ~Gender(Player1,MALE)~ THEN REPLY  @2094 GOTO SheenaT44
END

//SCORN LEADS TO DECEPTION
IF ~~ THEN BEGIN SheenaT43
 SAY @2099
 IF ~~ THEN DO ~SetGlobal("SheenaMatch","GLOBAL",3)~ EXIT
 END

//BRANCHING ON OUTER BEAUTY
IF ~~ THEN BEGIN SheenaT44
 SAY @2100
 IF ~~ THEN REPLY  @2101 GOTO SheenaT42
 IF ~~ THEN REPLY  @2102 GOTO SheenaT43
 IF ~~ THEN REPLY @2103 GOTO SheenaT47
 END

//PCs stare is different
IF ~~ THEN BEGIN SheenaT45
 SAY @2104
IF ~~ THEN REPLY  @2105 GOTO SheenaT42
IF ~Gender(Player1,MALE)~ THEN REPLY  @2106 GOTO SheenaT44
END

//PC inner beauty
IF ~~ THEN BEGIN SheenaT46
 SAY @2107
 IF ~~ THEN EXIT
END

//PC likes sight of dragons
IF ~~ THEN BEGIN SheenaT47
 SAY @2108
 IF ~~ THEN EXIT
END
//////////////////////////////////////////////////////////////////////////////////
//Talk10: the smithy part II - short tale
IF
~Global("SheenaTalk","LOCALS",10)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaTalkTime","GLOBAL")~
THEN BEGIN SheenaT50
 SAY @2109 
 IF ~~ THEN REPLY  @2110 GOTO SheenaT51
 IF ~Class(Player1,FIGHTER_ALL)~ THEN REPLY  @2111 GOTO SheenaT52
 IF ~Class(Player1,MAGE_ALL)~ THEN REPLY  @2111 GOTO SheenaT53
IF ~Class(Player1,DRUID_ALL)~ THEN REPLY  @2111 GOTO SheenaT54
IF ~Class(Player1,THIEF_ALL)~ THEN REPLY  @2111 GOTO SheenaT55
IF ~Class(Player1,CLERIC_ALL)~ THEN REPLY  @2111 GOTO SheenaT56
END

IF ~~ THEN BEGIN SheenaT51
 SAY @2112 = @2113 = @2114 = @2115 = @2116
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaT52
 SAY @2117
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaT53
 SAY @2118
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaT54
 SAY @2119
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaT55
 SAY @2120
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaT56
 SAY @2121
 IF ~~ THEN EXIT
END

//Talk12: Sheena's first lengthy tale
IF
~Global("SheenaTalk","LOCALS",12)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaTalkTime","GLOBAL")~
THEN BEGIN SheenaT60
 SAY @2122 
 IF ~~ THEN REPLY  @2123 GOTO SheenaT61
 IF ~~ THEN REPLY  @2124 GOTO SheenaT61
 IF ~~ THEN REPLY  @2125 GOTO SheenaT62
END

IF ~~ THEN BEGIN SheenaT61
 SAY @2126
 IF ~~ THEN REPLY  @2127 GOTO SheenaT63
 IF ~~ THEN REPLY  @2128 GOTO SheenaT64
 IF ~~ THEN REPLY  @2129 EXIT
END

IF ~~ THEN BEGIN SheenaT62
 SAY @2130
 IF ~~ THEN REPLY  @2131 GOTO SheenaT63
 IF ~~ THEN REPLY  @2128 GOTO SheenaT64
 IF ~~ THEN REPLY  @2129 EXIT
END

IF ~~ THEN BEGIN SheenaT63
 SAY @2132
 IF ~~ THEN REPLY  @2133 GOTO SheenaT64
 IF ~~ THEN REPLY  @2134 EXIT
END

//Long and will require some crosschecking
IF ~~ THEN BEGIN SheenaT64
 SAY @2135 = @2136 = @2137 = @2138 = @2139 = @2140 = @2141 = @2142 = @2143 = @2144 = @2145 = @2146 = @2147 = @2148  = @2149 = @2150 = @2151 = @2152 
 IF ~~ THEN REPLY  @2153 GOTO SheenaT65
 IF ~~ THEN REPLY  @2154 GOTO SheenaT65
END

IF ~~ THEN BEGIN SheenaT65
 SAY @2155  
 IF ~~ THEN EXIT
END

//Talk14: Sheena's next tale
IF
~Global("SheenaTalk","LOCALS",14)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaTalkTime","GLOBAL")~
THEN BEGIN SheenaT70
 SAY @2156 
 IF ~~ THEN REPLY  @2157 GOTO SheenaT71
 IF ~~ THEN REPLY  @2158 GOTO SheenaT72
IF ~Gender(Player1,MALE)~ THEN REPLY  @2159 GOTO SheenaT73
IF ~Gender(Player1,FEMALE)~ THEN REPLY  @2160 GOTO SheenaT73
END

IF ~~ THEN BEGIN SheenaT71
 SAY @2161  
 IF ~~ THEN GOTO SheenaT72
END

IF ~~ THEN BEGIN SheenaT72
 SAY @2162 = @2163  
 IF ~~ THEN REPLY  @2164 GOTO SheenaT75
 IF ~~ THEN REPLY  @2165 GOTO SheenaT74
END

IF ~~ THEN BEGIN SheenaT73
 SAY @2166  
 IF ~~ THEN DO ~SetGlobal("SheenaTalk","LOCALS",99)~ EXIT
END

IF ~~ THEN BEGIN SheenaT74
 SAY @2167
 IF ~~ THEN REPLY  @2168 GOTO SheenaT75
 IF ~~ THEN REPLY  @2169 GOTO SheenaT75
END

IF ~~ THEN BEGIN SheenaT75
 SAY @2170  
 IF ~~ THEN GOTO SheenaT76
END

IF ~~ THEN BEGIN SheenaT76
 SAY @2171 = @2172 
 IF ~~ THEN EXIT
END

//Talk:16 Cult of the Dragon and Vinamar (quest to follow in Chapter 6)
IF
~Global("SheenaTalk","LOCALS",16)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaTalkTime","GLOBAL")~
THEN BEGIN SheenaT80
 SAY @2173 
 IF ~~ THEN REPLY  @2174 GOTO SheenaT81
 IF ~~ THEN REPLY  @2175 GOTO SheenaT82
END

IF ~~ THEN BEGIN SheenaT81
 SAY @2176 
 IF ~~ THEN GOTO SheenaT83
END

IF ~~ THEN BEGIN SheenaT82
 SAY @2177 
 IF ~~ THEN GOTO SheenaT83
END


IF ~~ THEN BEGIN SheenaT83
 SAY @2178 = @2179 = @2180 = @2181 = @2182 
 IF ~~ THEN REPLY @2183 GOTO SheenaT84
 IF ~~ THEN REPLY @2184 GOTO SheenaT85
END

IF ~~ THEN BEGIN SheenaT84
 SAY @2185 = @2186 = @2187 
 IF ~~ THEN GOTO SheenaT86
END

IF ~~ THEN BEGIN SheenaT85
 SAY @2188 = @2189  = @2190 
 IF ~~ THEN GOTO SheenaT84
END

IF ~~ THEN BEGIN SheenaT86
 SAY @2191 = @2192 = @2193 
IF ~~ THEN REPLY @2194 GOTO SheenaT87
IF ~~ THEN REPLY @2195 GOTO SheenaT87
END

IF ~~ THEN BEGIN SheenaT87
 SAY @2196 = @2197 
 IF ~~ THEN REPLY @2198 GOTO SheenaT88
 IF ~~ THEN REPLY @2199 GOTO SheenaT89
END

IF ~~ THEN BEGIN SheenaT88
 SAY @2200 = @2201
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaT89
 SAY @2202 
 IF ~~ THEN EXIT
END

//Talk:18 - Talk about Baldur
IF
~Global("SheenaTalk","LOCALS",18)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaTalkTime","GLOBAL")~
THEN BEGIN SheenaT90
 SAY @2203 
 IF ~~ THEN REPLY  @2204 GOTO SheenaT91
 IF ~~ THEN REPLY  @2205 GOTO SheenaT92
END

IF ~~ THEN BEGIN SheenaT91
 SAY @2206 
 IF ~~ THEN REPLY  @2207 EXIT
 IF ~~ THEN REPLY  @2208 GOTO SheenaT93
IF ~~ THEN REPLY  @2209 GOTO SheenaT94
END

IF ~~ THEN BEGIN SheenaT92
 SAY @2210 
 IF ~~ THEN REPLY  @2211 EXIT
 IF ~~ THEN REPLY  @2212 GOTO SheenaT93
 IF ~~ THEN REPLY  @2209 GOTO SheenaT94
END

IF ~~ THEN BEGIN SheenaT93
 SAY @2213 
 IF ~~ THEN REPLY  @2211 EXIT
 IF ~~ THEN REPLY  @2214 GOTO SheenaT95
 IF ~~ THEN REPLY  @2215 GOTO SheenaT94
END

IF ~~ THEN BEGIN SheenaT94 //path to war
 SAY @2216 
 IF ~~ THEN REPLY  @2217 GOTO SheenaT94a
IF ~~ THEN REPLY  @2218 GOTO SheenaT94b
 END

IF ~~ THEN BEGIN SheenaT94a //path to war
 SAY @2219 
 IF ~~ THEN EXIT
 END

IF ~~ THEN BEGIN SheenaT94b //path to war
 SAY @2220 
 IF ~~ THEN EXIT
 END

IF ~~ THEN BEGIN SheenaT95
 SAY @2221 
 IF ~~ THEN REPLY  @2222 GOTO SheenaT96
 IF ~~ THEN REPLY  @2223 GOTO SheenaT97
 END

IF ~~ THEN BEGIN SheenaT96
 SAY @2224 
 IF ~~ THEN DO ~SetGlobal("SheenaMatch","GLOBAL",3)~ EXIT
 END

IF ~~ THEN BEGIN SheenaT97
 SAY @2225 
 IF ~~ THEN REPLY  @2226 EXIT
 IF ~~ THEN REPLY  @2227 GOTO SheenaT96
END

//Talk:20 - The gods and the story of Tiamat
IF
~Global("SheenaTalk","LOCALS",20)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaTalkTime","GLOBAL")~
THEN BEGIN SheenaT100
 SAY @2228 
 IF ~~ THEN REPLY  @2229 GOTO SheenaT101
 IF ~Class(Player1,MAGE_ALL)~ THEN REPLY  @2230 GOTO SheenaT102
 IF ~Race(Player1,GNOME)~ THEN REPLY  @2231 GOTO SheenaT103
 IF ~Race(Player1,DWARF)~ THEN REPLY  @2232 GOTO SheenaT104
 IF ~Class(Player1,PALADIN)~ THEN REPLY  @2233 GOTO SheenaT105
 IF ~Race(Player1,HUMAN)~ THEN REPLY  @2234 GOTO SheenaT106
 IF ~Class(Player1,THIEF_ALL)~ THEN REPLY  @2235 GOTO SheenaT107
 IF ~Class(Player1,CLERIC) Alignment(Player1,MASK_EVIL)~ THEN REPLY  @2236 GOTO SheenaT108
//IF ~Class(Player1,CLERIC) Alignment(Player1,MASK_GOOD)~ THEN REPLY  ~I worship Tempus.~ GOTO SheenaT109
IF ~Race(Player1,ELF)~ THEN REPLY  @2237 GOTO SheenaT109a
END

IF ~~ THEN BEGIN SheenaT101
 SAY @2238 
 IF ~~ THEN REPLY  @2239 GOTO SheenaT110
END

IF ~~ THEN BEGIN SheenaT102
 SAY @2240 
 IF ~~ THEN REPLY  @2241 GOTO SheenaT110
END
//Gond - Gnomish deity
IF ~~ THEN BEGIN SheenaT103
 SAY @2242 
 IF ~~ THEN REPLY  @2239 GOTO SheenaT110
END
//Dwarven deity
IF ~~ THEN BEGIN SheenaT104
 SAY @2243 
 IF ~~ THEN REPLY  @2239 GOTO SheenaT110
END

IF ~~ THEN BEGIN SheenaT105
 SAY @2244 
 IF ~~ THEN REPLY  @2245 GOTO SheenaT110
END
//Helm
IF ~~ THEN BEGIN SheenaT106
 SAY @2246 
 IF ~~ THEN REPLY  @2247 GOTO SheenaT110
END

//Mask
IF ~~ THEN BEGIN SheenaT107
 SAY @2248 
 IF ~~ THEN REPLY  @2249 GOTO SheenaT110
END
//Talos
IF ~~ THEN BEGIN SheenaT108
 SAY @2250 
 IF ~~ THEN REPLY  @2239 GOTO SheenaT110
END
//Tempus
IF ~~ THEN BEGIN SheenaT109
 SAY @2251 
 IF ~~ THEN REPLY  @2239 GOTO SheenaT110
END
//Selune
IF ~~ THEN BEGIN SheenaT109a
 SAY @2252 
 IF ~~ THEN REPLY  @2239 GOTO SheenaT110
END

IF ~~ THEN BEGIN SheenaT110
 SAY @2253 
 IF ~~ THEN REPLY  @2254 GOTO SheenaT111
IF ~~ THEN REPLY  @2255 EXIT
END

IF ~~ THEN BEGIN SheenaT111
 SAY @2256 = @2257 = @2258 = @2259 = @2260 = @2261 = @2262 = @2263 = @2264 = @2265 = @2266 = @2267
 IF ~~ THEN REPLY @2268 GOTO SheenaT112
 IF ~~ THEN REPLY @2269 GOTO SheenaT113
END

IF ~~ THEN BEGIN SheenaT112
 SAY @2270 = @2271
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaT113
 SAY @2272 
 IF ~~ THEN EXIT
END

//end of the friendship path
/////////////////////////////////////////////////////////////////////////
//ROMANCE 
/////////////////////////////////////////////////////////////////////////
//Love Talk 2 - First step
IF ~Global("SheenaLoveTalk","LOCALS",2)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaTalkTime","GLOBAL")~ THEN BEGIN SheenaLT1
 SAY @2273 
 IF ~~ THEN REPLY  @2274 GOTO SheenaLT2
 IF ~~ THEN REPLY  @2275 GOTO SheenaLT3
 IF ~~ THEN REPLY  @2276 GOTO SheenaLT4
 IF ~~ THEN REPLY  @2277 GOTO SheenaLT5
 IF ~~ THEN REPLY  @2278 GOTO SheenaLT5
END

//Acceptance path
IF ~~ THEN BEGIN SheenaLT2
 SAY @2279 = @2280 = @2281
 IF ~~ THEN REPLY  @2282 GOTO SheenaLT2a
 IF ~~ THEN REPLY  @2283 GOTO SheenaLT4d
 IF ~~ THEN REPLY  @2284 GOTO SheenaLT4c
IF ~~ THEN REPLY  @2285 GOTO SheenaLT2b
IF ~~ THEN REPLY  @2286 GOTO SheenaLT2c
END

IF ~~ THEN BEGIN SheenaLT5
 SAY @2287 = @2280 = @2288
 IF ~~ THEN REPLY  @2289 GOTO SheenaLT2a
 IF ~~ THEN REPLY  @2290 GOTO SheenaLT4d
 IF ~~ THEN REPLY  @2284 GOTO SheenaLT4c
IF ~~ THEN REPLY  @2291 GOTO SheenaLT2b
IF ~~ THEN REPLY  @2286 GOTO SheenaLT4c
END

IF ~~ THEN BEGIN SheenaLT2a
 SAY @2292 
 IF ~~ THEN REPLY  @2293 GOTO SheenaLT4d
 IF ~~ THEN REPLY  @2284 GOTO SheenaLT4c
IF ~~ THEN REPLY  @2294 GOTO SheenaLT2b
IF ~~ THEN REPLY  @2286 GOTO SheenaLT2c
END

//Feelings shared path
IF ~~ THEN BEGIN SheenaLT2b
 SAY @2295 = @2296 = @2297
 IF ~~ THEN REPLY  @2298 GOTO SheenaLT2c
 IF ~~ THEN REPLY  @2299 GOTO SheenaLT2d
 IF ~~ THEN REPLY  @2300 GOTO SheenaLT2f
END

IF ~~ THEN BEGIN SheenaLT2c
 SAY @2301 = @2302
 IF ~~ THEN REPLY  @2303 GOTO SheenaLT2d
 IF ~~ THEN REPLY  @2300 GOTO SheenaLT2f
END

IF ~~ THEN BEGIN SheenaLT2d
 SAY @2304
 IF ~~ THEN REPLY  @2305 DO ~SetGlobal("SheenaRomanceActive","GLOBAL",3)~ EXIT
 IF ~~ THEN REPLY  @2300 GOTO SheenaLT2f
END

IF ~~ THEN BEGIN SheenaLT2f
 SAY @2306 = @2307
 IF ~~ THEN REPLY  @2308 EXIT
 IF ~~ THEN REPLY  @2309 GOTO SheenaLT2g
END

IF ~~ THEN BEGIN SheenaLT2g
 SAY @2310
 IF ~~ THEN DO ~SetGlobal("SheenaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN SheenaLT3
 SAY @2311 
  IF ~~ THEN REPLY  @2312 GOTO SheenaLT4a
IF ~~ THEN REPLY  @2313 GOTO SheenaLT4d
 IF ~~ THEN REPLY  @2284 GOTO SheenaLT4c
IF ~~ THEN REPLY  @2314 GOTO SheenaLT2b
IF ~~ THEN REPLY  @2286 GOTO SheenaLT2c
END

//Rejection path
IF ~~ THEN BEGIN SheenaLT4
 SAY @2315 
 IF ~~ THEN REPLY @2316 GOTO SheenaLT4a
 IF ~~ THEN REPLY @2317 GOTO SheenaLT4b
END

IF ~~ THEN BEGIN SheenaLT4a
 SAY @2318 
 IF ~~ THEN DO ~SetGlobal("SheenaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN SheenaLT4b
 SAY @2319 = @2320 =  @2321 
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SheenaLT4c
 SAY @2322 
 IF ~~ THEN DO ~SetGlobal("SheenaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN SheenaLT4d
 SAY @2323 
 IF ~~ THEN DO ~SetGlobal("SheenaRomanceActive","GLOBAL",3)~ EXIT
END

//Love Talk : 4 - THE LOVE DECLARATION 
IF
~Global("SheenaLoveTalk","LOCALS",4)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaLoveTalkTime","GLOBAL")~
THEN BEGIN SheenaLT40
 SAY @2324 
  IF ~~ THEN REPLY @2325 GOTO SheenaLT41
  IF ~~ THEN REPLY @2326 GOTO SheenaLT41
  IF ~~ THEN REPLY @2327 GOTO SheenaLT41
END

IF ~~ THEN BEGIN SheenaLT41
 SAY @2328 
 IF ~~ THEN REPLY @2329 GOTO SheenaLT41a
 IF ~~ THEN REPLY @2330 GOTO SheenaLT43
 IF ~~ THEN REPLY @2331 GOTO SheenaLT42
END

IF ~~ THEN BEGIN SheenaLT41a
 SAY @2332 
IF ~~ THEN REPLY @2329 GOTO SheenaLT41b
 IF ~~ THEN REPLY @2333 GOTO SheenaLT43a
 IF ~~ THEN REPLY @2331 GOTO SheenaLT42
END

IF ~~ THEN BEGIN SheenaLT41b
 SAY @2334 
IF ~~ THEN REPLY @2329 GOTO SheenaLT41c
 IF ~~ THEN REPLY @2335 GOTO SheenaLT42
END

IF ~~ THEN BEGIN SheenaLT41c
 SAY @2336
 IF ~~ THEN REPLY @2337 GOTO SheenaLT44
IF ~~ THEN REPLY @2338 GOTO SheenaLT44a
IF ~~ THEN REPLY @2339 GOTO SheenaLT44b
 IF ~~ THEN REPLY @2340 GOTO SheenaLT42
END

//End of romance path
IF ~~ THEN BEGIN SheenaLT42
 SAY @2341 = @2342
 IF ~~ THEN DO ~SetGlobal("SheenaRomanceActive","GLOBAL",3) SetGlobal("SheenaMatch","GLOBAL",3) SetGlobal("SheenaLoveTalk","LOCALS",99)~ EXIT
END

//Next in romance path
IF ~~ THEN BEGIN SheenaLT43
 SAY @2343 
IF ~~ THEN GOTO SheenaLT41a
END

IF ~~ THEN BEGIN SheenaLT43a
 SAY @2344 
IF ~~ THEN GOTO SheenaLT41b
END

//Romance path ending
//Prose and Eloquence
IF ~~ THEN BEGIN SheenaLT44
 SAY @2345 
IF ~~ THEN EXIT
END

//Kingdom
IF ~~ THEN BEGIN SheenaLT44a
 SAY @2346 
IF ~~ THEN EXIT
END

//
IF ~~ THEN BEGIN SheenaLT44b
 SAY @2347 
IF ~~ THEN EXIT
END

//Passionate embrace
IF ~~ THEN BEGIN SheenaLT45
 SAY @2251 
IF ~~ THEN EXIT
END

//Hug
IF ~~ THEN BEGIN SheenaL45a
 SAY @2251 
IF ~~ THEN EXIT
END

/* Scrapped
//Talk: 4 - 
IF
~Global("SheenaLoveTalk","LOCALS",4)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaLoveTalkTime","GLOBAL")~
THEN BEGIN SheenaLT10
 SAY ~Some say ugliness is superior to beauty in the sense that it endures the passage of time.~ 
  IF ~~ THEN REPLY  ~A person's beauty may be fading but some beauty when expressed in art for example is almost immortal.~ GOTO SheenaLT10a
  IF ~~ THEN REPLY  ~I wonder. Will your disguise ever age?~ GOTO SheenaLT11a
  IF ~~ THEN REPLY  ~Beauty is not an absolute concept so one may argue that superiority does not apply to it.~ GOTO SheenaLT12a
  IF ~~ THEN REPLY  ~You appearance matters little to me.~ EXIT
END

IF ~~ THEN BEGIN SheenaLT11a
 SAY ~My disguise certainly looked liked a child a few years ago so a few wrinkles and grey hair are also likely to appear with old age.~ 
 IF ~~ THEN REPLY ~You have been blessed with an extraordinary gift.~ EXIT
 IF ~~ THEN REPLY @2251 EXIT
END
*/

//SHEENA HAS DOUBTS ABOUT THE RELATIONSHIP
IF
~Global("SheenaLoveTalk","LOCALS",6)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaLoveTalkTime","GLOBAL")~
THEN BEGIN SheenaLT20
 SAY @2348 
  IF ~~ THEN REPLY  @2349 GOTO SheenaLT21
  IF ~~ THEN REPLY  @2350 GOTO SheenaLT21
  IF ~~ THEN REPLY  @2351 GOTO SheenaLT22
 IF ~~ THEN REPLY  @2352 GOTO SheenaLT23
END

IF ~~ THEN BEGIN SheenaLT21
 SAY @2353 = @2354 
IF ~~ THEN REPLY @2355 GOTO SheenaLT21a
IF ~~ THEN REPLY @2351 GOTO SheenaLT22
IF ~~ THEN REPLY @2356 GOTO SheenaLT21b
END

IF ~~ THEN BEGIN SheenaLT21a
 SAY @2357 
 IF ~~ THEN REPLY @2358 GOTO SheenaLT21c
IF ~~ THEN REPLY @2359 GOTO SheenaLT22
 IF ~~ THEN REPLY @2360 GOTO SheenaLT21b
END

IF ~~ THEN BEGIN SheenaLT21b
 SAY @2361 = @2362 
 IF ~~ THEN REPLY @2363 GOTO SheenaLT21d
IF ~~ THEN REPLY @2364 GOTO SheenaLT22
/*
 IF ~~ THEN REPLY ~I can not say I will have the same feelings for you in a month or a year. Much could happen in between that is beyond both our control. You will have to accept it Sheena or this relationship is doomed.~ EXIT
*/
END

IF ~~ THEN BEGIN SheenaLT21c
 SAY @2365 = @2366 //Same path as 23
 IF ~~ THEN REPLY @2367 GOTO SheenaLT23
 IF ~~ THEN REPLY @2368 GOTO SheenaLT22
 IF ~~ THEN REPLY @2369 GOTO SheenaLT22
END

IF ~~ THEN BEGIN SheenaLT21d
 SAY @2370 = @2366 //Same path as 23
 IF ~~ THEN REPLY @2367 GOTO SheenaLT24
 IF ~~ THEN REPLY @2368 GOTO SheenaT22
 IF ~~ THEN REPLY @2369 GOTO SheenaLT25
END


IF ~~ THEN BEGIN SheenaLT22
 SAY @2371 
 IF ~~ THEN DO ~SetGlobal("SheenaRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN SheenaLT23
 SAY @2372 = @2366 //Tell me what relationship you seek
 IF ~~ THEN REPLY @2373 GOTO SheenaLT21b
 IF ~~ THEN REPLY @2367 GOTO SheenaLT24
 IF ~~ THEN REPLY @2368 GOTO SheenaT22
END

IF ~~ THEN BEGIN SheenaLT24
 SAY @2374
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaLT25
 SAY @2375
 IF ~~ THEN REPLY @2376 GOTO SheenaLT26
 IF ~~ THEN REPLY @2377 EXIT
END

IF ~~ THEN BEGIN SheenaLT26
 SAY @2378 = @2379
 IF ~~ THEN EXIT
END



//Love Talk : 8 - SHEENA GIVES HER HEART TO CHARNAME BUT LITERALLY
//TYING UP CHARNAME FOR LIFE! IT MAKES A LOT OF SENSE AFTER lt4 - she wanted unconditional love
//IT MAY SEEM EARLY BUT A FEW DIALOGS IN BETWEEN THIS ONE COULD BE ADDED LATER, ESPECIALLY 6
IF
~Global("SheenaLoveTalk","LOCALS",8)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaLoveTalkTime","GLOBAL")~
THEN BEGIN SheenaLT30
 SAY @2380 = @2381 = @2382 
  IF ~~ THEN REPLY  @2383 GOTO SheenaLT31a
  IF ~~ THEN REPLY  @2384 GOTO SheenaLT31e
  IF ~~ THEN REPLY  @2385 GOTO SheenaLT31c
  IF ~~ THEN REPLY  @2386 GOTO SheenaLT31c
  IF ~~ THEN REPLY  @2387 GOTO SheenaLT31c
 IF ~~ THEN REPLY @2388 GOTO SheenaLT31d
END

IF ~~ THEN BEGIN SheenaLT31a
 SAY @2389 
IF ~~ THEN REPLY @2390 GOTO SheenaLT31d
 IF ~~ THEN REPLY  @2391 GOTO SheenaLT31c
IF ~~ THEN REPLY  @2387 GOTO SheenaLT31c
END

IF ~~ THEN BEGIN SheenaLT31e
 SAY @2392
 IF ~~ THEN REPLY @2390 GOTO SheenaLT31d
 IF ~~ THEN REPLY  @2386 GOTO SheenaLT31c
IF ~~ THEN REPLY  @2387 GOTO SheenaLT31c
END


IF ~~ THEN BEGIN SheenaLT31b
 SAY @2393 = @2394
IF ~~ THEN REPLY @2390 GOTO SheenaLT31d
 IF ~~ THEN REPLY  @2386 GOTO SheenaLT31c
IF ~~ THEN REPLY  @2387 GOTO SheenaLT31c
END

IF ~~ THEN BEGIN SheenaLT31c
 SAY @2395
 IF ~~ THEN REPLY @2390 GOTO SheenaLT31d
 IF ~~ THEN REPLY @2396 DO ~ApplySpellRES("K#POLYS",Myself)~ GOTO SheenaLT32
 IF ~~ THEN REPLY @2397 GOTO SheenaLT34
END

IF ~~ THEN BEGIN SheenaLT31d
 SAY @2398 = @2399 
IF ~~ THEN REPLY @2400 GOTO SheenaLT31f
IF ~~ THEN REPLY  @2386 GOTO SheenaLT31c
 IF ~~ THEN REPLY @2401 GOTO SheenaLT33
END

IF ~~ THEN BEGIN SheenaLT31f
 SAY @2402
IF ~~ THEN REPLY @2403 GOTO SheenaLT35
 IF ~~ THEN REPLY @2401 GOTO SheenaLT33
END

//The gift is accepted 
//-2 con Sheena and +2 con, immunity to disease, feeblemindness for the PC
//Sheena has a 10% chance to be killed for good in the process
//If it succeeds, if Sheena dies the PC dies and the game ends
//She can not be booted out of the party after this else she kills the PC after 1 hour.
IF ~~ THEN BEGIN SheenaLT32
 SAY @2404 = @2405 = @2406
 IF ~~ THEN DO ~StartCutScene("K#RITUAL")~ EXIT
END

IF ~~ THEN BEGIN SheenaLT33
 SAY @2407
 IF ~~ THEN DO ~SetGlobal("SheenaRomanceActive","GLOBAL",3) SetGlobal("SheenaMatch","GLOBAL",3) SetGlobal("SheenaLoveTalk","LOCALS",99)~ EXIT
END

IF ~~ THEN BEGIN SheenaLT34
 SAY @2408
  IF ~~ THEN REPLY @2390 GOTO SheenaLT31d
 IF ~~ THEN REPLY @2409 DO ~ApplySpellRES("K#POLYS","K#Sheena")~ GOTO SheenaLT32
END

IF ~~ THEN BEGIN SheenaLT35
 SAY @2410
  IF ~~ THEN REPLY @2411 GOTO SheenaLT35a
IF ~~ THEN REPLY @2412 GOTO SheenaLT33
 IF ~~ THEN REPLY @2413 DO ~ApplySpellRES("K#POLYS","K#Sheena")~ GOTO SheenaLT32
END

IF ~~ THEN BEGIN SheenaLT35a
 SAY @2414
 IF ~~ THEN REPLY @2415 GOTO SheenaLT33
 IF ~~ THEN REPLY @2413 DO ~ApplySpellRES("K#POLYS",Myself)~ GOTO SheenaLT32
END


//Love Talk : 10 - Should happen in a Forest area - sort of love scene - Sheena and CHARNAME are soaking wet
//Wheather(RAIN) is used in the script but there is a 9 second delay!
//StartRainNow() does not work
//
IF
~Global("SheenaLoveTalk","LOCALS",10)
Global("SheenaMatch","GLOBAL",1)~
THEN BEGIN SheenaLT60
 SAY @2416 
  IF ~~ THEN REPLY  @2417 DO ~ApplySpell(Myself,WIZARD_BURNING_HANDS)~ GOTO SheenaLT61a
  IF ~~ THEN REPLY  @2418 GOTO SheenaLT61b
  IF ~~ THEN REPLY  @2419 GOTO SheenaLT61c
 END

IF ~~ THEN BEGIN SheenaLT61a
 SAY @2420
 IF ~~ THEN REPLY  @2421 GOTO SheenaLT61d
END

IF ~~ THEN BEGIN SheenaLT61b
 SAY @2422
 IF ~~ THEN REPLY  @2423 DO ~ApplySpell(Myself,WIZARD_BURNING_HANDS)~GOTO SheenaLT61a
 IF ~~ THEN REPLY  @2424 GOTO SheenaLT61c
END

IF ~~ THEN BEGIN SheenaLT61c
 SAY @2425
 IF ~~ THEN DO ~SetGlobal("SheenaLoveTalk","LOCALS",99) SetGlobal("SheenaMatch","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN SheenaLT61d
 SAY @2426
= @2427 = 
@2428
= 
@2429
= 
@2430
= 
@2431
 IF ~~ THEN REPLY @2432 GOTO SheenaLT62
 IF ~~ THEN REPLY @2433 GOTO SheenaLT63
END

IF ~~ THEN BEGIN SheenaLT62
 SAY @2434 
IF ~~ THEN DO ~SetGlobal("K#SheenaSleptWithPC","GLOBAL",1) SetGlobal("SheenaLoveTalk","LOCALS",11) RestParty()~ EXIT
END

IF ~~ THEN BEGIN SheenaLT63
 SAY @2435
 IF ~~ THEN REPLY @2432 GOTO SheenaLT62
 IF ~~ THEN REPLY @2436 GOTO SheenaLT64
END

IF ~~ THEN BEGIN SheenaLT64
 SAY @2437
 IF ~~ THEN DO ~RealSetGlobalTimer("SheenaLoveTalkTime","GLOBAL",3600) SetGlobal("SheenaLoveTalk","LOCALS",13) RestParty()~ EXIT
END


//Love Talk : 12 - Nightly exertions = late rising

IF
~Global("SheenaLoveTalk","LOCALS",12)
Global("SheenaMatch","GLOBAL",1)~
THEN BEGIN SheenaLT70
 SAY @2438 
  IF ~~ THEN REPLY  @2439 GOTO SheenaLT71
  IF ~~ THEN REPLY  @2440 GOTO SheenaLT72
 END

IF ~~ THEN BEGIN SheenaLT71
 SAY @2441
IF ~~ THEN REPLY  @2440 GOTO SheenaLT72
IF ~~ THEN REPLY  @2442 GOTO SheenaLT74
IF ~~ THEN REPLY  @2443 GOTO SheenaLT73
END

IF ~~ THEN BEGIN SheenaLT72
 SAY @2444
= @2445
 IF ~~ THEN REPLY  @2446 GOTO SheenaLT75
END

IF ~~ THEN BEGIN SheenaLT73
 SAY @2447
 IF ~~ THEN REPLY  @2448 DO ~RealSetGlobalTimer("SheenaLoveTalkTime","GLOBAL",3600) SetGlobal("SheenaLoveTalk","LOCALS",13) RestParty()~ EXIT
IF ~~ THEN REPLY  @2449 DO ~RealSetGlobalTimer("SheenaLoveTalkTime","GLOBAL",3600) SetGlobal("SheenaLoveTalk","LOCALS",13)~ EXIT
END

IF ~~ THEN BEGIN SheenaLT74
 SAY @2450
  IF ~~ THEN REPLY  @2451 GOTO SheenaLT76
  IF ~~ THEN REPLY  @2448 DO ~RealSetGlobalTimer("SheenaLoveTalkTime","GLOBAL",3600) SetGlobal("SheenaLoveTalk","LOCALS",13) RestParty()~ EXIT
END

IF ~~ THEN BEGIN SheenaLT75
 SAY @2452
= @2453
 IF ~~ THEN DO ~RealSetGlobalTimer("SheenaLoveTalkTime","GLOBAL",3600) SetGlobal("SheenaLoveTalk","LOCALS",13)~ EXIT
END

IF ~~ THEN BEGIN SheenaLT76
 SAY @2454
 IF ~~ THEN DO ~RealSetGlobalTimer("SheenaLoveTalkTime","GLOBAL",3600) SetGlobal("SheenaLoveTalk","LOCALS",13)~ EXIT
END


//Talk : 14 - LORD FIRKRAAG BACK ON THE SCENE
//WILL SHEENA BECOME A FULL GROWN DRAGON OR NOT?
IF
~Global("SheenaLoveTalk","LOCALS",14)
Global("SheenaMatch","GLOBAL",1)
GlobalTimerExpired("SheenaLoveTalkTime","GLOBAL")~
THEN BEGIN SheenaLT80
 SAY @2455 
IF ~~ THEN REPLY  @2456 GOTO SheenaLT82
  IF ~~ THEN REPLY  @2457 GOTO SheenaLT81
 END

IF ~~ THEN BEGIN SheenaLT81
 SAY @2458
  IF ~~ THEN REPLY  @2459 GOTO SheenaLT81a
END

IF ~~ THEN BEGIN SheenaLT81a
 SAY @2460 = @2461
= @2462
= @2463
IF ~~ THEN REPLY  @2464 GOTO SheenaLT84
 IF ~~ THEN REPLY  @2465 GOTO SheenaLT86
 IF ~~ THEN REPLY  @2466 GOTO SheenaLT88
END


IF ~~ THEN BEGIN SheenaLT82
 SAY @2467
 IF ~~ THEN REPLY  @2468 GOTO SheenaLT82a
 IF ~~ THEN REPLY  @2469 GOTO SheenaLT82a
END

IF ~~ THEN BEGIN SheenaLT82a
 SAY @2470
 IF ~~ THEN REPLY  @2471 GOTO SheenaLT83
END

IF ~~ THEN BEGIN SheenaLT83
 SAY @2472
= @2462
= @2463
 IF ~~ THEN REPLY  @2464 GOTO SheenaLT84
 IF ~~ THEN REPLY  @2465 GOTO SheenaLT86
 IF ~~ THEN REPLY  @2473 GOTO SheenaLT88
END

IF ~~ THEN BEGIN SheenaLT84
 SAY @2474
= @2475
 IF ~~ THEN REPLY  @2476 GOTO SheenaLT86
 IF ~~ THEN REPLY  @2477 GOTO SheenaLT87
 IF ~~ THEN REPLY  @2478 GOTO SheenaLT87
 IF ~~ THEN REPLY  @2473 GOTO SheenaLT88
END
//Unused
IF ~~ THEN BEGIN SheenaLT85
 SAY @2251
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaLT86
 SAY @2479
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaLT87
 SAY @2480
 IF ~~ THEN GOTO SheenaLT88
END

IF ~~ THEN BEGIN SheenaLT88
 SAY @2481
 IF ~Global("SLAYER1","GLOBAL",1)~ THEN REPLY  @2482 GOTO SheenaLT88a
 IF ~GlobalLT("SLAYER1","GLOBAL",1)~ THEN REPLY  @2483 GOTO SheenaLT88a
 IF ~~ THEN REPLY  @2484 GOTO SheenaLT88b
END

IF ~~ THEN BEGIN SheenaLT88a
 SAY @2485
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SheenaLT88b
 SAY @2486
 IF ~~ THEN EXIT
END


//Talk : 16 - 

//Talk : 18 - Life on the road is rough and wears you down physically. Having companions of different backgrounds can wear //you down mentally - We already look much older

//Talk : 20 - Bedtime


/* Scrapped for now
//Sheena and Mazzy - 10 minutes after Love talk 2
CHAIN IF ~See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)  
CombatCounter(0)
Global("SheenaRomanceActive","GLOBAL",2)
Global("SheenaLTalkMazzy","GLOBAL",2)~ THEN BSHEENA SheenaLTalkMazzy2
~I've never felt so happy in my life, Mazzy.~  DO ~SetGlobal("SheenaLTalkMazzy","GLOBAL",3)~ 
== MAZZYJ
~It is so blatant that you surely glow in the dark.~ 
== BSHEENA
~Pretty funny but I couldn't wait to tell you what he said.~ 
== MAZZYJ
~You don't have to, Sheena. I saw you kiss each other and it seemed true and passionate. I am happy for you, Sheena.~ 
== BSHEENA
~Thank you, Mazzy.~ 
EXIT
*/


////////////////////////////////////////////////////////////////////////////////
//BANTER TALK TRIGGERING FROM THE SCRIPT ARE ON TOP
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
//MAZZY - INFERIORITY COMPLEX? Nay!
CHAIN IF ~Global("SheenaTalkMazzy","GLOBAL",2)~ THEN BSHEENA SheenaTalkMazzy2
@2487 DO ~SetGlobal("SheenaTalkMazzy","GLOBAL",3)~ 
== BMAZZY
@2488 
== BSHEENA
@2489 
== BMAZZY
@2490 
== BSHEENA
@2491 
== BMAZZY
@2492
== BSHEENA
@2493
== BMAZZY
@2494  
EXIT

APPEND BMAZZY
IF WEIGHT #-99 ~Global("SheenaTalkMazzy","GLOBAL",1)~ THEN BEGIN SheenaTalkMazzy1
SAY @2495 
IF ~~ THEN DO ~SetGlobal("SheenaTalkMazzy","GLOBAL",2)~ EXTERN BSheena SheenaTalkMazzy2
END
END

CHAIN IF WEIGHT #-98 ~Global("SheenaTalkMazzy","GLOBAL",4)~ THEN BSHEENA SheenaTalkMazzy3
@2496  DO ~SetGlobal("SheenaTalkMazzy","GLOBAL",5)~ 
== BMAZZY
@2497 
== BSHEENA
@2498 
== BMAZZY
@2499 
== BSHEENA
@2500 
== BMAZZY
@2501 
EXIT

CHAIN IF WEIGHT #-97 ~Global("SheenaTalkMazzy","GLOBAL",6)~ THEN BSHEENA SheenaTalkMazzy4
@2502  DO ~SetGlobal("SheenaTalkMazzy","GLOBAL",7)~ 
== BMAZZY
@2503 
== BSHEENA
@2504 
== BMAZZY
@2505 
== BSHEENA
@2506 
== BMAZZY
@2507 
== BSHEENA
@2508
== BMAZZY
@2509 
== BSHEENA
@2510
== BMAZZY
@2511
== BSHEENA
@2512
== BMAZZY
@2513
== BSHEENA
@2514
EXIT

//MAZZY AND SHEENA DURING THE LOVETALKS
//LTalk: 1 - First lovetalk if Mazzy in the party
CHAIN IF WEIGHT #-96 ~Global("SheenaTalkMazzy","GLOBAL",8)~ THEN BSHEENA SheenaLTalkMazzy1
@2515  DO ~SetGlobal("SheenaTalkMazzy","GLOBAL",9)~ 
== BMAZZY
@2516 
== BSHEENA
@2517 = @2518 
== BMAZZY
@2519 
== BSHEENA
@2520 = @2521 
== BMAZZY
@2522
== BSHEENA
@2523 = @2524
== BMAZZY
@2525 
== BSHEENA
@2526
== BMAZZY
@2527 
== BSHEENA
@2528
EXIT

////////////////////////////////////////////////////////////////////////////////
//ANOMEN
CHAIN IF WEIGHT #-99  ~Global("AnomenTalkSheena","GLOBAL",1)
Global("AnomenIsKnight","GLOBAL",0) 
CombatCounter(0)
~ THEN BANOMEN AnomenTalkSheena1
@2529  DO ~SetGlobal("AnomenTalkSheena","GLOBAL",2)~ 
== BSHEENA
@2530
== BANOMEN
@2531
== BSHEENA
@2532
== BANOMEN
@2533
EXIT

/* should happen as soon as knight */
CHAIN IF ~Global("AnomenTalkSheena","GLOBAL",3)
CombatCounter(0)
~ THEN BSHEENA AnomenTalkSheena2
@2534  DO ~SetGlobal("AnomenTalkSheena","GLOBAL",4)~ 
== BANOMEN
@2535
== BSHEENA
@2536
== BANOMEN
@2537
== BSHEENA
@2538
== BANOMEN
@2539
== BSHEENA
@2540
== BANOMEN
@2541
== BSHEENA
@2542
== BANOMEN
@2543
== BSHEENA
@2544
EXIT

////////////////////////////////////////////////////////////////////////////////
//NALIA & NOBILITY - NEEDS TO BE JUST AFTER NALIA JOINS OR RIGHT IN THE DUNGEON AFTER FREEING HER
//HAS SEEN HER HUMAN FORM ONLY
CHAIN IF ~Global("SheenaTalkNalia","GLOBAL",2)~ THEN BSHEENA SheenaTalkNalia2
@2545 DO ~SetGlobal("SheenaTalkNalia","GLOBAL",3)~ 
== BNALIA
@2546
== BSHEENA IF ~AreaCheck("AR1202")~ THEN 
@2547
== BSHEENA IF ~!AreaCheck("AR1202")~ THEN 
@2548
== BNALIA IF ~AreaCheck("AR1202")~ THEN
@2549
== BNALIA IF ~!AreaCheck("AR1202")~ THEN
@2550
== BSHEENA IF ~AreaCheck("AR1202")~ THEN 
@2551 = @2552
== BSHEENA IF ~!AreaCheck("AR1202")~ THEN 
@2553 = @2552
EXIT

APPEND BNALIA
IF ~Global("SheenaTalkNalia","GLOBAL",1)~ THEN BEGIN SheenaTalkNalia1
SAY @2554 
IF ~~ THEN DO ~SetGlobal("SheenaTalkNalia","GLOBAL",2)~ EXTERN BSheena SheenaTalkNalia2
END
END

////////////////////////////////////////////////////////////////////////////////
//CERND
CHAIN IF ~Global("CerndTalkSheena","GLOBAL",1)~ THEN BSHEENA CerndTalkSheena1
@2555  DO ~SetGlobal("CerndTalkSheena","GLOBAL",2)~ 
== BCERND
@2556
== BSHEENA
@2557
== BCERND
@2558//Original BG2 with Valygar
== BSHEENA
@2559
== BCERND
@2560 = @2561
== BSHEENA
@2562
EXIT

////////////////////////////////////////////////////////////////////////////////
//KORGAN - KEEPS ON GETTING HIT BY SHEENA IN THE UNDERDARK
CHAIN IF ~Global("SheenaTalkKorgan","GLOBAL",2)~ THEN BSHEENA SheenaTalkKorgan2
@2563 DO ~SetGlobal("SheenaTalkKorgan","GLOBAL",3)~ 
== BKORGAN
@2564 
== BSHEENA
@2565
EXIT

APPEND BKORGAN
IF WEIGHT #-47 ~InParty("K#Sheena") 
See("K#Sheena")
InParty(Myself)
!StateCheck("K#Sheena",STATE_SLEEPING)  
Global("SheenaTalkKorgan","GLOBAL",1)
Global("SheenRHD","GLOBAL",1)~ THEN BEGIN SheenaTalkKorgan1
SAY @2566 
IF ~~ THEN DO ~SetGlobal("SheenaTalkKorgan","GLOBAL",2)~ EXTERN BSheena SheenaTalkKorgan2
END
END


CHAIN IF ~Global("SheenaTalkKorgan","GLOBAL",5)~ THEN BSHEENA SheenaTalkKorgan4
@2567 DO ~SetGlobal("SheenaTalkKorgan","GLOBAL",6)~ 
== BKORGAN
@2568
== BSHEENA
@2569 //Lord of the rings II - wink
EXIT


APPEND BKORGAN
IF WEIGHT #-46 ~InParty("K#Sheena") 
See("K#Sheena")
InParty(Myself)
!StateCheck("K#Sheena",STATE_SLEEPING)  
Global("SheenaTalkKorgan","GLOBAL",4)
Global("SheenRHD","GLOBAL",1)~ THEN BEGIN SheenaTalkKorgan3
SAY @2570 
IF ~~ THEN DO ~SetGlobal("SheenaTalkKorgan","GLOBAL",5)~ EXTERN BSheena SheenaTalkKorgan4
END
END

//AERIE - WINGS
CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("K#SheenaAerie","GLOBAL",1)
Global("SheenRHD","GLOBAL",1)
CombatCounter(0)~ THEN BSHEENA K#SheenaAerie1
@2571 
DO ~SetGlobal("K#SheenaAerie","GLOBAL",2)~
== BAERIE
@2572
== BSHEENA
@2573
== BAERIE
@2574
== BSHEENA
@2575
== BAERIE
@2576
== BSHEENA
@2577
EXIT

////////////////////////////////////////////////////////////////////////////////
//REGULAR BANTER TALKS - NON SCRIPTED
////////////////////////////////////////////////////////////////////////////////

//TALK ABOUT THE AVARIEL AND WHETHER SHEENA COULD VISIT
CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("K#SheenaAerie","GLOBAL",2)
CombatCounter(0)~ THEN BSHEENA K#SheenaAerie1
@2578 
DO ~SetGlobal("K#SheenaAerie","GLOBAL",3)~
== BAERIE
@2579
== BSHEENA
@2580
== BAERIE
@2581
== BSHEENA
@2582
== BAERIE
@2583
== BSHEENA
@2584
== BAERIE
@2585
== BSHEENA
@2586
EXIT

////////////////////////////////////////////////////////////////////////////////
//VICONIA - KEEPING DISTANCE
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("ViconiaTalkSheena","GLOBAL",0)
CombatCounter(0)~ THEN BSHEENA SheenaTalkViconia1
@2587  DO ~SetGlobal("ViconiaTalkSheena","GLOBAL",1)~ 
== BVICONI
@2588
== BSHEENA
@2589
== BVICONI
@2590
EXIT

//Shahr or Shar both names refer to the same goddess
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("ViconiaTalkSheena","GLOBAL",1)
CombatCounter(0)~ THEN BSHEENA SheenaTalkViconia2
@2591  DO ~SetGlobal("ViconiaTalkSheena","GLOBAL",2)~ 
== BVICONI
@2592
== BSHEENA
@2593
== BVICONI
@2594
== BSHEENA
@2595
== BVICONI
@2596
== BSHEENA
@2597
== BVICONI
@2598
== BSHEENA
@2599
EXIT

//SHAR NEXT
CHAIN IF ~Global("ViconiaTalkSheena","GLOBAL",3)~ THEN BSHEENA SheenaTalkViconia4
@2600 DO ~SetGlobal("ViconiaTalkSheena","GLOBAL",4)~ 
== BVICONI
@2601
== BSHEENA
@2602
== BVICONI
@2603
== BSHEENA
@2604
EXIT

APPEND BVICONI
IF ~InParty("K#Sheena") 
See("K#Sheena")
!StateCheck("K#Sheena",STATE_SLEEPING)  
Global("ViconiaTalkSheena","GLOBAL",2)
CombatCounter(0)~ THEN BEGIN SheenaTalkViconia3
SAY @2605 
IF ~~ THEN DO ~SetGlobal("ViconiaTalkSheena","GLOBAL",3)~ EXTERN BSheena SheenaTalkViconia4
END
END
////////////////////////////////////////////////////////////////////////////////
//JAN - 
CHAIN IF ~Global("SheenaTalkJan","GLOBAL",1)~ THEN BSHEENA SheenaTalkJan2
@2606 DO ~SetGlobal("SheenaTalkJan","GLOBAL",2)~ 
== BJAN
@2607 
== BSHEENA
@2608
== BJAN
@2609
== BSHEENA
@2610
== BJAN
@2611 
== BSHEENA
@2612
== BJAN
@2613 
EXIT

//APPEND TO START OTHER CHARACTERS TRIGGING THE BANTER
APPEND BJAN
IF ~InParty("K#Sheena") 
See("K#Sheena")
InParty(Myself)
!StateCheck("K#Sheena",STATE_SLEEPING)  
Global("SheenaTalkJan","GLOBAL",0)
Global("SheenRHD","GLOBAL",1)
CombatCounter(0)~ THEN BEGIN SheenaTalkJan1
SAY @2614 
IF ~~ THEN DO ~SetGlobal("SheenaTalkJan","GLOBAL",1)~ EXTERN BSheena SheenaTalkJan2
END
END


CHAIN IF ~InParty("K#Sheena") 
See("K#Sheena")
!StateCheck("K#Sheena",STATE_SLEEPING)  
See("Valygar")
InParty("Valygar")
Global("SheenaTalkJan1","GLOBAL",0)
Global("BJan3","LOCALS",1)
CombatCounter(0)~ THEN BJAN SheenaTalkJan3
@2615  DO ~SetGlobal("SheenaTalkJan1","GLOBAL",1)~ 
== BVALYGA
@2616 
== BJAN
@2617
== BSHEENA
@2618
== BJAN
@2619
EXIT
////////////////////////////////////////////////////////////////////////////////
//MINSC - BOO ON A MISSION TO THE MOON
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("MinscTalkSheena","GLOBAL",0)
CombatCounter(0)~ THEN BSHEENA SheenaTalkMinsc1
@2620  DO ~SetGlobal("MinscTalkSheena","GLOBAL",1)~ 
== BMINSC
@2621
== BSHEENA
@2622
== BMINSC
@2623
== BSHEENA
@2624
= @2625
EXIT

/*Should be scrapped in a final release but a good joke*/
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("MinscTalkSheena","GLOBAL",1)~ THEN BSHEENA SheenaTalkMinsc1
@2626  DO ~SetGlobal("MinscTalkSheena","GLOBAL",2)~ 
== BMINSC
@2627
== BSHEENA
@2628
== BMINSC
@2629
== BSHEENA
@2630
== BMINSC
@2631
EXIT

////////////////////////////////////////////////////////////////////////////////
//KELDORN - PALADIN MEANS RELUCTANCE TOWARDS DRAGONS
CHAIN IF ~InParty("Keldorn") 
See("Keldorn") 
Global("KeldornTalkSheena","GLOBAL",0)
CombatCounter(0)~ THEN BSHEENA SheenaTalkKeldorn1
@2632  DO ~SetGlobal("KeldornTalkSheena","GLOBAL",1)~ 
== BKELDOR
@2633
== BSHEENA
@2634
== BKELDOR
@2635
== BSHEENA
@2636
== BKELDOR
@2637
== BSHEENA
@2638
== BKELDOR
@2639
== BSHEENA
@2640
EXIT

CHAIN IF ~InParty("Keldorn") 
See("Keldorn") 
Global("KeldornTalkSheena","GLOBAL",1)
CombatCounter(0)~ THEN BSHEENA SheenaTalkKeldorn2
@2641  DO ~SetGlobal("KeldornTalkSheena","GLOBAL",2)~ 
== KELDORJ
@2642
== BSHEENA
@2643
== KELDORJ
@2644
== BSHEENA
@2645 = @2646
== KELDORJ
@2647 = @2648
== BSHEENA
@2649
== KELDORJ
@2650
== BSHEENA
@2651
== KELDORJ
@2652
== BSHEENA
@2653
== KELDORJ
@2654
EXIT

CHAIN IF ~InParty("Keldorn") 
See("Keldorn") 
Global("KeldornTalkSheena","GLOBAL",2)
CombatCounter(0)~ THEN BSHEENA SheenaTalkKeldorn3
@2655 = @2656  DO ~SetGlobal("KeldornTalkSheena","GLOBAL",3)~ 
== KELDORJ
@2657
== BSHEENA
@2658
== KELDORJ
@2659
== BSHEENA
@2660
== KELDORJ
@2661
EXIT

////////////////////////////////////////////////////////////////////////////////
//IMOEN
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("ImoenTalkSheena","GLOBAL",0)
CombatCounter(0)~ THEN BSHEENA SheenaTalkImoen1
@2662   DO ~SetGlobal("ImoenTalkSheena","GLOBAL",1)~ 
== IMOEN2J
@2663
== BSHEENA
@2664
== IMOEN2J
@2665
== BSHEENA
@2666
== IMOEN2J
@2667
== BSHEENA
@2668
EXIT

//Sheena's beauty
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("ImoenTalkSheena","GLOBAL",1)
Global("SHEENRHD","GLOBAL",0)
CombatCounter(0)~ THEN BSHEENA SheenaTalkImoen1
@2669   DO ~SetGlobal("ImoenTalkSheena","GLOBAL",2)~ 
== IMOEN2J
@2670 = @2671
== BSHEENA
@2672
== IMOEN2J
@2673
== BSHEENA
@2674 = @2675
== IMOEN2J
@2676
== BSHEENA
@2677
== IMOEN2J
@2678
== BSHEENA
@2679
== IMOEN2J
@2680
== BSHEENA
@2681
EXIT


CHAIN IF ~InParty("Nalia") 
!StateCheck("Nalia",STATE_SLEEPING)  
CombatCounter(0)
Global("SheenaTalkNalia","GLOBAL",3)~ THEN BSHEENA SheenaTalkNalia3
@2682  DO ~SetGlobal("SheenaTalkNalia","GLOBAL",4)~ 
== BNALIA
@2683 = @2684 
== BSHEENA 
@2685
== BNALIA
@2686 
== BSHEENA
@2687 = @2688
== BNALIA
@2689 
== BSHEENA
@2690
== BNALIA
@2691
== BSHEENA
@2692
== BNALIA
@2693
EXIT

////////////////////////////////////////////////////////////////////////////////
//EDWIN - 
CHAIN IF ~Global("EdwinTalkSheena","GLOBAL",1)~ THEN BSHEENA SheenaTalkEdwin2
@2694  DO ~SetGlobal("EdwinTalkSheena","GLOBAL",2) ApplySpellRES("K#POLYS",Myself)~ 
== BEDWIN
@2695 
== BSHEENA
@2696 DO ~ApplySpellRES("K#POLYB","K#Sheena")~ 
EXIT

APPEND BEDWIN
IF WEIGHT #-99 ~InParty("K#Sheena") 
See("K#Sheena")
Global("SheenRHD","GLOBAL",0)
!StateCheck("K#Sheena",STATE_SLEEPING)  
Global("EdwinTalkSheena","GLOBAL",0)
CombatCounter(0)~ THEN BEGIN SheenaTalkEdwin1
SAY @2697 
IF ~~ THEN DO ~SetGlobal("EdwinTalkSheena","GLOBAL",1)~ EXTERN BSheena SheenaTalkEdwin2
END
END

//second Edwin banter with Sheena
CHAIN IF ~Global("EdwinTalkSheena","GLOBAL",3)~ THEN BSHEENA SheenaTalkEdwin4
@2698  DO ~SetGlobal("EdwinTalkSheena","GLOBAL",4)~ 
== BEDWIN
@2699 
== BSHEENA
@2700  
== BEDWIN
@2701 
== BSHEENA
@2702  
== BEDWIN
@2703 
== BSHEENA
@2704  
EXIT

APPEND BEDWIN
IF WEIGHT #-98 ~InParty("K#Sheena") 
See("K#Sheena")
!StateCheck("K#Sheena",STATE_SLEEPING)  
Global("EdwinTalkSheena","GLOBAL",2)
CombatCounter(0)~ THEN BEGIN SheenaTalkEdwin3
SAY @2705 
IF ~~ THEN DO ~SetGlobal("EdwinTalkSheena","GLOBAL",3)~ EXTERN BSheena SheenaTalkEdwin4
END
END
////////////////////////////////////////////////////////////////////////////////
//DIALOG 1 JAHEIRA - FIRST CONTACT IS COLD BUT SO IS JAHEIRA IN MOST FIRST DIALOGS!
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("JahTalkSheena","GLOBAL",0)
CombatCounter(0)~ THEN BSHEENA JahTalkSheena1
@2706  DO ~SetGlobal("JahTalkSheena","GLOBAL",1)~ 
== BJAHEIR
@2707
== BSHEENA
@2708
== BJAHEIR
@2709
EXIT

//DIALOG 2 APPEARANCES
CHAIN IF ~Global("JahTalkSheena","GLOBAL",2)~ THEN BSHEENA JahTalkSheena3
@2710 DO ~SetGlobal("JahTalkSheena","GLOBAL",3)~ 
== BJAHEIR
@2711
== BSHEENA
@2712
== BJAHEIR
@2713
== BSHEENA
@2714
== BJAHEIR
@2715
EXIT

APPEND BJAHEIR
IF ~InParty("K#Sheena") 
See("K#Sheena")
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("JahTalkSheena","GLOBAL",1)
CombatCounter(0)~ THEN BEGIN JahTalkSheena2
SAY @2716 
IF ~~ THEN DO ~SetGlobal("JahTalkSheena","GLOBAL",2)~ EXTERN BSheena JahTalkSheena3
END
END

////////////////////////////////////////////////////////////////////////////////
//VALYGAR - HATES MAGIC SO THAT COULD BE A START 
CHAIN IF ~InParty("K#Sheena")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("ValygarTalkSheena","GLOBAL",0)
CombatCounter(0)
~ THEN BSHEENA ValygarTalkSheena1
@2717  DO ~SetGlobal("ValygarTalkSheena","GLOBAL",1)~ 
== BVALYGA
@2718
== BSHEENA
@2719
== BVALYGA
@2720
== BSHEENA
@2721 = @2722 = @2723
== BVALYGA
@2724
== BSHEENA
@2725
== BVALYGA
@2726
EXIT


CHAIN IF ~InParty("K#Sheena")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("ValygarTalkSheena","GLOBAL",1)
CombatCounter(0)
~ THEN BSHEENA ValygarTalkSheena1
@2727  DO ~SetGlobal("ValygarTalkSheena","GLOBAL",2)~ 
== BVALYGA
@2728
== BSHEENA
@2729
== BVALYGA
@2730
== BSHEENA
@2731
== BVALYGA
@2732
== BSHEENA
@2733
== BVALYGA
@2734
== BSHEENA
@2735
EXIT

////////////////////////////////////////////////////////////////////////////////
//HAER-DALIS - FIRST DIALOG
CHAIN IF ~Global("SheenaTalkHaerda","GLOBAL",1)~ THEN BSHEENA SheenaTalkHaerda2
@2736  DO ~SetGlobal("SheenaTalkHaerda","GLOBAL",2)~ 
== BHAERDA
@2737
= @2738 = @2739 = @2740 
= @2741 = @2742
== BSHEENA
@2743
== BHAERDA
@2744
EXIT

APPEND BHAERDA
IF WEIGHT #-42 ~InParty("K#Sheena") 
See("K#Sheena")
InParty(Myself)
!StateCheck("K#Sheena",STATE_SLEEPING)  
Global("SheenaTalkHaerda","GLOBAL",0)
CombatCounter(0)~ THEN BEGIN SheenaTalkHaerda1
SAY @2745 
IF ~~ THEN DO ~SetGlobal("SheenaTalkHaerda","GLOBAL",1)~ EXTERN BSheena SheenaTalkHaerda2
END
END

CHAIN IF ~InParty("HAERDALIS") 
See("HAERDALIS")
InParty(Myself)
!StateCheck("HAERDALIS",STATE_SLEEPING)  
Global("SheenaTalkHaerda","GLOBAL",2)~ THEN BSHEENA SheenaTalkHaerda3
@2746  DO ~SetGlobal("SheenaTalkHaerda","GLOBAL",3)~ 
== BHAERDA
@2747
== BSHEENA
@2748
== BHAERDA
@2749
== BSHEENA
@2750
== BHAERDA
@2751 = @2752 = @2753
== BSHEENA
@2754
== BHAERDA
@2755 = @2756
== BSHEENA
@2757
EXIT


////////////////////////////////////////////////////////////////////////////////
//YOSHIMO - SHEENA MASTER OF DISGUISE
CHAIN IF ~InParty("K#Sheena")
See("K#Sheena")
!StateCheck("K#Sheena",STATE_SLEEPING)
Global("YoshTalkSheena","GLOBAL",0)
CombatCounter(0)~ THEN BYOSHIM YoshTalkSheena1
@2758  DO ~SetGlobal("YoshTalkSheena","GLOBAL",1)~ 
== BSHEENA
@2759
== BYOSHIM
@2760
== BSHEENA
@2761
== BYOSHIM
@2762
== BSHEENA
@2763
EXIT

CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("YoshTalkSheena1","GLOBAL",0)
CombatCounter(0)~ THEN BSHEENA YoshTalkSheena2
@2764  DO ~SetGlobal("YoshTalkSheena1","GLOBAL",1)~ 
== BYOSHIM
@2765
== BSHEENA
@2766
== BYOSHIM
@2767
== BSHEENA
@2768
== BYOSHIM
@2769
== BSHEENA
@2770
== BYOSHIM
@2771
== BSHEENA
@2772
== BYOSHIM
@2773
== BSHEENA
@2774
== BYOSHIM
@2775
== BSHEENA
@2776
== BYOSHIM
@2777
EXIT


//40 banters written

