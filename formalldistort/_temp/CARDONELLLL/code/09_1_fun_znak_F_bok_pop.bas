Attribute VB_Name = "function_znak_F_bok_pop"
function znak_F_bok_pop(YdS,AdS,BdS,CdS,Yko,Yop)

dim YLdS#,T#

if CdS > 0 then: T=1000
elseif CdS < 0 then: T=-1000
end if
YLdS = YdS + T*BdS

if (YLdS > YdS) & (Yop > Yko) then
if acos(abs(cosLL(AdS,BdS,CdS,0,1,0)))>acos(abs(cosLL(A1,B1,C1,0,1,0))) then znak_F_bok_pop=-1: goto prblg
if acos(abs(cosLL(AdS,BdS,CdS,0,1,0)))=acos(abs(cosLL(A1,B1,C1,0,1,0))) then znak_F_bok_pop=0: goto prblg
if acos(abs(cosLL(AdS,BdS,CdS,0,1,0)))<acos(abs(cosLL(A1,B1,C1,0,1,0))) then znak_F_bok_pop=1: goto prblg
end if

if (YLdS > YdS) & (Yop = Yko) then znak_F_bok_pop=1: goto prblg

if (YLdS > YdS) & (Yop < Yko) then znak_F_bok_pop=1: goto prblg

if (YLdS = YdS) & (Yop > Yko) then znak_F_bok_pop=-1: goto prblg

if (YLdS = YdS) & (Yop = Yko) then znak_F_bok_pop=0: goto prblg

if (YLdS = YdS) & (Yop < Yko) then znak_F_bok_pop=1: goto prblg

if (YLdS < YdS) & (Yop > Yko) then znak_F_bok_pop=-1: goto prblg

if (YLdS < YdS) & (Yop = Yko) then znak_F_bok_pop=-1: goto prblg

if (YLdS < YdS) & (Yop < Yko) then
if acos(abs(cosLL(AdS,BdS,CdS,0,1,0)))>acos(abs(cosLL(A1,B1,C1,0,1,0))) then znak_F_bok_pop=1: goto prblg
if acos(abs(cosLL(AdS,BdS,CdS,0,1,0)))=acos(abs(cosLL(A1,B1,C1,0,1,0))) then znak_F_bok_pop=0: goto prblg
if acos(abs(cosLL(AdS,BdS,CdS,0,1,0)))<acos(abs(cosLL(A1,B1,C1,0,1,0))) then znak_F_bok_pop=-1: goto prblg
end if

prblg:
end function
