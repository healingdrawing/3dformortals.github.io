Attribute VB_Name = "Sub_F_win_kol"
Sub F_win_kol()


dim AdS#,BdS#,CdS#,DdS#

for j = 1 to n_ko


call vrawenie_koles(j)
rem имеем E_prot(j), o_omega_prot(j)

call M_dvigaet()
M_dvi(j) = (M_dvi_vert(j)^2 + M_dvi_pop(j)^2 + M_dvi_prod(j)^2)^0.5
rem имеем  M_dvi 

M_win_kol(j) = M_dvi(j)
E_okr(j) = (E_okr_vert(j)^2 + E_okr_pop(j)^2 + E_okr_prod(j)^2)^0.5

PRO_win_okr(j) = E_okr(j)/C_win_okr(j)

if n_dS_kon(j)>0 then

for i = 1 to n_dS_kon(j)

call ABCD_P(dS_kon(1,i,j),dS_kon(2,i,j),dS_kon(3,i,j),dS_kon(4,i,j),dS_kon(5,i,j),dS_kon(6,i,j),dS_kon(7,i,j),dS_kon(8,i,j),dS_kon(9,i,j),AdS,BdS,CdS,DdS)

cos_L_kol_L_ko_vert = abs((((BdS)*(C_ko(j))-(CdS)*(B_ko(j)))*A1 + (-(AdS)*(C_ko(j))+(CdS)*(A_ko(j)))*B1 + ((AdS)*(B_ko(j))-(BdS)*(A_ko(j)))*C1)/((((BdS)*(C_ko(j))-(CdS)*(B_ko(j)))^2 + (-(AdS)*(C_ko(j))+(CdS)*(A_ko(j)))^2 + ((AdS)*(B_ko(j))-(BdS)*(A_ko(j)))^2)^0.5*(A1^2 + B1^2 + C1^2)^0.5))
cos_L_kol_L_ko_pop = abs((((BdS)*(C_ko(j))-(CdS)*(B_ko(j)))*A2 + (-(AdS)*(C_ko(j))+(CdS)*(A_ko(j)))*B2 + ((AdS)*(B_ko(j))-(BdS)*(A_ko(j)))*C2)/((((BdS)*(C_ko(j))-(CdS)*(B_ko(j)))^2 + (-(AdS)*(C_ko(j))+(CdS)*(A_ko(j)))^2 + ((AdS)*(B_ko(j))-(BdS)*(A_ko(j)))^2)^0.5*(A2^2 + B2^2 + C2^2)^0.5))
cos_L_kol_L_ko_prod = abs((((BdS)*(C_ko(j))-(CdS)*(B_ko(j)))*A3 + (-(AdS)*(C_ko(j))+(CdS)*(A_ko(j)))*B3 + ((AdS)*(B_ko(j))-(BdS)*(A_ko(j)))*C3)/((((BdS)*(C_ko(j))-(CdS)*(B_ko(j)))^2 + (-(AdS)*(C_ko(j))+(CdS)*(A_ko(j)))^2 + ((AdS)*(B_ko(j))-(BdS)*(A_ko(j)))^2)^0.5*(A3^2 + B3^2 + C3^2)^0.5))

dF_win_kol = M_win_kol(j)/dR_kat(i,j)*dS_kon(0,i,j)/S_kon(j)

dF_win_kol_vert = dF_win_kol*cos_L_kol_L_ko_vert*znak_F_kol_vert(M_win_kol(j), AdS, BdS, CdS, DdS, Ako, Bko, Cko, dS_kon(10,i,j), dS_kon(11,i,j), dS_kon(12,i,j))
dF_win_kol_pop = dF_win_kol*cos_L_kol_L_ko_pop*znak_F_kol_pop(M_win_kol(j), ko_do_rul(j))
dF_win_kol_prod = dF_win_kol*cos_L_kol_L_ko_prod*znak_F_kol_prod(M_win_kol(j))

F_win_kol_vert(j) = F_win_kol_vert(j)+dF_win_kol_vert
F_win_kol_pop(j) = F_win_kol_pop(j)+dF_win_kol_pop
F_win_kol_prod(j) = F_win_kol_prod(j)+dF_win_kol_prod

next i

cos_L_ko_cm_L_cm_vert = ((Xcm-Xko(j))*A1 + (Ycm-Yko(j))*B1 + (Zcm-Zko(j))*C1)/(((Xcm-Xko(j))^2 + (Ycm-Yko(j))^2 + (Zcm-Zko(j))^2)^0.5*(A1^2 + B1^2 + C1^2)^0.5)
cos_L_ko_cm_L_cm_pop = ((Xcm-Xko(j))*A2 + (Ycm-Yko(j))*B2 + (Zcm-Zko(j))*C2)/(((Xcm-Xko(j))^2 + (Ycm-Yko(j))^2 + (Zcm-Zko(j))^2)^0.5*(A2^2 + B2^2 + C2^2)^0.5)
cos_L_ko_cm_L_cm_prod = ((Xcm-Xko(j))*A3 + (Ycm-Yko(j))*B3 + (Zcm-Zko(j))*C3)/(((Xcm-Xko(j))^2 + (Ycm-Yko(j))^2 + (Zcm-Zko(j))^2)^0.5*(A3^2 + B3^2 + C3^2)^0.5)

cos_L_ko_cm_L_ko_pop = ((Xcm-Xko(j))*A2 + (Ycm-Yko(j))*B2 + (Zcm-Zko(j))*C2)/(((Xcm-Xko(j))^2 + (Ycm-Yko(j))^2 + (Zcm-Zko(j))^2)^0.5*(A2^2 + B2^2 + C2^2)^0.5)
cos_L_ko_cm_L_ko_prod = ((Xcm-Xko(j))*A3 + (Ycm-Yko(j))*B3 + (Zcm-Zko(j))*C3)/(((Xcm-Xko(j))^2 + (Ycm-Yko(j))^2 + (Zcm-Zko(j))^2)^0.5*(A3^2 + B3^2 + C3^2)^0.5)

rem F_win_kol_cm = F_win_kol_pop*cos_L_ko_cm_L_ko_pop+F_win_kol_prod*cos_L_ko_cm_L_ko_prod

F_win_kol_cm_vert(j) = (F_win_kol_pop(j)*cos_L_ko_cm_L_ko_pop*znak_pop_cm(F_win_kol_pop(j),1)+F_win_kol_prod(j)*cos_L_ko_cm_L_ko_prod*znak_prod_cm(F_win_kol_prod(j),1))*cos_L_ko_cm_L_cm_vert
F_win_kol_cm_pop(j) = (F_win_kol_pop(j)*cos_L_ko_cm_L_ko_pop*znak_pop_cm(F_win_kol_pop(j),2)+F_win_kol_prod(j)*cos_L_ko_cm_L_ko_prod*znak_prod_cm(F_win_kol_prod(j),2))*cos_L_ko_cm_L_cm_pop
F_win_kol_cm_prod(j) = (F_win_kol_pop(j)*cos_L_ko_cm_L_ko_pop*znak_pop_cm(F_win_kol_pop(j),3)+F_win_kol_prod(j)*cos_L_ko_cm_L_ko_prod*znak_prod_cm(F_win_kol_prod(j),3))*cos_L_ko_cm_L_cm_prod

M_win_kol_pop(j) = F_win_kol_pop(j)*p1*znak_M(1,3,F_win_kol_pop(j),ko_vblwe_cm(j))
M_win_kol_prod(j) = F_win_kol_prod(j)*p1*znak_M(1,2,F_win_kol_prod(j),ko_vblwe_cm(j))
M_win_kol_gor_pop(j) = F_win_kol_pop(j)*p3*znak_M(3,1,F_win_kol_pop(j),ko_do_cm(j))
M_win_kol_gor_prod(j) = F_win_kol_prod(j)*p2*znak_M(2,1,F_win_kol_prod(j),ko_levee_cm(j))

else

F_win_kol_vert(j) = 0
F_win_kol_pop(j) = 0
F_win_kol_prod(j) = 0

F_win_kol_cm_vert(j) = 0
F_win_kol_cm_pop(j) = 0
F_win_kol_cm_prod(j) = 0

M_win_kol_pop(j) = 0
M_win_kol_prod(j) = 0
M_win_kol_gor_pop(j) = 0
M_win_kol_gor_prod(j) = 0

end if

next j


end sub
