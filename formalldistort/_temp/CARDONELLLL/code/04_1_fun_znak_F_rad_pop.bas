Attribute VB_Name = "function_znak_F_rad_pop"
function znak_F_rad_pop(XdS,YdS,ZdS,AdS,BdS,CdS,Xko,Yko,Zko,Ako,Bko,Cko,ko_do_rul)

dim Akol#,Bkol#,Ckol#,Dkol#,T#,XP0ko#

Akol = (BdS)*(Cko)-(CdS)*(Bko)
Bkol = -(AdS)*(Cko)+(CdS)*(Ako)
Ckol = (AdS)*(Bko)-(BdS)*(Ako)
Dkol = -(Akol*Xko+Bkol*Yko+Ckol*Zko)

T = -(Akol*XdS+Bkol*YdS+Ckol*ZdS+Dkol)/(Akol^2+Bkol^2+Ckol^2)
XP0ko = XdS+Akol*T

        if napravo=1 & nalevo=0 then
    if ko_do_rul=1 then
if XdS > XP0ko then znak_F_rad_pop=1
elseif XdS = XP0ko then znak_F_rad_pop=0
elseif XdS < XP0ko then znak_F_rad_pop=-1
end if
    elseif ko_do_rul=-1 then
if XdS > XP0ko then znak_F_rad_pop=-1
elseif XdS = XP0ko then znak_F_rad_pop=0
elseif XdS < XP0ko then znak_F_rad_pop=1
end if
    end if
        elseif nalevo=1 & napravo=0 then
    if ko_do_rul=1 then
if XdS > XP0ko then znak_F_rad_pop=-1
elseif XdS = XP0ko then znak_F_rad_pop=0
elseif XdS < XP0ko then znak_F_rad_pop=1
end if
    elseif ko_do_rul=-1 then
if XdS > XP0ko then znak_F_rad_pop=1
elseif XdS = XP0ko then znak_F_rad_pop=0
elseif XdS < XP0ko then znak_F_rad_pop=-1
end if
    end if
        end if

end function
