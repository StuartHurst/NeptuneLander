10 poke 53269,1 : REM bit 0 = sprite 0
20 POKE 2040,192 : REM SPRITE POINT * 64 = 192 * 64 = 12288
30 Y = 60 : POKE 53249,Y
40 X = 60 : POKE 53248,X
50 POKE 53287,0
60 FOR I = 0 TO 62 : READ A : POKE 12288 + I, A : NEXT I
80 VV = 0 : G = 3/28 : T = 3/28 : HV = 0 : HI = 1/28 : CC = 0
90 REM FOR DE = 0 TO 32 : NEXT
95 REM ST$ = TI$
100 A = PEEK(197)
110 IF A = 22 THEN VV = VV - T : GOTO 210 : REM T
120 IF A = 18 THEN HV = HV - HI : REM D
130 IF A = 10 THEN HV = HV + HI : REM A
140 REM IF A = 9 THEN Y=(Y+1) AND 255 : POKE 53249,Y : REM W
150 REM IF A = 12 THEN Y=(Y-1) AND 255 : POKE 53249,Y : REM Z

200 VV = VV + G : IF VV > 2 THEN VV = 2
201 IF VV < -2 THEN VV = -2
210 Y = (Y+VV) : X = (X+HV)
212 IF X > 255 OR X < 0 THEN X = X AND 255
213 IF Y > 255 OR Y < 0 THEN Y = Y AND 255
214 POKE 53249, Y : POKE 53248,X : REM CC=CC+1
215 REM PRINT "{clear}";Y;VV
218 REM IF ST$ <> TI$ THEN END
220 GOTO 90

999 END
1000 REM 
1010 DATA 16,0,18
1020 DATA 8,126,28
1030 DATA 5,255,204
1040 DATA 6,16,54
1050 DATA 15,159,240
1060 DATA 8,146,16
1070 DATA 8,243,240
1080 DATA 8,242,16
1090 DATA 8,244,8
1100 DATA 31,254,24
1110 DATA 32,1,244
1120 DATA 32,0,164
1130 DATA 39,128,188
1140 DATA 39,192,164
1150 DATA 31,255,252
1160 DATA 13,60,176
1170 DATA 25,195,152
1180 DATA 49,0,140
1190 DATA 48,0,12
1200 DATA 120,0,30
1210 DATA 204,0,51
