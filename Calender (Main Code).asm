DATA   SEGMENT

FILE1   DB      'T1.TXT',0         ;file that we want to use in program
FILE2   DB      'T2.TXT',0
FILE3   DB      'T3.TXT',0
FILE4   DB      'T4.TXT',0
FILE5   DB      'T5.TXT',0
FILE6   DB      'T6.TXT',0
FILE7   DB      'T7.TXT',0
FILE8   DB      'T8.TXT',0
FILE9   DB      'T9.TXT',0
FILE10  DB      'T10.TXT',0
FILE11  DB      'T11.TXT',0
FILE12  DB      'T12.TXT',0
FILE13  DB      'T13.TXT',0
FILE14  DB      'T14.TXT',0

YEAR1 DW 1
YEAR2 DW 2

msg101	  	db 10, 13, ' A - BIRTHDAY REMINDER'
	db 10, 13, ' B - NOTE'
	db 10, 13, ' C - HOROSCOPE'
        db 10 ,13, ' D - EXIT',10, 13
	db 10, 13, ' Enter your choice (A - D) : $'
	
	
	
	
	
	
	msg102	db 10, 13, ' A - Create birthday reminder'
	db 10, 13, ' B - View birthday reminder'
	db 10, 13, ' C - Delete birthday reminder'
        db 10 ,13, ' D - EXIT from birthday reminder',10, 13
	db 10, 13, ' Enter your choice (A - D) : $'
	
	
	
msg112    db 10, 13, 10, 13, ' Enter a date for birthday reminder : $'
msg333    db 10, 13, 10, 13, ' Enter the year for birthday reminder : $'
msg113    db 10, 13, 10, 13, ' Enter date for birthday reminder to be deleted : $'
msgt_bd	db 10, 13, 10, 13, ' Want to add more birthday reminder??  $'
msg128 	db 10, 13, 10, 13, ' Do you want to add name of person??(YES->Y,NO->N)$'
msg129 	db 10, 13, ' Enter the name of the person :$'
msg116 	db 10, 13, 10, 13, ' birthday reminder successfully created.$$$'
msg114 	db 10, 13, 10, 13, ' Sorry..!! Birthday reminder not found!$'
msg133 	db 10, 13, 10, 13, ' Yes..!! Birthday reminder found!$'
msg115 	db 10, 13, 10, 13, ' Access denied!$'
msg117   db 10, 13, 10, 13, ' birthday reminder successfully deleted.$'
msg126 	db 10, 13, '$'
msg130 	db 10, 13, 10, 13, ' Enter the date to viewed the name of person: $'
msg121 	db 10, 13, 10, 13, ' Path not found!$'
msg127 	db 10, 13, 'Press any key to continue$'
msg334  db 10, 13, 'sorry you were not born'
mmm  db 10, 13, 'enter the mnth of ur bdae'




msg1	db 10, 13, ' A - Create note'
	db 10, 13, ' B - View note'
	db 10, 13, ' C - Delete note'
        db 10 ,13, ' D - EXIT from note',10, 13
	db 10, 13, ' Enter your choice (A - D) : $'
msg2    db 10, 13, 10, 13, ' Enter a date for file to be created : $'
msg3    db 10, 13, 10, 13, ' Enter date of file to be deleted : $'
	
buffer1 db 80, 0, 80 dup(0)
buffer2 db 80, 0, 80 dup(0)
msg28 	db 10, 13, 10, 13, ' Do you want to enter data now??(YES->Y,NO->N)$'
msg29 	db 10, 13, ' Enter the data (Press Esc to stop) :', 10, 13, '$'
msg16 	db 10, 13, 10, 13, ' File successfully created.$'
msg14 	db 10, 13, 10, 13, ' File not found!$'
msg15 	db 10, 13, 10, 13, ' Access denied!$'
msgt	db 10, 13, 10, 13, ' want to add more notes : $'
msg17   db 10, 13, 10, 13, ' File successfully deleted.$'
msg26 	db 10, 13, '$'
msg30 	db 10, 13, 10, 13, ' Enter date of file to be viewed : $'
msg21 	db 10, 13, 10, 13, ' Path not found!$'
msg27 	db 10, 13, 'Press any key to continue$'

DS0     DB      0DH,0AH,0DH,0AH,'....IT IS CALENDAR + BIRTHDAY REMINDER + NOTE CREATOR + HOROSCOPE....$$'
        ;DB      0DH,0AH,0DH,0AH,'THIS  WILL DISPLAY CALENDAR OF ANY MONTH.....$$'
DS7     DB      0DH,0AH,'DO YOU WANT TO QUIT(YES->Y,NO->N)??',0DH,0AH,'$','$'    
DS1     DB      0DH,0AH,0DH,0AH,'ENTER YEAR BETWEEN(1882-2101)',0DH,0AH,'$','$'

DS2	DB   	0DH,0AH,0DH,0AH,'ENTER  MONTH(in capital letter):  ',0DH,0AH,0DH,0AH
	DB	'A->JANUARY',0DH,0AH
	DB	'B->FEBRUARY',0DH,0AH
	DB	'C->MARCH',0DH,0AH
	DB	'D->APRIL',0DH,0AH
	DB	'E->MAY',0DH,0AH
	DB	'F->JUNE',0DH,0AH
	DB	'G->JULY',0DH,0AH
	DB	'H->AUGUST',0DH,0AH
	DB	'I->SEPTEMBER',0DH,0AH
	DB	'J->OCTOBER',0DH,0AH
	DB	'K->NOVEMBER',0DH,0AH
	DB	'L->DECEMBER',0DH,0AH,'$','$'
	
DS5	DB	0DH,0AH,0DH,0AH,'Do you want to see your HOROSCOPE or Do u want to create a NOTE or'
	DB	0DH,0AH,0DH,0AH,'Do u want to check for BIRTHDAY REMINDER (YES->Y,NO->N)??',0DH,0AH,'$','$'
	
;DS6	DB	0DH,0AH,0DH,0AH,'WANT TO CREATE NOTE or VIEW NOTE IN THIS MONTH AND THIS YEAR(YES->Y,NO->N)??',0DH,0AH,'$','$'
DS4     DB      0DH,0AH,0DH,0AH,'ENTER DATE : ',0DH,0AH,'$','$'

INVLD	DB	0DH,0AH,0DH,0AH,'INVALID  CHOICE............$$'

NT_FND	DB	0DH,0AH,0DH,0AH,'NOT  FOUND............$$'
DS3     DB      0DH,0AH,'WANT  TO HAVE  A CALENDAR  FOR ANY OTHER MONTH(YES->Y,NO->N)??',0DH,0AH,'$','$'
                
YR      DB   7  DUP(?)
STR_DI    DW  ?
BUF1        DB    285 DUP(?)
	
HANDL    DW      ?

ARRAY1	DB	'1882  1893  1899  1905  1911  1922  1933  1939  1950  1961  1967  1978  1989  1995  2006  2017  2023  2034  2045  2051  2062  2073  2079  2090'
NO1	EQU	24

ARRAY2   DB	'1888  1928  1956  1984  2012  2040  2068  2096'
NO2	EQU	8

ARRAY3   DB            '1883  1894  1900  1906  1917  1923  1934  1945  1951  1962  1973  1979  1990  2001  2007  2018  2029  2035  2046  2057  2063  2074  2085  2091'		
		
ARRAY4	DB	'1912  1940  1968  1996  2024  2052  2080      '		

ARRAY5	DB	'1889  1895  1901  1907  1918  1929  1935  1946  1957  1963  1974  1985  1991  2002  2013  2019  2030  2041  2047  2058  2069  2075  2086  2097'		

ARRAY6	DB	'1884  1924  1952  1980  2008  2036  2064  2092'		
		
ARRAY7	DB	'1890  1902  1913  1919  1930  1941  1947  1958  1969  1975  1986  1997  2003  2014  2025  2031  2042  2053  2059  2070  2081  2087  2098      '

ARRAY8	DB	'1896  1908  1936  1964  1992  2020  2048  2076'		

ARRAY9	DB	'1885  1891  1903  1914  1925  1931  1942  1953  1959  1970  1981  1987  1998  2009  2015  2026  2037  2043  2054  2065  2071  2082  2093  2099'

ARRAY10	DB	'1920  1948  1976  2004  2032  2060  2088      '

ARRAY11	DB	'1886  1897  1909  1915  1926  1937  1943  1954  1965  1971  1982  1993  1999  2010  2021  2027  2038  2049  2055  2066  2077  2083  2094  2100'

ARRAY12	DB	'1892  1904  1932  1960  1988  2016  2044  2072'			

ARRAY13	DB	'1887  1898  1910  1921  1927  1938  1949  1955  1966  1977  1983  1994  2005  2011  2022  2033  2039  2050  2061  2067  2078  2089  2095  2101'		

ARRAY14	DB	'1944  1972  2000  2028  2056  2084'

msg134 db 13,10
db 13,10
db 13,15 dup(32),'Enter your birthday to know your horoscope','$'
db 13,10

month db 13,10
db 13,10,25 dup(32),'Months in the Calendar'
db 13,10
db 13,10,20 dup(32),'[A] January'
db 13,10,20 dup(32),'[B] February'
db 13,10,20 dup(32),'[C] March'
db 13,10,20 dup(32),'[D] April'
db 13,10,20 dup(32),'[E] May'
db 13,10,20 dup(32),'[F] June'
db 13,10,20 dup(32),'[G] July'
db 13,10,20 dup(32),'[H] August'
db 13,10,20 dup(32),'[I] September'
db 13,10,20 dup(32),'[J] October'
db 13,10,20 dup(32),'[K] November'
db 13,10,20 dup(32),'[L] December'
db 13,10
db 13,10,20 dup(32),'Enter the month:','$'

date db 13,10
db 13,10,20 dup(32),'Enter the date:','$'


cap db 13,10
db 13,10,25 dup(32),'CAPRICORN '
db 13,10,20 dup(32),'-- Planets in Capricorn will express themselves'
db 13,10,20 dup(32),'in a determined and serious manner, striving'
db 13,10,20 dup(32),'for honour and some kind of recognition in'
db 13,10,20 dup(32),'society. There is a desire and ability to'
db 13,10,20 dup(32),'reach the top through hard work and perseverence.','$'

aqu db 13,10
db 13,10,25 dup(32),'AQUARUIS '
db 13,10,20 dup(32),'-- in this sign express themselves in a unique'
db 13,10,20 dup(32),'and unconventional manner. This can lead to an'
db 13,10,20 dup(32),'experience of alienation or social isolation.'
db 13,10,20 dup(32),'Nevertheless the energy of Aquarius is in essence'
db 13,10,20 dup(32),'friendly and expresses itself in social relationships'
db 13,10,20 dup(32),'where shared ideals play a greater role than emotions.','$'

pis db 13,10
db 13,10,25 dup(32),'PISCES '
db 13,10,25 dup(32),'-- Pisces express themselves sensitively and in'
db 13,10,25 dup(32),'a rather diffuse manner. The enhanced emotional'
db 13,10,25 dup(32),'sensitivity in Pisces is often channelled into'
db 13,10,25 dup(32),'creative outlets, particularly in connection'
db 13,10,25 dup(32),'with music and film,but also in connection with'
db 13,10,25 dup(32),'Nature, and people who need social care.','$'

ari db 13,10
db 13,10,25 dup(32),'ARIES '
db 13,10,25 dup(32),'-- There is little timidity in people under this'
db 13,10,25 dup(32),'sign - like the Ram,Arians are confident'
db 13,10,25 dup(32),'doers who often forge ahead confidently, regardless'
db 13,10,25 dup(32),'of the consequences. This impulsiveness can sometimes'
db 13,10,25 dup(32),'lead to problemswhen they leap before they look.','$'

tau db 13,10
db 13,10,25 dup(32),'TAURUS '
db 13,10,25 dup(32),'-- Taurus is also connected with the resources of'
db 13,10,25 dup(32),'Nature, and the whole issue of value and worth.'
db 13,10,25 dup(32),'Therefore it is associated with finance,worldly'
db 13,10,25 dup(32),'goods and security. People with a strong emphasis'
db 13,10,25 dup(32),'in this sign tend to be materialistic,'
db 13,10,25 dup(32),'and often get stuck in a rut.','$'

gem db 13,10
db 13,10,25 dup(32),'GEMINI '
db 13,10,25 dup(32),'-- Negative manifestations of Gemini influences are'
db 13,10,25 dup(32),'a flightiness and unreliability,and a tendency to'
db 13,10,25 dup(32),' get involved with too many things at any one time.'
db 13,10,25 dup(32),'There is a love of ideas.Planets here manifest'
db 13,10,25 dup(32),'considerable versatility andmental skills '
db 13,10,25 dup(32),'in regard to all forms of communication.','$'

can db 13,10
db 13,10,25 dup(32),'CANCER '
db 13,10,25 dup(32),'-- Planets in this sign will often reflect a'
db 13,10,25 dup(32),'vulnerable character and oversensitive nature.'
db 13,10,25 dup(32),'There is a strong attachment to the home and'
db 13,10,25 dup(32),'awareness of the environment.'
db 13,10,25 dup(32),'Planets in Cancer come to expression most'
db 13,10,25 dup(32),'clearly in connection with the home and family.','$'

leo db 13,10
db 13,10,25 dup(32),'LEO '
db 13,10,25 dup(32),'-- When planets are expressed negatively in this'
db 13,10,25 dup(32),'sign there will often be pride,narcissism and'
db 13,10,25 dup(32),'self-importance. When expressed positively there is a'
db 13,10,25 dup(32),'warmthand joy in being, and a playful, romantic nature.','$'

vir db 13,10
db 13,10,25 dup(32),'VIRGO '
db 13,10,25 dup(32),'-- Planets in this sign express themselves in a'
db 13,10,25 dup(32),'perfectionistic way,and give rise to a tendency'
db 13,10,25 dup(32),'to both criticism and self-criticism.'
db 13,10,25 dup(32),'There is a drive to work hard and a strong'
db 13,10,25 dup(32),'motivation to behelpful and of service to others.','$'

lib db 13,10
db 13,10,25 dup(32),'LIBRA '
db 13,10,25 dup(32),'-- There is a strong concern with the principles'
db 13,10,25 dup(32),'of fairness and justice, and great interest'
db 13,10,25 dup(32),' in getting people to function smoothly together.','$'

sco db 13,10
db 13,10,25 dup(32),'SCORPIO '
db 13,10,25 dup(32),'-- Truth be told, these strong-willed folks'
db 13,10,25 dup(32),'are happy to serve others and can be quite'
db 13,10,25 dup(32),'helpful, as long as it wont hurt them.'
db 13,10,25 dup(32),'There is a secretiveness and compulsiveness which'
db 13,10,25 dup(32),'is hidden under a facade of strong self-control.','$'


sag db 13,10
db 13,10,25 dup(32),'SAGITTARIUS'
db 13,10,25 dup(32),'-- Sagittarius in characterised by a love of'
db 13,10,25 dup(32),'truth and righteousness, and an unfortunate '
db 13,10,25 dup(32),'tendency to express it rather too directly,'
db 13,10,25 dup(32),'even when not asked. There is a love of open'
db 13,10,25 dup(32),'horizons and travel and a need'
db 13,10,25 dup(32),'to expand on an inner intellectual level.','$'

wrong db 13,10
db 13,10,25 dup(32),'WRONG INPUT','$'
    		

DATA		ENDS

CODE	SEGMENT
	ASSUME DS:DATA,CS:CODE
	
START:	MOV AX,DATA
	MOV DS,AX

	MOV AX,3H		;for new screen
	INT 10H

	MOV AL,10H		;open video mode
	MOV AH,0
	INT 10H
	
        MOV AH,10H              ;screen color here 05 for pink screen
	MOV AL,0
	MOV BL,0
        MOV BH,08
	INT 10H

	MOV AX,0900H		;display  msg
	MOV  DX, OFFSET DS0
	INT 21H

BGN:	MOV AX,0900H		;display  msg
	MOV  DX, OFFSET  DS1
	INT 21H
	
	MOV  SI, OFFSET YR		;set maximum size for buffer YR
	MOV  AH,06
	MOV [SI+0H],AH
	
	MOV AH,0AH		;get year
	MOV  DX, OFFSET YR
	mov YEAR1,DX
	INT 21H

MNTH:	MOV AX,0900H		;display  msg
	MOV DX, OFFSET DS2
	INT 21H

	MOV AH,01H		;get month	
	INT 21H
	
	CMP  AL,'A'		;if it is january?
	JNE   B2			;no then go for next
	MOV BX,3000H		;if yes then store record no at memory  address 3000h
	MOV AX,0000H
	MOV [BX],AX
	JMP   NXT		

BGN2:	JMP  BGN			;manage far jump	
      	
            B2:	CMP  AL,'B'		;if it is february?
	JNE   B3			;no then go for next
	MOV BX,3000H		;if yes then store record no at memory  address 3000h
	MOV AX,0001H
	MOV [BX],AX
	JMP  NXT	
	
           B3:	CMP  AL,'C'		;if it is march?
	JNE   B4			;no then go for next
	MOV AX,0002H		;if yes then store record no at memory  address 3000h
	MOV BX,3000H
	MOV [BX],AX
	JMP  NXT	
	
           B4: 	CMP  AL,'D'		;if it is april?
	JNE   B5			;no then go for next
	MOV AX,0003H		;if yes then store record no at memory  address 3000h
	MOV BX,3000H
	MOV [BX],AX
	JMP  NXT	

          B5:	CMP  AL,'E'		;if it is may?
	JNE   B6			;no then go for next
	MOV AX,0004H		;if yes then store record no at memory  address 3000h
	MOV BX,3000H
	MOV [BX],AX
	JMP  NXT	
		
           B6:	CMP  AL,'F'		;if it is june?
	JNE   B7			;no then go for next
	MOV AX,0005H		;if yes then store record no at memory  address 3000h
	MOV BX,3000H
	MOV [BX],AX
	JMP  NXT	
	
            B7:	CMP  AL,'G'		;if it is july?
	JNE   B8			;no then go for next
	MOV AX,0006H		;if yes then store record no at memory  address 3000h
	MOV BX,3000H
	MOV [BX],AX
	JMP  NXT	
		
           B8:	CMP  AL,'H'		;if it is august? 
	JNE   B9			;no then go for next
	MOV AX,0007H		;if yes then store record no at memory  address 3000h
	MOV BX,3000H
	MOV [BX],AX
	JMP  NXT	
	
            B9:	CMP  AL,'I'		;if it is september?
	JNE   B10			;no then go for next
	MOV AX,0008H		;if yes then store record no at memory  address 3000h
	MOV BX,3000H
	MOV [BX],AX
	JMP  NXT	

           B10:	CMP  AL,'J'		;if it is october?
	JNE   B11			;no then go for next
	MOV AX,0009H		;if yes then store record no at memory  address 3000h
	MOV BX,3000H
	MOV [BX],AX
	JMP  NXT

	
	
            B11:	CMP  AL,'K'		;if it is november?
	JNE   B12			;no then go for next
	MOV AX,000AH		;if yes then store record no at memory  address 3000h
	MOV BX,3000H
	MOV [BX],AX
	JMP  NXT	

            B12:	CMP  AL,'L'		;if it is december?
	JNE   IN_VLD		;no then invalid
	MOV AX,000BH		;if yes then store record no at memory  address 3000h
	MOV BX,3000H
	MOV [BX],AX
	JMP  NXT

  IN_VLD: MOV AX,0900H		;display msg for invalid data
	MOV DX,OFFSET INVLD 
	INT 21H
	JMP  END11



NXT:	MOV  BL,NO1		;search filename in which calendar of  
	MOV  BH,1		;selected month is stored
	MOV  DI,OFFSET  ARRAY1	;store offset for file and pass size of array to BL
	MOV   STR_DI,DI
	CALL  FIND		;call FIND to search
	
	MOV  BL,NO2		;not found then check for next
	MOV  BH,2
	MOV  DI,OFFSET  ARRAY2
	MOV   STR_DI,DI
	CALL  FIND

	MOV  BL,NO1		;not found then check for next
	MOV  BH,3
	MOV  DI,OFFSET  ARRAY3
	MOV   STR_DI,DI
	CALL  FIND

	MOV  BL,NO2		;not found then check for next
	MOV  BH,4
	MOV  DI,OFFSET  ARRAY4
	MOV   STR_DI,DI
	CALL  FIND

	MOV  BL,NO1		;not found then check for next
	MOV  BH,5
	MOV  DI,OFFSET  ARRAY5
	MOV   STR_DI,DI
	CALL  FIND

	MOV  BL,NO2		;not found then check for next
	MOV  BH,6
	MOV  DI,OFFSET  ARRAY6
	MOV   STR_DI,DI
	CALL  FIND

	MOV  BL,NO1		;not found then check for next
	MOV  BH,7
	MOV  DI,OFFSET  ARRAY7
	MOV   STR_DI,DI
	CALL  FIND
	
	MOV  BL,NO2		;not found then check for next
	MOV  BH,8
	MOV  DI,OFFSET  ARRAY8
	MOV   STR_DI,DI
	CALL  FIND

	MOV  BL,NO1		;not found then check for next
	MOV  BH,9
	MOV  DI,OFFSET  ARRAY9
	MOV   STR_DI,DI
	CALL  FIND

	MOV  BL,NO2		;not found then check for next
	MOV  BH,10
	MOV  DI,OFFSET  ARRAY10
	MOV   STR_DI,DI
	CALL  FIND

	MOV  BL,NO1		;not found then check for next
	MOV  BH,11
	MOV  DI,OFFSET  ARRAY11
	MOV   STR_DI,DI
	CALL  FIND

	MOV  BL,NO2		;not found then check for next
	MOV  BH,12
	MOV  DI,OFFSET  ARRAY12
	MOV   STR_DI,DI
	CALL  FIND

	MOV  BL,NO1		;not found then check for next
	MOV  BH,13
	MOV  DI,OFFSET  ARRAY13
	MOV   STR_DI,DI
	CALL  FIND

	MOV  BL,NO2		;not found then check for next
	MOV  BH,14
	MOV  DI,OFFSET  ARRAY14
	MOV   STR_DI,DI
	CALL  FIND

	MOV AX,0900H		;display msg if not found
	MOV DX, OFFSET NT_FND
	INT 21H

	JMP    END11		; go  for end
	
	FIND  PROC  		;procedure which compare selected year  
  CHECK:	MOV   DX,0		;with each year stored in each array

  
  
      NXT2:	MOV   SI,OFFSET YR	;set pointer for selected year
	INC SI
	INC SI
	MOV   DI,STR_DI		;ser pointer for array
	ADD    DI,DX		;mov pointer for next year in array
	MOV   CX,4		;set counter
          LP:	MOV  AH,[DI]		;get data byte
	MOV  AL,[SI]		;get data byte
	CMP   AH,AL		;compare both 
	JNE     NXT1		;if not same go for next year in array
	
	INC  DI			;increament pointers for next byte
	INC  SI			
	DEC  CX	
	CMP CX,0000H		;decrement counter
	JNE  LP			;if counter!=0 then go for next byte
	  			
	JMP    FOUND		;else selected year is found
       
      NXT1:	ADD DX,6		;increament counter by 6 to point to next  
	DEC BL
	CMP BL,0			;year and  decrement counter by 1
	JNE   NXT2		;if conter!=0 go for next year in array
	RET			;else go for  next array
        FIND  ENDP              ;end procedure
	
 FOUND:	CMP BH,01		;if selected year is found then check
	JNE   N2			;in which  array it is found?
	MOV DX,OFFSET FILE1	;if in 1st array then store offset
	MOV BX,3050H		;for that file at address 3050h
	MOV [BX],DX		;else go for next checking
	JMP     DIS		;go for display

           N2:	CMP BH,02		;if in 2nd array then store offset
	JNE   N3			;for that file at address 3050h
	MOV DX,OFFSET FILE2	;else go for next checking
	MOV BX,3050H
	MOV [BX],DX
	JMP  DIS			;go for display
					
  
  
          N3:	CMP BH,03		;if in 3rd array then store offset
	JNE   N4			;for that file at address 3050h
	MOV DX,OFFSET FILE3	;else go for next checking
	MOV BX,3050H
	MOV [BX],DX
	JMP   DIS			;go for display
	
            N4:	CMP BH,04		;if in 4th array then store offset
	JNE   N5			;for that file at address 3050h
	MOV DX,OFFSET FILE4	;else go for next checking
	MOV BX,3050H
	MOV [BX],DX
	JMP   DIS			;go for display
	
            N5:	CMP BH,05		;if in 5th array then store offset
	JNE   N6			;for that file at address 3050h
	MOV DX,OFFSET FILE5	;else go for next checking
	MOV BX,3050H
	MOV [BX],DX
	JMP   DIS			;go for display
	
            N6:	CMP BH,06		;if in 6th array then store offset
	JNE   N7			;for that file at address 3050h
	MOV DX,OFFSET FILE6	;else go for next checking
	MOV BX,3050H
	MOV [BX],DX
	JMP   DIS			;go for display

	
	
            N7:	CMP BH,07		;if in 7th array then store offset
	JNE   N8			;for that file at address 3050h
	MOV DX,OFFSET FILE7	;else go for next checking
	MOV BX,3050H
	MOV [BX],DX
	JMP   DIS			;go for display
	
            N8:	CMP BH,08		;if in 8th array then store offset
	JNE   N9			;for that file at address 3050h
	MOV DX,OFFSET FILE8	;else go for next checking
	MOV BX,3050H
	MOV [BX],DX
	JMP   DIS			;go for display
	
            N9:	CMP BH,09H		;if in 9th array then store offset
	JNE   N10			;for that file at address 3050h
	MOV DX,OFFSET FILE9	;else go for next checking
	MOV BX,3050H
	MOV [BX],DX
	JMP   DIS			;go for display
	
           N10:	CMP BH,10		;if in 10th array then store offset
	JNE   N11			;for that file at address 3050h
	MOV DX,OFFSET FILE10	;else go for next checking
	MOV BX,3050H
	MOV [BX],DX
	JMP   DIS			;go for display
	
	
          N11:	CMP BH,11		;if in 11th array then store offset
	JNE   N12			;for that file at address 3050h
	MOV DX,OFFSET FILE11	;else go for next checking
	MOV BX,3050H
	MOV [BX],DX
	JMP   DIS			;go for display
	
          N12:	CMP BH,12		;if in 12th array then store offset
	JNE   N13			;for that file at address 3050h
	MOV DX,OFFSET FILE12	;else go for next checking
	MOV BX,3050H
	MOV [BX],DX
	JMP   DIS			;go for display


	
          N13:	CMP BH,13		;if in 13th array then store offset
	JNE   N14			;for that file at address 3050h
	MOV DX,OFFSET FILE13	;else go for next checking
	MOV BX,3050H
	MOV [BX],DX
	JMP   DIS			;go for display

	MNTH1 : JMP MNTH
	
         N14:	MOV DX,OFFSET FILE14	;it is in 13th array so store offset
	MOV BX,3050H		;for that file at address 3050h
	MOV [BX],DX		
	JMP   DIS			;go for display

     BGN1:   JMP  BGN2		;manage far jump

        DIS:   MOV AX,3D00H		;display calender of selected month 
	MOV BX,3050H		;for selected year
	MOV DX,[BX]		;get offset of file and open it
	INT 21H			;using int 21h dos function
	MOV   HANDL,AX		;save handle 

	MOV  AX,280		;store size of record
	MOV BX,3000H		;get record number
	MOV BP,[BX]
	MUL BP			;multiply by size
	MOV CX,DX
	MOV DX,AX
	MOV BX,HANDL		;get handle
	MOV AX,4200H		;move pointer to record to be read
	INT 21H			;using int 21h ods function
	
	MOV AH,3FH		;read record form file
	MOV BX,HANDL
	MOV CX,280		;get record size
	MOV DX,OFFSET BUF1	;set offset of buffer to store
	INT 21H 			;record
	
	MOV AH,3EH		;close file
	MOV BX,HANDL		;get handle
	INT 21H

	MOV AX,0900H		;display buffer where record
	MOV DX,OFFSET BUF1		;is stored
	INT 21H

NEXT2:
	MOV AX,0900H		;display  msg
	MOV  DX, OFFSET DS5
	INT 21H

	MOV AH,01H		;read choice from user
	INT 21H
	
	CMP AL,'Y'
        JZ  NEXT22

	
	
	;ASK FOR CALENDER OF ODER MNTH
	
ASK:	
	MOV AX,0900H		;display msg 
	MOV DX, OFFSET DS3
	INT 21H

	MOV AH,01H		;read choice from user
	INT 21H
	
	
	
	CMP AL,'Y'		;if yes then go for again 
        JZ   MNTH1                      ;else go to exit
	JMP END11

    NEXT22:
	lea dx, msg101             ; display menu
	call disp1
	call readch               ; read choice
	and al, 0fh
	cmp al, 1                 ; branch to appropriate
	jnz a                     ; module depending on
	jmp begin1               ; the choice
a :	cmp al, 2
	jnz b
	jmp begin
b :	cmp al, 3
	jnz c
	jmp h123
c:	cmp al,4

; NOT TO ASK AGAIN
	
	jmp ASK


begin: 	lea dx, msg1              ; display menu
	call disp1
	call readch               ; read choice
	and al, 0fh
	cmp al, 1                 ; branch to appropriate
	jnz a1                    ; module depending on
	jmp cr_file               ; the choice
a1 :	cmp al, 2
	jnz b1
	jmp vw_file
b1 :	cmp al, 3
	jnz c1
	jmp dl_file
c1:	cmp al,4

	jmp NEXT2
	

begin1: 	lea dx, msg102             ; display menu
	call disp1
	call readch               ; read choice
	and al, 0fh
	cmp al, 1                 ; branch to appropriate
	jnz a2                     ; module depending on
	jmp cr_bd               ; the choice
a2 :	cmp al, 2
	jnz b22
	jmp vw_bd
b22 :	cmp al, 3
	jnz c2
	jmp dl_bd
c2:	cmp al,4

	
	jmp NEXT2

cr_file:lea dx, msg2              ; module for creating a file
	call disp1
	call read1                ; read name of file to be
	lea dx, buffer1[2]        ; created
	mov cx, 0
	mov ah, 3ch               ; create the file
	int 21h
	;push ax
	; push file handl onto stack.
	mov handl,ax
	lea dx, msg28             ; ask if data is to
	call disp1                ; be input
	call readch               ; read choice
	and al, 0fh
	cmp al, 9                 ; if choice = 'Y' or 'y'
	jnz no
	lea dx, msg29
	call disp1
	mov bx,handl
	;pop bx                    ; retrieve file handl from stack.

	mov buffer1[1], 0
	
	
write :	call readch               ; read data character by character.
	mov buffer1[0], al
	cmp buffer1[0], 27        ; check if character is 'Esc'(stop).
	jz no
	cmp buffer1[0], 0dh
	jne neol
	lea dx, msg26
	call disp1
	mov si, dx
	mov byte ptr ds:[si + 2], 0
	mov ah, 3
	jmp com
neol :	mov ah, 1
	lea dx, buffer1[0]
com :	mov ah, 40h               ; write to the file
	int 21h
	mov byte ptr ds:[si + 2], '$'
	jmp write
AAB: JMP cr_file	
	
no :mov bx,handl
	mov ah,3EH
	int 21h
	lea dx, msg16             ; creation successful
	call disp1
	call readch
	lea dx, msgt
	call disp1                ; be input
	call readch               ; read choice
	and al, 0fh
	cmp al, 9 
	jz AAB  
	jmp begin


vw_file:lea dx, msg30             ; module to view the
	call disp1		  ; contents of a file
	
	; read name of file
	lea dx, msg26
	call disp1
	call read1 
	;call disp1
	lea dx, buffer1[2]        ; open the file
	mov ax, 3d02h
	int 21h
	mov buffer2[0], 0
	cmp ax, 2                 ; error if file not found
	jnz v_err
	lea dx, msg14
	call disp1
	jmp endv
v_err : cmp ax, 3                 ; error if path not found
	jnz cont2
	lea dx, msg21
	call disp1
	jmp endv

cont2 :	mov handl,ax
	;push ax
	mov bx,handl
	mov cx, 1
	lea dx, buffer1
	mov ah, 3fh               ; read the file
	int 21h
	cmp ax, 0                 ; stop if end-of-file
	jz endv
	cmp buffer1[0], 0dh
	jnz show
	inc buffer2[0]
	cmp buffer2[0], 23        ; check if end of page
	jnz show
	lea dx, msg27
	call disp1
	call readch
	mov buffer2[0], 0
	lea dx, msg26
	call disp1

show : 	mov buffer1[1], '$'
	lea dx, buffer1
	call disp1
	mov ax,handl
	;pop ax
	jmp cont2


endv :  call readch
	JMP NEXT2


dl_file:lea dx, msg3              ; module for deleting a file
	call disp1
	call read1                ; read name of file to be deleted
	lea dx, buffer1[2]
	mov ah, 41h               ; delete the file
	int 21h
	cmp ax, 2                 ; error if file not found
	jnz err2
	lea dx, msg14
	call disp1
	jmp endd
err2 :  cmp ax, 5                 ; error if access denied
	jnz done
	lea dx, msg16
	call disp1
	jmp endd
done :  lea dx, msg17             ; delete successful
	call disp1
endd :	call readch
	jmp begin

;for bdae

cr_bd:lea dx, msg112              ; module for creating a file
	call disp1
	call read1                ; read name of file to be
	lea dx, buffer1[2]        ; created
	mov cx, 0
	mov ah, 3ch               ; create the file
	int 21h
	;push ax
	; push file handl onto stack.
	mov handl,ax
	lea dx, msg333
	call disp1
	
	MOV  SI, OFFSET YR		;set maximum size for buffer YR
	MOV  AH,06
	MOV [SI+0H],AH
	
	MOV AH,0AH		;get year
	MOV  DX, OFFSET YR
	MOV YEAR2,DX
	INT 21H
	
	MOV  SI, OFFSET mmm		;set maximum size for buffer mn
	MOV  AH,06
	MOV [SI+0H],AH
	
	MOV AH,0AH		;get year
	MOV  DX, OFFSET mmm
	INT 21H
	
	
	lea dx, msg128             ; ask if data is to
	call disp1                ; be input
	call readch               ; read choice
	and al, 0fh
	cmp al, 9                 ; if choice = 'Y' or 'y'
	jnz no_bd
	lea dx, msg129
	call disp1
	mov bx,handl
	;pop bx                    ; retrieve file handl from stack.

	mov buffer1[1], 0
	
	
write_bd :	call readch               ; read data character by character.
	mov buffer1[0], al
	cmp buffer1[0], 27        ; check if character is 'Esc'(stop).
	jz no_bd
	cmp buffer1[0], 0dh
	jne neol_bd
	lea dx, msg126
	call disp1
	mov si, dx
	mov byte ptr ds:[si + 2], 0
	mov CX, 3
	jmp com_bd
neol_bd :	mov CX, 1
	lea dx, buffer1[0]
com_bd :	mov ah, 40h               ; write to the file
	int 21h
	mov byte ptr ds:[si + 2], '$'
	jmp write_bd
AAB_bd: JMP cr_bd	
	
no_bd :mov bx,handl
	mov ah,3EH
	int 21h
	lea dx, msg116             ; creation successful
	call disp1
	call readch
	lea dx, msgt_bd
	call disp1                ; be input
	call readch               ; read choice
	and al, 0fh
	cmp al, 9 
	jz AAB_bd 
	jmp begin1


vw_bd:lea dx, msg130             ; module to view the
	call disp1		  ; contents of a file
	
	; read name of file
	lea dx, msg126
	call disp1
	call read1 
	mov cx,YEAR1
	MOV BX,YEAR2
	
	cmp CX,BX
	JLE yror
	
	;call disp1
	lea dx, buffer1[2]        ; open the file
	mov ax, 3d02h
	int 21h
	mov buffer2[0], 0
	cmp ax, 2                 ; error if file not found
	jnz v_err_bd
	lea dx, msg114
	call disp1
	jmp endv_bd
v_err_bd : cmp ax, 3                 ; error if path not found
	jnz cont2_bd
	lea dx, msg121
	call disp1
	jmp endv_bd
	
yror:
	mov ah,09h
	mov dx, offset msg334
	int 21h	
	jmp endv_bd

cont2_bd :	mov handl,ax
	;push ax
	mov bx,handl
	mov cx, 1
	lea dx, buffer1
	mov ah, 3fh               ; read the file
	int 21h
	cmp ax, 0                 ; stop if end-of-file
	jz endv_bd
	cmp buffer1[0], 0dh
	jnz show_bd
	inc buffer2[0]
	cmp buffer2[0], 23        ; check if end of page
	jnz show_bd
	lea dx, msg127
	call disp1
	call readch
	mov buffer2[0], 0
	lea dx, msg126
	call disp1

show_bd : 	mov buffer1[1], '$'
	lea dx, buffer1
	call disp1
	mov ax,handl
	;pop ax
	jmp cont2_bd


endv_bd :  call readch
	JMP begin1


dl_bd:lea dx, msg113              ; module for deleting a file
	call disp1
	call read1                ; read name of file to be deleted
	lea dx, buffer1[2]
	mov ah, 41h               ; delete the file
	int 21h
	cmp ax, 2                 ; error if file not found
	jnz err2_bd
	lea dx, msg114
	call disp1
	jmp endd_bd
err2_bd :  cmp ax, 5                 ; error if access denied
	jnz done_bd
	lea dx, msg116
	call disp1
	jmp endd
done_bd :  lea dx, msg117             ; delete successful
	call disp1
endd_bd :	call readch
	jmp begin1


	
disp1 proc                ; module for display of
	  mov ah, 09h             ; a string on screen
	  int 21h
	  ret
disp1 endp

readch proc               ; module for reading a
	  mov ah, 01h             ; character from keyboard
	  int 21h
	  ret
readch endp


read1 proc                ; module for reading
	  mov [buffer1], 80       ; first string
	  lea dx, buffer1
	  mov ah, 0ah             ; read string from keyboard
	  int 21h
	  mov bl, buffer1[1]
	  CMP BL, 33
	  mov bh, 0
	  add bx, 2
	  mov buffer1[bx], 0      ; ASCIIZ string, so
	  ret                     ; terminate with 0
read1 endp


END11: MOV AX,0900H		;display msg 
	MOV DX, OFFSET DS7
	INT 21H

	MOV AH,01H		;read choice from user
	INT 21H
	
	
	
	CMP AL,'Y'		;if yes then go for again 
        JZ   EX                       ;else go to exit
	JMP BGN


 EX:	MOV AX,4C00H		;return to dos
		INT 21H
	
        	INT 3
			
h123:
mes:
mov ah,09h
mov dx, offset msg134
int 21h

enterMonth:
mov ah,09h
mov dx, offset month
int 21h
mov ah,01h
int 21h
mov bh,al
mov cl,al
cmp bh,41h
jge date1

Date1:
mov ah,09h
mov dx, offset date
int 21h
mov ah,0Ah
int 21h
mov bl,al
mov ch,al

;the comparison

n31:
mov al,'A'
cmp cl,al
je q1
jmp n32
q1: 
mov ah,21
cmp ah,ch
jle q2
jmp n32
q2:
jmp janA

n32:
mov al,'A'
cmp cl,al
je q3
jmp n33
q3: 
mov ah,22
cmp ah,ch
jg q4
jmp n33
q4:
jmp janB

n33:
mov al,'B'
cmp cl,al
je q5
jmp n34
q5: 
mov ah,20
cmp ah,ch
jle q6
jmp n34
q6:
jmp febA

n34:
mov al,'B'
cmp cl,al
je q7
jmp n35
q7: 
mov ah,20
cmp ah,ch
jg q8
jmp n35
q8:
jmp febB

n35:
mov al,'C'
cmp cl,al
je q9
jmp n36
q9: 
mov ah,20
cmp ah,ch
jle q10
jmp n36
q10:
jmp marA

n36:
mov al,'C'
cmp cl,al
je q11
jmp n37
q11: 
mov ah,20
cmp ah,ch
jg q12
jmp n37
q12:
jmp marB

n37:
mov al,'D'
cmp cl,al
je q13
jmp n38
q13: 
mov ah,20
cmp ah,ch
jle q14
jmp n38
q14:
jmp aprA

n38:
mov al,'D'
cmp cl,al
je q15
jmp n39
q15: 
mov ah,21
cmp ah,ch
jg q16
jmp n38
q16:
jmp aprB

n39:
mov al,'E'
cmp cl,al
je q17
jmp n310
q17: 
mov ah,21
cmp ah,ch
jle q18
jmp n310
q18:
jmp mayA

n310:
mov al,'E'
cmp cl,al
je q19
jmp n311
q19: 
mov ah,22
cmp ah,ch
jg q20
jmp n311
q20:
jmp mayB

n311:
mov al,'F'
cmp cl,al
je q21
jmp n312
q21: 
mov ah,21
cmp ah,ch
jle q22
jmp n312
q22:
jmp junA

n312:
mov al,'F'
cmp cl,al
je q23
jmp n313
q23: 
mov ah,22
cmp ah,ch
jg q24
jmp n313
q24:
jmp junB

n313:
mov al,'G'
cmp cl,al
je q25
jmp n314
q25: 
mov ah,22
cmp ah,ch
jle q26
jmp n314
q26:
jmp julA

n314:
mov al,'G'
cmp cl,al
je q27
jmp n15
q27: 
mov ah,23
cmp ah,ch
jg q28
jmp n15
q28:
jmp julB

n15:
mov al,'H'
cmp cl,al
je q29
jmp n16
q29: 
mov ah,22
cmp ah,ch
jle q30
jmp n16
q30:
jmp augA

n16:
mov al,'H'
cmp cl,al
je q31
jmp n17
q31: 
mov ah,23
cmp ah,ch
jg q32
jmp n17
q32:
jmp augB

n17:
mov al,'I'
cmp cl,al
je q33
jmp n18
q33: 
mov ah,22
cmp ah,ch
jle q34
jmp n18
q34:
jmp sepA

n18:
mov al,'I'
cmp cl,al
je q35
jmp n19
q35: 
mov ah,23
cmp ah,ch
jg q36
jmp n19
q36:
jmp sepB

n19:
mov al,'J'
cmp cl,al
je q37
jmp n20
q37: 
mov ah,23
cmp ah,ch
jle q38
jmp n20
q38:
jmp octA

n20:
mov al,'J'
cmp cl,al
je q39
jmp n21
q39: 
mov ah,23
cmp ah,ch
jg q40
jmp n21
q40:
jmp octB

n21:
mov al,'K'
cmp cl,al
je q41
jmp n22
q41: 
mov ah,21
cmp ah,ch
jge q42
jmp n22
q42:
jmp novA

n22:
mov al,'K'
cmp cl,al
je q43
jmp n23
q43: 
mov ah,22
cmp ah,ch
jle q44
jmp n23
q44:
jmp novB

n23:
mov al,'L'
cmp cl,al
je q45
jmp n24
q45: 
mov ah,20
cmp ah,ch
jge q46
jmp n24
q46:
jmp decA

n24:
mov al,'L'
cmp cl,al
je q47
jmp exe
q47: 
mov ah,21
cmp ah,ch
jle q48
jmp exe
q48:
jmp decB

;the output

janA:

mov ah,09h
mov dx, offset cap
int 21h
jmp exe

janB:
mov ah,09h
mov dx, offset aqu
int 21h
jmp exe


febA:
mov ah,09h
mov dx, offset aqu
int 21h
jmp exe

febB:
mov ah,09h
mov dx, offset pis
int 21h
jmp exe


marA:
mov ah,09h
mov dx, offset pis
int 21h
jmp exe

marB:
mov ah,09h
mov dx, offset ari
int 21h
jmp exe




aprA:
mov ah,09h
mov dx, offset ari
int 21h
jmp exe

aprB:
mov ah,09h
mov dx, offset tau
int 21h
jmp exe


mayA:
mov ah,09h
mov dx, offset tau
int 21h
jmp exe

mayB:
mov ah,09h
mov dx, offset gem
int 21h
jmp exe


junA:
mov ah,09h
mov dx, offset gem
int 21h
jmp exe

junB:
mov ah,09h
mov dx, offset can
int 21h
jmp exe


julA:
mov ah,09h
mov dx, offset can
int 21h
jmp exe

julB:
mov ah,09h
mov dx, offset leo
int 21h
jmp exe


augA:
mov ah,09h
mov dx, offset leo
int 21h
jmp exe

augB:
mov ah,09h
mov dx, offset vir
int 21h
jmp exe


sepA:
mov ah,09h
mov dx, offset vir
int 21h
jmp exe

sepB:
mov ah,09h
mov dx, offset lib
int 21h
jmp exe


octA:
mov ah,09h
mov dx, offset lib
int 21h
jmp exe

octB:
mov ah,09h
mov dx, offset sco
int 21h
jmp exe


novA:
mov ah,09h
mov dx, offset sco
int 21h
jmp exe

novB:
mov ah,09h
mov dx, offset sag
int 21h
jmp exe


decA:
mov ah,09h
mov dx, offset sag
int 21h
jmp exe

decB:
mov ah,09h
mov dx, offset cap
int 21h
jmp exe


invalid:
mov ah,09h
mov dx,offset wrong
int 21h

exe:

 jmp NEXT2
			
CODE 	ENDS	
	END  START
