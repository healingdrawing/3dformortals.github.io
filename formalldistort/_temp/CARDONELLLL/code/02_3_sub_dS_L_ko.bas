Attribute VB_Name = "Sub_dS_L_ko"
Sub dS_L_ko(X_ko,Y_ko,Z_ko,A_ko,B_ko,C_ko,X_dS_L_ko,Y_dS_L_ko,Z_dS_L_ko)
dim i#,m#,n#,p#

for i = 1 to 3
if i >=2 then
m=m+3: n=n+3: p=p+3
else
m=1: n=2: p=3
end if
    
T_dS(i) = (A_ko*(dS_kon(m,dS_kon_n,ko_n)-X_ko)+B_ko*(dS_kon(n,dS_kon_n,ko_n)-Y_ko)+C_ko*(dS_kon(p,dS_kon_n,ko_n)-Z_ko))/(A_ko^2+B_ko^2+C_ko^2)
X_dS_L_ko(i) = X_ko + T_dS(i)*A_ko
Y_dS_L_ko(i) = Y_ko + T_dS(i)*B_ko
Z_dS_L_ko(i) = Z_ko + T_dS(i)*C_ko

next i

X_dS_L_ko = (X_dS_L_ko(1)+X_dS_L_ko(2)+X_dS_L_ko(3))/3
Y_dS_L_ko = (Y_dS_L_ko(1)+Y_dS_L_ko(2)+Y_dS_L_ko(3))/3
Z_dS_L_ko = (Z_dS_L_ko(1)+Z_dS_L_ko(2)+Z_dS_L_ko(3))/3


end sub
