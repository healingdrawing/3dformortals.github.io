Attribute VB_Name = "Sub_dS_kon_plus"
Sub dS_kon_plus(X1,Y1,Z1,X2,Y2,Z2,X3,Y3,Z3)
dS_kon_n=dS_kon_n+1
if ko_n0<ko_n then
dS_kon_n=1
ko_n0=ko_n
end if
dS_kon(0,dS_kon_n,ko_n)=(0.5*(((Y2-Y1)*(Z3-Z2)-(Z2-Z1)*(Y3-Y2))^2+(-(X2-X1)*(Z3-Z2)+(Z2-Z1)*(X3-X2))^2+((X2-X1)*(Y3-Y2)-(Y2-Y1)*(X3-X2))^2)^0.5)/10^6
dS_kon(1,dS_kon_n,ko_n)=X1
dS_kon(2,dS_kon_n,ko_n)=Y1
dS_kon(3,dS_kon_n,ko_n)=Z1
dS_kon(4,dS_kon_n,ko_n)=X2
dS_kon(5,dS_kon_n,ko_n)=Y2
dS_kon(6,dS_kon_n,ko_n)=Z2
dS_kon(7,dS_kon_n,ko_n)=X3
dS_kon(8,dS_kon_n,ko_n)=Y3
dS_kon(9,dS_kon_n,ko_n)=Z3
dS_kon(10,dS_kon_n,ko_n)=(X1+X2+X3)/3
dS_kon(11,dS_kon_n,ko_n)=(Y1+Y2+Y3)/3
dS_kon(12,dS_kon_n,ko_n)=(Z1+Z2+Z3)/3
n_dS_kon(ko_n)=dS_kon_n
end sub

REM X,Y,Z - ���������� ���� ����� ���������� ����������� �������
REM 1-9 ��� ����� ������������
REM 10-12 ����� ������ ������������
REM 0 ������� ������������ � [m^2]
