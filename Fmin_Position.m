function [q,Fmin]=Fmin_Position(y,z)
global P_end;
P_end=[0,y,z];
x0=[0;0;0;0;0; 0].*pi/180;
A=[];b=[];
Aeq=[1 1 -1 0 0 0 ;
     0 0 0 0 0 0 ;
     0 0 0 0 0 0 ;
     0 0 0 1 1 -1 ;
     0 0 0 0 0 0 ;
     0 0 0 0 0 0];
beq=[0 0 0 0 0 0]';

beq=[0 0 0 0 0 0]';

lb=[-50;
    -150;
    -0;
    -0;
    -00;
    -50
    ].*pi/180;
% lb=[-100;
%     -150;
%     -0;
%     -48;
%     -150;
%     -100
%     ].*pi/180;

ub=[100;
    130;
    115;
    115;
    130;
    100].*pi/180;
Aineq=[];
bineq=[];
[x,fval]=fmincon(@fun_Fmin,x0,A,b,Aeq,beq,lb,ub,@Position_con);
% options.Display='off';
% options.VelocityLimit=10;
% options.Vectorized='off';
% options.BoundaryMethod='penalize';

% [x ]= pso(@fun_Fmin,6,Aineq,bineq,Aeq,beq,lb,ub,@Position_con);
q=[pi/2 0 x(3) x(2) x(1) 0     -pi/2 0  x(4) x(5) x(6) 0]*180/pi;
 Fmin=fval;


