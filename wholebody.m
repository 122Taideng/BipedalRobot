
ToDeg = 180/pi;
ToRad = pi/180;
UX = [1 0 0]';
UY = [0 1 0]';
UZ = [0 0 1]';
global uLINK;
global th;
global pos;
uLINK = struct('name','body'   , 'm', 0.3, 'sister', 0, 'child', 2, 'b',  [0  0    0]','a',UZ,'q',0,'c',[0 0 0]');

uLINK(2) = struct('name','Lhip1'  ,  'm', 0.298, 'sister', 8, 'child', 3, 'b',[0 -100 0]',   'a',UZ,'q',th(1),'c',[0 100 0]');
uLINK(3) = struct('name','Lhip2'  , 'm', 0.4, 'sister', 0, 'child', 4, 'b',[0  0   -100]',  'a',UX,'q',th(2),'c',[0 0 50]');
uLINK(4) = struct('name','Lhip3'  , 'm', 0.245, 'sister', 0, 'child', 5, 'b',[0  0   0]'   ,'a',UY,'q',th(3),'c',[0 0 0]');
uLINK(5) = struct('name','Lknee'  , 'm', 0.667, 'sister', 0, 'child', 6, 'b',[0  0  -140]' ,'a',UY,'q',th(4),'c',[0 0 70]');
uLINK(6) = struct('name','Lankle1' , 'm', 0.718, 'sister', 0, 'child', 7, 'b',[0  0  -220]' ,'a',UY,'q',th(5),'c',[0 0 110]');
uLINK(7) = struct('name','Lankle2' , 'm', 0.632, 'sister', 0, 'child', 0, 'b',[0  0   0  ]' ,'a',UX,'q',th(6),'c',[0 60 35]');
        
uLINK(8) = struct('name','Rhip1', 'm', 0.298, 'sister', 0, 'child', 9, 'b',[0  100 0]'   ,'a',UZ,'q',th(7),'c',[0 100 0]');
uLINK(9) = struct('name','Rhip2', 'm', 0.4, 'sister', 0, 'child',10, 'b',[0  0   -100]',  'a',UX,'q',th(8),'c',[0 0 50]');
uLINK(10)= struct('name','Rhip3' , 'm', 0.245, 'sister', 0, 'child',11, 'b',[0  0   0]'   ,'a',UY,'q',th(9),'c',[0 0 0]');
uLINK(11)= struct('name','Rknee' , 'm', 0.667, 'sister', 0, 'child',12, 'b',[0  0  -140]' ,'a',UY,'q',th(10),'c',[0 0 70]');
uLINK(12)= struct('name','Rankle1', 'm', 0.718, 'sister', 0, 'child',13, 'b',[0  0  -220]' ,'a',UY,'q',th(11),'c',[0 0 110]');
uLINK(13)= struct('name','Rankle2', 'm', 0.632, 'sister', 0, 'child', 0, 'b',[0  0   0]' ,'a',UX,'q',th(12),'c',[0 60 35]');


FindMother(1); 

for n=1:length(uLINK)
    eval([uLINK(n).name,'=',num2str(n),';']);
end





shape1 = [200 90 20];     
com   =  [35  0 -90]';    
SetupRigidBody(Lankle2, shape1,com);
SetupRigidBody(Rankle2, shape1,com);



uLINK(body).p = pos;
uLINK(body).R = eye(3);

ForwardKinematics(2);
